import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color lightAccentColor = Color(0xFFB7935F);
  static const Color darkAccentCorol = Color(0xFFFACC1D);
  static const Color lightMainTextColor = Color(0xFF242424);
  static const Color darkMainTextColor = Color(0xFFF8F8F8);

  static var lightTeme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightPrimaryColor,
      canvasColor: lightAccentColor,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, unselectedItemColor: Colors.white),
      textTheme: TextTheme(
          displayLarge: TextStyle(
              color: lightMainTextColor,
              fontSize: 32,
              fontWeight: FontWeight.bold),
          displayMedium: TextStyle(
            fontSize: 24,
            color: lightMainTextColor,
          ),
          displaySmall: TextStyle(fontSize: 20, color: lightMainTextColor)),
      cardColor: lightPrimaryColor);

  static var darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkPrimaryColor,
      canvasColor: darkAccentCorol,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: darkMainTextColor),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: darkMainTextColor),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: darkAccentCorol,
          unselectedItemColor: Colors.white),
      textTheme: TextTheme(
          displayLarge: TextStyle(
              color: darkMainTextColor,
              fontSize: 32,
              fontWeight: FontWeight.bold),
          displayMedium: TextStyle(
            fontSize: 24,
            color: darkMainTextColor,
          ),
          displaySmall: TextStyle(fontSize: 20, color: darkMainTextColor)),
      cardColor: darkPrimaryColor);
  static ThemeMode themeMode = ThemeMode.dark;
}
