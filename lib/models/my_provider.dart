import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {

  String language = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }

  void changeThem(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }

}