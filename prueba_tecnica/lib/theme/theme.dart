import 'package:flutter/material.dart';

class ThemeApp {
  static final ThemeData light = ThemeData.light().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
      filled: true,
      fillColor: Colors.grey[300],
    ),
  );
}
