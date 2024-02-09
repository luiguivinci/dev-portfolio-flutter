import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade700,
    secondary: Colors.grey.shade500,
    background: Colors.grey.shade200,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
    bodySmall: TextStyle(color: Colors.black),
  ),
  primaryColor: Colors.blue.shade800,
  primaryColorLight: Colors.blue.shade300,
  primaryColorDark: Colors.blue.shade800,
  scaffoldBackgroundColor: Color(0xFFE0E0E0),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF1976D2),
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      // fontSize: 20,
      // fontWeight: FontWeight.bold,
    ),
  ),
  fontFamily: 'Roboto',
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade700,
    secondary: Colors.grey.shade800,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
  ),
  primaryColor: Color.fromARGB(255, 50, 207, 2),
  primaryColorLight: Color.fromARGB(255, 50, 207, 2),
  primaryColorDark: Color.fromARGB(255, 37, 158, 0),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade400,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      // fontSize: 20,
      // fontWeight: FontWeight.bold,
    ),
  ),
  fontFamily: 'Roboto', // Fuente de texto predeterminada
);
