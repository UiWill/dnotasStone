import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/vendas/valovenda/valovenda_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'finalizar_venda_copy_model.dart';
export 'finalizar_venda_copy_model.dart';

class FinalizarVendaCopyWidget extends StatefulWidget {
  const FinalizarVendaCopyWidget({super.key});

  @override
  State<FinalizarVendaCopyWidget> createState() =>
      _FinalizarVendaCopyWidgetState();
}

class _FinalizarVendaCopyWidgetState extends State<FinalizarVendaCopyWidget> {
  late FinalizarVendaCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinalizarVendaCopyModel());

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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Color(0xFF156F61),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: const ValovendaWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));

                    FFAppState().variavel1 = 0.0;
                    FFAppState().creditoparcelado = '';
                    FFAppState().preco = '';
                    FFAppState().metodo = '';
                    FFAppState().VAR1 = 0.0;
                    FFAppState().var2 = 0.0;
                    setState(() {});
                  },
                ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                      child: Text(
                        FFAppState().dataHora,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          FFAppState().addToHora(HoraStruct(
                            hora: FFAppState().dataHora,
                          ));
                          setState(() {});

                          await VerNotasRecord.collection
                              .doc()
                              .set(createVerNotasRecordData(
                                valorFire: FFAppState().variavel1,
                                dataFire: FFAppState().dataHora,
                                metodoFire: FFAppState().metodo,
                              ));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Venda concluida',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor: const Color(0xFF156F61),
                            ),
                          );
                          FFAppState().variavel1 = 0.0;
                          FFAppState().creditoparcelado = '';
                          FFAppState().preco = '';
                          FFAppState().dataHora = '';
                          setState(() {});

                          context.pushNamed('HomePage');
                        },
                        text: FFLocalizations.of(context).getText(
                          '8hkbdbl2' /* Finalizar venda */,
                        ),
                        options: FFButtonOptions(
                          height: 87.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF156F61),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
