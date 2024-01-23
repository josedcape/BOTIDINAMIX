import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'blank_list_component_model.dart';
export 'blank_list_component_model.dart';

class BlankListComponentWidget extends StatefulWidget {
  const BlankListComponentWidget({super.key});

  @override
  _BlankListComponentWidgetState createState() =>
      _BlankListComponentWidgetState();
}

class _BlankListComponentWidgetState extends State<BlankListComponentWidget> {
  late BlankListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlankListComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: () {
                if (MediaQuery.sizeOf(context).width >= 1170.0) {
                  return 700.0;
                } else if (MediaQuery.sizeOf(context).width <= 470.0) {
                  return 330.0;
                } else {
                  return 530.0;
                }
              }(),
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary30,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectionArea(
                      child: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      'jp9ypnys' /* Bienvenido!!
al chatbot  de lo... */
                      ,
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 14.0,
                          lineHeight: 1.5,
                        ),
                  )),
                ]
                    .addToStart(const SizedBox(height: 12.0))
                    .addToEnd(const SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await launchURL(
                  'https://instagram.com/cristoverdades?igshid=OGQ5ZDc2ODk2ZA==');
            },
            child: Icon(
              Icons.auto_fix_high,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 34.0,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.0, -1.0),
          child: GradientText(
            FFLocalizations.of(context).getText(
              'bjghgmy5' /* presiona aca  */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).secondary
            ],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
        ),
      ],
    );
  }
}
