import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendas/valovenda/valovenda_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'refeicao_model.dart';
export 'refeicao_model.dart';

class RefeicaoWidget extends StatefulWidget {
  const RefeicaoWidget({super.key});

  @override
  State<RefeicaoWidget> createState() => _RefeicaoWidgetState();
}

class _RefeicaoWidgetState extends State<RefeicaoWidget> {
  late RefeicaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RefeicaoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: Image.asset(
                  'assets/images/white.jpg',
                ).image,
              ),
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).primaryText,
                  FlutterFlowTheme.of(context).primaryText
                ],
                stops: const [0.0, 1.0],
                begin: const AlignmentDirectional(0.03, -1.0),
                end: const AlignmentDirectional(-0.03, 1.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: const Icon(
                                Icons.arrow_back_rounded,
                                color: Color(0xFF156F61),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.safePop();
                              },
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  90.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'vsfcbdk8' /* Refeição */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 397.0,
                    height: 762.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: 1.0,
                              childAspectRatio: 3.0,
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState()
                                              .addToPainelProd(PainelStruct(
                                            produtoPainel: 'Refeição KG',
                                            valorPainel: functions.strTodouble(
                                                functions
                                                    .parseCurrency(FFAppState()
                                                        .valorpassavelPainel)
                                                    .toString()),
                                            id: () {
                                              if (FFAppState().ref1 == '1') {
                                                return '1';
                                              } else if (FFAppState().ref1 ==
                                                  '2') {
                                                return '2';
                                              } else if (FFAppState().ref1 ==
                                                  '3') {
                                                return '3';
                                              } else if (FFAppState().ref1 ==
                                                  '4') {
                                                return '4';
                                              } else if (FFAppState().ref1 ==
                                                  '5') {
                                                return '5';
                                              } else {
                                                return '6';
                                              }
                                            }(),
                                          ));
                                          setState(() {});
                                          if (FFAppState().I1 == '') {
                                            FFAppState().I1 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt1 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I2 == '') {
                                            FFAppState().I2 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt2 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I3 == '') {
                                            FFAppState().I3 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt3 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I4 == '') {
                                            FFAppState().I4 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt4 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I5 == '') {
                                            FFAppState().I5 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt5 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          }

                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: const ValovendaWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/aaaaaaaa.jpg',
                                            width: 131.0,
                                            height: 128.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'j6l378iq' /* Refeição KG: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              's7i5l59k' /* Buffet self-service onde os cl... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState()
                                              .addToPainelProd(PainelStruct(
                                            produtoPainel: 'Salada',
                                            valorPainel: functions.strTodouble(
                                                functions
                                                    .parseCurrency(FFAppState()
                                                        .valorpassavelPainel)
                                                    .toString()),
                                            id: () {
                                              if (FFAppState().ref1 == '1') {
                                                return '1';
                                              } else if (FFAppState().ref1 ==
                                                  '2') {
                                                return '2';
                                              } else if (FFAppState().ref1 ==
                                                  '3') {
                                                return '3';
                                              } else if (FFAppState().ref1 ==
                                                  '4') {
                                                return '4';
                                              } else if (FFAppState().ref1 ==
                                                  '5') {
                                                return '5';
                                              } else {
                                                return '6';
                                              }
                                            }(),
                                          ));
                                          setState(() {});
                                          if (FFAppState().I1 == '') {
                                            FFAppState().I1 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt1 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I2 == '') {
                                            FFAppState().I2 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt2 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I3 == '') {
                                            FFAppState().I3 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt3 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I4 == '') {
                                            FFAppState().I4 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt4 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I5 == '') {
                                            FFAppState().I5 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt5 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          }

                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: const ValovendaWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/salada.jpg',
                                            width: 131.0,
                                            height: 128.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ozq3tnmo' /* Salada: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '4t3s34h7' /* Mistura fresca de vegetais com... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState()
                                              .addToPainelProd(PainelStruct(
                                            produtoPainel: 'Marmita media',
                                            valorPainel: functions.strTodouble(
                                                functions
                                                    .parseCurrency(FFAppState()
                                                        .valorpassavelPainel)
                                                    .toString()),
                                            id: () {
                                              if (FFAppState().ref1 == '1') {
                                                return '1';
                                              } else if (FFAppState().ref1 ==
                                                  '2') {
                                                return '2';
                                              } else if (FFAppState().ref1 ==
                                                  '3') {
                                                return '3';
                                              } else if (FFAppState().ref1 ==
                                                  '4') {
                                                return '4';
                                              } else if (FFAppState().ref1 ==
                                                  '5') {
                                                return '5';
                                              } else {
                                                return '6';
                                              }
                                            }(),
                                          ));
                                          setState(() {});
                                          if (FFAppState().I1 == '') {
                                            FFAppState().I1 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt1 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I2 == '') {
                                            FFAppState().I2 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt2 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I3 == '') {
                                            FFAppState().I3 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt3 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I4 == '') {
                                            FFAppState().I4 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt4 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I5 == '') {
                                            FFAppState().I5 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt5 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          }

                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: const ValovendaWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Opera_Instantneo_2024-06-10_201620_imperiodamarmita.lojaintegrada.com.br.png',
                                            width: 131.0,
                                            height: 128.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'jcy5eenw' /* Marmita media: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'v0om5te9' /* Refeição pronta para viagem, c... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState()
                                              .addToPainelProd(PainelStruct(
                                            produtoPainel: 'Marmita grande',
                                            valorPainel: functions.strTodouble(
                                                functions
                                                    .parseCurrency(FFAppState()
                                                        .valorpassavelPainel)
                                                    .toString()),
                                            id: () {
                                              if (FFAppState().ref1 == '1') {
                                                return '1';
                                              } else if (FFAppState().ref1 ==
                                                  '2') {
                                                return '2';
                                              } else if (FFAppState().ref1 ==
                                                  '3') {
                                                return '3';
                                              } else if (FFAppState().ref1 ==
                                                  '4') {
                                                return '4';
                                              } else if (FFAppState().ref1 ==
                                                  '5') {
                                                return '5';
                                              } else {
                                                return '6';
                                              }
                                            }(),
                                          ));
                                          setState(() {});
                                          if (FFAppState().I1 == '') {
                                            FFAppState().I1 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt1 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I2 == '') {
                                            FFAppState().I2 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt2 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I3 == '') {
                                            FFAppState().I3 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt3 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I4 == '') {
                                            FFAppState().I4 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt4 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I5 == '') {
                                            FFAppState().I5 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt5 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          }

                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: const ValovendaWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/sasassas.png',
                                            width: 131.0,
                                            height: 128.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '87ulyhez' /* Marmita grande: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'uqakrerz' /* Refeição pronta para viagem, c... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState()
                                              .addToPainelProd(PainelStruct(
                                            produtoPainel: 'Churrasco',
                                            valorPainel: functions.strTodouble(
                                                functions
                                                    .parseCurrency(FFAppState()
                                                        .valorpassavelPainel)
                                                    .toString()),
                                            id: () {
                                              if (FFAppState().ref1 == '1') {
                                                return '1';
                                              } else if (FFAppState().ref1 ==
                                                  '2') {
                                                return '2';
                                              } else if (FFAppState().ref1 ==
                                                  '3') {
                                                return '3';
                                              } else if (FFAppState().ref1 ==
                                                  '4') {
                                                return '4';
                                              } else if (FFAppState().ref1 ==
                                                  '5') {
                                                return '5';
                                              } else {
                                                return '6';
                                              }
                                            }(),
                                            qtd: _model.countControllerValue
                                                ?.toDouble(),
                                          ));
                                          setState(() {});
                                          if (FFAppState().I1 == '') {
                                            FFAppState().I1 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt1 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I2 == '') {
                                            FFAppState().I2 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt2 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I3 == '') {
                                            FFAppState().I3 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt3 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I4 == '') {
                                            FFAppState().I4 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt4 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          } else if (FFAppState().I5 == '') {
                                            FFAppState().I5 = FFAppState()
                                                .painelProd
                                                .last
                                                .produtoPainel;
                                            FFAppState().qt5 = FFAppState()
                                                .painelProd
                                                .last
                                                .qtd;
                                            setState(() {});
                                          }

                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: const ValovendaWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/chus.jpg',
                                            width: 131.0,
                                            height: 128.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'j3ul9a80' /* Churrasco: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 45.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: FlutterFlowCountController(
                                            decrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.minus,
                                              color: enabled
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryText
                                                  : FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 15.0,
                                            ),
                                            incrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.plus,
                                              color: enabled
                                                  ? Colors.black
                                                  : FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 15.0,
                                            ),
                                            countBuilder: (count) => Text(
                                              count.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            count: _model
                                                .countControllerValue ??= 1,
                                            updateCount: (count) => setState(
                                                () => _model
                                                        .countControllerValue =
                                                    count),
                                            stepSize: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
