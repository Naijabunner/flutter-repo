import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true, // 🔥 explicitly define it

  brightness: Brightness.light,

  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.white,
    inversePrimary: Colors.grey.shade700,
  ),

  appBarTheme: const AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
  ),

  drawerTheme: const DrawerThemeData(
    elevation: 0,
    surfaceTintColor: Colors.transparent,
  ),
);
