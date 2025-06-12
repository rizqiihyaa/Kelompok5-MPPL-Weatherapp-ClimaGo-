import 'package:get/get.dart';
import 'package:rain/translation/cs_cz.dart';
import 'package:rain/translation/da_dk.dart';
import 'package:rain/translation/de_de.dart';
import 'package:rain/translation/en_us.dart';
import 'package:rain/translation/es_es.dart';
import 'package:rain/translation/fr_fr.dart';
import 'package:rain/translation/id_id.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {

    'en_US': EnUs().messages,
    'fr_FR': FrFr().messages,
    'de_DE': DeDe().messages,
    'es_ES': EsEs().messages,
    'cs_CZ': CsCz().messages,
    'da_DK': DaDk().messages,
    'id_ID': IdId().messages,
  };
}
