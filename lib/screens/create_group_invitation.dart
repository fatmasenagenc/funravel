import 'package:flutter/material.dart';
import 'package:funravel_v0/screens/main_nav_router_screen.dart';
import '../../constants/contants.dart';
import '../service/database.dart';
import 'package:funravel_v0/service/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'nav_screens/nav_4_groupschats.dart';
import 'nav_screens/nav_5_profile.dart';

class CreateGroupInv extends StatefulWidget {
  @override
  _CreateGroupInv createState() => _CreateGroupInv();
}

class _CreateGroupInv extends State<CreateGroupInv> {
  String groupName ="";
  String explanation = "";
  String userName = "";

  Future _getDataFromDatabase() async
  {
    await FirebaseFirestore.instance.collection("Person")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async{
      if (snapshot.exists){
        setState(() {
          userName = snapshot.data()!["userName"];
        });
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDataFromDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating Group Invitation', style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w800,
            color: kPrimaryDarkenedColor)),
        centerTitle: true,
      ),
        body:
        Padding(
            padding: const EdgeInsets.only(top: 70, left: 10, right:10),
          child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children:[
              Container(

                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                height: 40,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),

                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: TextField(
                      maxLength: 100,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      controller: TextEditingController(),
                      style: TextStyle(
                          color: kPrimaryDarkenedColor, fontWeight: FontWeight.bold),
                      cursorColor: Colors.black,
                      onChanged: (groupN) {
                        groupName = groupN;
                        print("changed $groupN");
                      },
                      decoration: InputDecoration(
                          counterStyle: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 0, color: Colors.white.withOpacity(0)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 0,
                                color: Colors.white.withOpacity(0)), //<-- SEE HERE
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.white.withOpacity(0)), //<-- SEE HERE
                          ),
                          hintText: "Set a Title",
                          hintStyle: TextStyle(
                              color: kPrimaryDarkenedColor.withOpacity(0.5),
                              fontWeight: FontWeight.bold)
                      )
                    // controller and etc.
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                height: 150,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: TextField(
                      maxLength: 500,
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      controller: TextEditingController(),
                      style: TextStyle(
                          color: kPrimaryDarkenedColor, fontWeight: FontWeight.bold),
                      cursorColor: Colors.black,
                      onChanged: (exp) {
                        explanation = exp;
                        print("changed $exp");
                      },
                      decoration: InputDecoration(
                          counterStyle: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 0, color: Colors.white.withOpacity(0)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 0,
                                color: Colors.white.withOpacity(0)), //<-- SEE HERE
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.white.withOpacity(0)), //<-- SEE HERE
                          ),
                          hintText: "Write an explanation",
                          hintStyle: TextStyle(
                              color: kPrimaryDarkenedColor.withOpacity(0.5),
                              fontWeight: FontWeight.bold)
                      )
                    // controller and etc.
                  ),
                ),
              ),
          SizedBox(height:70, width:20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kSecondaryColor,
              fixedSize: const Size(200, 50),
              //padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
              onPressed: () async {
                if (groupName != "") {
                  DatabaseService(
                      uid: FirebaseAuth.instance.currentUser!.uid)
                      .createGroup(userName,
                      FirebaseAuth.instance.currentUser!.uid, groupName,
                      explanation);
                }
                Navigator.of(context).pushAndRemoveUntil
                (MaterialPageRoute

                (builder: (context) => MainNavRouterScreen()), (
                 route) => false);
              }
              ,
            child: Text('Create',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryDarkenedColor)),
          ),

            ]
          )
    )
        )
    );
  }

}