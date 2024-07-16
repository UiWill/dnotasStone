import '/flutter_flow/flutter_flow_util.dart';
import 'escolher_o_metodo_widget.dart' show EscolherOMetodoWidget;
import 'package:flutter/material.dart';

class EscolherOMetodoModel extends FlutterFlowModel<EscolherOMetodoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
