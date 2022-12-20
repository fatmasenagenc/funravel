import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/group_chats.dart';

import '../models/user.dart';


class DatabaseService{

  final String? uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection("User");
  final CollectionReference groupCollection =
  FirebaseFirestore.instance.collection("GroupChats");

  Future savingUserData(String name, String email) async {
    UserModel user = UserModel(userName : name, email : email, groups: [] , uid: uid );
    return await userCollection.doc(uid)
        .set( user.toMap());
  }

  Future createGroup(String userName, String id, String groupName,String explanation) async {
    GroupChats groupChats = GroupChats(
      groupName: groupName,
      concert: [],
      groupIcon: "",
      admin: "${id}_$userName",
      members: [],
      groupID: "",
      recentMessage: "",
      recentMessageSender: "",
      explanation: explanation,

    );

  // return await groupCollection.doc(uid)
  //   .set( groupChats.toMap());

    DocumentReference groupDocumentReference = await groupCollection.add(
        groupChats.toMap());


    // update the members
    await groupDocumentReference.update({
      "members": FieldValue.arrayUnion(["${uid}_$userName"]),
      "groupId": groupDocumentReference.id,
    });

    // groupChats.members = ["${uid}_$userName"];
    // groupChats.groupID = groupDocumentReference.id;

    DocumentReference userDocumentReference = userCollection.doc(uid);
    return await userDocumentReference.update({
      "groups": FieldValue.arrayUnion(["${groupDocumentReference.id}_$groupName"])
    });

  }

  Future getUserData(String email) async {
    QuerySnapshot snapshot =
    await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }


  getUserGroups() async{
    return userCollection.doc(uid).snapshots;
  }

}