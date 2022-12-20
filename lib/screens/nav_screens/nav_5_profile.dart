import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:funravel_v0/models/user.dart';
import 'package:funravel_v0/screens/create_review.dart';
import 'package:funravel_v0/screens/login.dart';
import 'package:funravel_v0/service/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constants/contants.dart';

class NavProfile extends StatefulWidget {
  const NavProfile({Key? key}) : super(key: key);

  @override
  State<NavProfile> createState() => _NavProfileState();
}

class _NavProfileState extends State<NavProfile> {
  String? userName = "";
  String? userPic = "";

  AuthService _authService = AuthService();

  Future _getDataFromDatabase() async
  {
    await FirebaseFirestore.instance.collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async{
            if (snapshot.exists){
              setState(() {
                UserModel user = UserModel.fromMap(snapshot.data()!);
                userName = user.userName;
                // userName = snapshot.data()!["userName"];
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
        body:
        Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right:10),
          child:Column(
            children:[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    icon: Icon(Icons.settings, size: 28),
                    label: Text('Settings',
                        style: TextStyle(fontSize: 24)
                    ),
                    onPressed: () => {}
                        ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  icon: Icon(Icons.arrow_back, size: 28),
                  label: Text('Logout',
                      style: TextStyle(fontSize: 24)
                  ),
                  onPressed: () =>
                      _authService
                          .signOut()
                          .then((value) =>
                            Navigator.of(context).pushAndRemoveUntil
                            (MaterialPageRoute
                              (builder: (context) => LoginPage()),(route) => false))

                )
              ]),
              Container(
            height: 150,
            alignment: Alignment.center,
              child: Row(
                children:[
                  SizedBox(height: 10, width:10,),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                      NetworkImage('https://i.picsum.photos/id/25/5000/3333.jpg?hmac=yCz9LeSs-i72Ru0YvvpsoECnCTxZjzGde805gWrAHkM'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(height: 20, width:20,),
                    Text(userName!,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)
                    ),
                ],
              ),

          ),
              SizedBox(height: 20, width:20,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    fixedSize: const Size(250, 50),
                    ),
                  onPressed: () => {},
                  child: Text('Your Past Reviews',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: kPrimaryDarkenedColor)),
              ),
              SizedBox(height: 10, width:10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kSecondaryColor,
                  fixedSize: const Size(250, 50),
                  //padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                onPressed: () =>
                {}, child: Text('Your Group Invitations',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryDarkenedColor)),
              ),
              SizedBox(height: 50, width:30,),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    fixedSize: const Size(250, 50),
                  ),
                  icon: Icon(Icons.comment, size: 28, color: Colors.black),
                  label: Text('Create a Review',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryDarkenedColor)
                  ),
                  onPressed: () =>
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateReview())),
                      )


          ]
        ),
    ),


    );
  }
}
