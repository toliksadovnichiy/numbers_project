import 'dart:ui';

import 'package:flutter/material.dart';

class CColors {
  static const error = Color(0xFFF00000);
  static const success = Color(0xFF1fc600);

  //light theme
  static const primary = Color(0xFF292526);
  static const secondary = Color(0xFFEBEAEA);
  static const tertiary = Color(0xFFF9F9F9);
  static const background = Color(0xFFFDFDFD);
  static const active = Color(0xFF783f04);
  static const textPrimary = Color(0xFF131212);
  static const textSecondary = Color(0xFF666464);
  static const textInverted = Color(0xFFFDFDFD);

  //dark theme
  static const primaryDark = Color(0xFFD6DAD9);
  static const secondaryDark = Color(0xFF141515);
  static const tertiaryDark = Color(0xFF060606);
  static const backgroundDark = Color(0xFF020202);
  static const activeDark = Color(0xFFC4A484);
  static const textPrimaryDark = Color(0xFFECEDED);
  static const textSecondaryDark = Color(0xFF979999);
  static const textInvertedDark = Color(0xFF020202);
}

class AppColors {
  final Brightness brightness;

  const AppColors(this.brightness);

  bool get isLight => brightness == Brightness.light;

  // PRIMARY
  Color get primary => isLight ? CColors.primary : CColors.primaryDark;
  Color get secondary => isLight ? CColors.secondary : CColors.secondaryDark;
  Color get tertiary => isLight ? CColors.tertiary : CColors.tertiaryDark;
  Color get background => isLight ? CColors.background : CColors.backgroundDark;
  Color get active => isLight ? CColors.active : CColors.activeDark;

  // TEXT
  Color get textPrimary => isLight ? CColors.textPrimary : CColors.textPrimaryDark;
  Color get textSecondary => isLight ? CColors.textSecondary : CColors.textSecondaryDark;
  Color get textInverted => isLight ? CColors.textInverted : CColors.textInvertedDark;

  // STATIC
  Color get error => CColors.error;
  Color get success => CColors.success;
}

extension AppColorsExtension on BuildContext {
  AppColors get colors => AppColors(Theme.of(this).brightness);
}