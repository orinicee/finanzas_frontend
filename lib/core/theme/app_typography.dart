import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {
  // Estilos de texto para modo claro
  static const TextStyle displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
    color: AppColors.textPrimary,
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  static const TextStyle displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: AppColors.textPrimary,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: AppColors.textPrimary,
  );

  // Estilos de texto para modo oscuro
  static TextStyle get darkDisplayLarge => displayLarge.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkDisplayMedium => displayMedium.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkDisplaySmall => displaySmall.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkHeadlineLarge => headlineLarge.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkHeadlineMedium => headlineMedium.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkHeadlineSmall => headlineSmall.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkTitleLarge => titleLarge.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkTitleMedium => titleMedium.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkTitleSmall => titleSmall.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkBodyLarge => bodyLarge.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkBodyMedium => bodyMedium.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkBodySmall => bodySmall.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkLabelLarge => labelLarge.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkLabelMedium => labelMedium.copyWith(
        color: AppColors.darkTextPrimary,
      );

  static TextStyle get darkLabelSmall => labelSmall.copyWith(
        color: AppColors.darkTextPrimary,
      );
} 