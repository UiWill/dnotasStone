import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendas/valovenda/valovenda_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b_ebidas_model.dart';
export 'b_ebidas_model.dart';

class BEbidasWidget extends StatefulWidget {
  const BEbidasWidget({super.key});

  @override
  State<BEbidasWidget> createState() => _BEbidasWidgetState();
}

class _BEbidasWidgetState extends State<BEbidasWidget> {
  late BEbidasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BEbidasModel());

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
                                  '6nhwbtta' /* Bebidas */,
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
                                            produtoPainel: 'Refrigerante',
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
                                            'assets/images/imagem_2024-04-19_072529115.png',
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
                                                'zpegl9cs' /* Refrigerante: */,
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
                                              '3fnds1ng' /* Bebida gaseificada, disponível... */,
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
                                            produtoPainel: 'Água de Coco',
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
                                            'assets/images/cc.jpg',
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
                                                  't4q5hfbl' /* Água de Coco */,
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
                                              'xv98pkl5' /* Bebida natural e hidratante, e... */,
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
                                            produtoPainel: 'Suco',
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
                                            'assets/images/sa.png',
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
                                                  'pbkly5e4' /* Suco: */,
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
                                              'jrdw47r5' /* Bebida refrescante e natural f... */,
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
                                            produtoPainel: 'Agua',
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
                                            'assets/images/agua.jpg',
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
                                                  'jn4bmnwf' /* Água: */,
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
                                              '7v88eti5' /* Bebida essencial e natural, se... */,
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
                                            produtoPainel: 'Cerveja',
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
                                            'assets/images/cerr.jpg',
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
                                                  'rcqo0et2' /* Cerveja: */,
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
                                              'fannnkak' /* .Bebida alcoólica fermentada a... */,
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
