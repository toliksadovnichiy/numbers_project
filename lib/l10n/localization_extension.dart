import 'package:flutter/widgets.dart';
import 'package:numbers_project/l10n/generated/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get T => AppLocalizations.of(this)!;
}