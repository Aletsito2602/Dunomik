import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CertificatesRecord extends FirestoreRecord {
  CertificatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "certificate" field.
  String? _certificate;
  String get certificate => _certificate ?? '';
  bool hasCertificate() => _certificate != null;

  // "email_certificate" field.
  String? _emailCertificate;
  String get emailCertificate => _emailCertificate ?? '';
  bool hasEmailCertificate() => _emailCertificate != null;

  void _initializeFields() {
    _certificate = snapshotData['certificate'] as String?;
    _emailCertificate = snapshotData['email_certificate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('certificates');

  static Stream<CertificatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertificatesRecord.fromSnapshot(s));

  static Future<CertificatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CertificatesRecord.fromSnapshot(s));

  static CertificatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CertificatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertificatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertificatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertificatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertificatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertificatesRecordData({
  String? certificate,
  String? emailCertificate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'certificate': certificate,
      'email_certificate': emailCertificate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CertificatesRecordDocumentEquality
    implements Equality<CertificatesRecord> {
  const CertificatesRecordDocumentEquality();

  @override
  bool equals(CertificatesRecord? e1, CertificatesRecord? e2) {
    return e1?.certificate == e2?.certificate &&
        e1?.emailCertificate == e2?.emailCertificate;
  }

  @override
  int hash(CertificatesRecord? e) =>
      const ListEquality().hash([e?.certificate, e?.emailCertificate]);

  @override
  bool isValidKey(Object? o) => o is CertificatesRecord;
}
