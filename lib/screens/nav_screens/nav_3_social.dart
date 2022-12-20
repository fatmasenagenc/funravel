import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/contants.dart';

class NavSocial extends StatefulWidget {
  const NavSocial({Key? key}) : super(key: key);

  @override
  State<NavSocial> createState() => _NavSocialState();
}

class _NavSocialState extends State<NavSocial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
        title: const Text('Social', style: TextStyle(fontSize: 25,
        //fontWeight: FontWeight.w800,
        color: kPrimaryDarkenedColor)),
        centerTitle: true,
      ),
    );
  }
}
