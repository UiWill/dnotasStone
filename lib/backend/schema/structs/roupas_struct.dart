// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RoupasStruct extends FFFirebaseStruct {
  RoupasStruct({
    String? roupas,
    double? roupasV,
    int? cont,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _roupas = roupas,
        _roupasV = roupasV,
        _cont = cont,
        super(firestoreUtilData);

  // "roupas" field.
  String? _roupas;
  String get roupas => _roupas ?? '';
  set roupas(String? val) => _roupas = val;

  bool hasRoupas() => _roupas != null;

  // "roupasV" field.
  double? _roupasV;
  double get roupasV => _roupasV ?? 0.0;
  set roupasV(double? val) => _roupasV = val;

  void incrementRoupasV(double amount) => roupasV = roupasV + amount;

  bool hasRoupasV() => _roupasV != null;

  // "cont" field.
  int? _cont;
  int get cont => _cont ?? 0;
  set cont(int? val) => _cont = val;

  void incrementCont(int amount) => cont = cont + amount;

  bool hasCont() => _cont != null;

  static RoupasStruct fromMap(Map<String, dynamic> data) => RoupasStruct(
        roupas: data['roupas'] as String?,
        roupasV: castToType<double>(data['roupasV']),
        cont: castToType<int>(data['cont']),
      );

  static RoupasStruct? maybeFromMap(dynamic data) =>
      data is Map ? RoupasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'roupas': _roupas,
        'roupasV': _roupasV,
        'cont': _cont,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'roupas': serializeParam(
          _roupas,
          ParamType.String,
        ),
        'roupasV': serializeParam(
          _roupasV,
          ParamType.double,
        ),
        'cont': serializeParam(
          _cont,
          ParamType.int,
        ),
      }.withoutNulls;

  static RoupasStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoupasStruct(
        roupas: deserializeParam(
          data['roupas'],
          ParamType.String,
          false,
        ),
        roupasV: deserializeParam(
          data['roupasV'],
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
  String toString() => 'RoupasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RoupasStruct &&
        roupas == other.roupas &&
        roupasV == other.roupasV &&
        cont == other.cont;
  }

  @override
  int get hashCode => const ListEquality().hash([roupas, roupasV, cont]);
}

RoupasStruct createRoupasStruct({
  String? roupas,
  double? roupasV,
  int? cont,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RoupasStruct(
      roupas: roupas,
      roupasV: roupasV,
      cont: cont,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RoupasStruct? updateRoupasStruct(
  RoupasStruct? roupasStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    roupasStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRoupasStructData(
  Map<String, dynamic> firestoreData,
  RoupasStruct? roupasStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (roupasStruct == null) {
    return;
  }
  if (roupasStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && roupasStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final roupasStructData = getRoupasFirestoreData(roupasStruct, forFieldValue);
  final nestedData =
      roupasStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = roupasStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRoupasFirestoreData(
  RoupasStruct? roupasStruct, [
  bool forFieldValue = false,
]) {
  if (roupasStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(roupasStruct.toMap());

  // Add any Firestore field values
  roupasStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRoupasListFirestoreData(
  List<RoupasStruct>? roupasStructs,
) =>
    roupasStructs?.map((e) => getRoupasFirestoreData(e, true)).toList() ?? [];
