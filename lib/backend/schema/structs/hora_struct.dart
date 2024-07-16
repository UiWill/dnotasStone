// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class HoraStruct extends FFFirebaseStruct {
  HoraStruct({
    String? hora,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _hora = hora,
        super(firestoreUtilData);

  // "hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  set hora(String? val) => _hora = val;

  bool hasHora() => _hora != null;

  static HoraStruct fromMap(Map<String, dynamic> data) => HoraStruct(
        hora: data['hora'] as String?,
      );

  static HoraStruct? maybeFromMap(dynamic data) =>
      data is Map ? HoraStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'hora': _hora,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hora': serializeParam(
          _hora,
          ParamType.String,
        ),
      }.withoutNulls;

  static HoraStruct fromSerializableMap(Map<String, dynamic> data) =>
      HoraStruct(
        hora: deserializeParam(
          data['hora'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HoraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HoraStruct && hora == other.hora;
  }

  @override
  int get hashCode => const ListEquality().hash([hora]);
}

HoraStruct createHoraStruct({
  String? hora,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HoraStruct(
      hora: hora,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HoraStruct? updateHoraStruct(
  HoraStruct? horaStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    horaStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHoraStructData(
  Map<String, dynamic> firestoreData,
  HoraStruct? horaStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (horaStruct == null) {
    return;
  }
  if (horaStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && horaStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final horaStructData = getHoraFirestoreData(horaStruct, forFieldValue);
  final nestedData = horaStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = horaStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHoraFirestoreData(
  HoraStruct? horaStruct, [
  bool forFieldValue = false,
]) {
  if (horaStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(horaStruct.toMap());

  // Add any Firestore field values
  horaStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHoraListFirestoreData(
  List<HoraStruct>? horaStructs,
) =>
    horaStructs?.map((e) => getHoraFirestoreData(e, true)).toList() ?? [];
