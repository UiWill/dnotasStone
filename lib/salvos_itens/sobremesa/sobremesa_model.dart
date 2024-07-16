import '/flutter_flow/flutter_flow_util.dart';
import 'sobremesa_widget.dart' show SobremesaWidget;
import 'package:flutter/material.dart';

class SobremesaModel extends FlutterFlowModel<SobremesaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
