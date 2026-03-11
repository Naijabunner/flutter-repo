

import 'package:flutter/material.dart';
import 'package:todoapp/themes/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightThemeCalculator;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    _themeData = _themeData == lightThemeCalculator ? darkThemeCalculator : lightThemeCalculator;
    notifyListeners();
  }
}