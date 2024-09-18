import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayoutWalletsRecord extends FirestoreRecord {
  PayoutWalletsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hft_trc_wallet" field.
  String? _hftTrcWallet;
  String get hftTrcWallet => _hftTrcWallet ?? '';
  bool hasHftTrcWallet() => _hftTrcWallet != null;

  // "hft_bep20_wallet" field.
  String? _hftBep20Wallet;
  String get hftBep20Wallet => _hftBep20Wallet ?? '';
  bool hasHftBep20Wallet() => _hftBep20Wallet != null;

  // "standard_trc20_wallet" field.
  String? _standardTrc20Wallet;
  String get standardTrc20Wallet => _standardTrc20Wallet ?? '';
  bool hasStandardTrc20Wallet() => _standardTrc20Wallet != null;

  // "standard_bep20_wallet" field.
  String? _standardBep20Wallet;
  String get standardBep20Wallet => _standardBep20Wallet ?? '';
  bool hasStandardBep20Wallet() => _standardBep20Wallet != null;

  // "hft_trc_wallet_qr" field.
  String? _hftTrcWalletQr;
  String get hftTrcWalletQr => _hftTrcWalletQr ?? '';
  bool hasHftTrcWalletQr() => _hftTrcWalletQr != null;

  // "hft_bep20_wallet_qt" field.
  String? _hftBep20WalletQt;
  String get hftBep20WalletQt => _hftBep20WalletQt ?? '';
  bool hasHftBep20WalletQt() => _hftBep20WalletQt != null;

  void _initializeFields() {
    _hftTrcWallet = snapshotData['hft_trc_wallet'] as String?;
    _hftBep20Wallet = snapshotData['hft_bep20_wallet'] as String?;
    _standardTrc20Wallet = snapshotData['standard_trc20_wallet'] as String?;
    _standardBep20Wallet = snapshotData['standard_bep20_wallet'] as String?;
    _hftTrcWalletQr = snapshotData['hft_trc_wallet_qr'] as String?;
    _hftBep20WalletQt = snapshotData['hft_bep20_wallet_qt'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payout_wallets');

  static Stream<PayoutWalletsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PayoutWalletsRecord.fromSnapshot(s));

  static Future<PayoutWalletsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PayoutWalletsRecord.fromSnapshot(s));

  static PayoutWalletsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PayoutWalletsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PayoutWalletsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PayoutWalletsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PayoutWalletsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PayoutWalletsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPayoutWalletsRecordData({
  String? hftTrcWallet,
  String? hftBep20Wallet,
  String? standardTrc20Wallet,
  String? standardBep20Wallet,
  String? hftTrcWalletQr,
  String? hftBep20WalletQt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hft_trc_wallet': hftTrcWallet,
      'hft_bep20_wallet': hftBep20Wallet,
      'standard_trc20_wallet': standardTrc20Wallet,
      'standard_bep20_wallet': standardBep20Wallet,
      'hft_trc_wallet_qr': hftTrcWalletQr,
      'hft_bep20_wallet_qt': hftBep20WalletQt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PayoutWalletsRecordDocumentEquality
    implements Equality<PayoutWalletsRecord> {
  const PayoutWalletsRecordDocumentEquality();

  @override
  bool equals(PayoutWalletsRecord? e1, PayoutWalletsRecord? e2) {
    return e1?.hftTrcWallet == e2?.hftTrcWallet &&
        e1?.hftBep20Wallet == e2?.hftBep20Wallet &&
        e1?.standardTrc20Wallet == e2?.standardTrc20Wallet &&
        e1?.standardBep20Wallet == e2?.standardBep20Wallet &&
        e1?.hftTrcWalletQr == e2?.hftTrcWalletQr &&
        e1?.hftBep20WalletQt == e2?.hftBep20WalletQt;
  }

  @override
  int hash(PayoutWalletsRecord? e) => const ListEquality().hash([
        e?.hftTrcWallet,
        e?.hftBep20Wallet,
        e?.standardTrc20Wallet,
        e?.standardBep20Wallet,
        e?.hftTrcWalletQr,
        e?.hftBep20WalletQt
      ]);

  @override
  bool isValidKey(Object? o) => o is PayoutWalletsRecord;
}
