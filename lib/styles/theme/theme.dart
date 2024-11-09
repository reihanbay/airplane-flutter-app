import 'package:airplane/styles/colors/colors.dart';
import 'package:airplane/styles/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


double defPadding = 24.0 ;
double defMargin = 24.0 ;
double defRadius = 18.0;

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorSchemeSeed: AppColors.purple.color,
      scaffoldBackgroundColor: AppColors.white.color,
      textTheme: GoogleFonts.poppinsTextTheme(_textTheme),
      brightness: Brightness.light,
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorSchemeSeed: AppColors.purple.color,
      brightness: Brightness.dark,
      textTheme: GoogleFonts.poppinsTextTheme(_textTheme),
      useMaterial3: true,
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displaySmall: AppTextStyles.displaySmall,
      headlineLarge: AppTextStyles.headlineLarge,
      headlineMedium: AppTextStyles.headlineMedium,
      headlineSmall: AppTextStyles.headlineSmall,
      titleLarge: AppTextStyles.titleLarge,
      titleMedium: AppTextStyles.titleMedium,
      titleSmall: AppTextStyles.titleSmall,
      bodyLarge: AppTextStyles.bodyLargeBold,
      bodyMedium: AppTextStyles.bodyLargeMedium,
      bodySmall: AppTextStyles.bodyLargeRegular,
      labelLarge: AppTextStyles.labelLarge,
      labelMedium: AppTextStyles.labelMedium,
      labelSmall: AppTextStyles.labelSmall,
    );
  }
}

