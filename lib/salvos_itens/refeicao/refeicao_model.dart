import '/flutter_flow/flutter_flow_util.dart';
import 'refeicao_widget.dart' show RefeicaoWidget;
import 'package:flutter/material.dart';

class RefeicaoModel extends FlutterFlowModel<RefeicaoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
