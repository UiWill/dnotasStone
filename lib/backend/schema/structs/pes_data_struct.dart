// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PesDataStruct extends FFFirebaseStruct {
  PesDataStruct({
    String? metodoD,
    String? dataD,
    double? valorD,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _metodoD = metodoD,
        _dataD = dataD,
        _valorD = valorD,
        super(firestoreUtilData);

  // "metodoD" field.
  String? _metodoD;
  String get metodoD => _metodoD ?? '';
  set metodoD(String? val) => _metodoD = val;

  bool hasMetodoD() => _metodoD != null;

  // "dataD" field.
  String? _dataD;
  String get dataD => _dataD ?? '';
  set dataD(String? val) => _dataD = val;

  bool hasDataD() => _dataD != null;

  // "ValorD" field.
  double? _valorD;
  double get valorD => _valorD ?? 0.0;
  set valorD(double? val) => _valorD = val;

  void incrementValorD(double amount) => valorD = valorD + amount;

  bool hasValorD() => _valorD != null;

  static PesDataStruct fromMap(Map<String, dynamic> data) => PesDataStruct(
        metodoD: data['metodoD'] as String?,
        dataD: data['dataD'] as String?,
        valorD: castToType<double>(data['ValorD']),
      );

  static PesDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? PesDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'metodoD': _metodoD,
        'dataD': _dataD,
        'ValorD': _valorD,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'metodoD': serializeParam(
          _metodoD,
          ParamType.String,
        ),
        'dataD': serializeParam(
          _dataD,
          ParamType.String,
        ),
        'ValorD': serializeParam(
          _valorD,
          ParamType.double,
        ),
      }.withoutNulls;

  static PesDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      PesDataStruct(
        metodoD: deserializeParam(
          data['metodoD'],
          ParamType.String,
          false,
        ),
        dataD: deserializeParam(
          data['dataD'],
          ParamType.String,
          false,
        ),
        valorD: deserializeParam(
          data['ValorD'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PesDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PesDataStruct &&
        metodoD == other.metodoD &&
        dataD == other.dataD &&
        valorD == other.valorD;
  }

  @override
  int get hashCode => const ListEquality().hash([metodoD, dataD, valorD]);
}

PesDataStruct createPesDataStruct({
  String? metodoD,
  String? dataD,
  double? valorD,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PesDataStruct(
      metodoD: metodoD,
      dataD: dataD,
      valorD: valorD,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PesDataStruct? updatePesDataStruct(
  PesDataStruct? pesData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pesData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPesDataStructData(
  Map<String, dynamic> firestoreData,
  PesDataStruct? pesData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pesData == null) {
    return;
  }
  if (pesData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pesData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pesDataData = getPesDataFirestoreData(pesData, forFieldValue);
  final nestedData = pesDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pesData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPesDataFirestoreData(
  PesDataStruct? pesData, [
  bool forFieldValue = false,
]) {
  if (pesData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pesData.toMap());

  // Add any Firestore field values
  pesData.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPesDataListFirestoreData(
  List<PesDataStruct>? pesDatas,
) =>
    pesDatas?.map((e) => getPesDataFirestoreData(e, true)).toList() ?? [];
