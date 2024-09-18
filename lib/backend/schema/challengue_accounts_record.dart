import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengueAccountsRecord extends FirestoreRecord {
  ChallengueAccountsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_account" field.
  String? _idAccount;
  String get idAccount => _idAccount ?? '';
  bool hasIdAccount() => _idAccount != null;

  // "plataforma" field.
  String? _plataforma;
  String get plataforma => _plataforma ?? '';
  bool hasPlataforma() => _plataforma != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "end_account" field.
  String? _endAccount;
  String get endAccount => _endAccount ?? '';
  bool hasEndAccount() => _endAccount != null;

  // "account_size" field.
  String? _accountSize;
  String get accountSize => _accountSize ?? '';
  bool hasAccountSize() => _accountSize != null;

  // "lastupdate" field.
  DateTime? _lastupdate;
  DateTime? get lastupdate => _lastupdate;
  bool hasLastupdate() => _lastupdate != null;

  // "minimun_trading_acc" field.
  String? _minimunTradingAcc;
  String get minimunTradingAcc => _minimunTradingAcc ?? '';
  bool hasMinimunTradingAcc() => _minimunTradingAcc != null;

  // "max_daily_loss" field.
  String? _maxDailyLoss;
  String get maxDailyLoss => _maxDailyLoss ?? '';
  bool hasMaxDailyLoss() => _maxDailyLoss != null;

  // "max_loss" field.
  String? _maxLoss;
  String get maxLoss => _maxLoss ?? '';
  bool hasMaxLoss() => _maxLoss != null;

  // "profit_targeet" field.
  String? _profitTargeet;
  String get profitTargeet => _profitTargeet ?? '';
  bool hasProfitTargeet() => _profitTargeet != null;

  // "equity_account" field.
  String? _equityAccount;
  String get equityAccount => _equityAccount ?? '';
  bool hasEquityAccount() => _equityAccount != null;

  // "balance_account" field.
  String? _balanceAccount;
  String get balanceAccount => _balanceAccount ?? '';
  bool hasBalanceAccount() => _balanceAccount != null;

  // "n_trades" field.
  String? _nTrades;
  String get nTrades => _nTrades ?? '';
  bool hasNTrades() => _nTrades != null;

  // "account_email_user" field.
  String? _accountEmailUser;
  String get accountEmailUser => _accountEmailUser ?? '';
  bool hasAccountEmailUser() => _accountEmailUser != null;

  // "server_Account" field.
  String? _serverAccount;
  String get serverAccount => _serverAccount ?? '';
  bool hasServerAccount() => _serverAccount != null;

  // "password_account" field.
  String? _passwordAccount;
  String get passwordAccount => _passwordAccount ?? '';
  bool hasPasswordAccount() => _passwordAccount != null;

  // "challenge_type" field.
  String? _challengeType;
  String get challengeType => _challengeType ?? '';
  bool hasChallengeType() => _challengeType != null;

  // "balance_type" field.
  bool? _balanceType;
  bool get balanceType => _balanceType ?? false;
  bool hasBalanceType() => _balanceType != null;

  // "CurrentEquity" field.
  String? _currentEquity;
  String get currentEquity => _currentEquity ?? '';
  bool hasCurrentEquity() => _currentEquity != null;

  // "CurrentProfit" field.
  String? _currentProfit;
  String get currentProfit => _currentProfit ?? '';
  bool hasCurrentProfit() => _currentProfit != null;

  // "mtd_status" field.
  bool? _mtdStatus;
  bool get mtdStatus => _mtdStatus ?? false;
  bool hasMtdStatus() => _mtdStatus != null;

  // "mdl_status" field.
  bool? _mdlStatus;
  bool get mdlStatus => _mdlStatus ?? false;
  bool hasMdlStatus() => _mdlStatus != null;

  // "ml_status" field.
  bool? _mlStatus;
  bool get mlStatus => _mlStatus ?? false;
  bool hasMlStatus() => _mlStatus != null;

  // "pt_status" field.
  bool? _ptStatus;
  bool get ptStatus => _ptStatus ?? false;
  bool hasPtStatus() => _ptStatus != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "can_witdhawral" field.
  bool? _canWitdhawral;
  bool get canWitdhawral => _canWitdhawral ?? false;
  bool hasCanWitdhawral() => _canWitdhawral != null;

  // "amaount_withdrawal" field.
  String? _amaountWithdrawal;
  String get amaountWithdrawal => _amaountWithdrawal ?? '';
  bool hasAmaountWithdrawal() => _amaountWithdrawal != null;

  // "account_type" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "challenge_balance" field.
  List<double>? _challengeBalance;
  List<double> get challengeBalance => _challengeBalance ?? const [];
  bool hasChallengeBalance() => _challengeBalance != null;

  // "challenge_day" field.
  List<double>? _challengeDay;
  List<double> get challengeDay => _challengeDay ?? const [];
  bool hasChallengeDay() => _challengeDay != null;

  void _initializeFields() {
    _idAccount = snapshotData['id_account'] as String?;
    _plataforma = snapshotData['plataforma'] as String?;
    _status = snapshotData['status'] as String?;
    _endAccount = snapshotData['end_account'] as String?;
    _accountSize = snapshotData['account_size'] as String?;
    _lastupdate = snapshotData['lastupdate'] as DateTime?;
    _minimunTradingAcc = snapshotData['minimun_trading_acc'] as String?;
    _maxDailyLoss = snapshotData['max_daily_loss'] as String?;
    _maxLoss = snapshotData['max_loss'] as String?;
    _profitTargeet = snapshotData['profit_targeet'] as String?;
    _equityAccount = snapshotData['equity_account'] as String?;
    _balanceAccount = snapshotData['balance_account'] as String?;
    _nTrades = snapshotData['n_trades'] as String?;
    _accountEmailUser = snapshotData['account_email_user'] as String?;
    _serverAccount = snapshotData['server_Account'] as String?;
    _passwordAccount = snapshotData['password_account'] as String?;
    _challengeType = snapshotData['challenge_type'] as String?;
    _balanceType = snapshotData['balance_type'] as bool?;
    _currentEquity = snapshotData['CurrentEquity'] as String?;
    _currentProfit = snapshotData['CurrentProfit'] as String?;
    _mtdStatus = snapshotData['mtd_status'] as bool?;
    _mdlStatus = snapshotData['mdl_status'] as bool?;
    _mlStatus = snapshotData['ml_status'] as bool?;
    _ptStatus = snapshotData['pt_status'] as bool?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _canWitdhawral = snapshotData['can_witdhawral'] as bool?;
    _amaountWithdrawal = snapshotData['amaount_withdrawal'] as String?;
    _accountType = snapshotData['account_type'] as String?;
    _challengeBalance = getDataList(snapshotData['challenge_balance']);
    _challengeDay = getDataList(snapshotData['challenge_day']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challengue_accounts');

  static Stream<ChallengueAccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengueAccountsRecord.fromSnapshot(s));

  static Future<ChallengueAccountsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ChallengueAccountsRecord.fromSnapshot(s));

  static ChallengueAccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengueAccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengueAccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengueAccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengueAccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengueAccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengueAccountsRecordData({
  String? idAccount,
  String? plataforma,
  String? status,
  String? endAccount,
  String? accountSize,
  DateTime? lastupdate,
  String? minimunTradingAcc,
  String? maxDailyLoss,
  String? maxLoss,
  String? profitTargeet,
  String? equityAccount,
  String? balanceAccount,
  String? nTrades,
  String? accountEmailUser,
  String? serverAccount,
  String? passwordAccount,
  String? challengeType,
  bool? balanceType,
  String? currentEquity,
  String? currentProfit,
  bool? mtdStatus,
  bool? mdlStatus,
  bool? mlStatus,
  bool? ptStatus,
  DateTime? startDate,
  bool? canWitdhawral,
  String? amaountWithdrawal,
  String? accountType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_account': idAccount,
      'plataforma': plataforma,
      'status': status,
      'end_account': endAccount,
      'account_size': accountSize,
      'lastupdate': lastupdate,
      'minimun_trading_acc': minimunTradingAcc,
      'max_daily_loss': maxDailyLoss,
      'max_loss': maxLoss,
      'profit_targeet': profitTargeet,
      'equity_account': equityAccount,
      'balance_account': balanceAccount,
      'n_trades': nTrades,
      'account_email_user': accountEmailUser,
      'server_Account': serverAccount,
      'password_account': passwordAccount,
      'challenge_type': challengeType,
      'balance_type': balanceType,
      'CurrentEquity': currentEquity,
      'CurrentProfit': currentProfit,
      'mtd_status': mtdStatus,
      'mdl_status': mdlStatus,
      'ml_status': mlStatus,
      'pt_status': ptStatus,
      'start_date': startDate,
      'can_witdhawral': canWitdhawral,
      'amaount_withdrawal': amaountWithdrawal,
      'account_type': accountType,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengueAccountsRecordDocumentEquality
    implements Equality<ChallengueAccountsRecord> {
  const ChallengueAccountsRecordDocumentEquality();

  @override
  bool equals(ChallengueAccountsRecord? e1, ChallengueAccountsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.idAccount == e2?.idAccount &&
        e1?.plataforma == e2?.plataforma &&
        e1?.status == e2?.status &&
        e1?.endAccount == e2?.endAccount &&
        e1?.accountSize == e2?.accountSize &&
        e1?.lastupdate == e2?.lastupdate &&
        e1?.minimunTradingAcc == e2?.minimunTradingAcc &&
        e1?.maxDailyLoss == e2?.maxDailyLoss &&
        e1?.maxLoss == e2?.maxLoss &&
        e1?.profitTargeet == e2?.profitTargeet &&
        e1?.equityAccount == e2?.equityAccount &&
        e1?.balanceAccount == e2?.balanceAccount &&
        e1?.nTrades == e2?.nTrades &&
        e1?.accountEmailUser == e2?.accountEmailUser &&
        e1?.serverAccount == e2?.serverAccount &&
        e1?.passwordAccount == e2?.passwordAccount &&
        e1?.challengeType == e2?.challengeType &&
        e1?.balanceType == e2?.balanceType &&
        e1?.currentEquity == e2?.currentEquity &&
        e1?.currentProfit == e2?.currentProfit &&
        e1?.mtdStatus == e2?.mtdStatus &&
        e1?.mdlStatus == e2?.mdlStatus &&
        e1?.mlStatus == e2?.mlStatus &&
        e1?.ptStatus == e2?.ptStatus &&
        e1?.startDate == e2?.startDate &&
        e1?.canWitdhawral == e2?.canWitdhawral &&
        e1?.amaountWithdrawal == e2?.amaountWithdrawal &&
        e1?.accountType == e2?.accountType &&
        listEquality.equals(e1?.challengeBalance, e2?.challengeBalance) &&
        listEquality.equals(e1?.challengeDay, e2?.challengeDay);
  }

  @override
  int hash(ChallengueAccountsRecord? e) => const ListEquality().hash([
        e?.idAccount,
        e?.plataforma,
        e?.status,
        e?.endAccount,
        e?.accountSize,
        e?.lastupdate,
        e?.minimunTradingAcc,
        e?.maxDailyLoss,
        e?.maxLoss,
        e?.profitTargeet,
        e?.equityAccount,
        e?.balanceAccount,
        e?.nTrades,
        e?.accountEmailUser,
        e?.serverAccount,
        e?.passwordAccount,
        e?.challengeType,
        e?.balanceType,
        e?.currentEquity,
        e?.currentProfit,
        e?.mtdStatus,
        e?.mdlStatus,
        e?.mlStatus,
        e?.ptStatus,
        e?.startDate,
        e?.canWitdhawral,
        e?.amaountWithdrawal,
        e?.accountType,
        e?.challengeBalance,
        e?.challengeDay
      ]);

  @override
  bool isValidKey(Object? o) => o is ChallengueAccountsRecord;
}
