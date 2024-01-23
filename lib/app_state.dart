import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _assistantId =
          await secureStorage.getString('ff_assistantId') ?? _assistantId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _apiKey = '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 ';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
  }

  String _assistantId = 'asst_z0KP5UUvdY5PQMzqiw1Hm4Wi';
  String get assistantId => _assistantId;
  set assistantId(String value) {
    _assistantId = value;
    secureStorage.setString('ff_assistantId', value);
  }

  void deleteAssistantId() {
    secureStorage.delete(key: 'ff_assistantId');
  }

  String _speechToTexResponse = '';
  String get speechToTexResponse => _speechToTexResponse;
  set speechToTexResponse(String value) {
    _speechToTexResponse = value;
  }

  int _timerValue = 0;
  int get timerValue => _timerValue;
  set timerValue(int value) {
    _timerValue = value;
  }

  String _language = '';
  String get language => _language;
  set language(String value) {
    _language = value;
  }

  String _content = 'Actua como un asistente para agendamiento de citas ';
  String get content => _content;
  set content(String value) {
    _content = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
