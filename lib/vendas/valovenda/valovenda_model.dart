import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'valovenda_widget.dart' show ValovendaWidget;
import 'package:flutter/material.dart';

class ValovendaModel extends FlutterFlowModel<ValovendaWidget> {
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
    if ((FFAppState().VAR1 > 0.0) && (FFAppState().var2 <= 0.0)) {
      FFAppState().var2 = functions.strTodouble(
          functions.parseCurrency(FFAppState().formattedValue).toString())!;
      if (actionButton == '+') {
        FFAppState().valorFinal =
            (FFAppState().VAR1 + FFAppState().var2).toString();
        FFAppState().update(() {});
        FFAppState().ref1 = '2';
      } else if (actionButton == '-') {
        FFAppState().valorFinal = (FFAppState().VAR1).toString();
        FFAppState().var2 = 0.0;
      } else if (actionButton == '*') {
        FFAppState().valorFinal =
            (FFAppState().VAR1 * FFAppState().var2).toString();
        FFAppState().ref1 = '2';
      }

      FFAppState().formattedValue = '0,00';
      FFAppState().valorFinalDouble =
          functions.strTodouble(FFAppState().valorFinal)!;
    } else if ((FFAppState().var2 > 0.0) && (FFAppState().var3 <= 0.0)) {
      FFAppState().var3 = functions.strTodouble(
          functions.parseCurrency(FFAppState().formattedValue).toString())!;
      FFAppState().finalDouble = functions.strTodouble(
          functions.parseCurrency(FFAppState().valorFinal).toString())!;
      if (actionButton == '+') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble + FFAppState().var3).toString();
        FFAppState().ref1 = '3';
      } else if (actionButton == '-') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble - FFAppState().var2).toString();
        FFAppState().removeFromPainelProd(PainelStruct(
          produtoPainel: FFAppState().painelProd.last.produtoPainel,
          valorPainel: FFAppState().painelProd.last.valorPainel,
        ));
        FFAppState().var3 = 0.0;
        FFAppState().var2 = 0.0;
      } else if (actionButton == '*') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble * FFAppState().var3).toString();
        FFAppState().ref1 = '3';
      }

      FFAppState().formattedValue = '0,00';
      FFAppState().valorFinalDouble =
          functions.strTodouble(FFAppState().valorFinal)!;
    } else if ((FFAppState().var3 > 0.0) && (FFAppState().var4 <= 0.0)) {
      FFAppState().finalDouble = functions.strTodouble(
          functions.parseCurrency(FFAppState().valorFinal).toString())!;
      FFAppState().var4 = functions.strTodouble(
          functions.parseCurrency(FFAppState().formattedValue).toString())!;
      if (actionButton == '+') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble + FFAppState().var4).toString();
        FFAppState().ref1 = '4';
      } else if (actionButton == '-') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble - FFAppState().var3).toString();
        FFAppState().removeFromPainelProd(PainelStruct(
          produtoPainel: FFAppState().painelProd.last.produtoPainel,
          valorPainel: FFAppState().painelProd.last.valorPainel,
        ));
        FFAppState().var4 = 0.0;
        FFAppState().var3 = 0.0;
      } else if (actionButton == '*') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble * FFAppState().var4).toString();
        FFAppState().ref1 = '4';
      }

      FFAppState().formattedValue = '0,00';
      FFAppState().valorFinalDouble =
          functions.strTodouble(FFAppState().valorFinal)!;
    } else if ((FFAppState().var4 > 0.0) && (FFAppState().var5 <= 0.0)) {
      FFAppState().finalDouble = functions.strTodouble(
          functions.parseCurrency(FFAppState().valorFinal).toString())!;
      FFAppState().var5 = functions.strTodouble(
          functions.parseCurrency(FFAppState().formattedValue).toString())!;
      if (actionButton == '+') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble + FFAppState().var5).toString();
        FFAppState().ref1 = '5';
      } else if (actionButton == '-') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble - FFAppState().var4).toString();
        FFAppState().removeFromPainelProd(PainelStruct(
          produtoPainel: FFAppState().painelProd.last.produtoPainel,
          valorPainel: FFAppState().painelProd.last.valorPainel,
        ));
        FFAppState().var5 = 0.0;
        FFAppState().var4 = 0.0;
      } else if (actionButton == '*') {
        FFAppState().valorFinal =
            (FFAppState().finalDouble * FFAppState().var5).toString();
        FFAppState().ref1 = '5';
      }

      FFAppState().formattedValue = '0,00';
      FFAppState().valorFinalDouble =
          functions.strTodouble(FFAppState().valorFinal)!;
    } else {
      FFAppState().VAR1 = functions.parseCurrency(FFAppState().formattedValue)!;
      FFAppState().formattedValue = '0,00';
      FFAppState().valorFinal = FFAppState().VAR1.toString();
      FFAppState().valorFinalDouble = FFAppState().VAR1;
      FFAppState().ref1 = '1';
    }
  }
}
