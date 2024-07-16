import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _variavel1 = 0.0;
  double get variavel1 => _variavel1;
  set variavel1(double value) {
    _variavel1 = value;
  }

  String _preco = '';
  String get preco => _preco;
  set preco(String value) {
    _preco = value;
  }

  String _creditoparcelado = '';
  String get creditoparcelado => _creditoparcelado;
  set creditoparcelado(String value) {
    _creditoparcelado = value;
  }

  String _metodo = '';
  String get metodo => _metodo;
  set metodo(String value) {
    _metodo = value;
  }

  String _updatePage = '';
  String get updatePage => _updatePage;
  set updatePage(String value) {
    _updatePage = value;
  }

  List<String> _Prod = ['Produto', 'valorp'];
  List<String> get Prod => _Prod;
  set Prod(List<String> value) {
    _Prod = value;
  }

  void addToProd(String value) {
    Prod.add(value);
  }

  void removeFromProd(String value) {
    Prod.remove(value);
  }

  void removeAtIndexFromProd(int index) {
    Prod.removeAt(index);
  }

  void updateProdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Prod[index] = updateFn(_Prod[index]);
  }

  void insertAtIndexInProd(int index, String value) {
    Prod.insert(index, value);
  }

  List<ProdutosStruct> _pppp = [
    ProdutosStruct.fromSerializableMap(
        jsonDecode('{\"Produto\":\"Hello World\",\"valorp\":\"Hello World\"}'))
  ];
  List<ProdutosStruct> get pppp => _pppp;
  set pppp(List<ProdutosStruct> value) {
    _pppp = value;
  }

  void addToPppp(ProdutosStruct value) {
    pppp.add(value);
  }

  void removeFromPppp(ProdutosStruct value) {
    pppp.remove(value);
  }

  void removeAtIndexFromPppp(int index) {
    pppp.removeAt(index);
  }

  void updatePpppAtIndex(
    int index,
    ProdutosStruct Function(ProdutosStruct) updateFn,
  ) {
    pppp[index] = updateFn(_pppp[index]);
  }

  void insertAtIndexInPppp(int index, ProdutosStruct value) {
    pppp.insert(index, value);
  }

  List<ComidasStruct> _comidas = [
    ComidasStruct.fromSerializableMap(
        jsonDecode('{\"comidas\":\"Hello World\",\"vcom\":\"0\"}'))
  ];
  List<ComidasStruct> get comidas => _comidas;
  set comidas(List<ComidasStruct> value) {
    _comidas = value;
  }

  void addToComidas(ComidasStruct value) {
    comidas.add(value);
  }

  void removeFromComidas(ComidasStruct value) {
    comidas.remove(value);
  }

  void removeAtIndexFromComidas(int index) {
    comidas.removeAt(index);
  }

  void updateComidasAtIndex(
    int index,
    ComidasStruct Function(ComidasStruct) updateFn,
  ) {
    comidas[index] = updateFn(_comidas[index]);
  }

  void insertAtIndexInComidas(int index, ComidasStruct value) {
    comidas.insert(index, value);
  }

  List<CarnesStruct> _carnes = [];
  List<CarnesStruct> get carnes => _carnes;
  set carnes(List<CarnesStruct> value) {
    _carnes = value;
  }

  void addToCarnes(CarnesStruct value) {
    carnes.add(value);
  }

  void removeFromCarnes(CarnesStruct value) {
    carnes.remove(value);
  }

  void removeAtIndexFromCarnes(int index) {
    carnes.removeAt(index);
  }

  void updateCarnesAtIndex(
    int index,
    CarnesStruct Function(CarnesStruct) updateFn,
  ) {
    carnes[index] = updateFn(_carnes[index]);
  }

  void insertAtIndexInCarnes(int index, CarnesStruct value) {
    carnes.insert(index, value);
  }

  List<PecasStruct> _pecas = [];
  List<PecasStruct> get pecas => _pecas;
  set pecas(List<PecasStruct> value) {
    _pecas = value;
  }

  void addToPecas(PecasStruct value) {
    pecas.add(value);
  }

  void removeFromPecas(PecasStruct value) {
    pecas.remove(value);
  }

  void removeAtIndexFromPecas(int index) {
    pecas.removeAt(index);
  }

  void updatePecasAtIndex(
    int index,
    PecasStruct Function(PecasStruct) updateFn,
  ) {
    pecas[index] = updateFn(_pecas[index]);
  }

  void insertAtIndexInPecas(int index, PecasStruct value) {
    pecas.insert(index, value);
  }

  List<BrinquedosStruct> _brinquedos = [
    BrinquedosStruct.fromSerializableMap(
        jsonDecode('{\"brinquedis\":\"Hello World\",\"brinqueV\":\"0\"}'))
  ];
  List<BrinquedosStruct> get brinquedos => _brinquedos;
  set brinquedos(List<BrinquedosStruct> value) {
    _brinquedos = value;
  }

  void addToBrinquedos(BrinquedosStruct value) {
    brinquedos.add(value);
  }

  void removeFromBrinquedos(BrinquedosStruct value) {
    brinquedos.remove(value);
  }

  void removeAtIndexFromBrinquedos(int index) {
    brinquedos.removeAt(index);
  }

  void updateBrinquedosAtIndex(
    int index,
    BrinquedosStruct Function(BrinquedosStruct) updateFn,
  ) {
    brinquedos[index] = updateFn(_brinquedos[index]);
  }

  void insertAtIndexInBrinquedos(int index, BrinquedosStruct value) {
    brinquedos.insert(index, value);
  }

  List<RoupasStruct> _roupas = [
    RoupasStruct.fromSerializableMap(
        jsonDecode('{\"roupas\":\"Hello World\",\"roupasV\":\"0\"}'))
  ];
  List<RoupasStruct> get roupas => _roupas;
  set roupas(List<RoupasStruct> value) {
    _roupas = value;
  }

  void addToRoupas(RoupasStruct value) {
    roupas.add(value);
  }

  void removeFromRoupas(RoupasStruct value) {
    roupas.remove(value);
  }

  void removeAtIndexFromRoupas(int index) {
    roupas.removeAt(index);
  }

  void updateRoupasAtIndex(
    int index,
    RoupasStruct Function(RoupasStruct) updateFn,
  ) {
    roupas[index] = updateFn(_roupas[index]);
  }

  void insertAtIndexInRoupas(int index, RoupasStruct value) {
    roupas.insert(index, value);
  }

  String _data = '';
  String get data => _data;
  set data(String value) {
    _data = value;
  }

  String _dataHora = '';
  String get dataHora => _dataHora;
  set dataHora(String value) {
    _dataHora = value;
  }

  List<HoraStruct> _hora = [
    HoraStruct.fromSerializableMap(jsonDecode('{\"hora\":\"Hello World\"}'))
  ];
  List<HoraStruct> get hora => _hora;
  set hora(List<HoraStruct> value) {
    _hora = value;
  }

  void addToHora(HoraStruct value) {
    hora.add(value);
  }

  void removeFromHora(HoraStruct value) {
    hora.remove(value);
  }

  void removeAtIndexFromHora(int index) {
    hora.removeAt(index);
  }

  void updateHoraAtIndex(
    int index,
    HoraStruct Function(HoraStruct) updateFn,
  ) {
    hora[index] = updateFn(_hora[index]);
  }

  void insertAtIndexInHora(int index, HoraStruct value) {
    hora.insert(index, value);
  }

  bool _pesquisa = false;
  bool get pesquisa => _pesquisa;
  set pesquisa(bool value) {
    _pesquisa = value;
  }

  List<PesDataStruct> _dataDDD = [
    PesDataStruct.fromSerializableMap(
        jsonDecode('{\"metodoD\":\"Hello World\",\"dataD\":\"Hello World\"}'))
  ];
  List<PesDataStruct> get dataDDD => _dataDDD;
  set dataDDD(List<PesDataStruct> value) {
    _dataDDD = value;
  }

  void addToDataDDD(PesDataStruct value) {
    dataDDD.add(value);
  }

  void removeFromDataDDD(PesDataStruct value) {
    dataDDD.remove(value);
  }

  void removeAtIndexFromDataDDD(int index) {
    dataDDD.removeAt(index);
  }

  void updateDataDDDAtIndex(
    int index,
    PesDataStruct Function(PesDataStruct) updateFn,
  ) {
    dataDDD[index] = updateFn(_dataDDD[index]);
  }

  void insertAtIndexInDataDDD(int index, PesDataStruct value) {
    dataDDD.insert(index, value);
  }

  String _parcelaAPI = '';
  String get parcelaAPI => _parcelaAPI;
  set parcelaAPI(String value) {
    _parcelaAPI = value;
  }

  double _propPrice = 0.0;
  double get propPrice => _propPrice;
  set propPrice(double value) {
    _propPrice = value;
  }

  double _VAR1 = 0.0;
  double get VAR1 => _VAR1;
  set VAR1(double value) {
    _VAR1 = value;
  }

  double _var2 = 0.0;
  double get var2 => _var2;
  set var2(double value) {
    _var2 = value;
  }

  String _painel = '';
  String get painel => _painel;
  set painel(String value) {
    _painel = value;
  }

  String _produto1 = '';
  String get produto1 => _produto1;
  set produto1(String value) {
    _produto1 = value;
  }

  String _produto2 = '';
  String get produto2 => _produto2;
  set produto2(String value) {
    _produto2 = value;
  }

  double _painelCentral = 0.0;
  double get painelCentral => _painelCentral;
  set painelCentral(double value) {
    _painelCentral = value;
  }

  String _formattedValue = '0,00';
  String get formattedValue => _formattedValue;
  set formattedValue(String value) {
    _formattedValue = value;
  }

  String _valueWithDot = '';
  String get valueWithDot => _valueWithDot;
  set valueWithDot(String value) {
    _valueWithDot = value;
  }

  List<PainelStruct> _painelProd = [];
  List<PainelStruct> get painelProd => _painelProd;
  set painelProd(List<PainelStruct> value) {
    _painelProd = value;
  }

  void addToPainelProd(PainelStruct value) {
    painelProd.add(value);
  }

  void removeFromPainelProd(PainelStruct value) {
    painelProd.remove(value);
  }

  void removeAtIndexFromPainelProd(int index) {
    painelProd.removeAt(index);
  }

  void updatePainelProdAtIndex(
    int index,
    PainelStruct Function(PainelStruct) updateFn,
  ) {
    painelProd[index] = updateFn(_painelProd[index]);
  }

  void insertAtIndexInPainelProd(int index, PainelStruct value) {
    painelProd.insert(index, value);
  }

  double _var3 = 0.0;
  double get var3 => _var3;
  set var3(double value) {
    _var3 = value;
  }

  double _var4 = 0.0;
  double get var4 => _var4;
  set var4(double value) {
    _var4 = value;
  }

  double _var5 = 0.0;
  double get var5 => _var5;
  set var5(double value) {
    _var5 = value;
  }

  String _ValorDigiticao = '';
  String get ValorDigiticao => _ValorDigiticao;
  set ValorDigiticao(String value) {
    _ValorDigiticao = value;
  }

  String _valorFinal = '';
  String get valorFinal => _valorFinal;
  set valorFinal(String value) {
    _valorFinal = value;
  }

  double _finalDouble = 0.0;
  double get finalDouble => _finalDouble;
  set finalDouble(double value) {
    _finalDouble = value;
  }

  String _valorprocess = '';
  String get valorprocess => _valorprocess;
  set valorprocess(String value) {
    _valorprocess = value;
  }

  double _valorFinalDouble = 0.0;
  double get valorFinalDouble => _valorFinalDouble;
  set valorFinalDouble(double value) {
    _valorFinalDouble = value;
  }

  String _valorpassavelPainel = '';
  String get valorpassavelPainel => _valorpassavelPainel;
  set valorpassavelPainel(String value) {
    _valorpassavelPainel = value;
  }

  double _v1 = 0.0;
  double get v1 => _v1;
  set v1(double value) {
    _v1 = value;
  }

  double _v2 = 0.0;
  double get v2 => _v2;
  set v2(double value) {
    _v2 = value;
  }

  double _v3 = 0.0;
  double get v3 => _v3;
  set v3(double value) {
    _v3 = value;
  }

  double _v4 = 0.0;
  double get v4 => _v4;
  set v4(double value) {
    _v4 = value;
  }

  double _v5 = 0.0;
  double get v5 => _v5;
  set v5(double value) {
    _v5 = value;
  }

  double _menosTotal = 0.0;
  double get menosTotal => _menosTotal;
  set menosTotal(double value) {
    _menosTotal = value;
  }

  double _id = 0.0;
  double get id => _id;
  set id(double value) {
    _id = value;
  }

  String _pro = '';
  String get pro => _pro;
  set pro(String value) {
    _pro = value;
  }

  String _ActionCa = '';
  String get ActionCa => _ActionCa;
  set ActionCa(String value) {
    _ActionCa = value;
  }

  String _ref1 = '';
  String get ref1 => _ref1;
  set ref1(String value) {
    _ref1 = value;
  }

  String _ref2 = '';
  String get ref2 => _ref2;
  set ref2(String value) {
    _ref2 = value;
  }

  String _ref3 = '';
  String get ref3 => _ref3;
  set ref3(String value) {
    _ref3 = value;
  }

  String _ref4 = '';
  String get ref4 => _ref4;
  set ref4(String value) {
    _ref4 = value;
  }

  String _ref5 = '';
  String get ref5 => _ref5;
  set ref5(String value) {
    _ref5 = value;
  }

  List<dynamic> _json = [];
  List<dynamic> get json => _json;
  set json(List<dynamic> value) {
    _json = value;
  }

  void addToJson(dynamic value) {
    json.add(value);
  }

  void removeFromJson(dynamic value) {
    json.remove(value);
  }

  void removeAtIndexFromJson(int index) {
    json.removeAt(index);
  }

  void updateJsonAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    json[index] = updateFn(_json[index]);
  }

  void insertAtIndexInJson(int index, dynamic value) {
    json.insert(index, value);
  }

  List<String> _listPro = [];
  List<String> get listPro => _listPro;
  set listPro(List<String> value) {
    _listPro = value;
  }

  void addToListPro(String value) {
    listPro.add(value);
  }

  void removeFromListPro(String value) {
    listPro.remove(value);
  }

  void removeAtIndexFromListPro(int index) {
    listPro.removeAt(index);
  }

  void updateListProAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listPro[index] = updateFn(_listPro[index]);
  }

  void insertAtIndexInListPro(int index, String value) {
    listPro.insert(index, value);
  }

  String _I1 = '';
  String get I1 => _I1;
  set I1(String value) {
    _I1 = value;
  }

  String _I2 = '';
  String get I2 => _I2;
  set I2(String value) {
    _I2 = value;
  }

  String _I3 = '';
  String get I3 => _I3;
  set I3(String value) {
    _I3 = value;
  }

  String _I4 = '';
  String get I4 => _I4;
  set I4(String value) {
    _I4 = value;
  }

  String _I5 = '';
  String get I5 => _I5;
  set I5(String value) {
    _I5 = value;
  }

  double _qt1 = 0.0;
  double get qt1 => _qt1;
  set qt1(double value) {
    _qt1 = value;
  }

  double _qt2 = 0.0;
  double get qt2 => _qt2;
  set qt2(double value) {
    _qt2 = value;
  }

  double _qt5 = 0.0;
  double get qt5 => _qt5;
  set qt5(double value) {
    _qt5 = value;
  }

  double _qt3 = 0.0;
  double get qt3 => _qt3;
  set qt3(double value) {
    _qt3 = value;
  }

  double _qt4 = 0.0;
  double get qt4 => _qt4;
  set qt4(double value) {
    _qt4 = value;
  }

  double _idContador = 1.0;
  double get idContador => _idContador;
  set idContador(double value) {
    _idContador = value;
  }
}
