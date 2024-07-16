import '/flutter_flow/flutter_flow_util.dart';
import 'variavei_produtos_widget.dart' show VariaveiProdutosWidget;
import 'package:flutter/material.dart';

class VariaveiProdutosModel extends FlutterFlowModel<VariaveiProdutosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
