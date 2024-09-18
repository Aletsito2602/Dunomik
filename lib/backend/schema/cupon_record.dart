import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuponRecord extends FirestoreRecord {
  CuponRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CUPON10" field.
  String? _cupon10;
  String get cupon10 => _cupon10 ?? '';
  bool hasCupon10() => _cupon10 != null;

  // "CUPON20" field.
  String? _cupon20;
  String get cupon20 => _cupon20 ?? '';
  bool hasCupon20() => _cupon20 != null;

  // "CUPON25" field.
  String? _cupon25;
  String get cupon25 => _cupon25 ?? '';
  bool hasCupon25() => _cupon25 != null;

  // "CUPON30" field.
  String? _cupon30;
  String get cupon30 => _cupon30 ?? '';
  bool hasCupon30() => _cupon30 != null;

  // "CUPON40" field.
  String? _cupon40;
  String get cupon40 => _cupon40 ?? '';
  bool hasCupon40() => _cupon40 != null;

  // "CUPON50" field.
  String? _cupon50;
  String get cupon50 => _cupon50 ?? '';
  bool hasCupon50() => _cupon50 != null;

  // "CUPON18" field.
  String? _cupon18;
  String get cupon18 => _cupon18 ?? '';
  bool hasCupon18() => _cupon18 != null;

  // "CUPON5" field.
  String? _cupon5;
  String get cupon5 => _cupon5 ?? '';
  bool hasCupon5() => _cupon5 != null;

  void _initializeFields() {
    _cupon10 = snapshotData['CUPON10'] as String?;
    _cupon20 = snapshotData['CUPON20'] as String?;
    _cupon25 = snapshotData['CUPON25'] as String?;
    _cupon30 = snapshotData['CUPON30'] as String?;
    _cupon40 = snapshotData['CUPON40'] as String?;
    _cupon50 = snapshotData['CUPON50'] as String?;
    _cupon18 = snapshotData['CUPON18'] as String?;
    _cupon5 = snapshotData['CUPON5'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CUPON');

  static Stream<CuponRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuponRecord.fromSnapshot(s));

  static Future<CuponRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuponRecord.fromSnapshot(s));

  static CuponRecord fromSnapshot(DocumentSnapshot snapshot) => CuponRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuponRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuponRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuponRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuponRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuponRecordData({
  String? cupon10,
  String? cupon20,
  String? cupon25,
  String? cupon30,
  String? cupon40,
  String? cupon50,
  String? cupon18,
  String? cupon5,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CUPON10': cupon10,
      'CUPON20': cupon20,
      'CUPON25': cupon25,
      'CUPON30': cupon30,
      'CUPON40': cupon40,
      'CUPON50': cupon50,
      'CUPON18': cupon18,
      'CUPON5': cupon5,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuponRecordDocumentEquality implements Equality<CuponRecord> {
  const CuponRecordDocumentEquality();

  @override
  bool equals(CuponRecord? e1, CuponRecord? e2) {
    return e1?.cupon10 == e2?.cupon10 &&
        e1?.cupon20 == e2?.cupon20 &&
        e1?.cupon25 == e2?.cupon25 &&
        e1?.cupon30 == e2?.cupon30 &&
        e1?.cupon40 == e2?.cupon40 &&
        e1?.cupon50 == e2?.cupon50 &&
        e1?.cupon18 == e2?.cupon18 &&
        e1?.cupon5 == e2?.cupon5;
  }

  @override
  int hash(CuponRecord? e) => const ListEquality().hash([
        e?.cupon10,
        e?.cupon20,
        e?.cupon25,
        e?.cupon30,
        e?.cupon40,
        e?.cupon50,
        e?.cupon18,
        e?.cupon5
      ]);

  @override
  bool isValidKey(Object? o) => o is CuponRecord;
}
