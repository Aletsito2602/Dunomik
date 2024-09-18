import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KycRecord extends FirestoreRecord {
  KycRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "FirstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "PhoneNumber" field.
  double? _phoneNumber;
  double get phoneNumber => _phoneNumber ?? 0.0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Dateofbirth" field.
  String? _dateofbirth;
  String get dateofbirth => _dateofbirth ?? '';
  bool hasDateofbirth() => _dateofbirth != null;

  // "DNI" field.
  String? _dni;
  String get dni => _dni ?? '';
  bool hasDni() => _dni != null;

  // "Occupation" field.
  String? _occupation;
  String get occupation => _occupation ?? '';
  bool hasOccupation() => _occupation != null;

  // "Employment" field.
  String? _employment;
  String get employment => _employment ?? '';
  bool hasEmployment() => _employment != null;

  // "SourceofFunds" field.
  String? _sourceofFunds;
  String get sourceofFunds => _sourceofFunds ?? '';
  bool hasSourceofFunds() => _sourceofFunds != null;

  // "DNIFRONT" field.
  String? _dnifront;
  String get dnifront => _dnifront ?? '';
  bool hasDnifront() => _dnifront != null;

  // "DNIATRAS" field.
  String? _dniatras;
  String get dniatras => _dniatras ?? '';
  bool hasDniatras() => _dniatras != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _firstName = snapshotData['FirstName'] as String?;
    _lastName = snapshotData['LastName'] as String?;
    _address = snapshotData['Address'] as String?;
    _phoneNumber = castToType<double>(snapshotData['PhoneNumber']);
    _dateofbirth = snapshotData['Dateofbirth'] as String?;
    _dni = snapshotData['DNI'] as String?;
    _occupation = snapshotData['Occupation'] as String?;
    _employment = snapshotData['Employment'] as String?;
    _sourceofFunds = snapshotData['SourceofFunds'] as String?;
    _dnifront = snapshotData['DNIFRONT'] as String?;
    _dniatras = snapshotData['DNIATRAS'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('kyc')
          : FirebaseFirestore.instance.collectionGroup('kyc');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('kyc').doc(id);

  static Stream<KycRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KycRecord.fromSnapshot(s));

  static Future<KycRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KycRecord.fromSnapshot(s));

  static KycRecord fromSnapshot(DocumentSnapshot snapshot) => KycRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KycRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KycRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KycRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KycRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKycRecordData({
  String? firstName,
  String? lastName,
  String? address,
  double? phoneNumber,
  String? dateofbirth,
  String? dni,
  String? occupation,
  String? employment,
  String? sourceofFunds,
  String? dnifront,
  String? dniatras,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FirstName': firstName,
      'LastName': lastName,
      'Address': address,
      'PhoneNumber': phoneNumber,
      'Dateofbirth': dateofbirth,
      'DNI': dni,
      'Occupation': occupation,
      'Employment': employment,
      'SourceofFunds': sourceofFunds,
      'DNIFRONT': dnifront,
      'DNIATRAS': dniatras,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class KycRecordDocumentEquality implements Equality<KycRecord> {
  const KycRecordDocumentEquality();

  @override
  bool equals(KycRecord? e1, KycRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.address == e2?.address &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.dateofbirth == e2?.dateofbirth &&
        e1?.dni == e2?.dni &&
        e1?.occupation == e2?.occupation &&
        e1?.employment == e2?.employment &&
        e1?.sourceofFunds == e2?.sourceofFunds &&
        e1?.dnifront == e2?.dnifront &&
        e1?.dniatras == e2?.dniatras &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(KycRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.lastName,
        e?.address,
        e?.phoneNumber,
        e?.dateofbirth,
        e?.dni,
        e?.occupation,
        e?.employment,
        e?.sourceofFunds,
        e?.dnifront,
        e?.dniatras,
        e?.fecha
      ]);

  @override
  bool isValidKey(Object? o) => o is KycRecord;
}
