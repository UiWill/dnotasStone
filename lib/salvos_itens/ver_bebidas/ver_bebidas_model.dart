import '/flutter_flow/flutter_flow_util.dart';
import 'ver_bebidas_widget.dart' show VerBebidasWidget;
import 'package:flutter/material.dart';

class VerBebidasModel extends FlutterFlowModel<VerBebidasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
