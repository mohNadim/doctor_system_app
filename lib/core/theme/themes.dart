import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: const BorderSide(color: Colors.black38),
);

final theme = ThemeData(
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.tajawal(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.tajawal(),
    bodySmall: GoogleFonts.tajawal(),
    headlineLarge: GoogleFonts.tajawal(),
    headlineMedium: GoogleFonts.tajawal(),
    headlineSmall: GoogleFonts.tajawal(),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: GoogleFonts.tajawal(color: Colors.black38, fontSize: 15),
    border: border,
    enabledBorder: border,
    focusedBorder: border,
  ),
);
