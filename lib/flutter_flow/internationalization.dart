import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // CHAT
  {
    '4fxr4y60': {
      'es': 'CHAT DE CONSULTA ESPECIALIZADA CON LA SAGRADA PALABRA DE DIOS ',
      'en': '',
    },
    'giueqt3g': {
      'es': 'COPIAR ',
      'en': '',
    },
    '4iv7ker0': {
      'es': 'Escribir aca ',
      'en': '',
    },
    'plznskqp': {
      'es': 'ESCUCHAR',
      'en': '',
    },
    'e62xtf6v': {
      'es': 'Home',
      'en': '',
    },
  },
  // Menu
  {
    'vau1i52b': {
      'es': 'LOS CODIGOS DE DIOS ',
      'en': '',
    },
    '276hkhji': {
      'es': 'Creado por BOTINIDAMIX AI',
      'en': '',
    },
    'nsz9s1mk': {
      'es': 'Dios te bendiga ',
      'en': '',
    },
    'utly878j': {
      'es': 'HERRAMIENTAS',
      'en': '',
    },
    '0t39map4': {
      'es': 'CHAT',
      'en': '',
    },
    '0j8tby4r': {
      'es': 'CONVERSACION CHAT',
      'en': '',
    },
    'cg910vga': {
      'es': 'CONSULTA IMAGEN',
      'en': '',
    },
    '69w7rlaf': {
      'es': 'MISCELANEA DE REFLEXIONES',
      'en': '',
    },
    'xka4gysl': {
      'es': 'Creado por Jose Daniel  Cano ',
      'en': '',
    },
  },
  // CONSULTAS
  {
    'fg89cyg5': {
      'es': 'CONSULTA',
      'en': '',
    },
    'm3ubxt14': {
      'es': 'CONSULTAR IMAGEN',
      'en': '',
    },
    'rqamfs3x': {
      'es': 'Escribe aca ',
      'en': '',
    },
    '7g521gey': {
      'es': 'Direccion de la imagen ',
      'en': '',
    },
    'ro995cuw': {
      'es': 'Home',
      'en': '',
    },
  },
  // Galeria
  {
    'etirntvz': {
      'es': 'IMAGENES PARA REFLEXIONAR ',
      'en': '',
    },
    '51n1h7f1': {
      'es':
          'Explora diferentes imagenes, en esta galeria maravillosa y da clic para obtener el enlace y ve el mensaje unico para ti de parte de Dios  en la pagina de consultas',
      'en': '',
    },
  },
  // miscelaneadereflexiones
  {
    'a72da9dr': {
      'es': 'MISCELANEA DE REFLEXIONES',
      'en': '',
    },
  },
  // miscelaneadereflexionesCopy
  {
    '35dot07c': {
      'es': 'MISCELANEA DE REFLEXIONES',
      'en': '',
    },
  },
  // Elias
  {
    'llxmrknb': {
      'es': 'Back',
      'en': '',
    },
    'wjfqayju': {
      'es': 'CHAT VIRTUAL',
      'en': '',
    },
    '1lbq36f3': {
      'es': 'Copy response',
      'en': '',
    },
    'vemffjz3': {
      'es': 'Escribir aca ',
      'en': '',
    },
    'be0lk9zw': {
      'es': 'Home',
      'en': '',
    },
  },
  // BlankListComponent
  {
    'jp9ypnys': {
      'es':
          'Bienvenido!!\nal chatbot  de losCodigos de Dios.   espero que tus  consultas y dudas te ayuden a solucionar y profundizar en la palabra de DIOS.   visita esta pagina de instagram y obten trucos para sacarle provecho a este grandiosa herramienta creada para ti. Dios te guarde y bendiga ',
      'en': '',
    },
    'bjghgmy5': {
      'es': 'presiona aca ',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '5pivl43g': {
      'es': '',
      'en': '',
    },
    'un6nx4t7': {
      'es': '',
      'en': '',
    },
    'k2bzev1y': {
      'es': '',
      'en': '',
    },
    'sr2mjgki': {
      'es': '',
      'en': '',
    },
    'docv5m6h': {
      'es': '',
      'en': '',
    },
    'g08me2py': {
      'es': '',
      'en': '',
    },
    '5cq0inc3': {
      'es': '',
      'en': '',
    },
    'glqvlv2g': {
      'es': '',
      'en': '',
    },
    'suhrp1l5': {
      'es': '',
      'en': '',
    },
    '1zu3m200': {
      'es': '',
      'en': '',
    },
    'zypqx6ym': {
      'es': '',
      'en': '',
    },
    '7xyn1tof': {
      'es': '',
      'en': '',
    },
    '4g3w0xnu': {
      'es': '',
      'en': '',
    },
    'mk9qy9es': {
      'es': '',
      'en': '',
    },
    'ay2f80r5': {
      'es': '',
      'en': '',
    },
    'xfsme5o3': {
      'es': '',
      'en': '',
    },
    'oz15coui': {
      'es': '',
      'en': '',
    },
    '4pii521a': {
      'es': '',
      'en': '',
    },
    'gbvxlmva': {
      'es': '',
      'en': '',
    },
    'dm2inpk4': {
      'es': '',
      'en': '',
    },
    'wi207zqc': {
      'es': '',
      'en': '',
    },
    '4yol9s03': {
      'es': '',
      'en': '',
    },
    '2bjlhh6u': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
