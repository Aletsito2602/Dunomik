import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WithdrawhalTicketRecord extends FirestoreRecord {
  WithdrawhalTicketRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_account" field.
  String? _idAccount;
  String get idAccount => _idAccount ?? '';
  bool hasIdAccount() => _idAccount != null;

  // "amount_ticket" field.
  String? _amountTicket;
  String get amountTicket => _amountTicket ?? '';
  bool hasAmountTicket() => _amountTicket != null;

  // "email_ticketer" field.
  String? _emailTicketer;
  String get emailTicketer => _emailTicketer ?? '';
  bool hasEmailTicketer() => _emailTicketer != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "fecharetiro" field.
  DateTime? _fecharetiro;
  DateTime? get fecharetiro => _fecharetiro;
  bool hasFecharetiro() => _fecharetiro != null;

  void _initializeFields() {
    _idAccount = snapshotData['id_account'] as String?;
    _amountTicket = snapshotData['amount_ticket'] as String?;
    _emailTicketer = snapshotData['email_ticketer'] as String?;
    _status = snapshotData['status'] as String?;
    _fecharetiro = snapshotData['fecharetiro'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('withdrawhal_ticket');

  static Stream<WithdrawhalTicketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WithdrawhalTicketRecord.fromSnapshot(s));

  static Future<WithdrawhalTicketRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => WithdrawhalTicketRecord.fromSnapshot(s));

  static WithdrawhalTicketRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WithdrawhalTicketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WithdrawhalTicketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WithdrawhalTicketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WithdrawhalTicketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WithdrawhalTicketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWithdrawhalTicketRecordData({
  String? idAccount,
  String? amountTicket,
  String? emailTicketer,
  String? status,
  DateTime? fecharetiro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_account': idAccount,
      'amount_ticket': amountTicket,
      'email_ticketer': emailTicketer,
      'status': status,
      'fecharetiro': fecharetiro,
    }.withoutNulls,
  );

  return firestoreData;
}

class WithdrawhalTicketRecordDocumentEquality
    implements Equality<WithdrawhalTicketRecord> {
  const WithdrawhalTicketRecordDocumentEquality();

  @override
  bool equals(WithdrawhalTicketRecord? e1, WithdrawhalTicketRecord? e2) {
    return e1?.idAccount == e2?.idAccount &&
        e1?.amountTicket == e2?.amountTicket &&
        e1?.emailTicketer == e2?.emailTicketer &&
        e1?.status == e2?.status &&
        e1?.fecharetiro == e2?.fecharetiro;
  }

  @override
  int hash(WithdrawhalTicketRecord? e) => const ListEquality().hash([
        e?.idAccount,
        e?.amountTicket,
        e?.emailTicketer,
        e?.status,
        e?.fecharetiro
      ]);

  @override
  bool isValidKey(Object? o) => o is WithdrawhalTicketRecord;
}
