import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/vendas/valovenda/valovenda_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sobremesa_model.dart';
export 'sobremesa_model.dart';

class SobremesaWidget extends StatefulWidget {
  const SobremesaWidget({super.key});

  @override
  State<SobremesaWidget> createState() => _SobremesaWidgetState();
}

class _SobremesaWidgetState extends State<SobremesaWidget> {
  late SobremesaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SobremesaModel());

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
                                  'jmyeofob' /* Sobremesas */,
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
                                            produtoPainel: 'Brigadeiro',
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
                                            'assets/images/briga.jpg',
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
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState().produto1 ==
                                                    '.') {
                                                  FFAppState().produto1 =
                                                      'Brigadeiro';
                                                  FFAppState().update(() {});
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              const ValovendaWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                } else {
                                                  FFAppState().produto2 =
                                                      'Brigadeiro';
                                                  FFAppState().update(() {});
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              const ValovendaWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                }
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ttq64p3g' /* Brigadeiro: */,
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
                                              'z86f3p8g' /*  chocolate em pó, enrolado em ... */,
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
                                            produtoPainel: 'Mousse de Maracujá',
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
                                            'assets/images/mousse.jpg',
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
                                                  '3vwoehfh' /* Mousse de Maracujá: */,
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
                                              '3y7cysb1' /*  leite condensado e creme de l... */,
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
                                            produtoPainel: 'Bolo de Rolo',
                                            valorPainel: functions.strTodouble(
                                                functions
                                                    .parseCurrency(FFAppState()
                                                        .valorpassavelPainel)
                                                    .toString()),
                                            id: () {
                                              if (FFAppState().VAR1 == 0.0) {
                                                return '1';
                                              } else if (FFAppState().var2 ==
                                                  0.0) {
                                                return '1';
                                              } else if (FFAppState().var3 ==
                                                  0.0) {
                                                return '2';
                                              } else if (FFAppState().var4 ==
                                                  0.0) {
                                                return '3';
                                              } else if (FFAppState().var5 ==
                                                  0.0) {
                                                return '4';
                                              } else {
                                                return '5';
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
                                            'assets/images/bolo.jpeg',
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
                                                  '4kkaky6w' /* Bolo de Rolo: */,
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
                                              'dck1ukki' /*  Bolo em camadas finas enrolad... */,
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
                                            produtoPainel: 'Pavê',
                                            valorPainel: functions.strTodouble(
                                                functions
                                                    .parseCurrency(FFAppState()
                                                        .valorpassavelPainel)
                                                    .toString()),
                                            id: () {
                                              if (FFAppState().VAR1 == 0.0) {
                                                return '1';
                                              } else if (FFAppState().var2 ==
                                                  0.0) {
                                                return '1';
                                              } else if (FFAppState().var3 ==
                                                  0.0) {
                                                return '2';
                                              } else if (FFAppState().var4 ==
                                                  0.0) {
                                                return '3';
                                              } else if (FFAppState().var5 ==
                                                  0.0) {
                                                return '4';
                                              } else {
                                                return '5';
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
                                            'assets/images/aa.jpg',
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
                                                  'dz6oi6kn' /* Pavê: */,
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
                                              'h32hgrlr' /* Sobremesa em camadas feita com... */,
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
                                            produtoPainel: 'Açaí na Tigela',
                                            valorPainel: functions.strTodouble(
                                                functions
                                                    .parseCurrency(FFAppState()
                                                        .valorpassavelPainel)
                                                    .toString()),
                                            id: () {
                                              if (FFAppState().VAR1 == 0.0) {
                                                return '1';
                                              } else if (FFAppState().var2 ==
                                                  0.0) {
                                                return '1';
                                              } else if (FFAppState().var3 ==
                                                  0.0) {
                                                return '2';
                                              } else if (FFAppState().var4 ==
                                                  0.0) {
                                                return '3';
                                              } else if (FFAppState().var5 ==
                                                  0.0) {
                                                return '4';
                                              } else {
                                                return '5';
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
                                            'assets/images/acei.jpg',
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
                                                  'bw31fp6s' /* Açaí na Tigela: */,
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
                                              'rw22yy9d' /*  Creme de açaí congelado, com ... */,
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