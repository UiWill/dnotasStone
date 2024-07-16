import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

import 'package:cloud_firestore/cloud_firestore.dart';


class VerNotasRecord extends FirestoreRecord {
  VerNotasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "valorFire" field.
  double? _valorFire;
  double get valorFire => _valorFire ?? 0.0;
  bool hasValorFire() => _valorFire != null;

  // "dataFire" field.
  String? _dataFire;
  String get dataFire => _dataFire ?? '';
  bool hasDataFire() => _dataFire != null;

  // "metodoFire" field.
  String? _metodoFire;
  String get metodoFire => _metodoFire ?? '';
  bool hasMetodoFire() => _metodoFire != null;

  // "dataFull" field.
  String? _dataFull;
  String get dataFull => _dataFull ?? '';
  bool hasDataFull() => _dataFull != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "codAutor" field.
  String? _codAutor;
  String get codAutor => _codAutor ?? '';
  bool hasCodAutor() => _codAutor != null;

  // "bandeira" field.
  String? _bandeira;
  String get bandeira => _bandeira ?? '';
  bool hasBandeira() => _bandeira != null;

  // "Ncartao" field.
  String? _ncartao;
  String get ncartao => _ncartao ?? '';
  bool hasNcartao() => _ncartao != null;

  // "adquirentCnpj" field.
  String? _adquirentCnpj;
  String get adquirentCnpj => _adquirentCnpj ?? '';
  bool hasAdquirentCnpj() => _adquirentCnpj != null;

  // "metodoCOD" field.
  String? _metodoCOD;
  String get metodoCOD => _metodoCOD ?? '';
  bool hasMetodoCOD() => _metodoCOD != null;

  // "VTROCO_YA09" field.
  int? _vtrocoYa09;
  int get vtrocoYa09 => _vtrocoYa09 ?? 0;
  bool hasVtrocoYa09() => _vtrocoYa09 != null;

  // "CAUT_YA07" field.
  String? _cautYa07;
  String get cautYa07 => _cautYa07 ?? '';
  bool hasCautYa07() => _cautYa07 != null;

  // "TBAND_YA06" field.
  String? _tbandYa06;
  String get tbandYa06 => _tbandYa06 ?? '';
  bool hasTbandYa06() => _tbandYa06 != null;

  // "CNPJ_YA05" field.
  int? _cnpjYa05;
  int get cnpjYa05 => _cnpjYa05 ?? 0;
  bool hasCnpjYa05() => _cnpjYa05 != null;

  // "TPAG_YA0codmetodo" field.
  int? _tPAGYA0codmetodo;
  int get tPAGYA0codmetodo => _tPAGYA0codmetodo ?? 0;
  bool hasTPAGYA0codmetodo() => _tPAGYA0codmetodo != null;

  // "IdCONTA" field.
  double? _idCONTA;
  double get idCONTA => _idCONTA ?? 0.0;
  bool hasIdCONTA() => _idCONTA != null;

  void _initializeFields() {
    _valorFire = castToType<double>(snapshotData['valorFire']);
    _dataFire = snapshotData['dataFire'] as String?;
    _metodoFire = snapshotData['metodoFire'] as String?;
    _dataFull = snapshotData['dataFull'] as String?;
    _id = snapshotData['Id'] as String?;
    _codAutor = snapshotData['codAutor'] as String?;
    _bandeira = snapshotData['bandeira'] as String?;
    _ncartao = snapshotData['Ncartao'] as String?;
    _adquirentCnpj = snapshotData['adquirentCnpj'] as String?;
    _metodoCOD = snapshotData['metodoCOD'] as String?;
    _vtrocoYa09 = castToType<int>(snapshotData['VTROCO_YA09']);
    _cautYa07 = snapshotData['CAUT_YA07'] as String?;
    _tbandYa06 = snapshotData['TBAND_YA06'] as String?;
    _cnpjYa05 = castToType<int>(snapshotData['CNPJ_YA05']);
    _tPAGYA0codmetodo = castToType<int>(snapshotData['TPAG_YA0codmetodo']);
    _idCONTA = castToType<double>(snapshotData['IdCONTA']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VerNotas');

  static Stream<VerNotasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VerNotasRecord.fromSnapshot(s));

  static Future<VerNotasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VerNotasRecord.fromSnapshot(s));

  static VerNotasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VerNotasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VerNotasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VerNotasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VerNotasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VerNotasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVerNotasRecordData({
  double? valorFire,
  String? dataFire,
  String? metodoFire,
  String? dataFull,
  String? id,
  String? codAutor,
  String? bandeira,
  String? ncartao,
  String? adquirentCnpj,
  String? metodoCOD,
  int? vtrocoYa09,
  String? cautYa07,
  String? tbandYa06,
  int? cnpjYa05,
  int? tPAGYA0codmetodo,
  double? idCONTA,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valorFire': valorFire,
      'dataFire': dataFire,
      'metodoFire': metodoFire,
      'dataFull': dataFull,
      'Id': id,
      'codAutor': codAutor,
      'bandeira': bandeira,
      'Ncartao': ncartao,
      'adquirentCnpj': adquirentCnpj,
      'metodoCOD': metodoCOD,
      'VTROCO_YA09': vtrocoYa09,
      'CAUT_YA07': cautYa07,
      'TBAND_YA06': tbandYa06,
      'CNPJ_YA05': cnpjYa05,
      'TPAG_YA0codmetodo': tPAGYA0codmetodo,
      'IdCONTA': idCONTA,
    }.withoutNulls,
  );

  return firestoreData;
}

class VerNotasRecordDocumentEquality implements Equality<VerNotasRecord> {
  const VerNotasRecordDocumentEquality();

  @override
  bool equals(VerNotasRecord? e1, VerNotasRecord? e2) {
    return e1?.valorFire == e2?.valorFire &&
        e1?.dataFire == e2?.dataFire &&
        e1?.metodoFire == e2?.metodoFire &&
        e1?.dataFull == e2?.dataFull &&
        e1?.id == e2?.id &&
        e1?.codAutor == e2?.codAutor &&
        e1?.bandeira == e2?.bandeira &&
        e1?.ncartao == e2?.ncartao &&
        e1?.adquirentCnpj == e2?.adquirentCnpj &&
        e1?.metodoCOD == e2?.metodoCOD &&
        e1?.vtrocoYa09 == e2?.vtrocoYa09 &&
        e1?.cautYa07 == e2?.cautYa07 &&
        e1?.tbandYa06 == e2?.tbandYa06 &&
        e1?.cnpjYa05 == e2?.cnpjYa05 &&
        e1?.tPAGYA0codmetodo == e2?.tPAGYA0codmetodo &&
        e1?.idCONTA == e2?.idCONTA;
  }

  @override
  int hash(VerNotasRecord? e) => const ListEquality().hash([
        e?.valorFire,
        e?.dataFire,
        e?.metodoFire,
        e?.dataFull,
        e?.id,
        e?.codAutor,
        e?.bandeira,
        e?.ncartao,
        e?.adquirentCnpj,
        e?.metodoCOD,
        e?.vtrocoYa09,
        e?.cautYa07,
        e?.tbandYa06,
        e?.cnpjYa05,
        e?.tPAGYA0codmetodo,
        e?.idCONTA
      ]);

  @override
  bool isValidKey(Object? o) => o is VerNotasRecord;
}
