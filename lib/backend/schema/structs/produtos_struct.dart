// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProdutosStruct extends FFFirebaseStruct {
  ProdutosStruct({
    String? produto,
    int? cont,
    double? valorp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _produto = produto,
        _cont = cont,
        _valorp = valorp,
        super(firestoreUtilData);

  // "Produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  set produto(String? val) => _produto = val;

  bool hasProduto() => _produto != null;

  // "cont" field.
  int? _cont;
  int get cont => _cont ?? 0;
  set cont(int? val) => _cont = val;

  void incrementCont(int amount) => cont = cont + amount;

  bool hasCont() => _cont != null;

  // "valorp" field.
  double? _valorp;
  double get valorp => _valorp ?? 0.0;
  set valorp(double? val) => _valorp = val;

  void incrementValorp(double amount) => valorp = valorp + amount;

  bool hasValorp() => _valorp != null;

  static ProdutosStruct fromMap(Map<String, dynamic> data) => ProdutosStruct(
        produto: data['Produto'] as String?,
        cont: castToType<int>(data['cont']),
        valorp: castToType<double>(data['valorp']),
      );

  static ProdutosStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProdutosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Produto': _produto,
        'cont': _cont,
        'valorp': _valorp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Produto': serializeParam(
          _produto,
          ParamType.String,
        ),
        'cont': serializeParam(
          _cont,
          ParamType.int,
        ),
        'valorp': serializeParam(
          _valorp,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProdutosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutosStruct(
        produto: deserializeParam(
          data['Produto'],
          ParamType.String,
          false,
        ),
        cont: deserializeParam(
          data['cont'],
          ParamType.int,
          false,
        ),
        valorp: deserializeParam(
          data['valorp'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProdutosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutosStruct &&
        produto == other.produto &&
        cont == other.cont &&
        valorp == other.valorp;
  }

  @override
  int get hashCode => const ListEquality().hash([produto, cont, valorp]);
}

ProdutosStruct createProdutosStruct({
  String? produto,
  int? cont,
  double? valorp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutosStruct(
      produto: produto,
      cont: cont,
      valorp: valorp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutosStruct? updateProdutosStruct(
  ProdutosStruct? produtos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutosStructData(
  Map<String, dynamic> firestoreData,
  ProdutosStruct? produtos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtos == null) {
    return;
  }
  if (produtos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtosData = getProdutosFirestoreData(produtos, forFieldValue);
  final nestedData = produtosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = produtos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutosFirestoreData(
  ProdutosStruct? produtos, [
  bool forFieldValue = false,
]) {
  if (produtos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtos.toMap());

  // Add any Firestore field values
  produtos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutosListFirestoreData(
  List<ProdutosStruct>? produtoss,
) =>
    produtoss?.map((e) => getProdutosFirestoreData(e, true)).toList() ?? [];
