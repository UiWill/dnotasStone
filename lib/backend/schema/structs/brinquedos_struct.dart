// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BrinquedosStruct extends FFFirebaseStruct {
  BrinquedosStruct({
    String? brinquedis,
    double? brinqueV,
    int? cont,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _brinquedis = brinquedis,
        _brinqueV = brinqueV,
        _cont = cont,
        super(firestoreUtilData);

  // "brinquedis" field.
  String? _brinquedis;
  String get brinquedis => _brinquedis ?? '';
  set brinquedis(String? val) => _brinquedis = val;

  bool hasBrinquedis() => _brinquedis != null;

  // "brinqueV" field.
  double? _brinqueV;
  double get brinqueV => _brinqueV ?? 0.0;
  set brinqueV(double? val) => _brinqueV = val;

  void incrementBrinqueV(double amount) => brinqueV = brinqueV + amount;

  bool hasBrinqueV() => _brinqueV != null;

  // "cont" field.
  int? _cont;
  int get cont => _cont ?? 0;
  set cont(int? val) => _cont = val;

  void incrementCont(int amount) => cont = cont + amount;

  bool hasCont() => _cont != null;

  static BrinquedosStruct fromMap(Map<String, dynamic> data) =>
      BrinquedosStruct(
        brinquedis: data['brinquedis'] as String?,
        brinqueV: castToType<double>(data['brinqueV']),
        cont: castToType<int>(data['cont']),
      );

  static BrinquedosStruct? maybeFromMap(dynamic data) => data is Map
      ? BrinquedosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'brinquedis': _brinquedis,
        'brinqueV': _brinqueV,
        'cont': _cont,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'brinquedis': serializeParam(
          _brinquedis,
          ParamType.String,
        ),
        'brinqueV': serializeParam(
          _brinqueV,
          ParamType.double,
        ),
        'cont': serializeParam(
          _cont,
          ParamType.int,
        ),
      }.withoutNulls;

  static BrinquedosStruct fromSerializableMap(Map<String, dynamic> data) =>
      BrinquedosStruct(
        brinquedis: deserializeParam(
          data['brinquedis'],
          ParamType.String,
          false,
        ),
        brinqueV: deserializeParam(
          data['brinqueV'],
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
  String toString() => 'BrinquedosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BrinquedosStruct &&
        brinquedis == other.brinquedis &&
        brinqueV == other.brinqueV &&
        cont == other.cont;
  }

  @override
  int get hashCode => const ListEquality().hash([brinquedis, brinqueV, cont]);
}

BrinquedosStruct createBrinquedosStruct({
  String? brinquedis,
  double? brinqueV,
  int? cont,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BrinquedosStruct(
      brinquedis: brinquedis,
      brinqueV: brinqueV,
      cont: cont,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BrinquedosStruct? updateBrinquedosStruct(
  BrinquedosStruct? brinquedos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    brinquedos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBrinquedosStructData(
  Map<String, dynamic> firestoreData,
  BrinquedosStruct? brinquedos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (brinquedos == null) {
    return;
  }
  if (brinquedos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && brinquedos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final brinquedosData = getBrinquedosFirestoreData(brinquedos, forFieldValue);
  final nestedData = brinquedosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = brinquedos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBrinquedosFirestoreData(
  BrinquedosStruct? brinquedos, [
  bool forFieldValue = false,
]) {
  if (brinquedos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(brinquedos.toMap());

  // Add any Firestore field values
  brinquedos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBrinquedosListFirestoreData(
  List<BrinquedosStruct>? brinquedoss,
) =>
    brinquedoss?.map((e) => getBrinquedosFirestoreData(e, true)).toList() ?? [];
