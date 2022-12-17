import 'package:flutter/material.dart';
import 'package:funravel_v0/screens/nav_screens/nav_1_home.dart';
import 'package:funravel_v0/screens/nav_screens/login.dart';
import 'package:funravel_v0/screens/nav_screens/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';

import 'constants/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Funravel());
}

class Funravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
