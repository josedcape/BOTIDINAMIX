import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'consultas_widget.dart' show ConsultasWidget;
import 'package:flutter/material.dart';

class ConsultasModel extends FlutterFlowModel<ConsultasWidget> {
  ///  Local state fields for this page.

  String? status;

  bool succeeded = false;

  String? respuesta;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in Button widget.
  ApiCallResponse? openaiResult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for imagen_url widget.
  FocusNode? imagenUrlFocusNode;
  TextEditingController? imagenUrlController;
  String? Function(BuildContext, String?)? imagenUrlControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    imagenUrlFocusNode?.dispose();
    imagenUrlController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
