import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Color(0xFF4c68ff)
    ),
    iconTheme: const IconThemeData(
      color: Colors.white
    )
  );

  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xFF282828),
      appBarTheme: AppBarTheme(
          color: Color(0xFF4c68ff)
      ),
      iconTheme: const IconThemeData(
          color: Colors.white
      )
  );
}