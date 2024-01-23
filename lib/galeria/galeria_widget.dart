import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'galeria_model.dart';
export 'galeria_model.dart';

class GaleriaWidget extends StatefulWidget {
  const GaleriaWidget({super.key});

  @override
  _GaleriaWidgetState createState() => _GaleriaWidgetState();
}

class _GaleriaWidgetState extends State<GaleriaWidget> {
  late GaleriaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GaleriaModel());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowAudioPlayer(
                      audio: Audio(
                        'assets/audios/explicacion-chat.mp3',
                        metas: Metas(
                          id: 'explicacion-chat.mp3-cf5e3d2c',
                          title: 'Como funciona?',
                        ),
                      ),
                      titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
                      playbackDurationTextStyle:
                          FlutterFlowTheme.of(context).labelMedium,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      playbackButtonColor: FlutterFlowTheme.of(context).primary,
                      activeTrackColor: FlutterFlowTheme.of(context).alternate,
                      elevation: 4.0,
                      playInBackground:
                          PlayInBackground.disabledRestoreOnForeground,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await launchURL(
                              'https://cdn.leonardo.ai/users/645c3d5c-ca1b-4ce8-aefa-a091494e0d09/generations/875d3616-b834-43d4-a3b7-edbae74b850e/Default_un_joven_caminando_en_un_bosque_en_medio_de_problemas_0.jpg');
                        },
                        child: Image.asset(
                          'assets/images/SDXL_09_jesus_sonriendo_en_el_agua_fotorrealismo_fondo_color_c_0.jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'etirntvz' /* IMAGENES PARA REFLEXIONAR  */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 12.0),
                      child: GradientText(
                        FFLocalizations.of(context).getText(
                          '51n1h7f1' /* Explora diferentes imagenes, e... */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        colors: [
                          FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).secondary
                        ],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL(
                                  'https://cdn.leonardo.ai/users/645c3d5c-ca1b-4ce8-aefa-a091494e0d09/generations/875d3616-b834-43d4-a3b7-edbae74b850e/Default_un_joven_caminando_en_un_bosque_en_medio_de_problemas_0.jpg');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Default_un_joven_caminando_en_un_bosque_en_medio_de_problemas_0.jpg',
                                width: 150.0,
                                height: 150.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL(
                                  'https://cdn.leonardo.ai/users/645c3d5c-ca1b-4ce8-aefa-a091494e0d09/generations/d5bdd0d6-23c6-484a-881c-a0e830915f1b/DreamShaper_v7_genera_una_imagen_de_jesus_enseando_en_el_unive_0.jpg');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/DreamShaper_v7_genera_una_imagen_de_jesus_enseando_en_el_unive_0.jpg',
                                width: 150.0,
                                height: 150.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/DreamShaper_v7_un_toro_furioso_en_medio_del_desierto_0.jpg',
                              width: 150.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL(
                                  'https://cdn.leonardo.ai/users/645c3d5c-ca1b-4ce8-aefa-a091494e0d09/generations/5b1f9bcf-69ca-4fd7-8b9c-4b27e1c9ed70/Leonardo_Vision_XL_Genera_una_biblia_con_un_efecto_divino_en_u_0.jpg');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Leonardo_Vision_XL_Genera_una_biblia_con_un_efecto_divino_en_u_0_(1).jpg',
                                width: 150.0,
                                height: 150.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL('');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Default_Jesus_my_best_friend_1_feedf40d-43f7-4f1c-be56-080c61770e7b_1.jpg',
                                width: 150.0,
                                height: 150.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Espiritu-Santo.jpg',
                              width: 150.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).accent1,
                    hoverColor: FlutterFlowTheme.of(context).warning,
                    icon: Icon(
                      Icons.cabin,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      context.pushNamed(
                        'Menu',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                          ),
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
