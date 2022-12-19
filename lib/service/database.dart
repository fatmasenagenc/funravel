import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';


class DatabaseService{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final String? uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection("Person");
  final CollectionReference groupCollection =
  FirebaseFirestore.instance.collection("GroupChat");

  Future savingUserData(String name, String email) async {
    return await userCollection.doc(uid)
        .set({
        'userName': name,
        'email': email,
        'groups': [],
        'uid': uid,
        });
  }

  Future getUserData(String email) async {
    QuerySnapshot snapshot =
    await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }
}