import 'package:flutter/material.dart';
import 'package:numbers_project/theme/sizes_constants.dart';
import 'color_palette.dart';

extension CTextStylesExtension on BuildContext {
  TextTheme get theme => Theme.of(this).textTheme;

  TextStyle? get titleLarge => theme.titleLarge;
  TextStyle? get titleMedium => theme.titleMedium;
  TextStyle? get titleSmall => theme.titleSmall;
  TextStyle? get bodyMedium => theme.bodyMedium;
  TextStyle? get bodySmall => theme.bodySmall;
  TextStyle? get displayLarge => theme.displayLarge;

}

class CTextStyles {
  static const titleLarge = TextStyle(
    fontSize: tL,
    fontWeight: FontWeight.bold,
    color: CColors.textPrimary,
  );

  static const titleMedium = TextStyle(
    fontSize: tM,
    fontWeight: FontWeight.bold,
    color: CColors.textPrimary,
  );

  static const titleSmall = TextStyle(
    fontSize: tS,
    fontWeight: FontWeight.bold,
    color: CColors.textPrimary,
  );

  static const bodyMedium = TextStyle(
    fontSize: bM,
    color: CColors.textPrimary,
  );

  static const bodySmall = TextStyle(
    fontSize: bS,
    fontWeight: FontWeight.w300,
    color: CColors.textSecondary,
  );

  static const displayLarge = TextStyle(
    fontSize: tLogo,
    letterSpacing: 3,
    fontWeight: FontWeight.w900,
    color: CColors.primary,
  );
}