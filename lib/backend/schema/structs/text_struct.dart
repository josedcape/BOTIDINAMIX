// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TextStruct extends BaseStruct {
  TextStruct({
    String? value,
  }) : _value = value;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;
  bool hasValue() => _value != null;

  static TextStruct fromMap(Map<String, dynamic> data) => TextStruct(
        value: data['value'] as String?,
      );

  static TextStruct? maybeFromMap(dynamic data) =>
      data is Map ? TextStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
      }.withoutNulls;

  static TextStruct fromSerializableMap(Map<String, dynamic> data) =>
      TextStruct(
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TextStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TextStruct && value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([value]);
}

TextStruct createTextStruct({
  String? value,
}) =>
    TextStruct(
      value: value,
    );
