import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsRecord extends FirestoreRecord {
  UserDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _phoneNumber = snapshotData['Phone_number'] as String?;
    _age = snapshotData['Age'] as String?;
    _email = snapshotData['Email'] as String?;
    _password = snapshotData['Password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User_details');

  static Stream<UserDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDetailsRecord.fromSnapshot(s));

  static Future<UserDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDetailsRecord.fromSnapshot(s));

  static UserDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDetailsRecordData({
  String? name,
  String? phoneNumber,
  String? age,
  String? email,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Phone_number': phoneNumber,
      'Age': age,
      'Email': email,
      'Password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDetailsRecordDocumentEquality implements Equality<UserDetailsRecord> {
  const UserDetailsRecordDocumentEquality();

  @override
  bool equals(UserDetailsRecord? e1, UserDetailsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password;
  }

  @override
  int hash(UserDetailsRecord? e) => const ListEquality()
      .hash([e?.name, e?.phoneNumber, e?.age, e?.email, e?.password]);

  @override
  bool isValidKey(Object? o) => o is UserDetailsRecord;
}
