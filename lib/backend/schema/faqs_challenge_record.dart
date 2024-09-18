import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaqsChallengeRecord extends FirestoreRecord {
  FaqsChallengeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "post_data" field.
  String? _postData;
  String get postData => _postData ?? '';
  bool hasPostData() => _postData != null;

  // "post_title" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _postData = snapshotData['post_data'] as String?;
    _postTitle = snapshotData['post_title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('faqs_challenge');

  static Stream<FaqsChallengeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FaqsChallengeRecord.fromSnapshot(s));

  static Future<FaqsChallengeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FaqsChallengeRecord.fromSnapshot(s));

  static FaqsChallengeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FaqsChallengeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FaqsChallengeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FaqsChallengeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FaqsChallengeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FaqsChallengeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaqsChallengeRecordData({
  String? category,
  String? postData,
  String? postTitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'post_data': postData,
      'post_title': postTitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class FaqsChallengeRecordDocumentEquality
    implements Equality<FaqsChallengeRecord> {
  const FaqsChallengeRecordDocumentEquality();

  @override
  bool equals(FaqsChallengeRecord? e1, FaqsChallengeRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.postData == e2?.postData &&
        e1?.postTitle == e2?.postTitle;
  }

  @override
  int hash(FaqsChallengeRecord? e) =>
      const ListEquality().hash([e?.category, e?.postData, e?.postTitle]);

  @override
  bool isValidKey(Object? o) => o is FaqsChallengeRecord;
}
