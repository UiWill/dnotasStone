import '/flutter_flow/flutter_flow_util.dart';
import 'ver_vendas_widget.dart' show VerVendasWidget;
import 'package:flutter/material.dart';

class VerVendasModel extends FlutterFlowModel<VerVendasWidget> {
  ///  Local state fields for this page.

  DateTime? dataini;

  DateTime? datafin;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
