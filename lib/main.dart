import 'package:flutter/material.dart';
import 'package:funravel_v0/screens/login.dart';
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
      debugShowCheckedModeBanner: false,
      theme: kDataThemeDark,
      themeMode: ThemeMode.dark,
      home: LoginPage(),
    );
  }
}
