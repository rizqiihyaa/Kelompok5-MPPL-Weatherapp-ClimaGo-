import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:home_widget/home_widget.dart';
import 'package:isar/isar.dart';
import 'package:lat_lng_to_timezone/lat_lng_to_timezone.dart' as tzmap;
import 'package:path_provider/path_provider.dart';
import 'package:rain/app/api/api.dart';
import 'package:rain/app/data/db.dart';
import 'package:rain/app/utils/notification.dart';
import 'package:rain/app/utils/show_snack_bar.dart';
import 'package:rain/app/ui/widgets/weather/status/status_data.dart';
import 'package:rain/app/ui/widgets/weather/status/status_weather.dart';
import 'package:rain/main.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/standalone.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:url_launcher/url_launcher.dart';
import 'package:workmanager/workmanager.dart';

class WeatherController extends GetxController {
  final isLoading = true.obs;
  final _district = ''.obs;
  final _city = ''.obs;
  final _latitude = 0.0.obs;
  final _longitude = 0.0.obs;

  String get district => _district.value;
  String get city => _city.value;
  double get latitude => _latitude.value;
  double get longitude => _longitude.value;

  final _mainWeather = MainWeatherCache().obs;
  final _location = LocationCache().obs;
  final _weatherCard = WeatherCard().obs;

  final weatherCards = <WeatherCard>[].obs;

  MainWeatherCache get mainWeather => _mainWeather.value;
  LocationCache get location => _location.value;
  WeatherCard get weatherCard => _weatherCard.value;

  final hourOfDay = 0.obs;
  final dayOfNow = 0.obs;
  final itemScrollController = ItemScrollController();
  final cacheExpiry = DateTime.now().subtract(const Duration(hours: 12));

  @override
  void onInit() {
    weatherCards.assignAll(
      isar.weatherCards.where().sortByIndex().findAllSync(),
    );
    super.onInit();
  }

  Future<Position> _determinePosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<void> setLocation() async {
    if (settings.location) {
      await getCurrentLocation();
    } else {
      final locationCity = isar.locationCaches.where().findFirstSync();
      if (locationCity != null) {
        await getLocation(
          locationCity.lat!,
          locationCity.lon!,
          locationCity.district!,
          locationCity.city!,
        );
      }
    }
  }

  Future<void> getCurrentLocation() async {
    if (!(await isOnline.value)) {
      showSnackBar(content: 'no_inter'.tr);
      await readCache();
      return;
    }

    if (!await Geolocator.isLocationServiceEnabled()) {
      showSnackBar(
        content: 'no_location'.tr,
        onPressed: () => Geolocator.openLocationSettings(),
      );
      await readCache();
      return;
    }

    if (isar.mainWeatherCaches.where().findAllSync().isNotEmpty) {
      await readCache();
      return;
    }

    final position = await _determinePosition();
    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
    final place = placemarks[0];

    _latitude.value = position.latitude;
    _longitude.value = position.longitude;
    _district.value = place.administrativeArea ?? '';
    _city.value = place.locality ?? '';

    _mainWeather.value = await WeatherAPI().getWeatherData(
      _latitude.value,
      _longitude.value,
    );

    notificationCheck();
    await writeCache();
    await readCache();
  }

  Future<Map> getCurrentLocationSearch() async {
    if (!(await isOnline.value)) {
      showSnackBar(content: 'no_inter'.tr);
    }

    if (!await Geolocator.isLocationServiceEnabled()) {
      showSnackBar(
        content: 'no_location'.tr,
        onPressed: () => Geolocator.openLocationSettings(),
      );
    }

    final position = await _determinePosition();
    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
    final place = placemarks[0];

    return {
      'lat': position.latitude,
      'lon': position.longitude,
      'city': place.administrativeArea ?? '',
      'district': place.locality ?? '',
    };
  }

  Future<void> getLocation(
    double latitude,
    double longitude,
    String district,
    String locality,
  ) async {
    if (!(await isOnline.value)) {
      showSnackBar(content: 'no_inter'.tr);
      await readCache();
      return;
    }

    if (isar.mainWeatherCaches.where().findAllSync().isNotEmpty) {
      await readCache();
      return;
    }

    _latitude.value = latitude;
    _longitude.value = longitude;
    _district.value = district;
    _city.value = locality;

    _mainWeather.value = await WeatherAPI().getWeatherData(
      _latitude.value,
      _longitude.value,
    );

    notificationCheck();
    await writeCache();
    await readCache();
  }

  Future<void> readCache() async {
    MainWeatherCache? mainWeatherCache;
    LocationCache? locationCache;

    while (mainWeatherCache == null || locationCache == null) {
      mainWeatherCache = isar.mainWeatherCaches.where().findFirstSync();
      locationCache = isar.locationCaches.where().findFirstSync();
    }

    _mainWeather.value = mainWeatherCache;
    _location.value = locationCache;

    hourOfDay.value = getTime(
      _mainWeather.value.time!,
      _mainWeather.value.timezone!,
    );
    dayOfNow.value = getDay(
      _mainWeather.value.timeDaily!,
      _mainWeather.value.timezone!,
    );

    if (Platform.isAndroid) {
      Workmanager().registerPeriodicTask(
        'widgetUpdate',
        'widgetBackgroundUpdate',
        frequency: const Duration(minutes: 15),
        existingWorkPolicy: ExistingWorkPolicy.update,
      );
    }

    isLoading.value = false;

    Future.delayed(const Duration(milliseconds: 30), () {
      itemScrollController.scrollTo(
        index: hourOfDay.value,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOutCubic,
      );
    });
  }

  Future<void> writeCache() async {
    final locationCaches = LocationCache(
      lat: _latitude.value,
      lon: _longitude.value,
      city: _city.value,
      district: _district.value,
    );

    isar.writeTxnSync(() {
      if (isar.mainWeatherCaches.where().findAllSync().isEmpty) {
        isar.mainWeatherCaches.putSync(_mainWeather.value);
      }
      if (isar.locationCaches.where().findAllSync().isEmpty) {
        isar.locationCaches.putSync(locationCaches);
      }
    });
  }

  Future<void> deleteCache() async {
    if (!(await isOnline.value)) {
      return;
    }

    isar.writeTxnSync(() {
      isar.mainWeatherCaches
          .filter()
          .timestampLessThan(cacheExpiry)
          .deleteAllSync();
    });
    if (isar.mainWeatherCaches.where().findAllSync().isEmpty) {
      await flutterLocalNotificationsPlugin.cancelAll();
    }
  }

  Future<void> deleteAll(bool changeCity) async {
    if (!(await isOnline.value)) {
      return;
    }

    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    await flutterLocalNotificationsPlugin.cancelAll();

    isar.writeTxnSync(() {
      if (!settings.location) {
        isar.mainWeatherCaches.where().deleteAllSync();
      }
      if (settings.location && serviceEnabled || changeCity) {
        isar.mainWeatherCaches.where().deleteAllSync();
        isar.locationCaches.where().deleteAllSync();
      }
    });
  }

  Future<void> addCardWeather(
    double latitude,
    double longitude,
    String city,
    String district,
  ) async {
    if (!(await isOnline.value)) {
      showSnackBar(content: 'no_inter'.tr);
      return;
    }

    final tz = tzmap.latLngToTimezoneString(latitude, longitude);
    _weatherCard.value = await WeatherAPI().getWeatherCard(
      latitude,
      longitude,
      city,
      district,
      tz,
    );
    isar.writeTxnSync(() {
      weatherCards.add(_weatherCard.value);
      isar.weatherCards.putSync(_weatherCard.value);
    });
  }

  Future<void> updateCacheCard(bool refresh) async {
    final weatherCard =
        refresh
            ? isar.weatherCards.where().sortByIndex().findAllSync()
            : isar.weatherCards
                .filter()
                .timestampLessThan(cacheExpiry)
                .sortByIndex()
                .findAllSync();

    if (!(await isOnline.value) || weatherCard.isEmpty) {
      return;
    }

    for (var oldCard in weatherCard) {
      final updatedCard = await WeatherAPI().getWeatherCard(
        oldCard.lat!,
        oldCard.lon!,
        oldCard.city!,
        oldCard.district!,
        oldCard.timezone!,
      );
      isar.writeTxnSync(() {
        oldCard
          ..time = updatedCard.time
          ..weathercode = updatedCard.weathercode
          ..temperature2M = updatedCard.temperature2M
          ..apparentTemperature = updatedCard.apparentTemperature
          ..relativehumidity2M = updatedCard.relativehumidity2M
          ..precipitation = updatedCard.precipitation
          ..rain = updatedCard.rain
          ..surfacePressure = updatedCard.surfacePressure
          ..visibility = updatedCard.visibility
          ..evapotranspiration = updatedCard.evapotranspiration
          ..windspeed10M = updatedCard.windspeed10M
          ..winddirection10M = updatedCard.winddirection10M
          ..windgusts10M = updatedCard.windgusts10M
          ..cloudcover = updatedCard.cloudcover
          ..uvIndex = updatedCard.uvIndex
          ..dewpoint2M = updatedCard.dewpoint2M
          ..precipitationProbability = updatedCard.precipitationProbability
          ..shortwaveRadiation = updatedCard.shortwaveRadiation
          ..timeDaily = updatedCard.timeDaily
          ..weathercodeDaily = updatedCard.weathercodeDaily
          ..temperature2MMax = updatedCard.temperature2MMax
          ..temperature2MMin = updatedCard.temperature2MMin
          ..apparentTemperatureMax = updatedCard.apparentTemperatureMax
          ..apparentTemperatureMin = updatedCard.apparentTemperatureMin
          ..sunrise = updatedCard.sunrise
          ..sunset = updatedCard.sunset
          ..precipitationSum = updatedCard.precipitationSum
          ..precipitationProbabilityMax =
              updatedCard.precipitationProbabilityMax
          ..windspeed10MMax = updatedCard.windspeed10MMax
          ..windgusts10MMax = updatedCard.windgusts10MMax
          ..uvIndexMax = updatedCard.uvIndexMax
          ..rainSum = updatedCard.rainSum
          ..winddirection10MDominant = updatedCard.winddirection10MDominant
          ..timestamp = DateTime.now();

        isar.weatherCards.putSync(oldCard);

        final newCard = oldCard;
        final oldIdx = weatherCard.indexOf(oldCard);
        weatherCards[oldIdx] = newCard;
        weatherCards.refresh();
      });
    }
  }

  Future<void> updateCard(WeatherCard weatherCard) async {
    if (!(await isOnline.value)) {
      return;
    }

    final updatedCard = await WeatherAPI().getWeatherCard(
      weatherCard.lat!,
      weatherCard.lon!,
      weatherCard.city!,
      weatherCard.district!,
      weatherCard.timezone!,
    );

    isar.writeTxnSync(() {
      weatherCard
        ..time = updatedCard.time
        ..weathercode = updatedCard.weathercode
        ..temperature2M = updatedCard.temperature2M
        ..apparentTemperature = updatedCard.apparentTemperature
        ..relativehumidity2M = updatedCard.relativehumidity2M
        ..precipitation = updatedCard.precipitation
        ..rain = updatedCard.rain
        ..surfacePressure = updatedCard.surfacePressure
        ..visibility = updatedCard.visibility
        ..evapotranspiration = updatedCard.evapotranspiration
        ..windspeed10M = updatedCard.windspeed10M
        ..winddirection10M = updatedCard.winddirection10M
        ..windgusts10M = updatedCard.windgusts10M
        ..cloudcover = updatedCard.cloudcover
        ..uvIndex = updatedCard.uvIndex
        ..dewpoint2M = updatedCard.dewpoint2M
        ..precipitationProbability = updatedCard.precipitationProbability
        ..shortwaveRadiation = updatedCard.shortwaveRadiation
        ..timeDaily = updatedCard.timeDaily
        ..weathercodeDaily = updatedCard.weathercodeDaily
        ..temperature2MMax = updatedCard.temperature2MMax
        ..temperature2MMin = updatedCard.temperature2MMin
        ..apparentTemperatureMax = updatedCard.apparentTemperatureMax
        ..apparentTemperatureMin = updatedCard.apparentTemperatureMin
        ..sunrise = updatedCard.sunrise
        ..sunset = updatedCard.sunset
        ..precipitationSum = updatedCard.precipitationSum
        ..precipitationProbabilityMax = updatedCard.precipitationProbabilityMax
        ..windspeed10MMax = updatedCard.windspeed10MMax
        ..windgusts10MMax = updatedCard.windgusts10MMax
        ..uvIndexMax = updatedCard.uvIndexMax
        ..rainSum = updatedCard.rainSum
        ..winddirection10MDominant = updatedCard.winddirection10MDominant
        ..timestamp = DateTime.now();

      isar.weatherCards.putSync(weatherCard);
    });
  }

  Future<void> deleteCardWeather(WeatherCard weatherCard) async {
    isar.writeTxnSync(() {
      weatherCards.remove(weatherCard);
      isar.weatherCards.deleteSync(weatherCard.id);
    });
  }

  int getTime(List<String> time, String timezone) {
    return time.indexWhere((t) {
      final dateTime = DateTime.parse(t);
      return tz.TZDateTime.now(tz.getLocation(timezone)).hour ==
              dateTime.hour &&
          tz.TZDateTime.now(tz.getLocation(timezone)).day == dateTime.day;
    });
  }

  int getDay(List<DateTime> time, String timezone) {
    return time.indexWhere(
      (t) => tz.TZDateTime.now(tz.getLocation(timezone)).day == t.day,
    );
  }

  TimeOfDay timeConvert(String normTime) {
    final hh = normTime.endsWith('PM') ? 12 : 0;
    final timeParts = normTime.split(' ')[0].split(':');
    return TimeOfDay(
      hour: hh + int.parse(timeParts[0]) % 24,
      minute: int.parse(timeParts[1]) % 60,
    );
  }

  Future<String> getLocalImagePath(String icon) async {
    final directory = await getTemporaryDirectory();
    final imagePath = '${directory.path}/$icon';

    final data = await rootBundle.load('assets/images/$icon');
    final bytes = data.buffer.asUint8List();

    await File(imagePath).writeAsBytes(bytes);

    return imagePath;
  }

  void notification(MainWeatherCache mainWeatherCache) async {
    final now = DateTime.now();
    final startHour = timeConvert(timeStart).hour;
    final endHour = timeConvert(timeEnd).hour;

    for (var i = 0; i < mainWeatherCache.time!.length; i += timeRange) {
      final notificationTime = DateTime.parse(mainWeatherCache.time![i]);

      if (notificationTime.isAfter(now) &&
          notificationTime.hour >= startHour &&
          notificationTime.hour <= endHour) {
        for (var j = 0; j < mainWeatherCache.timeDaily!.length; j++) {
          if (mainWeatherCache.timeDaily![j].day == notificationTime.day) {
            NotificationShow().showNotification(
              UniqueKey().hashCode,
              '$city: ${mainWeatherCache.temperature2M![i]}°',
              '${StatusWeather().getText(mainWeatherCache.weathercode![i])} · ${StatusData().getTimeFormat(mainWeatherCache.time![i])}',
              notificationTime,
              StatusWeather().getImageNotification(
                mainWeatherCache.weathercode![i],
                mainWeatherCache.time![i],
                mainWeatherCache.sunrise![j],
                mainWeatherCache.sunset![j],
              ),
            );
          }
        }
      }
    }
  }

  void notificationCheck() async {
    if (settings.notifications) {
      final pendingNotificationRequests =
          await flutterLocalNotificationsPlugin.pendingNotificationRequests();
      if (pendingNotificationRequests.isEmpty) {
        notification(_mainWeather.value);
      }
    }
  }

  void reorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final element = weatherCards.removeAt(oldIndex);
    weatherCards.insert(newIndex, element);

    for (int i = 0; i < weatherCards.length; i++) {
      final item = weatherCards[i];
      item.index = i;
      isar.writeTxnSync(() => isar.weatherCards.putSync(item));
    }
  }

  Future<bool> updateWidgetBackgroundColor(String color) async {
    settings.widgetBackgroundColor = color;
    isar.writeTxnSync(() {
      isar.settings.putSync(settings);
    });

    final results = await Future.wait<bool?>([
      HomeWidget.saveWidgetData('background_color', color),
      HomeWidget.updateWidget(androidName: androidWidgetName),
    ]);
    return !results.contains(false);
  }

  Future<bool> updateWidgetTextColor(String color) async {
    settings.widgetTextColor = color;
    isar.writeTxnSync(() {
      isar.settings.putSync(settings);
    });

    final results = await Future.wait<bool?>([
      HomeWidget.saveWidgetData('text_color', color),
      HomeWidget.updateWidget(androidName: androidWidgetName),
    ]);
    return !results.contains(false);
  }

  Future<bool> updateWidget() async {
    final timeZoneName = await FlutterTimezone.getLocalTimezone();
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation(timeZoneName));

    final isarWidget = await Isar.open([
      SettingsSchema,
      MainWeatherCacheSchema,
      LocationCacheSchema,
      WeatherCardSchema,
    ], directory: (await getApplicationSupportDirectory()).path);

    final mainWeatherCache =
        isarWidget.mainWeatherCaches.where().findFirstSync();
    if (mainWeatherCache == null) return false;

    final hour = getTime(mainWeatherCache.time!, mainWeatherCache.timezone!);
    final day = getDay(mainWeatherCache.timeDaily!, mainWeatherCache.timezone!);

    final results = await Future.wait<bool?>([
      HomeWidget.saveWidgetData(
        'weather_icon',
        await getLocalImagePath(
          StatusWeather().getImageNotification(
            mainWeatherCache.weathercode![hour],
            mainWeatherCache.time![hour],
            mainWeatherCache.sunrise![day],
            mainWeatherCache.sunset![day],
          ),
        ),
      ),
      HomeWidget.saveWidgetData(
        'weather_degree',
        '${mainWeatherCache.temperature2M?[hour].round()}°',
      ),
      HomeWidget.updateWidget(androidName: androidWidgetName),
    ]);
    return !results.contains(false);
  }

  void urlLauncher(String uri) async {
    final url = Uri.parse(uri);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
