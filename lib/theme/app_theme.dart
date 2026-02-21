import 'package:flutter/material.dart';
import 'package:numbers_project/theme/sizes_constants.dart';
import 'package:numbers_project/theme/text_styles.dart';

import 'color_palette.dart';

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: CColors.background,
    primary: CColors.primary,
    secondary: CColors.secondary,
    tertiary: CColors.tertiary,
  ),
  fontFamily: 'Encode',
  textTheme: TextTheme(
    titleLarge: CTextStyles.titleLarge,
    titleMedium: CTextStyles.titleMedium,
    titleSmall: CTextStyles.titleSmall,
    bodyMedium: CTextStyles.bodyMedium,
    bodySmall: CTextStyles.bodySmall,
    displayLarge: CTextStyles.displayLarge,
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: CColors.secondary),
      borderRadius: r8,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: CColors.primary),
      borderRadius: r8,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: r8,
      borderSide: const BorderSide(color: CColors.error),
    ),
    errorStyle: CTextStyles.bodyMedium.copyWith(color: CColors.error),
    contentPadding: p16,
    hintStyle: CTextStyles.bodyMedium.copyWith(color: CColors.textSecondary),
    fillColor: CColors.tertiary,
    prefixIconColor: CColors.textSecondary,
    filled: true,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: CColors.primary,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: CColors.backgroundDark,
    primary: CColors.primaryDark,
    secondary: CColors.secondaryDark,
    tertiary: CColors.tertiaryDark,
  ),
  fontFamily: 'Encode',
  textTheme: TextTheme(
    titleLarge: CTextStyles.titleLarge.copyWith(color: CColors.textPrimaryDark),
    titleMedium: CTextStyles.titleMedium.copyWith(color: CColors.textPrimaryDark),
    titleSmall: CTextStyles.titleSmall.copyWith(color: CColors.textPrimaryDark),
    bodyMedium: CTextStyles.bodyMedium.copyWith(color: CColors.textPrimaryDark),
    bodySmall: CTextStyles.bodySmall.copyWith(color: CColors.textSecondaryDark),
    displayLarge: CTextStyles.displayLarge.copyWith(color: CColors.textPrimaryDark),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: CColors.secondaryDark),
      borderRadius: r8,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: CColors.primaryDark),
      borderRadius: r8,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: r8,
      borderSide: const BorderSide(color: CColors.error),
    ),
    contentPadding: p16,
    hintStyle: CTextStyles.bodyMedium.copyWith(color: CColors.textSecondaryDark),
    fillColor: CColors.tertiaryDark,
    prefixIconColor: CColors.textSecondaryDark,
    filled: true,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: CColors.primaryDark,
  ),
);