import 'package:flutter/material.dart';
import 'package:funravel_v0/screens/main_nav_router_screen.dart';
import 'package:funravel_v0/screens/nav_screens/nav_2_home.dart';

import 'constants/app_theme.dart';
import 'constants/contants.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kDataThemeDark,
      themeMode: ThemeMode.dark,
      home: const MainNavRouterScreen()));
}
