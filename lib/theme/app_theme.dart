import 'package:flutter/material.dart';

class AppTheme {

  static const Color background = Color(0xFF0F172A);
  static const Color card = Color(0xFF1E293B);

  static const Color primary = Color(0xFF3B82F6);
  static const Color secondary = Color(0xFF8B5CF6);

  static ThemeData darkTheme = ThemeData(

    brightness: Brightness.dark,

    scaffoldBackgroundColor: background,

    useMaterial3: true,

    colorScheme: const ColorScheme.dark(

      primary: primary,

      secondary: secondary,

      surface: card,

    ),

    appBarTheme: const AppBarTheme(

      backgroundColor: background,

      foregroundColor: Colors.white,

      centerTitle: true,

      elevation: 0,

    ),

  );

}