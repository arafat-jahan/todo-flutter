import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.teal,
  textTheme: TextTheme(
    titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),  // headline1 -> titleLarge
    bodyLarge: TextStyle(fontSize: 16),  // bodyText1 -> bodyLarge
  ),
);
