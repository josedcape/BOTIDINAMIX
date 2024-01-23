import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'miscelaneadereflexiones_copy_model.dart';
export 'miscelaneadereflexiones_copy_model.dart';

class MiscelaneadereflexionesCopyWidget extends StatefulWidget {
  const MiscelaneadereflexionesCopyWidget({super.key});

  @override
  _MiscelaneadereflexionesCopyWidgetState createState() =>
      _MiscelaneadereflexionesCopyWidgetState();
}

class _MiscelaneadereflexionesCopyWidgetState
    extends State<MiscelaneadereflexionesCopyWidget> {
  late MiscelaneadereflexionesCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MiscelaneadereflexionesCopyModel());

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
        backgroundColor: const Color(0xFF1F1A24),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                ),
                Container(
                  width: 412.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: GradientText(
                    FFLocalizations.of(context).getText(
                      '35dot07c' /* MISCELANEA DE REFLEXIONES */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 28.0,
                        ),
                    colors: [
                      FlutterFlowTheme.of(context).primary,
                      FlutterFlowTheme.of(context).secondary
                    ],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                      child: FlutterFlowAudioPlayer(
                        audio: Audio.network(
                          'https://filesamples.com/samples/audio/mp3/sample3.mp3',
                          metas: Metas(
                            id: 'sample3.mp3-803da840',
                          ),
                        ),
                        titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
                        playbackDurationTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        playbackButtonColor:
                            FlutterFlowTheme.of(context).primary,
                        activeTrackColor:
                            FlutterFlowTheme.of(context).alternate,
                        elevation: 4.0,
                        playInBackground:
                            PlayInBackground.disabledRestoreOnForeground,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/images/R_(5).jpg',
                    width: double.infinity,
                    height: 184.0,
                    fit: BoxFit.fill,
                    alignment: const Alignment(0.0, 0.0),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                    child: FlutterFlowAudioPlayer(
                      audio: Audio(
                        'assets/audios/ElevenLabs_2023-10-31T18_57_14_Salome_ivc_s58_sb89_se0_b_m2.mp3',
                        metas: Metas(
                          id: 'ElevenLabs_2023-10-31T18_57_14_Salome_ivc_s58_sb89_se0_b_m2.mp3-2544483e',
                          title: '"Te he mandado a que te esfuerces "',
                        ),
                      ),
                      titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
                      playbackDurationTextStyle:
                          FlutterFlowTheme.of(context).labelMedium,
                      fillColor: FlutterFlowTheme.of(context).accent4,
                      playbackButtonColor: FlutterFlowTheme.of(context).primary,
                      activeTrackColor: FlutterFlowTheme.of(context).alternate,
                      elevation: 2.0,
                      playInBackground:
                          PlayInBackground.disabledRestoreOnForeground,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Image.asset(
                    'assets/images/R_(6).jpg',
                    width: double.infinity,
                    height: 172.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Opacity(
                  opacity: 0.4,
                  child: FlutterFlowAudioPlayer(
                    audio: Audio(
                      'assets/audios/efesios-reflexion.mp3',
                      metas: Metas(
                        id: 'efesios-reflexion.mp3-29cb460d',
                        title: '"Ponte la armadura "',
                      ),
                    ),
                    titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
                    playbackDurationTextStyle:
                        FlutterFlowTheme.of(context).labelMedium,
                    fillColor: FlutterFlowTheme.of(context).accent4,
                    playbackButtonColor: FlutterFlowTheme.of(context).primary,
                    activeTrackColor: FlutterFlowTheme.of(context).alternate,
                    elevation: 4.0,
                    playInBackground:
                        PlayInBackground.disabledRestoreOnForeground,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/images/R_(7).jpg',
                      width: double.infinity,
                      height: 184.0,
                      fit: BoxFit.cover,
                      alignment: const Alignment(0.0, 1.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
