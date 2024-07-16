import '/flutter_flow/flutter_flow_util.dart';
import 'comanda_on_widget.dart' show ComandaOnWidget;
import 'package:flutter/material.dart';

class ComandaOnModel extends FlutterFlowModel<ComandaOnWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
