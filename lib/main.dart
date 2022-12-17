import 'package:flutter/material.dart';
import 'package:funravel_v0/screens/main_nav_router_screen.dart';

import 'constants/app_theme.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kDataThemeDark,
      themeMode: ThemeMode.dark,
      home: const MainNavRouterScreen()));
}
