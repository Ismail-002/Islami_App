import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color primaryDarkColor = Color(0xffFACC10);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: const Color(0xff242424),
        fontSize: 40,
        fontFamily: "ElMessiri",
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff000000),
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w800,
        fontFamily: "ElMessiri",
      ),
      selectedIconTheme: IconThemeData(
        color: Color(0xff000000),
        size: 35,
      ),
      unselectedItemColor: Color(0xffffffff),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w800,
        fontFamily: "ElMessiri",
      ),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffffffff),
        size: 28,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontFamily: "ElMessiri",
        color: Color(0xff242424),
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 30,
        fontFamily: "ElMessiri",
        color: Color(0xff242424),
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        fontFamily: "ElMessiri",
        color: Color(0xff242424),
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 25,
        fontFamily: "ElMessiri",
        color: Color(0xff242424),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: primaryColor,
      space: 10,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColorDark: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 40,
        fontFamily: "ElMessiri",
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141A2E),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryDarkColor,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w800,
        fontFamily: "ElMessiri",
        color: primaryDarkColor,
      ),
      selectedIconTheme: IconThemeData(
        color: primaryDarkColor,
        size: 35,
      ),
      unselectedItemColor: primaryDarkColor,
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w800,
        fontFamily: "ElMessiri",
      ),
      unselectedIconTheme: IconThemeData(
        color: primaryDarkColor,
        size: 28,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontFamily: "ElMessiri",
        color: primaryDarkColor,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 30,
        fontFamily: "ElMessiri",
        color: primaryDarkColor,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        fontFamily: "ElMessiri",
        color: primaryDarkColor,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 25,
        fontFamily: "ElMessiri",
        color: primaryDarkColor,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: primaryDarkColor,
      space: 10,
    ),
  );
}
