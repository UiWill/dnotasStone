// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PainelStruct extends FFFirebaseStruct {
  PainelStruct({
    String? produtoPainel,
    double? valorPainel,
    String? id,
    double? qtd,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _produtoPainel = produtoPainel,
        _valorPainel = valorPainel,
        _id = id,
        _qtd = qtd,
        super(firestoreUtilData);

  // "produtoPainel" field.
  String? _produtoPainel;
  String get produtoPainel => _produtoPainel ?? '0';
  set produtoPainel(String? val) => _produtoPainel = val;

  bool hasProdutoPainel() => _produtoPainel != null;

  // "valorPainel" field.
  double? _valorPainel;
  double get valorPainel => _valorPainel ?? 0.0;
  set valorPainel(double? val) => _valorPainel = val;

  void incrementValorPainel(double amount) =>
      valorPainel = valorPainel + amount;

  bool hasValorPainel() => _valorPainel != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '0';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "QTD" field.
  double? _qtd;
  double get qtd => _qtd ?? 0.0;
  set qtd(double? val) => _qtd = val;

  void incrementQtd(double amount) => qtd = qtd + amount;

  bool hasQtd() => _qtd != null;

  static PainelStruct fromMap(Map<String, dynamic> data) => PainelStruct(
        produtoPainel: data['produtoPainel'] as String?,
        valorPainel: castToType<double>(data['valorPainel']),
        id: data['id'] as String?,
        qtd: castToType<double>(data['QTD']),
      );

  static PainelStruct? maybeFromMap(dynamic data) =>
      data is Map ? PainelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'produtoPainel': _produtoPainel,
        'valorPainel': _valorPainel,
        'id': _id,
        'QTD': _qtd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'produtoPainel': serializeParam(
          _produtoPainel,
          ParamType.String,
        ),
        'valorPainel': serializeParam(
          _valorPainel,
          ParamType.double,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'QTD': serializeParam(
          _qtd,
          ParamType.double,
        ),
      }.withoutNulls;

  static PainelStruct fromSerializableMap(Map<String, dynamic> data) =>
      PainelStruct(
        produtoPainel: deserializeParam(
          data['produtoPainel'],
          ParamType.String,
          false,
        ),
        valorPainel: deserializeParam(
          data['valorPainel'],
          ParamType.double,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        qtd: deserializeParam(
          data['QTD'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PainelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PainelStruct &&
        produtoPainel == other.produtoPainel &&
        valorPainel == other.valorPainel &&
        id == other.id &&
        qtd == other.qtd;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([produtoPainel, valorPainel, id, qtd]);
}

PainelStruct createPainelStruct({
  String? produtoPainel,
  double? valorPainel,
  String? id,
  double? qtd,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PainelStruct(
      produtoPainel: produtoPainel,
      valorPainel: valorPainel,
      id: id,
      qtd: qtd,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PainelStruct? updatePainelStruct(
  PainelStruct? painel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    painel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPainelStructData(
  Map<String, dynamic> firestoreData,
  PainelStruct? painel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (painel == null) {
    return;
  }
  if (painel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && painel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final painelData = getPainelFirestoreData(painel, forFieldValue);
  final nestedData = painelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = painel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPainelFirestoreData(
  PainelStruct? painel, [
  bool forFieldValue = false,
]) {
  if (painel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(painel.toMap());

  // Add any Firestore field values
  painel.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPainelListFirestoreData(
  List<PainelStruct>? painels,
) =>
    painels?.map((e) => getPainelFirestoreData(e, true)).toList() ?? [];
