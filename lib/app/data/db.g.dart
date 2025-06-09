

part of 'db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingsCollection on Isar {
  IsarCollection<Settings> get settings => this.collection();
}

const SettingsSchema = CollectionSchema(
  name: r'Settings',
  id: -8656046621518759136,
  properties: {
    r'amoledTheme': PropertySchema(
      id: 0,
      name: r'amoledTheme',
      type: IsarType.bool,
    ),
    r'degrees': PropertySchema(
      id: 1,
      name: r'degrees',
      type: IsarType.string,
    ),
    r'hideMap': PropertySchema(
      id: 2,
      name: r'hideMap',
      type: IsarType.bool,
    ),
    r'language': PropertySchema(
      id: 3,
      name: r'language',
      type: IsarType.string,
    ),
    r'largeElement': PropertySchema(
      id: 4,
      name: r'largeElement',
      type: IsarType.bool,
    ),
    r'location': PropertySchema(
      id: 5,
      name: r'location',
      type: IsarType.bool,
    ),
    r'materialColor': PropertySchema(
      id: 6,
      name: r'materialColor',
      type: IsarType.bool,
    ),
    r'measurements': PropertySchema(
      id: 7,
      name: r'measurements',
      type: IsarType.string,
    ),
    r'notifications': PropertySchema(
      id: 8,
      name: r'notifications',
      type: IsarType.bool,
    ),
    r'onboard': PropertySchema(
      id: 9,
      name: r'onboard',
      type: IsarType.bool,
    ),
    r'pressure': PropertySchema(
      id: 10,
      name: r'pressure',
      type: IsarType.string,
    ),
    r'roundDegree': PropertySchema(
      id: 11,
      name: r'roundDegree',
      type: IsarType.bool,
    ),
    r'theme': PropertySchema(
      id: 12,
      name: r'theme',
      type: IsarType.string,
    ),
    r'timeEnd': PropertySchema(
      id: 13,
      name: r'timeEnd',
      type: IsarType.string,
    ),
    r'timeRange': PropertySchema(
      id: 14,
      name: r'timeRange',
      type: IsarType.long,
    ),
    r'timeStart': PropertySchema(
      id: 15,
      name: r'timeStart',
      type: IsarType.string,
    ),
    r'timeformat': PropertySchema(
      id: 16,
      name: r'timeformat',
      type: IsarType.string,
    ),
    r'widgetBackgroundColor': PropertySchema(
      id: 17,
      name: r'widgetBackgroundColor',
      type: IsarType.string,
    ),
    r'widgetTextColor': PropertySchema(
      id: 18,
      name: r'widgetTextColor',
      type: IsarType.string,
    ),
    r'wind': PropertySchema(
      id: 19,
      name: r'wind',
      type: IsarType.string,
    )
  },
  estimateSize: _settingsEstimateSize,
  serialize: _settingsSerialize,
  deserialize: _settingsDeserialize,
  deserializeProp: _settingsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingsGetId,
  getLinks: _settingsGetLinks,
  attach: _settingsAttach,
  version: '3.1.8',
);

int _settingsEstimateSize(
  Settings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.degrees.length * 3;
  {
    final value = object.language;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.measurements.length * 3;
  bytesCount += 3 + object.pressure.length * 3;
  {
    final value = object.theme;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timeEnd;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timeStart;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.timeformat.length * 3;
  {
    final value = object.widgetBackgroundColor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.widgetTextColor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.wind.length * 3;
  return bytesCount;
}

void _settingsSerialize(
  Settings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.amoledTheme);
  writer.writeString(offsets[1], object.degrees);
  writer.writeBool(offsets[2], object.hideMap);
  writer.writeString(offsets[3], object.language);
  writer.writeBool(offsets[4], object.largeElement);
  writer.writeBool(offsets[5], object.location);
  writer.writeBool(offsets[6], object.materialColor);
  writer.writeString(offsets[7], object.measurements);
  writer.writeBool(offsets[8], object.notifications);
  writer.writeBool(offsets[9], object.onboard);
  writer.writeString(offsets[10], object.pressure);
  writer.writeBool(offsets[11], object.roundDegree);
  writer.writeString(offsets[12], object.theme);
  writer.writeString(offsets[13], object.timeEnd);
  writer.writeLong(offsets[14], object.timeRange);
  writer.writeString(offsets[15], object.timeStart);
  writer.writeString(offsets[16], object.timeformat);
  writer.writeString(offsets[17], object.widgetBackgroundColor);
  writer.writeString(offsets[18], object.widgetTextColor);
  writer.writeString(offsets[19], object.wind);
}

Settings _settingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Settings();
  object.amoledTheme = reader.readBool(offsets[0]);
  object.degrees = reader.readString(offsets[1]);
  object.hideMap = reader.readBool(offsets[2]);
  object.id = id;
  object.language = reader.readStringOrNull(offsets[3]);
  object.largeElement = reader.readBool(offsets[4]);
  object.location = reader.readBool(offsets[5]);
  object.materialColor = reader.readBool(offsets[6]);
  object.measurements = reader.readString(offsets[7]);
  object.notifications = reader.readBool(offsets[8]);
  object.onboard = reader.readBool(offsets[9]);
  object.pressure = reader.readString(offsets[10]);
  object.roundDegree = reader.readBool(offsets[11]);
  object.theme = reader.readStringOrNull(offsets[12]);
  object.timeEnd = reader.readStringOrNull(offsets[13]);
  object.timeRange = reader.readLongOrNull(offsets[14]);
  object.timeStart = reader.readStringOrNull(offsets[15]);
  object.timeformat = reader.readString(offsets[16]);
  object.widgetBackgroundColor = reader.readStringOrNull(offsets[17]);
  object.widgetTextColor = reader.readStringOrNull(offsets[18]);
  object.wind = reader.readString(offsets[19]);
  return object;
}

P _settingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingsGetId(Settings object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingsGetLinks(Settings object) {
  return [];
}

void _settingsAttach(IsarCollection<dynamic> col, Id id, Settings object) {
  object.id = id;
}

extension SettingsQueryWhereSort on QueryBuilder<Settings, Settings, QWhere> {
  QueryBuilder<Settings, Settings, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingsQueryWhere on QueryBuilder<Settings, Settings, QWhereClause> {
  QueryBuilder<Settings, Settings, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Settings, Settings, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Settings, Settings, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Settings, Settings, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingsQueryFilter
    on QueryBuilder<Settings, Settings, QFilterCondition> {
  QueryBuilder<Settings, Settings, QAfterFilterCondition> amoledThemeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amoledTheme',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'degrees',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'degrees',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'degrees',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'degrees',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> hideMapEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hideMap',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> largeElementEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'largeElement',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> locationEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> materialColorEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'materialColor',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      measurementsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'measurements',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      measurementsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'measurements',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      measurementsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurements',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      measurementsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'measurements',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> notificationsEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifications',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> onboardEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onboard',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pressure',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pressure',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pressure',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> pressureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pressure',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> roundDegreeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roundDegree',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'theme',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'theme',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'theme',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'theme',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'theme',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeEnd',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeEnd',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeEnd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeEnd',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeEnd',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeEndIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeEnd',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeRangeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeRange',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeRangeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeRange',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeRangeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeRange',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeRangeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeRange',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeRangeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeRange',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeRangeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeRange',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeStart',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeStart',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeStart',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeStartIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeStart',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      timeStartIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeStart',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeformat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeformat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeformat',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      timeformatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeformat',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'widgetBackgroundColor',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'widgetBackgroundColor',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'widgetBackgroundColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'widgetBackgroundColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'widgetBackgroundColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'widgetBackgroundColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'widgetBackgroundColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'widgetBackgroundColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'widgetBackgroundColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'widgetBackgroundColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'widgetBackgroundColor',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetBackgroundColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'widgetBackgroundColor',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'widgetTextColor',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'widgetTextColor',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'widgetTextColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'widgetTextColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'widgetTextColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'widgetTextColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'widgetTextColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'widgetTextColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'widgetTextColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'widgetTextColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'widgetTextColor',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
      widgetTextColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'widgetTextColor',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wind',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'wind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'wind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'wind',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'wind',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wind',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> windIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'wind',
        value: '',
      ));
    });
  }
}

extension SettingsQueryObject
    on QueryBuilder<Settings, Settings, QFilterCondition> {}

extension SettingsQueryLinks
    on QueryBuilder<Settings, Settings, QFilterCondition> {}

extension SettingsQuerySortBy on QueryBuilder<Settings, Settings, QSortBy> {
  QueryBuilder<Settings, Settings, QAfterSortBy> sortByAmoledTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amoledTheme', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByAmoledThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amoledTheme', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByDegrees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'degrees', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByDegreesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'degrees', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByHideMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideMap', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByHideMapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideMap', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByLargeElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'largeElement', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByLargeElementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'largeElement', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByMaterialColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialColor', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByMaterialColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialColor', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByMeasurements() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurements', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByMeasurementsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurements', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifications', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByNotificationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifications', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByOnboard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboard', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByOnboardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboard', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByRoundDegree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundDegree', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByRoundDegreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundDegree', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeRange', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeRange', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeformat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeformat', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeformatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeformat', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByWidgetBackgroundColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widgetBackgroundColor', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy>
      sortByWidgetBackgroundColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widgetBackgroundColor', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByWidgetTextColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widgetTextColor', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByWidgetTextColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widgetTextColor', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByWindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.desc);
    });
  }
}

extension SettingsQuerySortThenBy
    on QueryBuilder<Settings, Settings, QSortThenBy> {
  QueryBuilder<Settings, Settings, QAfterSortBy> thenByAmoledTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amoledTheme', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByAmoledThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amoledTheme', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByDegrees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'degrees', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByDegreesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'degrees', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByHideMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideMap', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByHideMapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideMap', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByLargeElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'largeElement', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByLargeElementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'largeElement', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByMaterialColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialColor', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByMaterialColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialColor', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByMeasurements() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurements', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByMeasurementsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurements', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifications', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByNotificationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifications', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByOnboard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboard', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByOnboardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboard', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByRoundDegree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundDegree', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByRoundDegreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundDegree', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeRange', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeRange', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeformat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeformat', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeformatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeformat', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByWidgetBackgroundColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widgetBackgroundColor', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy>
      thenByWidgetBackgroundColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widgetBackgroundColor', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByWidgetTextColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widgetTextColor', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByWidgetTextColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widgetTextColor', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByWind() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByWindDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind', Sort.desc);
    });
  }
}

extension SettingsQueryWhereDistinct
    on QueryBuilder<Settings, Settings, QDistinct> {
  QueryBuilder<Settings, Settings, QDistinct> distinctByAmoledTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amoledTheme');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByDegrees(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'degrees', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByHideMap() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hideMap');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByLargeElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'largeElement');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByMaterialColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'materialColor');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByMeasurements(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'measurements', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifications');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByOnboard() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'onboard');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByPressure(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pressure', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByRoundDegree() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roundDegree');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByTheme(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'theme', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByTimeEnd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeEnd', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByTimeRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeRange');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByTimeStart(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeStart', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByTimeformat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeformat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByWidgetBackgroundColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'widgetBackgroundColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByWidgetTextColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'widgetTextColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByWind(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wind', caseSensitive: caseSensitive);
    });
  }
}

extension SettingsQueryProperty
    on QueryBuilder<Settings, Settings, QQueryProperty> {
  QueryBuilder<Settings, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> amoledThemeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amoledTheme');
    });
  }

  QueryBuilder<Settings, String, QQueryOperations> degreesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'degrees');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> hideMapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hideMap');
    });
  }

  QueryBuilder<Settings, String?, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> largeElementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'largeElement');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> materialColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'materialColor');
    });
  }

  QueryBuilder<Settings, String, QQueryOperations> measurementsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measurements');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> notificationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifications');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> onboardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'onboard');
    });
  }

  QueryBuilder<Settings, String, QQueryOperations> pressureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pressure');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> roundDegreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roundDegree');
    });
  }

  QueryBuilder<Settings, String?, QQueryOperations> themeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'theme');
    });
  }

  QueryBuilder<Settings, String?, QQueryOperations> timeEndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeEnd');
    });
  }

  QueryBuilder<Settings, int?, QQueryOperations> timeRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeRange');
    });
  }

  QueryBuilder<Settings, String?, QQueryOperations> timeStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeStart');
    });
  }

  QueryBuilder<Settings, String, QQueryOperations> timeformatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeformat');
    });
  }

  QueryBuilder<Settings, String?, QQueryOperations>
      widgetBackgroundColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'widgetBackgroundColor');
    });
  }

  QueryBuilder<Settings, String?, QQueryOperations> widgetTextColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'widgetTextColor');
    });
  }

  QueryBuilder<Settings, String, QQueryOperations> windProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wind');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMainWeatherCacheCollection on Isar {
  IsarCollection<MainWeatherCache> get mainWeatherCaches => this.collection();
}

const MainWeatherCacheSchema = CollectionSchema(
  name: r'MainWeatherCache',
  id: -2519779909738611736,
  properties: {
    r'apparentTemperature': PropertySchema(
      id: 0,
      name: r'apparentTemperature',
      type: IsarType.doubleList,
    ),
    r'apparentTemperatureMax': PropertySchema(
      id: 1,
      name: r'apparentTemperatureMax',
      type: IsarType.doubleList,
    ),
    r'apparentTemperatureMin': PropertySchema(
      id: 2,
      name: r'apparentTemperatureMin',
      type: IsarType.doubleList,
    ),
    r'cloudcover': PropertySchema(
      id: 3,
      name: r'cloudcover',
      type: IsarType.longList,
    ),
    r'dewpoint2M': PropertySchema(
      id: 4,
      name: r'dewpoint2M',
      type: IsarType.doubleList,
    ),
    r'evapotranspiration': PropertySchema(
      id: 5,
      name: r'evapotranspiration',
      type: IsarType.doubleList,
    ),
    r'precipitation': PropertySchema(
      id: 6,
      name: r'precipitation',
      type: IsarType.doubleList,
    ),
    r'precipitationProbability': PropertySchema(
      id: 7,
      name: r'precipitationProbability',
      type: IsarType.longList,
    ),
    r'precipitationProbabilityMax': PropertySchema(
      id: 8,
      name: r'precipitationProbabilityMax',
      type: IsarType.longList,
    ),
    r'precipitationSum': PropertySchema(
      id: 9,
      name: r'precipitationSum',
      type: IsarType.doubleList,
    ),
    r'rain': PropertySchema(
      id: 10,
      name: r'rain',
      type: IsarType.doubleList,
    ),
    r'rainSum': PropertySchema(
      id: 11,
      name: r'rainSum',
      type: IsarType.doubleList,
    ),
    r'relativehumidity2M': PropertySchema(
      id: 12,
      name: r'relativehumidity2M',
      type: IsarType.longList,
    ),
    r'shortwaveRadiation': PropertySchema(
      id: 13,
      name: r'shortwaveRadiation',
      type: IsarType.doubleList,
    ),
    r'sunrise': PropertySchema(
      id: 14,
      name: r'sunrise',
      type: IsarType.stringList,
    ),
    r'sunset': PropertySchema(
      id: 15,
      name: r'sunset',
      type: IsarType.stringList,
    ),
    r'surfacePressure': PropertySchema(
      id: 16,
      name: r'surfacePressure',
      type: IsarType.doubleList,
    ),
    r'temperature2M': PropertySchema(
      id: 17,
      name: r'temperature2M',
      type: IsarType.doubleList,
    ),
    r'temperature2MMax': PropertySchema(
      id: 18,
      name: r'temperature2MMax',
      type: IsarType.doubleList,
    ),
    r'temperature2MMin': PropertySchema(
      id: 19,
      name: r'temperature2MMin',
      type: IsarType.doubleList,
    ),
    r'time': PropertySchema(
      id: 20,
      name: r'time',
      type: IsarType.stringList,
    ),
    r'timeDaily': PropertySchema(
      id: 21,
      name: r'timeDaily',
      type: IsarType.dateTimeList,
    ),
    r'timestamp': PropertySchema(
      id: 22,
      name: r'timestamp',
      type: IsarType.dateTime,
    ),
    r'timezone': PropertySchema(
      id: 23,
      name: r'timezone',
      type: IsarType.string,
    ),
    r'uvIndex': PropertySchema(
      id: 24,
      name: r'uvIndex',
      type: IsarType.doubleList,
    ),
    r'uvIndexMax': PropertySchema(
      id: 25,
      name: r'uvIndexMax',
      type: IsarType.doubleList,
    ),
    r'visibility': PropertySchema(
      id: 26,
      name: r'visibility',
      type: IsarType.doubleList,
    ),
    r'weathercode': PropertySchema(
      id: 27,
      name: r'weathercode',
      type: IsarType.longList,
    ),
    r'weathercodeDaily': PropertySchema(
      id: 28,
      name: r'weathercodeDaily',
      type: IsarType.longList,
    ),
    r'winddirection10M': PropertySchema(
      id: 29,
      name: r'winddirection10M',
      type: IsarType.longList,
    ),
    r'winddirection10MDominant': PropertySchema(
      id: 30,
      name: r'winddirection10MDominant',
      type: IsarType.longList,
    ),
    r'windgusts10M': PropertySchema(
      id: 31,
      name: r'windgusts10M',
      type: IsarType.doubleList,
    ),
    r'windgusts10MMax': PropertySchema(
      id: 32,
      name: r'windgusts10MMax',
      type: IsarType.doubleList,
    ),
    r'windspeed10M': PropertySchema(
      id: 33,
      name: r'windspeed10M',
      type: IsarType.doubleList,
    ),
    r'windspeed10MMax': PropertySchema(
      id: 34,
      name: r'windspeed10MMax',
      type: IsarType.doubleList,
    )
  },
  estimateSize: _mainWeatherCacheEstimateSize,
  serialize: _mainWeatherCacheSerialize,
  deserialize: _mainWeatherCacheDeserialize,
  deserializeProp: _mainWeatherCacheDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _mainWeatherCacheGetId,
  getLinks: _mainWeatherCacheGetLinks,
  attach: _mainWeatherCacheAttach,
  version: '3.1.8',
);

int _mainWeatherCacheEstimateSize(
  MainWeatherCache object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.apparentTemperature;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.apparentTemperatureMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.apparentTemperatureMin;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.cloudcover;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.dewpoint2M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.evapotranspiration;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.precipitation;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.precipitationProbability;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.precipitationProbabilityMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.precipitationSum;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.rain;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.rainSum;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.relativehumidity2M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.shortwaveRadiation;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final list = object.sunrise;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.sunset;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.surfacePressure;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.temperature2M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.temperature2MMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.temperature2MMin;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final list = object.time;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.timeDaily;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.timezone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uvIndex;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.uvIndexMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.visibility;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.weathercode;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.weathercodeDaily;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.winddirection10M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.winddirection10MDominant;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.windgusts10M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.windgusts10MMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.windspeed10M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.windspeed10MMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  return bytesCount;
}

void _mainWeatherCacheSerialize(
  MainWeatherCache object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDoubleList(offsets[0], object.apparentTemperature);
  writer.writeDoubleList(offsets[1], object.apparentTemperatureMax);
  writer.writeDoubleList(offsets[2], object.apparentTemperatureMin);
  writer.writeLongList(offsets[3], object.cloudcover);
  writer.writeDoubleList(offsets[4], object.dewpoint2M);
  writer.writeDoubleList(offsets[5], object.evapotranspiration);
  writer.writeDoubleList(offsets[6], object.precipitation);
  writer.writeLongList(offsets[7], object.precipitationProbability);
  writer.writeLongList(offsets[8], object.precipitationProbabilityMax);
  writer.writeDoubleList(offsets[9], object.precipitationSum);
  writer.writeDoubleList(offsets[10], object.rain);
  writer.writeDoubleList(offsets[11], object.rainSum);
  writer.writeLongList(offsets[12], object.relativehumidity2M);
  writer.writeDoubleList(offsets[13], object.shortwaveRadiation);
  writer.writeStringList(offsets[14], object.sunrise);
  writer.writeStringList(offsets[15], object.sunset);
  writer.writeDoubleList(offsets[16], object.surfacePressure);
  writer.writeDoubleList(offsets[17], object.temperature2M);
  writer.writeDoubleList(offsets[18], object.temperature2MMax);
  writer.writeDoubleList(offsets[19], object.temperature2MMin);
  writer.writeStringList(offsets[20], object.time);
  writer.writeDateTimeList(offsets[21], object.timeDaily);
  writer.writeDateTime(offsets[22], object.timestamp);
  writer.writeString(offsets[23], object.timezone);
  writer.writeDoubleList(offsets[24], object.uvIndex);
  writer.writeDoubleList(offsets[25], object.uvIndexMax);
  writer.writeDoubleList(offsets[26], object.visibility);
  writer.writeLongList(offsets[27], object.weathercode);
  writer.writeLongList(offsets[28], object.weathercodeDaily);
  writer.writeLongList(offsets[29], object.winddirection10M);
  writer.writeLongList(offsets[30], object.winddirection10MDominant);
  writer.writeDoubleList(offsets[31], object.windgusts10M);
  writer.writeDoubleList(offsets[32], object.windgusts10MMax);
  writer.writeDoubleList(offsets[33], object.windspeed10M);
  writer.writeDoubleList(offsets[34], object.windspeed10MMax);
}

MainWeatherCache _mainWeatherCacheDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MainWeatherCache(
    apparentTemperature: reader.readDoubleOrNullList(offsets[0]),
    apparentTemperatureMax: reader.readDoubleOrNullList(offsets[1]),
    apparentTemperatureMin: reader.readDoubleOrNullList(offsets[2]),
    cloudcover: reader.readLongOrNullList(offsets[3]),
    dewpoint2M: reader.readDoubleOrNullList(offsets[4]),
    evapotranspiration: reader.readDoubleOrNullList(offsets[5]),
    precipitation: reader.readDoubleOrNullList(offsets[6]),
    precipitationProbability: reader.readLongOrNullList(offsets[7]),
    precipitationProbabilityMax: reader.readLongOrNullList(offsets[8]),
    precipitationSum: reader.readDoubleOrNullList(offsets[9]),
    rain: reader.readDoubleOrNullList(offsets[10]),
    rainSum: reader.readDoubleOrNullList(offsets[11]),
    relativehumidity2M: reader.readLongOrNullList(offsets[12]),
    shortwaveRadiation: reader.readDoubleOrNullList(offsets[13]),
    sunrise: reader.readStringList(offsets[14]),
    sunset: reader.readStringList(offsets[15]),
    surfacePressure: reader.readDoubleOrNullList(offsets[16]),
    temperature2M: reader.readDoubleList(offsets[17]),
    temperature2MMax: reader.readDoubleOrNullList(offsets[18]),
    temperature2MMin: reader.readDoubleOrNullList(offsets[19]),
    time: reader.readStringList(offsets[20]),
    timeDaily: reader.readDateTimeList(offsets[21]),
    timestamp: reader.readDateTimeOrNull(offsets[22]),
    timezone: reader.readStringOrNull(offsets[23]),
    uvIndex: reader.readDoubleOrNullList(offsets[24]),
    uvIndexMax: reader.readDoubleOrNullList(offsets[25]),
    visibility: reader.readDoubleOrNullList(offsets[26]),
    weathercode: reader.readLongList(offsets[27]),
    weathercodeDaily: reader.readLongOrNullList(offsets[28]),
    winddirection10M: reader.readLongOrNullList(offsets[29]),
    winddirection10MDominant: reader.readLongOrNullList(offsets[30]),
    windgusts10M: reader.readDoubleOrNullList(offsets[31]),
    windgusts10MMax: reader.readDoubleOrNullList(offsets[32]),
    windspeed10M: reader.readDoubleOrNullList(offsets[33]),
    windspeed10MMax: reader.readDoubleOrNullList(offsets[34]),
  );
  object.id = id;
  return object;
}

P _mainWeatherCacheDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 1:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 2:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 3:
      return (reader.readLongOrNullList(offset)) as P;
    case 4:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 5:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 6:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 7:
      return (reader.readLongOrNullList(offset)) as P;
    case 8:
      return (reader.readLongOrNullList(offset)) as P;
    case 9:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 10:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 11:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 12:
      return (reader.readLongOrNullList(offset)) as P;
    case 13:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 14:
      return (reader.readStringList(offset)) as P;
    case 15:
      return (reader.readStringList(offset)) as P;
    case 16:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 17:
      return (reader.readDoubleList(offset)) as P;
    case 18:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 19:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 20:
      return (reader.readStringList(offset)) as P;
    case 21:
      return (reader.readDateTimeList(offset)) as P;
    case 22:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 25:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 26:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 27:
      return (reader.readLongList(offset)) as P;
    case 28:
      return (reader.readLongOrNullList(offset)) as P;
    case 29:
      return (reader.readLongOrNullList(offset)) as P;
    case 30:
      return (reader.readLongOrNullList(offset)) as P;
    case 31:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 32:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 33:
      return (reader.readDoubleOrNullList(offset)) as P;
    case 34:
      return (reader.readDoubleOrNullList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mainWeatherCacheGetId(MainWeatherCache object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mainWeatherCacheGetLinks(MainWeatherCache object) {
  return [];
}

void _mainWeatherCacheAttach(
    IsarCollection<dynamic> col, Id id, MainWeatherCache object) {
  object.id = id;
}

extension MainWeatherCacheQueryWhereSort
    on QueryBuilder<MainWeatherCache, MainWeatherCache, QWhere> {
  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MainWeatherCacheQueryWhere
    on QueryBuilder<MainWeatherCache, MainWeatherCache, QWhereClause> {
  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MainWeatherCacheQueryFilter
    on QueryBuilder<MainWeatherCache, MainWeatherCache, QFilterCondition> {
  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apparentTemperature',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apparentTemperature',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'apparentTemperature',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'apparentTemperature',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureElementEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apparentTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureElementGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apparentTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureElementLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apparentTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureElementBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apparentTemperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apparentTemperatureMax',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apparentTemperatureMax',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'apparentTemperatureMax',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'apparentTemperatureMax',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxElementEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apparentTemperatureMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxElementGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apparentTemperatureMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxElementLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apparentTemperatureMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxElementBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apparentTemperatureMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMaxLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apparentTemperatureMin',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apparentTemperatureMin',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'apparentTemperatureMin',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'apparentTemperatureMin',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinElementEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apparentTemperatureMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinElementGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apparentTemperatureMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinElementLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apparentTemperatureMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinElementBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apparentTemperatureMin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      apparentTemperatureMinLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cloudcover',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cloudcover',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'cloudcover',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'cloudcover',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverElementEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloudcover',
        value: value,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverElementGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cloudcover',
        value: value,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverElementLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cloudcover',
        value: value,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverElementBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cloudcover',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      cloudcoverLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dewpoint2M',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dewpoint2M',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'dewpoint2M',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'dewpoint2M',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MElementEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dewpoint2M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MElementGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dewpoint2M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MElementLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dewpoint2M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MElementBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dewpoint2M',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dewpoint2M',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dewpoint2M',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dewpoint2M',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dewpoint2M',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dewpoint2M',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      dewpoint2MLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dewpoint2M',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'evapotranspiration',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'evapotranspiration',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'evapotranspiration',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'evapotranspiration',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationElementEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationElementGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationElementLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationElementBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'evapotranspiration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      evapotranspirationLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      precipitationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precipitation',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      precipitationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precipitation',
      ));
    });
  }

  QueryBuilder<MainWeatherCache, MainWeatherCache, QAfterFilterCondition>
      precipitationElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'precipitation',
      ));
    });
  }
