import 'dart:ui';

import 'package:flutter/material.dart';

import 'contants.dart';

final kDataThemeDark = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: kPrimaryColor,
  backgroundColor: kPrimaryColor,
  primaryColor: kPrimaryColor,

appBarTheme: const AppBarTheme(
    color: kSecondaryColor,
    titleTextStyle: kHeaderTextStyle,
  ),
);