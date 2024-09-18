import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountrycodeRecord extends FirestoreRecord {
  CountrycodeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "countrys" field.
  String? _countrys;
  String get countrys => _countrys ?? '';
  bool hasCountrys() => _countrys != null;

  void _initializeFields() {
    _countrys = snapshotData['countrys'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('countrycode');

  static Stream<CountrycodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountrycodeRecord.fromSnapshot(s));

  static Future<CountrycodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountrycodeRecord.fromSnapshot(s));

  static CountrycodeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountrycodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountrycodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountrycodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountrycodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountrycodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountrycodeRecordData({
  String? countrys,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'countrys': countrys,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountrycodeRecordDocumentEquality implements Equality<CountrycodeRecord> {
  const CountrycodeRecordDocumentEquality();

  @override
  bool equals(CountrycodeRecord? e1, CountrycodeRecord? e2) {
    return e1?.countrys == e2?.countrys;
  }

  @override
  int hash(CountrycodeRecord? e) => const ListEquality().hash([e?.countrys]);

  @override
  bool isValidKey(Object? o) => o is CountrycodeRecord;
}
