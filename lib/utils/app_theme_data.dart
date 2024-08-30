import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.black, //Colors.black,
  fontFamily: "JetBrainsMono-Medium",

  textTheme: TextTheme(
    //large for Desktop
    titleLarge: const TextStyle(fontSize: 50),
    bodyLarge: const TextStyle(fontSize: 25),
    displayLarge: const TextStyle(fontSize: 24),
    labelLarge: TextStyle(
      fontSize: 18,
      color: Colors.grey.shade700,
    ),

    //Small for Mobile
    titleSmall: const TextStyle(fontSize: 18),
    bodySmall: const TextStyle(fontSize: 12),
    displaySmall: const TextStyle(fontSize: 24),
    labelSmall: TextStyle(
      fontSize: 12,
      color: Colors.grey.shade500,
    ),

//Medium for Tab
    titleMedium: const TextStyle(fontSize: 34),
    bodyMedium: const TextStyle(fontSize: 18),
    displayMedium: const TextStyle(fontSize: 24),
    labelMedium: TextStyle(
      fontSize: 15,
      color: Colors.grey.shade500,
    ),
  ),
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
