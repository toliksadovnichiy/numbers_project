import 'package:flutter/material.dart';
import 'package:numbers_project/l10n/localization_extension.dart';

class ValidationUtils {

  static String? validateEmail(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.T.loginPage_emailIsRequired;
    }

    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (!emailRegex.hasMatch(value)) {
      return context.T.loginPage_enterValidEmail;
    }

    return null; // valid
  }

  static String? validatePassword(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.T.loginPage_passwordIsRequired;
    }

    if (value.length < 6) {
      return context.T.loginPage_passwordMustBe;
    }

    return null; // valid
  }

  static String? validateAlphabetic30(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.T.logInPage_fieldCanNotBeEmpty;
    }

    if (value.length > 30) {
      return context.T.logInPage_fieldMustBe30;
    }

    // Unicode: only alphabetic symbols
    final letterRegex = RegExp(r'^[\p{L}]+$', unicode: true);

    if (!letterRegex.hasMatch(value)) {
      return context.T.logInPage_fieldOnlyAlphabetic;
    }

    return null; // valid
  }

}