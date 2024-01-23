import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/blank_list_component/blank_list_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> with TickerProviderStateMixin {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setDarkModeSetting(context, ThemeMode.dark);
      _model.apiResultr2i = await OpenAIChatGPTGroup.threadsCall.call(
        token: FFAppState().apiKey,
      );
      if ((_model.apiResultr2i?.succeeded ?? true)) {
        setState(() {
          _model.threadId = OpenAIChatGPTGroup.threadsCall.threadId(
            (_model.apiResultr2i?.jsonBody ?? ''),
          )!;
        });
      }
    });

    _model.questionTestFieldController ??= TextEditingController();
    _model.questionTestFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/blur_bg@1x.png',
                ).image,
              ),
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                constraints: const BoxConstraints(
                  maxWidth: 770.0,
                ),
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await _model.checkRunCompleted(context);
                      },
                      child: const FlutterFlowVideoPlayer(
                        path: 'assets/videos/Elias_codigos_intro.mp4',
                        videoType: VideoType.asset,
                        width: 300.0,
                        height: 200.0,
                        autoPlay: true,
                        looping: true,
                        showControls: false,
                        allowFullScreen: true,
                        allowPlaybackSpeedMenu: false,
                        lazyLoad: true,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Menu',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.topToBottom,
                                ),
                              },
                            );
                          },
                          child: Icon(
                            Icons.home,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 28.0,
                          ),
                        ),
                      ),
                    ),
                    GradientText(
                      FFLocalizations.of(context).getText(
                        '4fxr4y60' /* CHAT DE CONSULTA ESPECIALIZADA... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontStyle: FontStyle.italic,
                          ),
                      colors: [
                        FlutterFlowTheme.of(context).primary,
                        FlutterFlowTheme.of(context).secondary
                      ],
                      gradientDirection: GradientDirection.ltr,
                      gradientType: GradientType.linear,
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Container(
                                  width: 100.0,
                                  height: 24.0,
                                  decoration: const BoxDecoration(),
                                ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[]
                                          .divide(const SizedBox(height: 4.0)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 5.0,
                                        sigmaY: 4.0,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .overlay,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: const Color(0xFFF9D158),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          controller: _model.scollingChatColumn,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((_model.apiResultr2i
                                                      ?.succeeded ??
                                                  true))
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/loading_logicbus.gif',
                                                      width: 40.0,
                                                      height: 29.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 29.0,
                                                          16.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final chat = _model
                                                          .chatHistory
                                                          .toList();
                                                      if (chat.isEmpty) {
                                                        return const SizedBox(
                                                          width:
                                                              double.infinity,
                                                          child:
                                                              BlankListComponentWidget(),
                                                        );
                                                      }
                                                      return ListView.separated(
                                                        padding:
                                                            const EdgeInsets.fromLTRB(
                                                          0,
                                                          16.0,
                                                          0,
                                                          16.0,
                                                        ),
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount: chat.length,
                                                        separatorBuilder:
                                                            (_, __) => const SizedBox(
                                                                height: 16.0),
                                                        itemBuilder: (context,
                                                            chatIndex) {
                                                          final chatItem =
                                                              chat[chatIndex];
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              if (chatIndex %
                                                                      2 !=
                                                                  0)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxWidth:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width >= 1170.0) {
                                                                                return 700.0;
                                                                              } else if (MediaQuery.sizeOf(context).width <= 470.0) {
                                                                                return 330.0;
                                                                              } else {
                                                                                return 530.0;
                                                                              }
                                                                            }(),
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent2,
                                                                            boxShadow: const [
                                                                              BoxShadow(
                                                                                blurRadius: 3.0,
                                                                                color: Color(0x33000000),
                                                                                offset: Offset(0.0, 1.0),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 1.0,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                SelectionArea(
                                                                                    child: AutoSizeText(
                                                                                  chatItem.text.value,
                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                        fontFamily: 'Outfit',
                                                                                        color: FlutterFlowTheme.of(context).info,
                                                                                        fontSize: 15.0,
                                                                                        lineHeight: 1.5,
                                                                                      ),
                                                                                )),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation1']!),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              6.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await Clipboard.setData(ClipboardData(text: chatItem.text.value));
                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                SnackBar(
                                                                                  content: Text(
                                                                                    'Response copied to clipboard.',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: const Color(0x00000000),
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                  ),
                                                                                  duration: const Duration(milliseconds: 2000),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                              );
                                                                            },
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.content_copy,
                                                                                    color: FlutterFlowTheme.of(context).primary30,
                                                                                    size: 10.0,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'giueqt3g' /* COPIAR  */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).primary30,
                                                                                        fontSize: 10.0,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              if (chatIndex %
                                                                      2 ==
                                                                  0)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Container(
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width >=
                                                                              1170.0) {
                                                                            return 700.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <=
                                                                              470.0) {
                                                                            return 330.0;
                                                                          } else {
                                                                            return 530.0;
                                                                          }
                                                                        }(),
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).lineColor,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(12.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              chatItem.text.value,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation2']!),
                                                                  ],
                                                                ),
                                                            ],
                                                          );
                                                        },
                                                        controller:
                                                            _model.chatListView,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: 300.0,
                                    child: TextFormField(
                                      controller:
                                          _model.questionTestFieldController,
                                      focusNode:
                                          _model.questionTestFieldFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '4iv7ker0' /* Escribir aca  */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      maxLines: 8,
                                      minLines: 1,
                                      keyboardType: TextInputType.multiline,
                                      validator: _model
                                          .questionTestFieldControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.ads_click,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 30.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    // Create a message
                                    _model.apiMessageCreateResult =
                                        await OpenAIChatGPTGroup.messageCall
                                            .call(
                                      threadId: _model.threadId,
                                      content: _model
                                          .questionTestFieldController.text,
                                      token: FFAppState().apiKey,
                                    );
                                    if ((_model.apiMessageCreateResult
                                            ?.succeeded ??
                                        true)) {
                                      // Add Message to Chat History
                                      setState(() {
                                        _model.addToChatHistory(
                                            ContentStruct.maybeFromMap(
                                                getJsonField(
                                          (_model.apiMessageCreateResult
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.content[0]''',
                                        ))!);
                                      });
                                      // Clear TextField
                                      setState(() {
                                        _model.questionTestFieldController
                                            ?.clear();
                                      });
                                      // Wait for UI to catchup
                                      await Future.delayed(
                                          const Duration(milliseconds: 500));
                                      // Scroll to bottom
                                      await _model.scollingChatColumn
                                          ?.animateTo(
                                        _model.scollingChatColumn!.position
                                            .maxScrollExtent,
                                        duration: const Duration(milliseconds: 100),
                                        curve: Curves.ease,
                                      );
                                      // Run the assistant
                                      _model.apiAssistantRunResult =
                                          await OpenAIChatGPTGroup.runCall.call(
                                        threadId: _model.threadId,
                                        assistantId: FFAppState().assistantId,
                                        token: FFAppState().apiKey,
                                      );
                                      if ((_model.apiAssistantRunResult
                                              ?.succeeded ??
                                          true)) {
                                        // Store the runid
                                        setState(() {
                                          _model.runId =
                                              OpenAIChatGPTGroup.runCall.runId(
                                            (_model.apiAssistantRunResult
                                                    ?.jsonBody ??
                                                ''),
                                          )!;
                                        });
                                        while (_model.status != 'completed') {
                                          _model.apiRetrieveRunResult =
                                              await OpenAIChatGPTGroup
                                                  .retrieverunCall
                                                  .call(
                                            threadId: _model.threadId,
                                            runId: _model.runId,
                                            token: FFAppState().apiKey,
                                          );
                                          if ((_model.apiRetrieveRunResult
                                                  ?.succeeded ??
                                              true)) {
                                            setState(() {
                                              _model.status = OpenAIChatGPTGroup
                                                  .retrieverunCall
                                                  .status(
                                                (_model.apiRetrieveRunResult
                                                        ?.jsonBody ??
                                                    ''),
                                              )!;
                                            });
                                            if (_model.status ==
                                                _model.complete) {
                                              // Delay 3 seconds before next check
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 3000));
                                            }
                                          }
                                        }
                                        // Get latest message
                                        _model.apiGetMessagesResult =
                                            await OpenAIChatGPTGroup
                                                .messagesCall
                                                .call(
                                          threadId: _model.threadId,
                                          token: FFAppState().apiKey,
                                        );
                                        if ((_model.apiGetMessagesResult
                                                ?.succeeded ??
                                            true)) {
                                          // Add message to chat history
                                          setState(() {
                                            _model.addToChatHistory(
                                                ContentStruct.maybeFromMap(
                                                    OpenAIChatGPTGroup
                                                        .messagesCall
                                                        .data(
                                              (_model.apiGetMessagesResult
                                                      ?.jsonBody ??
                                                  ''),
                                            ))!);
                                          });
                                          // Wait for UI to catchup
                                          await Future.delayed(const Duration(
                                              milliseconds: 500));
                                          // Scroll to bottom
                                          await _model.scollingChatColumn
                                              ?.animateTo(
                                            _model.scollingChatColumn!.position
                                                .maxScrollExtent,
                                            duration:
                                                const Duration(milliseconds: 100),
                                            curve: Curves.ease,
                                          );
                                          // Reset completed status
                                          setState(() {
                                            _model.status = '';
                                          });
                                        }
                                      }
                                    }

                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Container(
                        width: 100.0,
                        height: 60.0,
                        decoration: const BoxDecoration(),
                      ),
                    FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          _model.chatHistory =
                              _model.chatHistory.toList().cast<ContentStruct>();
                        });
                        _model.openaiResult =
                            await OpenAIAPIGroup.createSpeechCall.call(
                          apiKeyAuth: FFAppState().apiKey,
                        );
                        await Future.delayed(
                            const Duration(milliseconds: 4000));
                        if (getJsonField(
                          (_model.openaiResult?.jsonBody ?? ''),
                          r'''$['index']''',
                        )) {
                          setState(() {
                            _model.content = getJsonField(
                              (_model.openaiResult?.jsonBody ?? ''),
                              r'''$['content']''',
                            ).toString();
                          });
                          setState(() {
                            _model.questionTestFieldController?.clear();
                          });
                        }
                        await _model.chatListView?.animateTo(
                          _model.chatListView!.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.ease,
                        );

                        setState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'plznskqp' /* ESCUCHAR */,
                      ),
                      icon: const Icon(
                        Icons.mic,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).warning,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(812.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
