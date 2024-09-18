import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengeDetailsRecord extends FirestoreRecord {
  ChallengeDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "chart_data" field.
  List<String>? _chartData;
  List<String> get chartData => _chartData ?? const [];
  bool hasChartData() => _chartData != null;

  // "chart_labels" field.
  List<String>? _chartLabels;
  List<String> get chartLabels => _chartLabels ?? const [];
  bool hasChartLabels() => _chartLabels != null;

  // "chart_own" field.
  String? _chartOwn;
  String get chartOwn => _chartOwn ?? '';
  bool hasChartOwn() => _chartOwn != null;

  // "acc_balance_now" field.
  double? _accBalanceNow;
  double get accBalanceNow => _accBalanceNow ?? 0.0;
  bool hasAccBalanceNow() => _accBalanceNow != null;

  // "acc_day_now" field.
  int? _accDayNow;
  int get accDayNow => _accDayNow ?? 0;
  bool hasAccDayNow() => _accDayNow != null;

  void _initializeFields() {
    _chartData = getDataList(snapshotData['chart_data']);
    _chartLabels = getDataList(snapshotData['chart_labels']);
    _chartOwn = snapshotData['chart_own'] as String?;
    _accBalanceNow = castToType<double>(snapshotData['acc_balance_now']);
    _accDayNow = castToType<int>(snapshotData['acc_day_now']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenge_details');

  static Stream<ChallengeDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengeDetailsRecord.fromSnapshot(s));

  static Future<ChallengeDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ChallengeDetailsRecord.fromSnapshot(s));

  static ChallengeDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengeDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengeDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengeDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengeDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengeDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengeDetailsRecordData({
  String? chartOwn,
  double? accBalanceNow,
  int? accDayNow,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chart_own': chartOwn,
      'acc_balance_now': accBalanceNow,
      'acc_day_now': accDayNow,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengeDetailsRecordDocumentEquality
    implements Equality<ChallengeDetailsRecord> {
  const ChallengeDetailsRecordDocumentEquality();

  @override
  bool equals(ChallengeDetailsRecord? e1, ChallengeDetailsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.chartData, e2?.chartData) &&
        listEquality.equals(e1?.chartLabels, e2?.chartLabels) &&
        e1?.chartOwn == e2?.chartOwn &&
        e1?.accBalanceNow == e2?.accBalanceNow &&
        e1?.accDayNow == e2?.accDayNow;
  }

  @override
  int hash(ChallengeDetailsRecord? e) => const ListEquality().hash([
        e?.chartData,
        e?.chartLabels,
        e?.chartOwn,
        e?.accBalanceNow,
        e?.accDayNow
      ]);

  @override
  bool isValidKey(Object? o) => o is ChallengeDetailsRecord;
}
