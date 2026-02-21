// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginPage_signIn => 'Sign In';

  @override
  String get loginPage_signUp => 'Sign Up';

  @override
  String get loginPage_fullName => 'Full Name';

  @override
  String get loginPage_email => 'Email';

  @override
  String get loginPage_password => 'Password';

  @override
  String get loginPage_enter => 'Enter';

  @override
  String get loginPage_enterYourEmail =>
      'Enter your email and password to sign in.';

  @override
  String get loginPage_forgetPassword => 'Forget password?';

  @override
  String get loginPage_doNotHaveAccount => 'Do not have account?';

  @override
  String get loginPage_createNewAccount => 'Create new account.';

  @override
  String get loginPage_emailIsRequired => 'Email is required';

  @override
  String get loginPage_enterValidEmail => 'Enter a valid email address';

  @override
  String get loginPage_passwordIsRequired => 'Password is required';

  @override
  String get loginPage_passwordMustBe =>
      'Password must be at least 6 characters long';

  @override
  String get logInPage_fieldCanNotBeEmpty => 'This field cannot be empty';

  @override
  String get logInPage_fieldMustBe30 => 'Must be at most 30 characters';

  @override
  String get logInPage_fieldOnlyAlphabetic =>
      'Only alphabetic characters are allowed';

  @override
  String get logInPage_createAccount => 'Create Account';

  @override
  String get logInPage_enterYour =>
      'Enter tour Name, Email and Password for sign up.';

  @override
  String get logInPage_alreadyHaveAccount => 'Already have account?';

  @override
  String get logInPage_bySigningUp =>
      'By Signing up you agree to our Terms Conditions & Privacy Policy.';
}
