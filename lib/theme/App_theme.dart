import 'package:flutter/material.dart';
import 'package:sigif2/theme/Palette.dart';

class AppTheme {
  static ThemeData theme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Palette.blackColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: Palette.blackColor,
          foregroundColor: Palette.blackColor,
          elevation: 0),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Palette.blackColor,
      ));
}
