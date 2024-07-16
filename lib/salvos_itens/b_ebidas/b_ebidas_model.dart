import '/flutter_flow/flutter_flow_util.dart';
import 'b_ebidas_widget.dart' show BEbidasWidget;
import 'package:flutter/material.dart';

class BEbidasModel extends FlutterFlowModel<BEbidasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
