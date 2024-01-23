// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentStruct extends BaseStruct {
  ContentStruct({
    String? type,
    TextStruct? text,
  })  : _type = type,
        _text = text;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "text" field.
  TextStruct? _text;
  TextStruct get text => _text ?? TextStruct();
  set text(TextStruct? val) => _text = val;
  void updateText(Function(TextStruct) updateFn) =>
      updateFn(_text ??= TextStruct());
  bool hasText() => _text != null;

  static ContentStruct fromMap(Map<String, dynamic> data) => ContentStruct(
        type: data['type'] as String?,
        text: TextStruct.maybeFromMap(data['text']),
      );

  static ContentStruct? maybeFromMap(dynamic data) =>
      data is Map ? ContentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'text': _text?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ContentStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContentStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        text: deserializeStructParam(
          data['text'],
          ParamType.DataStruct,
          false,
          structBuilder: TextStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ContentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContentStruct && type == other.type && text == other.text;
  }

  @override
  int get hashCode => const ListEquality().hash([type, text]);
}

ContentStruct createContentStruct({
  String? type,
  TextStruct? text,
}) =>
    ContentStruct(
      type: type,
      text: text ?? TextStruct(),
    );
