import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:funravel_v0/service/database.dart';
import 'package:flutter/material.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future signIn(String email, String password) async{
    User user = (await _auth.signInWithEmailAndPassword(
        email: email, password: password)).user!;
    return true;
  }

  Future signOut() async {
    return await _auth.signOut();
  }

  Future createPerson(String name, String email, String password) async{
    User user = (await _auth.createUserWithEmailAndPassword(
        email: email, password: password)).user!;

    await DatabaseService(uid: user.uid).savingUserData(name, email);

    return true;
  }
}