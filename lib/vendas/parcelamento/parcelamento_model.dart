import '/flutter_flow/flutter_flow_util.dart';
import 'parcelamento_widget.dart' show ParcelamentoWidget;
import 'package:flutter/material.dart';

class ParcelamentoModel extends FlutterFlowModel<ParcelamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
