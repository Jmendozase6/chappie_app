import 'package:flutter/material.dart';
import 'package:mental_health/config/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      primary: AppColors.primaryColor,
      brightness: Brightness.light,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: GoogleFonts.poppinsTextTheme(),
    primaryTextTheme: GoogleFonts.poppinsTextTheme(),
  );
}
