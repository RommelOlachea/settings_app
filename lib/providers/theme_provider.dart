import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currenteTheme;

  ThemeProvider({required bool isDarkmode})
      : currenteTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();

  setLightMode() {
    currenteTheme = ThemeData.light();
    notifyListeners();
  }

  setDartkmode() {
    currenteTheme = ThemeData.dark();
    notifyListeners();
  }
}
