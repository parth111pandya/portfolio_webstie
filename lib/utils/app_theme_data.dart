import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.black, //Colors.black,
  fontFamily: "JetBrainsMono-Medium",
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(TextStyle(
        color: Colors.white,
      )),
    ),
  ),
);

ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  fontFamily: "JetBrainsMono-Medium",
  scaffoldBackgroundColor: const Color(0xFF1F1F1F), //Colors.black,
);
