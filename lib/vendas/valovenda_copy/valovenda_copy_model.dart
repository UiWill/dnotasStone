import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'valovenda_copy_widget.dart' show ValovendaCopyWidget;
import 'package:flutter/material.dart';

class ValovendaCopyModel extends FlutterFlowModel<ValovendaCopyWidget> {
  ///  Local state fields for this component.

  double? preco;

  String? var1;

  double? preco2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future clickcComando(
    BuildContext context, {
    String? actionButton,
  }) async {
    if (FFAppState().VAR1 > 0.0) {
      FFAppState().var2 = functions.strTodouble(
          functions.parseCurrency(FFAppState().formattedValue).toString())!;
      if (actionButton == '+') {
        FFAppState().formattedValue =
            (FFAppState().VAR1 + FFAppState().var2).toString();
      } else if (actionButton == '-') {
        FFAppState().formattedValue =
            (FFAppState().VAR1 - FFAppState().var2).toString();
      } else if (actionButton == '*') {
        FFAppState().formattedValue =
            (FFAppState().VAR1 * FFAppState().var2).toString();
      }
    } else {
      FFAppState().VAR1 = functions.parseCurrency(FFAppState().formattedValue)!;
      FFAppState().formattedValue = '0,00';
    }
  }
}
