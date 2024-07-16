// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PecasStruct extends FFFirebaseStruct {
  PecasStruct({
    double? pecaV,
    String? pecas,
    int? cont,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pecaV = pecaV,
        _pecas = pecas,
        _cont = cont,
        super(firestoreUtilData);

  // "pecaV" field.
  double? _pecaV;
  double get pecaV => _pecaV ?? 0.0;
  set pecaV(double? val) => _pecaV = val;

  void incrementPecaV(double amount) => pecaV = pecaV + amount;

  bool hasPecaV() => _pecaV != null;

  // "pecas" field.
  String? _pecas;
  String get pecas => _pecas ?? '';
  set pecas(String? val) => _pecas = val;

  bool hasPecas() => _pecas != null;

  // "cont" field.
  int? _cont;
  int get cont => _cont ?? 0;
  set cont(int? val) => _cont = val;

  void incrementCont(int amount) => cont = cont + amount;

  bool hasCont() => _cont != null;

  static PecasStruct fromMap(Map<String, dynamic> data) => PecasStruct(
        pecaV: castToType<double>(data['pecaV']),
        pecas: data['pecas'] as String?,
        cont: castToType<int>(data['cont']),
      );

  static PecasStruct? maybeFromMap(dynamic data) =>
      data is Map ? PecasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'pecaV': _pecaV,
        'pecas': _pecas,
        'cont': _cont,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pecaV': serializeParam(
          _pecaV,
          ParamType.double,
        ),
        'pecas': serializeParam(
          _pecas,
          ParamType.String,
        ),
        'cont': serializeParam(
          _cont,
          ParamType.int,
        ),
      }.withoutNulls;

  static PecasStruct fromSerializableMap(Map<String, dynamic> data) =>
      PecasStruct(
        pecaV: deserializeParam(
          data['pecaV'],
          ParamType.double,
          false,
        ),
        pecas: deserializeParam(
          data['pecas'],
          ParamType.String,
          false,
        ),
        cont: deserializeParam(
          data['cont'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PecasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PecasStruct &&
        pecaV == other.pecaV &&
        pecas == other.pecas &&
        cont == other.cont;
  }

  @override
  int get hashCode => const ListEquality().hash([pecaV, pecas, cont]);
}

PecasStruct createPecasStruct({
  double? pecaV,
  String? pecas,
  int? cont,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PecasStruct(
      pecaV: pecaV,
      pecas: pecas,
      cont: cont,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PecasStruct? updatePecasStruct(
  PecasStruct? pecasStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pecasStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPecasStructData(
  Map<String, dynamic> firestoreData,
  PecasStruct? pecasStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pecasStruct == null) {
    return;
  }
  if (pecasStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pecasStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pecasStructData = getPecasFirestoreData(pecasStruct, forFieldValue);
  final nestedData =
      pecasStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pecasStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPecasFirestoreData(
  PecasStruct? pecasStruct, [
  bool forFieldValue = false,
]) {
  if (pecasStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pecasStruct.toMap());

  // Add any Firestore field values
  pecasStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPecasListFirestoreData(
  List<PecasStruct>? pecasStructs,
) =>
    pecasStructs?.map((e) => getPecasFirestoreData(e, true)).toList() ?? [];
