import 'package:flutter/material.dart';

class LigthTheme {
  final Color primaryColor;
  LigthTheme(this.primaryColor);

  ThemeData get theme {
    return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins',
        primaryColor: primaryColor);
  }
}
