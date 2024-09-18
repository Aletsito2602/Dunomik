import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengesOrdersRecord extends FirestoreRecord {
  ChallengesOrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "typeofaccount" field.
  String? _typeofaccount;
  String get typeofaccount => _typeofaccount ?? '';
  bool hasTypeofaccount() => _typeofaccount != null;

  // "amountofaccount" field.
  String? _amountofaccount;
  String get amountofaccount => _amountofaccount ?? '';
  bool hasAmountofaccount() => _amountofaccount != null;

  // "plattformselected" field.
  String? _plattformselected;
  String get plattformselected => _plattformselected ?? '';
  bool hasPlattformselected() => _plattformselected != null;

  // "email_buyer" field.
  String? _emailBuyer;
  String get emailBuyer => _emailBuyer ?? '';
  bool hasEmailBuyer() => _emailBuyer != null;

  // "hash_orders" field.
  String? _hashOrders;
  String get hashOrders => _hashOrders ?? '';
  bool hasHashOrders() => _hashOrders != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "name_buyer" field.
  String? _nameBuyer;
  String get nameBuyer => _nameBuyer ?? '';
  bool hasNameBuyer() => _nameBuyer != null;

  // "time_order" field.
  DateTime? _timeOrder;
  DateTime? get timeOrder => _timeOrder;
  bool hasTimeOrder() => _timeOrder != null;

  // "referente1" field.
  String? _referente1;
  String get referente1 => _referente1 ?? '';
  bool hasReferente1() => _referente1 != null;

  // "referente2" field.
  String? _referente2;
  String get referente2 => _referente2 ?? '';
  bool hasReferente2() => _referente2 != null;

  // "referente3" field.
  String? _referente3;
  String get referente3 => _referente3 ?? '';
  bool hasReferente3() => _referente3 != null;

  void _initializeFields() {
    _typeofaccount = snapshotData['typeofaccount'] as String?;
    _amountofaccount = snapshotData['amountofaccount'] as String?;
    _plattformselected = snapshotData['plattformselected'] as String?;
    _emailBuyer = snapshotData['email_buyer'] as String?;
    _hashOrders = snapshotData['hash_orders'] as String?;
    _status = snapshotData['status'] as String?;
    _nameBuyer = snapshotData['name_buyer'] as String?;
    _timeOrder = snapshotData['time_order'] as DateTime?;
    _referente1 = snapshotData['referente1'] as String?;
    _referente2 = snapshotData['referente2'] as String?;
    _referente3 = snapshotData['referente3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenges_orders');

  static Stream<ChallengesOrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengesOrdersRecord.fromSnapshot(s));

  static Future<ChallengesOrdersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ChallengesOrdersRecord.fromSnapshot(s));

  static ChallengesOrdersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengesOrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengesOrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengesOrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengesOrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengesOrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengesOrdersRecordData({
  String? typeofaccount,
  String? amountofaccount,
  String? plattformselected,
  String? emailBuyer,
  String? hashOrders,
  String? status,
  String? nameBuyer,
  DateTime? timeOrder,
  String? referente1,
  String? referente2,
  String? referente3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'typeofaccount': typeofaccount,
      'amountofaccount': amountofaccount,
      'plattformselected': plattformselected,
      'email_buyer': emailBuyer,
      'hash_orders': hashOrders,
      'status': status,
      'name_buyer': nameBuyer,
      'time_order': timeOrder,
      'referente1': referente1,
      'referente2': referente2,
      'referente3': referente3,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengesOrdersRecordDocumentEquality
    implements Equality<ChallengesOrdersRecord> {
  const ChallengesOrdersRecordDocumentEquality();

  @override
  bool equals(ChallengesOrdersRecord? e1, ChallengesOrdersRecord? e2) {
    return e1?.typeofaccount == e2?.typeofaccount &&
        e1?.amountofaccount == e2?.amountofaccount &&
        e1?.plattformselected == e2?.plattformselected &&
        e1?.emailBuyer == e2?.emailBuyer &&
        e1?.hashOrders == e2?.hashOrders &&
        e1?.status == e2?.status &&
        e1?.nameBuyer == e2?.nameBuyer &&
        e1?.timeOrder == e2?.timeOrder &&
        e1?.referente1 == e2?.referente1 &&
        e1?.referente2 == e2?.referente2 &&
        e1?.referente3 == e2?.referente3;
  }

  @override
  int hash(ChallengesOrdersRecord? e) => const ListEquality().hash([
        e?.typeofaccount,
        e?.amountofaccount,
        e?.plattformselected,
        e?.emailBuyer,
        e?.hashOrders,
        e?.status,
        e?.nameBuyer,
        e?.timeOrder,
        e?.referente1,
        e?.referente2,
        e?.referente3
      ]);

  @override
  bool isValidKey(Object? o) => o is ChallengesOrdersRecord;
}
