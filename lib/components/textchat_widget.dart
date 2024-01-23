import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'textchat_model.dart';
export 'textchat_model.dart';

class TextchatWidget extends StatefulWidget {
  const TextchatWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  _TextchatWidgetState createState() => _TextchatWidgetState();
}

class _TextchatWidgetState extends State<TextchatWidget> {
  late TextchatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextchatModel());

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

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectionArea(
              child: AutoSizeText(
            widget.parameter1!,
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 15.0,
                  lineHeight: 1.5,
                ),
          )),
        ],
      ),
    );
  }
}
