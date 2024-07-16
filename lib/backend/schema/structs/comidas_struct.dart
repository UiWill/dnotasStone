// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ComidasStruct extends FFFirebaseStruct {
  ComidasStruct({
    String? comidas,
    double? vcom,
    int? cont,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _comidas = comidas,
        _vcom = vcom,
        _cont = cont,
        super(firestoreUtilData);

  // "comidas" field.
  String? _comidas;
  String get comidas => _comidas ?? '';
  set comidas(String? val) => _comidas = val;

  bool hasComidas() => _comidas != null;

  // "vcom" field.
  double? _vcom;
  double get vcom => _vcom ?? 0.0;
  set vcom(double? val) => _vcom = val;

  void incrementVcom(double amount) => vcom = vcom + amount;

  bool hasVcom() => _vcom != null;

  // "cont" field.
  int? _cont;
  int get cont => _cont ?? 0;
  set cont(int? val) => _cont = val;

  void incrementCont(int amount) => cont = cont + amount;

  bool hasCont() => _cont != null;

  static ComidasStruct fromMap(Map<String, dynamic> data) => ComidasStruct(
        comidas: data['comidas'] as String?,
        vcom: castToType<double>(data['vcom']),
        cont: castToType<int>(data['cont']),
      );

  static ComidasStruct? maybeFromMap(dynamic data) =>
      data is Map ? ComidasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'comidas': _comidas,
        'vcom': _vcom,
        'cont': _cont,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'comidas': serializeParam(
          _comidas,
          ParamType.String,
        ),
        'vcom': serializeParam(
          _vcom,
          ParamType.double,
        ),
        'cont': serializeParam(
          _cont,
          ParamType.int,
        ),
      }.withoutNulls;

  static ComidasStruct fromSerializableMap(Map<String, dynamic> data) =>
      ComidasStruct(
        comidas: deserializeParam(
          data['comidas'],
          ParamType.String,
          false,
        ),
        vcom: deserializeParam(
          data['vcom'],
          ParamType.double,
          false,
        ),
        cont: deserializeParam(
          data['cont'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ComidasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ComidasStruct &&
        comidas == other.comidas &&
        vcom == other.vcom &&
        cont == other.cont;
  }

  @override
  int get hashCode => const ListEquality().hash([comidas, vcom, cont]);
}

ComidasStruct createComidasStruct({
  String? comidas,
  double? vcom,
  int? cont,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ComidasStruct(
      comidas: comidas,
      vcom: vcom,
      cont: cont,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ComidasStruct? updateComidasStruct(
  ComidasStruct? comidasStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    comidasStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addComidasStructData(
  Map<String, dynamic> firestoreData,
  ComidasStruct? comidasStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (comidasStruct == null) {
    return;
  }
  if (comidasStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && comidasStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final comidasStructData =
      getComidasFirestoreData(comidasStruct, forFieldValue);
  final nestedData =
      comidasStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = comidasStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getComidasFirestoreData(
  ComidasStruct? comidasStruct, [
  bool forFieldValue = false,
]) {
  if (comidasStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(comidasStruct.toMap());

  // Add any Firestore field values
  comidasStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getComidasListFirestoreData(
  List<ComidasStruct>? comidasStructs,
) =>
    comidasStructs?.map((e) => getComidasFirestoreData(e, true)).toList() ?? [];
