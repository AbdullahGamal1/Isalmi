import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';

  void changeLanguage(String newLanguageCode) {
    languageCode = newLanguageCode;
    notifyListeners();
  }

  void enableLightTheme() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  void enableDarkTheme() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  String getBackGroundImage() {
    return themeMode == ThemeMode.dark
        ? 'assets/images/dark_background.png'
        : 'assets/images/background.png';
  }

  bool isDarkEnable() {
    return themeMode == ThemeMode.dark;
  }
}
