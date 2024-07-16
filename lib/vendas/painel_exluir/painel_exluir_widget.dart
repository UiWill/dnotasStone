import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendas/valovenda/valovenda_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'painel_exluir_model.dart';
export 'painel_exluir_model.dart';

class PainelExluirWidget extends StatefulWidget {
  const PainelExluirWidget({super.key});

  @override
  State<PainelExluirWidget> createState() => _PainelExluirWidgetState();
}

class _PainelExluirWidgetState extends State<PainelExluirWidget> {
  late PainelExluirModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PainelExluirModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Builder(
              builder: (context) {
                final excluir = FFAppState().painelProd.toList();

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: excluir.length,
                  itemBuilder: (context, excluirIndex) {
                    final excluirItem = excluir[excluirIndex];
                    return Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                excluirItem.id,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'heqgcrsp' /* - */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                excluirItem.produtoPainel,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'azfim5g4' /* R$: */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              excluirItem.valorPainel
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      const Color(0xFF510404),
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 40.0,
                                                  fillColor: const Color(0x4CFFFFFF),
                                                  icon: const Icon(
                                                    Icons.delete,
                                                    color: Color(0xFF420202),
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () async {
                                                    if (excluirItem.id == '1') {
                                                      FFAppState().menosTotal =
                                                          FFAppState().VAR1;
                                                      FFAppState().VAR1 = 0.0;
                                                      FFAppState().ref1 = '';
                                                      setState(() {});
                                                      FFAppState()
                                                          .valorFinal = (FFAppState()
                                                                  .valorFinalDouble -
                                                              FFAppState()
                                                                  .menosTotal)
                                                          .toString();
                                                      setState(() {});
                                                    } else if (excluirItem.id ==
                                                        '2') {
                                                      FFAppState().menosTotal =
                                                          FFAppState().var2;
                                                      FFAppState().var2 = 0.0;
                                                      FFAppState().ref2 = '';
                                                      setState(() {});
                                                      FFAppState()
                                                          .valorFinal = (FFAppState()
                                                                  .valorFinalDouble -
                                                              FFAppState()
                                                                  .menosTotal)
                                                          .toString();
                                                      setState(() {});
                                                    } else if (excluirItem.id ==
                                                        '3') {
                                                      FFAppState().menosTotal =
                                                          FFAppState().var3;
                                                      FFAppState().var3 = 0.0;
                                                      FFAppState().ref3 = '';
                                                      setState(() {});
                                                      FFAppState()
                                                          .valorFinal = (FFAppState()
                                                                  .valorFinalDouble -
                                                              FFAppState()
                                                                  .menosTotal)
                                                          .toString();
                                                      setState(() {});
                                                    } else if (excluirItem.id ==
                                                        '4') {
                                                      FFAppState().menosTotal =
                                                          FFAppState().var4;
                                                      FFAppState().var4 = 0.0;
                                                      FFAppState().ref4 = '';
                                                      setState(() {});
                                                      FFAppState()
                                                          .valorFinal = (FFAppState()
                                                                  .valorFinalDouble -
                                                              FFAppState()
                                                                  .menosTotal)
                                                          .toString();
                                                      setState(() {});
                                                    } else if (excluirItem.id ==
                                                        '5') {
                                                      FFAppState().menosTotal =
                                                          FFAppState().var5;
                                                      FFAppState().var5 = 0.0;
                                                      FFAppState().ref5 = '';
                                                      setState(() {});
                                                      FFAppState()
                                                          .valorFinal = (FFAppState()
                                                                  .valorFinalDouble -
                                                              FFAppState()
                                                                  .menosTotal)
                                                          .toString();
                                                      setState(() {});
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'nada feito',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    }

                                                    FFAppState()
                                                            .valorFinalDouble =
                                                        functions.strTodouble(
                                                            FFAppState()
                                                                .valorFinal)!;
                                                    setState(() {});
                                                    FFAppState()
                                                        .removeAtIndexFromPainelProd(
                                                            excluirIndex);
                                                    setState(() {});
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              const ValovendaWidget(),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
