import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this page.

  List<ContentStruct> chatHistory = [];
  void addToChatHistory(ContentStruct item) => chatHistory.add(item);
  void removeFromChatHistory(ContentStruct item) => chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void insertAtIndexInChatHistory(int index, ContentStruct item) =>
      chatHistory.insert(index, item);
  void updateChatHistoryAtIndex(int index, Function(ContentStruct) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  String threadId = '';

  String runId = '';

  String status = '';

  String complete = '';

  String content = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (threads)] action in CHAT widget.
  ApiCallResponse? apiResultr2i;
  // State field(s) for ScollingChatColumn widget.
  ScrollController? scollingChatColumn;
  // State field(s) for ChatListView widget.
  ScrollController? chatListView;
  // State field(s) for QuestionTestField widget.
  FocusNode? questionTestFieldFocusNode;
  TextEditingController? questionTestFieldController;
  String? Function(BuildContext, String?)? questionTestFieldControllerValidator;
  // Stores action output result for [Backend Call - API (message)] action in SubmitIconButton widget.
  ApiCallResponse? apiMessageCreateResult;
  // Stores action output result for [Backend Call - API (run)] action in SubmitIconButton widget.
  ApiCallResponse? apiAssistantRunResult;
  // Stores action output result for [Backend Call - API (retrieverun)] action in SubmitIconButton widget.
  ApiCallResponse? apiRetrieveRunResult;
  // Stores action output result for [Backend Call - API (messages)] action in SubmitIconButton widget.
  ApiCallResponse? apiGetMessagesResult;
  // Stores action output result for [Backend Call - API (createSpeech)] action in Button widget.
  ApiCallResponse? openaiResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    scollingChatColumn = ScrollController();
    chatListView = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    scollingChatColumn?.dispose();
    chatListView?.dispose();
    questionTestFieldFocusNode?.dispose();
    questionTestFieldController?.dispose();
  }

  /// Action blocks are added here.

  Future checkRunCompleted(BuildContext context) async {}

  Future voice(BuildContext context) async {
    ApiCallResponse? apiResult151;

    addToChatHistory(ContentStruct());
    apiResult151 = await OpenAIChatGPTAgendaGroup.threadsCopyCall.call(
      token: FFAppState().apiKey,
    );
    if ((apiResult151.succeeded ?? true)) {
      runId = FFAppState().speechToTexResponse;
      status = complete;
      complete = complete;
      threadId = (apiAssistantRunResult?.succeeded ?? true).toString();
    }
  }

  /// Additional helper methods are added here.
}
