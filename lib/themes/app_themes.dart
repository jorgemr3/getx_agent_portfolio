import 'package:flutter/material.dart';

class AppThemes {
  static final light = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey,
    colorScheme: const ColorScheme.dark(
      primary: Colors.blueGrey,
      secondary: Colors.blueGrey,
    ),
  );
}