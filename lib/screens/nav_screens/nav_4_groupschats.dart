import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funravel_v0/service/auth.dart';
import '../../constants/contants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../widgets/group_tile.dart';

class NavGroupsChats extends StatefulWidget {
  const NavGroupsChats({Key? key}) : super(key: key);

  @override
  State<NavGroupsChats> createState() => _NavGroupsChatsState();
}

class _NavGroupsChatsState extends State<NavGroupsChats> {
  String userName = "";
  String email = "";
  AuthService authService = AuthService();
  List groups = [];
  String groupName = "";

  // string manipulation
  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }


  Future _getDataFromDatabase() async
  {
    await FirebaseFirestore.instance.collection("Person")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async{
      if (snapshot.exists){
        setState(() {
          userName = snapshot.data()!["userName"];
          groups = snapshot.data()!["groups"];
        });
      }
    });

  }



  @override
  void initState() {
    super.initState();
    _getDataFromDatabase();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Group Chats', style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.w800,
              color: kPrimaryDarkenedColor)),
          centerTitle: true,
        ),
      body:printView()
      /*body: */

    );
  }

  printView() {

      return ListView.builder(
        itemCount: groups.length,
        itemBuilder: (context, index) {
          int reverseIndex = groups.length - index - 1;
          return GroupTile(
              groupId: getId(groups[reverseIndex]),
              groupName: getName(groups[reverseIndex]),
              userName: userName,
          );
        },
      );
  }

}
