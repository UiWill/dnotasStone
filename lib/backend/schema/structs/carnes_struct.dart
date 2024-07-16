// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CarnesStruct extends FFFirebaseStruct {
  CarnesStruct({
    String? car,
    double? carnesV,
    int? cont,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _car = car,
        _carnesV = carnesV,
        _cont = cont,
        super(firestoreUtilData);

  // "car" field.
  String? _car;
  String get car => _car ?? '';
  set car(String? val) => _car = val;

  bool hasCar() => _car != null;

  // "carnesV" field.
  double? _carnesV;
  double get carnesV => _carnesV ?? 0.0;
  set carnesV(double? val) => _carnesV = val;

  void incrementCarnesV(double amount) => carnesV = carnesV + amount;

  bool hasCarnesV() => _carnesV != null;

  // "cont" field.
  int? _cont;
  int get cont => _cont ?? 0;
  set cont(int? val) => _cont = val;

  void incrementCont(int amount) => cont = cont + amount;

  bool hasCont() => _cont != null;

  static CarnesStruct fromMap(Map<String, dynamic> data) => CarnesStruct(
        car: data['car'] as String?,
        carnesV: castToType<double>(data['carnesV']),
        cont: castToType<int>(data['cont']),
      );

  static CarnesStruct? maybeFromMap(dynamic data) =>
      data is Map ? CarnesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'car': _car,
        'carnesV': _carnesV,
        'cont': _cont,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'car': serializeParam(
          _car,
          ParamType.String,
        ),
        'carnesV': serializeParam(
          _carnesV,
          ParamType.double,
        ),
        'cont': serializeParam(
          _cont,
          ParamType.int,
        ),
      }.withoutNulls;

  static CarnesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CarnesStruct(
        car: deserializeParam(
          data['car'],
          ParamType.String,
          false,
        ),
        carnesV: deserializeParam(
          data['carnesV'],
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
  String toString() => 'CarnesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CarnesStruct &&
        car == other.car &&
        carnesV == other.carnesV &&
        cont == other.cont;
  }

  @override
  int get hashCode => const ListEquality().hash([car, carnesV, cont]);
}

CarnesStruct createCarnesStruct({
  String? car,
  double? carnesV,
  int? cont,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CarnesStruct(
      car: car,
      carnesV: carnesV,
      cont: cont,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CarnesStruct? updateCarnesStruct(
  CarnesStruct? carnes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    carnes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCarnesStructData(
  Map<String, dynamic> firestoreData,
  CarnesStruct? carnes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (carnes == null) {
    return;
  }
  if (carnes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && carnes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final carnesData = getCarnesFirestoreData(carnes, forFieldValue);
  final nestedData = carnesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = carnes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCarnesFirestoreData(
  CarnesStruct? carnes, [
  bool forFieldValue = false,
]) {
  if (carnes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(carnes.toMap());

  // Add any Firestore field values
  carnes.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCarnesListFirestoreData(
  List<CarnesStruct>? carness,
) =>
    carness?.map((e) => getCarnesFirestoreData(e, true)).toList() ?? [];
