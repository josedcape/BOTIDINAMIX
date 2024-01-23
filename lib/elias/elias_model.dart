import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'elias_widget.dart' show EliasWidget;
import 'package:flutter/material.dart';

class EliasModel extends FlutterFlowModel<EliasWidget> {
  ///  Local state fields for this page.

  dynamic chatHistory;

  String content = '';

  String chatItem = '';

  String inputcontent = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for QuestionTestField widget.
  FocusNode? questionTestFieldFocusNode;
  TextEditingController? questionTestFieldController;
  String? Function(BuildContext, String?)? questionTestFieldControllerValidator;
  // Stores action output result for [Backend Call - API (MIXTRAL )] action in SubmitIconButton widget.
  ApiCallResponse? openaiResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
    questionTestFieldFocusNode?.dispose();
    questionTestFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
