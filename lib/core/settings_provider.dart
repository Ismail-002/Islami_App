import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentThemeMode = ThemeMode.dark;

  changeCurrentLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;

    currentLanguage = newLanguage;
    notifyListeners();
  }

  changeCurrentTheme(ThemeMode newTheme) {
    if (currentThemeMode == newTheme) return;
    currentThemeMode = newTheme;

    notifyListeners();
  }

  String getBackgroundImage() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/home_dark_background.png"
        : "assets/images/background.png";
  }

  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }
}
