import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportTicketsRecord extends FirestoreRecord {
  SupportTicketsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email_support" field.
  String? _emailSupport;
  String get emailSupport => _emailSupport ?? '';
  bool hasEmailSupport() => _emailSupport != null;

  // "text_ticket" field.
  String? _textTicket;
  String get textTicket => _textTicket ?? '';
  bool hasTextTicket() => _textTicket != null;

  // "subjet_sitcket" field.
  String? _subjetSitcket;
  String get subjetSitcket => _subjetSitcket ?? '';
  bool hasSubjetSitcket() => _subjetSitcket != null;

  // "name_ticket" field.
  String? _nameTicket;
  String get nameTicket => _nameTicket ?? '';
  bool hasNameTicket() => _nameTicket != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _emailSupport = snapshotData['email_support'] as String?;
    _textTicket = snapshotData['text_ticket'] as String?;
    _subjetSitcket = snapshotData['subjet_sitcket'] as String?;
    _nameTicket = snapshotData['name_ticket'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('support_tickets');

  static Stream<SupportTicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupportTicketsRecord.fromSnapshot(s));

  static Future<SupportTicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupportTicketsRecord.fromSnapshot(s));

  static SupportTicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportTicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportTicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportTicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportTicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupportTicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupportTicketsRecordData({
  String? emailSupport,
  String? textTicket,
  String? subjetSitcket,
  String? nameTicket,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email_support': emailSupport,
      'text_ticket': textTicket,
      'subjet_sitcket': subjetSitcket,
      'name_ticket': nameTicket,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupportTicketsRecordDocumentEquality
    implements Equality<SupportTicketsRecord> {
  const SupportTicketsRecordDocumentEquality();

  @override
  bool equals(SupportTicketsRecord? e1, SupportTicketsRecord? e2) {
    return e1?.emailSupport == e2?.emailSupport &&
        e1?.textTicket == e2?.textTicket &&
        e1?.subjetSitcket == e2?.subjetSitcket &&
        e1?.nameTicket == e2?.nameTicket &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(SupportTicketsRecord? e) => const ListEquality().hash([
        e?.emailSupport,
        e?.textTicket,
        e?.subjetSitcket,
        e?.nameTicket,
        e?.fecha
      ]);

  @override
  bool isValidKey(Object? o) => o is SupportTicketsRecord;
}
