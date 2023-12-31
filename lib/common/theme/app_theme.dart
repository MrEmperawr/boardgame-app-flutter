import 'package:flutter/material.dart';

// Define the primary color swatch
const MaterialColor tealSwatch = MaterialColor(
  0xFF009688,
  <int, Color>{
    50: Color(0xFFE0F2F1),
    100: Color(0xFFB2DFDB),
    200: Color(0xFF80CBC4),
    300: Color(0xFF4DB6AC),
    400: Color(0xFF26A69A),
    500: Color(0xFF009688),
    600: Color(0xFF00897B),
    700: Color(0xFF00796B),
    800: Color(0xFF00695C),
    900: Color(0xFF004D40),
  },
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: tealSwatch)
      .copyWith(background: Colors.white, brightness: Brightness.light),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: tealSwatch).copyWith(
    background: Colors.black,
    brightness: Brightness.dark,
  ),
);
