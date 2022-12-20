import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/group_chats.dart';

import '../models/user.dart';


class DatabaseService{

  final String? uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection("Person");
  final CollectionReference groupCollection =
  FirebaseFirestore.instance.collection("groups");

  Future savingUserData(String name, String email) async {
    UserModel user = UserModel(userName : name, email : email, groups: [] , uid: uid );
    return await userCollection.doc(uid)
        .set( user.toMap());
  }

  Future getUserData(String email) async {
    QuerySnapshot snapshot =
    await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }


  Future createGroup(String userName, String id, String groupName,String explanation) async {
    DocumentReference groupDocumentReference = await groupCollection.add({
      "groupName": groupName,
      "concert": [], //get from api
      "groupIcon": "", //get from api
      "admin": "${id}_$userName",
      "members": [],
      "groupId": "",
      "recentMessage": "",
      "recentMessageSender": "",
      "explanation": explanation,
    });
    // update the members
    await groupDocumentReference.update({
      "members": FieldValue.arrayUnion(["${uid}_$userName"]),
      "groupId": groupDocumentReference.id,
    });
    DocumentReference userDocumentReference = userCollection.doc(uid);
    return await userDocumentReference.update({
      "groups":
      FieldValue.arrayUnion(["${groupDocumentReference.id}_$groupName"])
    });

  }

  getUserGroups() async{
    return userCollection.doc(uid).snapshots;
  }

}