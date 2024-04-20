import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilenameRecord extends FirestoreRecord {
  FilenameRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "File_name" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  bool hasFileName() => _fileName != null;

  // "Upload_time" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

  void _initializeFields() {
    _fileName = snapshotData['File_name'] as String?;
    _uploadTime = snapshotData['Upload_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('filename');

  static Stream<FilenameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilenameRecord.fromSnapshot(s));

  static Future<FilenameRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilenameRecord.fromSnapshot(s));

  static FilenameRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FilenameRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilenameRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilenameRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilenameRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FilenameRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFilenameRecordData({
  String? fileName,
  DateTime? uploadTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'File_name': fileName,
      'Upload_time': uploadTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class FilenameRecordDocumentEquality implements Equality<FilenameRecord> {
  const FilenameRecordDocumentEquality();

  @override
  bool equals(FilenameRecord? e1, FilenameRecord? e2) {
    return e1?.fileName == e2?.fileName && e1?.uploadTime == e2?.uploadTime;
  }

  @override
  int hash(FilenameRecord? e) =>
      const ListEquality().hash([e?.fileName, e?.uploadTime]);

  @override
  bool isValidKey(Object? o) => o is FilenameRecord;
}
