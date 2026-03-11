import 'package:flutter/material.dart';

ThemeData lightThemeCalculator = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Colors.grey.shade900,
    secondary: Color(0xFFFF9500),
    inversePrimary: Colors.grey.shade700,
    tertiary: Colors.grey.shade800,
  ),
);
ThemeData darkThemeCalculator = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.black,
    primary: Colors.grey.shade500,
    secondary: Color(0xFFFF9500),
    inversePrimary: Colors.grey.shade300,
    tertiary: Colors.grey.shade800,
  ),
);
