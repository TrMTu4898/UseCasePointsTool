import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData buildLightTheme() {
    return ThemeData(
      primaryColor: Color(0xFF50C2C9), // primary color
      accentColor: Color(0xFF7D77E0), // secondary color
      primaryTextTheme: TextTheme(
        bodyText1: TextStyle(color: Color(0xFF292C29)), // primary text color
      ),
      textTheme: TextTheme(
        bodyText2: TextStyle(color: Color(0xFF525F7F)), // secondary text color
      ),
      scaffoldBackgroundColor: Color(0xFFF2F2F2), // primary background color
    );
  }
}
