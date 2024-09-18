// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartsStruct extends FFFirebaseStruct {
  ChartsStruct({
    int? chartDay,
    double? chartBalance,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _chartDay = chartDay,
        _chartBalance = chartBalance,
        super(firestoreUtilData);

  // "chart_day" field.
  int? _chartDay;
  int get chartDay => _chartDay ?? 0;
  set chartDay(int? val) => _chartDay = val;

  void incrementChartDay(int amount) => chartDay = chartDay + amount;

  bool hasChartDay() => _chartDay != null;

  // "chart_balance" field.
  double? _chartBalance;
  double get chartBalance => _chartBalance ?? 0.0;
  set chartBalance(double? val) => _chartBalance = val;

  void incrementChartBalance(double amount) =>
      chartBalance = chartBalance + amount;

  bool hasChartBalance() => _chartBalance != null;

  static ChartsStruct fromMap(Map<String, dynamic> data) => ChartsStruct(
        chartDay: castToType<int>(data['chart_day']),
        chartBalance: castToType<double>(data['chart_balance']),
      );

  static ChartsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChartsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'chart_day': _chartDay,
        'chart_balance': _chartBalance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chart_day': serializeParam(
          _chartDay,
          ParamType.int,
        ),
        'chart_balance': serializeParam(
          _chartBalance,
          ParamType.double,
        ),
      }.withoutNulls;

  static ChartsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartsStruct(
        chartDay: deserializeParam(
          data['chart_day'],
          ParamType.int,
          false,
        ),
        chartBalance: deserializeParam(
          data['chart_balance'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ChartsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartsStruct &&
        chartDay == other.chartDay &&
        chartBalance == other.chartBalance;
  }

  @override
  int get hashCode => const ListEquality().hash([chartDay, chartBalance]);
}

ChartsStruct createChartsStruct({
  int? chartDay,
  double? chartBalance,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartsStruct(
      chartDay: chartDay,
      chartBalance: chartBalance,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartsStruct? updateChartsStruct(
  ChartsStruct? charts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    charts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartsStructData(
  Map<String, dynamic> firestoreData,
  ChartsStruct? charts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (charts == null) {
    return;
  }
  if (charts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && charts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartsData = getChartsFirestoreData(charts, forFieldValue);
  final nestedData = chartsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = charts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartsFirestoreData(
  ChartsStruct? charts, [
  bool forFieldValue = false,
]) {
  if (charts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(charts.toMap());

  // Add any Firestore field values
  charts.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartsListFirestoreData(
  List<ChartsStruct>? chartss,
) =>
    chartss?.map((e) => getChartsFirestoreData(e, true)).toList() ?? [];
