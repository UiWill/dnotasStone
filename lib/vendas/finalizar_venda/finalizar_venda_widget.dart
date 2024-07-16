import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/vendas/valovenda/valovenda_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'finalizar_venda_model.dart';
export 'finalizar_venda_model.dart';

class FinalizarVendaWidget extends StatefulWidget {
  const FinalizarVendaWidget({
    super.key,
    this.jjj,
  });

  final List<PainelStruct>? jjj;

  @override
  State<FinalizarVendaWidget> createState() => _FinalizarVendaWidgetState();
}

class _FinalizarVendaWidgetState extends State<FinalizarVendaWidget> {
  late FinalizarVendaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinalizarVendaModel());

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
      child: StreamBuilder<List<VerNotasRecord>>(
        stream: queryVerNotasRecord(
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<VerNotasRecord> columnVerNotasRecordList = snapshot.data!;

          // Return an empty Container when the item does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final columnVerNotasRecord = columnVerNotasRecordList.isNotEmpty
              ? columnVerNotasRecordList.first
              : null;
          return Column(
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
                        FFAppState().var2 = 0.0;
                        FFAppState().VAR1 = 0.0;
                        setState(() {});
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 30.0, 0.0),
                          child: Text(
                            FFAppState().dataHora,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().update(() {});
                              FFAppState().addToHora(HoraStruct(
                                hora: FFAppState().dataHora,
                              ));
                              FFAppState().id = (double id) {
                                return id++;
                              }(FFAppState().id);
                              setState(() {});

                              await VerNotasRecord.collection
                                  .doc()
                                  .set(createVerNotasRecordData(
                                    valorFire: FFAppState().variavel1,
                                    dataFire: FFAppState().data,
                                    metodoFire: FFAppState().metodo,
                                    dataFull: FFAppState().dataHora,
                                    idCONTA: FFAppState().idContador,
                                  ));
                              await ApiAwsCall.call(
                                metodo: FFAppState().metodo,
                                parcela: FFAppState().parcelaAPI,
                                data: FFAppState().dataHora,
                                valor: FFAppState().variavel1,
                                id: FFAppState().idContador,
                                cautYA07: random_data.randomString(
                                  14,
                                  14,
                                  false,
                                  false,
                                  true,
                                ),
                                tBandYA06: 'VISA',
                                cnpjYa05: '16501555000823',
                                item: FFAppState().I1,
                                qtd: FFAppState().qt1,
                                item2: FFAppState().I2,
                                qtd2: FFAppState().qt2,
                                item3: FFAppState().I3,
                                qtd3: FFAppState().qt3,
                                item4: FFAppState().I4,
                                qt4: FFAppState().qt4,
                                item5: FFAppState().I5,
                                qtd5: FFAppState().qt5,
                              );

                              FFAppState().valorFinalDouble = 0.0;
                              FFAppState().menosTotal = 0.0;
                              FFAppState().qt4 = 0.0;
                              FFAppState().qt3 = 0.0;
                              FFAppState().qt5 = 0.0;
                              FFAppState().qt2 = 0.0;
                              FFAppState().qt1 = 0.0;
                              FFAppState().I5 = '';
                              FFAppState().I4 = '';
                              FFAppState().I3 = '';
                              FFAppState().I2 = '';
                              FFAppState().I1 = '';
                              FFAppState().idContador =
                                  FFAppState().idContador + 1.0;
                              FFAppState().variavel1 = 0.0;
                              FFAppState().preco = '';
                              FFAppState().VAR1 = 0.0;
                              FFAppState().var5 = 0.0;
                              FFAppState().v5 = 0.0;
                              setState(() {});
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Venda concluida',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
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
                              FFAppState().menosTotal = 0.0;
                              FFAppState().painelProd = [];
                              FFAppState().v1 = 0.0;
                              FFAppState().v2 = 0.0;
                              FFAppState().v3 = 0.0;
                              FFAppState().v4 = 0.0;
                              FFAppState().v5 = 0.0;
                              FFAppState().formattedValue = '0,00';
                              FFAppState().ref1 = '';
                              FFAppState().valorFinal = '';
                              FFAppState().valorFinalDouble = 0.0;
                              FFAppState().metodo = '';
                              FFAppState().VAR1 = 0.0;
                              FFAppState().painelCentral = 0.0;
                              FFAppState().qt1 = 0.0;
                              FFAppState().qt2 = 0.0;
                              FFAppState().qt5 = 0.0;
                              FFAppState().qt3 = 0.0;
                              FFAppState().qt4 = 0.0;
                              FFAppState().listPro = [];
                              FFAppState().var3 = 0.0;
                              FFAppState().var2 = 0.0;
                              setState(() {});

                              context.pushNamed('HomePage');
                            },
                            text: FFLocalizations.of(context).getText(
                              '48a6mr3c' /* Finalizar venda */,
                            ),
                            options: FFButtonOptions(
                              height: 87.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF156F61),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
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
          );
        },
      ),
    );
  }
}
