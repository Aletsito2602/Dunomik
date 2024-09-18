import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReferidosListaRecord extends FirestoreRecord {
  ReferidosListaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email_customer" field.
  String? _emailCustomer;
  String get emailCustomer => _emailCustomer ?? '';
  bool hasEmailCustomer() => _emailCustomer != null;

  // "comision_obtenida" field.
  String? _comisionObtenida;
  String get comisionObtenida => _comisionObtenida ?? '';
  bool hasComisionObtenida() => _comisionObtenida != null;

  // "email_referente" field.
  String? _emailReferente;
  String get emailReferente => _emailReferente ?? '';
  bool hasEmailReferente() => _emailReferente != null;

  void _initializeFields() {
    _emailCustomer = snapshotData['email_customer'] as String?;
    _comisionObtenida = snapshotData['comision_obtenida'] as String?;
    _emailReferente = snapshotData['email_referente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('referidos_lista');

  static Stream<ReferidosListaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReferidosListaRecord.fromSnapshot(s));

  static Future<ReferidosListaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReferidosListaRecord.fromSnapshot(s));

  static ReferidosListaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReferidosListaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReferidosListaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReferidosListaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReferidosListaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReferidosListaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReferidosListaRecordData({
  String? emailCustomer,
  String? comisionObtenida,
  String? emailReferente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email_customer': emailCustomer,
      'comision_obtenida': comisionObtenida,
      'email_referente': emailReferente,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReferidosListaRecordDocumentEquality
    implements Equality<ReferidosListaRecord> {
  const ReferidosListaRecordDocumentEquality();

  @override
  bool equals(ReferidosListaRecord? e1, ReferidosListaRecord? e2) {
    return e1?.emailCustomer == e2?.emailCustomer &&
        e1?.comisionObtenida == e2?.comisionObtenida &&
        e1?.emailReferente == e2?.emailReferente;
  }

  @override
  int hash(ReferidosListaRecord? e) => const ListEquality()
      .hash([e?.emailCustomer, e?.comisionObtenida, e?.emailReferente]);

  @override
  bool isValidKey(Object? o) => o is ReferidosListaRecord;
}
