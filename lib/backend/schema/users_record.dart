import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "challenges_active" field.
  bool? _challengesActive;
  bool get challengesActive => _challengesActive ?? false;
  bool hasChallengesActive() => _challengesActive != null;

  // "kyc_status" field.
  bool? _kycStatus;
  bool get kycStatus => _kycStatus ?? false;
  bool hasKycStatus() => _kycStatus != null;

  // "referente" field.
  DocumentReference? _referente;
  DocumentReference? get referente => _referente;
  bool hasReferente() => _referente != null;

  // "referidos_list" field.
  List<DocumentReference>? _referidosList;
  List<DocumentReference> get referidosList => _referidosList ?? const [];
  bool hasReferidosList() => _referidosList != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "acepta_terminos" field.
  bool? _aceptaTerminos;
  bool get aceptaTerminos => _aceptaTerminos ?? false;
  bool hasAceptaTerminos() => _aceptaTerminos != null;

  // "acepta_paisderecidencia" field.
  bool? _aceptaPaisderecidencia;
  bool get aceptaPaisderecidencia => _aceptaPaisderecidencia ?? false;
  bool hasAceptaPaisderecidencia() => _aceptaPaisderecidencia != null;

  // "withdrawals_wallet" field.
  String? _withdrawalsWallet;
  String get withdrawalsWallet => _withdrawalsWallet ?? '';
  bool hasWithdrawalsWallet() => _withdrawalsWallet != null;

  // "wallet_server" field.
  String? _walletServer;
  String get walletServer => _walletServer ?? '';
  bool hasWalletServer() => _walletServer != null;

  // "ib_comisiions" field.
  String? _ibComisiions;
  String get ibComisiions => _ibComisiions ?? '';
  bool hasIbComisiions() => _ibComisiions != null;

  // "direccion_acc" field.
  String? _direccionAcc;
  String get direccionAcc => _direccionAcc ?? '';
  bool hasDireccionAcc() => _direccionAcc != null;

  // "emailuser_verified" field.
  bool? _emailuserVerified;
  bool get emailuserVerified => _emailuserVerified ?? false;
  bool hasEmailuserVerified() => _emailuserVerified != null;

  // "codigodereferido" field.
  String? _codigodereferido;
  String get codigodereferido => _codigodereferido ?? '';
  bool hasCodigodereferido() => _codigodereferido != null;

  // "dnifrente" field.
  String? _dnifrente;
  String get dnifrente => _dnifrente ?? '';
  bool hasDnifrente() => _dnifrente != null;

  // "dniatras" field.
  String? _dniatras;
  String get dniatras => _dniatras ?? '';
  bool hasDniatras() => _dniatras != null;

  // "referente1" field.
  String? _referente1;
  String get referente1 => _referente1 ?? '';
  bool hasReferente1() => _referente1 != null;

  // "referente2" field.
  String? _referente2;
  String get referente2 => _referente2 ?? '';
  bool hasReferente2() => _referente2 != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _state = snapshotData['state'] as String?;
    _bio = snapshotData['bio'] as String?;
    _city = snapshotData['city'] as String?;
    _challengesActive = snapshotData['challenges_active'] as bool?;
    _kycStatus = snapshotData['kyc_status'] as bool?;
    _referente = snapshotData['referente'] as DocumentReference?;
    _referidosList = getDataList(snapshotData['referidos_list']);
    _country = snapshotData['country'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _aceptaTerminos = snapshotData['acepta_terminos'] as bool?;
    _aceptaPaisderecidencia = snapshotData['acepta_paisderecidencia'] as bool?;
    _withdrawalsWallet = snapshotData['withdrawals_wallet'] as String?;
    _walletServer = snapshotData['wallet_server'] as String?;
    _ibComisiions = snapshotData['ib_comisiions'] as String?;
    _direccionAcc = snapshotData['direccion_acc'] as String?;
    _emailuserVerified = snapshotData['emailuser_verified'] as bool?;
    _codigodereferido = snapshotData['codigodereferido'] as String?;
    _dnifrente = snapshotData['dnifrente'] as String?;
    _dniatras = snapshotData['dniatras'] as String?;
    _referente1 = snapshotData['referente1'] as String?;
    _referente2 = snapshotData['referente2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? state,
  String? bio,
  String? city,
  bool? challengesActive,
  bool? kycStatus,
  DocumentReference? referente,
  String? country,
  String? lastName,
  bool? aceptaTerminos,
  bool? aceptaPaisderecidencia,
  String? withdrawalsWallet,
  String? walletServer,
  String? ibComisiions,
  String? direccionAcc,
  bool? emailuserVerified,
  String? codigodereferido,
  String? dnifrente,
  String? dniatras,
  String? referente1,
  String? referente2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'state': state,
      'bio': bio,
      'city': city,
      'challenges_active': challengesActive,
      'kyc_status': kycStatus,
      'referente': referente,
      'country': country,
      'last_name': lastName,
      'acepta_terminos': aceptaTerminos,
      'acepta_paisderecidencia': aceptaPaisderecidencia,
      'withdrawals_wallet': withdrawalsWallet,
      'wallet_server': walletServer,
      'ib_comisiions': ibComisiions,
      'direccion_acc': direccionAcc,
      'emailuser_verified': emailuserVerified,
      'codigodereferido': codigodereferido,
      'dnifrente': dnifrente,
      'dniatras': dniatras,
      'referente1': referente1,
      'referente2': referente2,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.state == e2?.state &&
        e1?.bio == e2?.bio &&
        e1?.city == e2?.city &&
        e1?.challengesActive == e2?.challengesActive &&
        e1?.kycStatus == e2?.kycStatus &&
        e1?.referente == e2?.referente &&
        listEquality.equals(e1?.referidosList, e2?.referidosList) &&
        e1?.country == e2?.country &&
        e1?.lastName == e2?.lastName &&
        e1?.aceptaTerminos == e2?.aceptaTerminos &&
        e1?.aceptaPaisderecidencia == e2?.aceptaPaisderecidencia &&
        e1?.withdrawalsWallet == e2?.withdrawalsWallet &&
        e1?.walletServer == e2?.walletServer &&
        e1?.ibComisiions == e2?.ibComisiions &&
        e1?.direccionAcc == e2?.direccionAcc &&
        e1?.emailuserVerified == e2?.emailuserVerified &&
        e1?.codigodereferido == e2?.codigodereferido &&
        e1?.dnifrente == e2?.dnifrente &&
        e1?.dniatras == e2?.dniatras &&
        e1?.referente1 == e2?.referente1 &&
        e1?.referente2 == e2?.referente2;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.state,
        e?.bio,
        e?.city,
        e?.challengesActive,
        e?.kycStatus,
        e?.referente,
        e?.referidosList,
        e?.country,
        e?.lastName,
        e?.aceptaTerminos,
        e?.aceptaPaisderecidencia,
        e?.withdrawalsWallet,
        e?.walletServer,
        e?.ibComisiions,
        e?.direccionAcc,
        e?.emailuserVerified,
        e?.codigodereferido,
        e?.dnifrente,
        e?.dniatras,
        e?.referente1,
        e?.referente2
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
