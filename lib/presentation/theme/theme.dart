import 'package:bloc_pattern/presentation/theme/typography.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 0,
    ),
    textTheme: const TextTheme(
        headlineLarge: AppTypography.heading,
        bodyLarge: AppTypography.body,
        bodySmall: AppTypography.caption),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueGrey,
      elevation: 0,
    ),
    textTheme: const TextTheme(
        headlineLarge: AppTypography.heading,
        bodyLarge: AppTypography.body,
        bodySmall: AppTypography.caption),
  );
}
