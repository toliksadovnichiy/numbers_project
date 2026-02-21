import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_uk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('uk'),
  ];

  /// No description provided for @loginPage_signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get loginPage_signIn;

  /// No description provided for @loginPage_signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get loginPage_signUp;

  /// No description provided for @loginPage_fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get loginPage_fullName;

  /// No description provided for @loginPage_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get loginPage_email;

  /// No description provided for @loginPage_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPage_password;

  /// No description provided for @loginPage_enter.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get loginPage_enter;

  /// No description provided for @loginPage_enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email and password to sign in.'**
  String get loginPage_enterYourEmail;

  /// No description provided for @loginPage_forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget password?'**
  String get loginPage_forgetPassword;

  /// No description provided for @loginPage_doNotHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Do not have account?'**
  String get loginPage_doNotHaveAccount;

  /// No description provided for @loginPage_createNewAccount.
  ///
  /// In en, this message translates to:
  /// **'Create new account.'**
  String get loginPage_createNewAccount;

  /// No description provided for @loginPage_emailIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get loginPage_emailIsRequired;

  /// No description provided for @loginPage_enterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get loginPage_enterValidEmail;

  /// No description provided for @loginPage_passwordIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get loginPage_passwordIsRequired;

  /// No description provided for @loginPage_passwordMustBe.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters long'**
  String get loginPage_passwordMustBe;

  /// No description provided for @logInPage_fieldCanNotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'This field cannot be empty'**
  String get logInPage_fieldCanNotBeEmpty;

  /// No description provided for @logInPage_fieldMustBe30.
  ///
  /// In en, this message translates to:
  /// **'Must be at most 30 characters'**
  String get logInPage_fieldMustBe30;

  /// No description provided for @logInPage_fieldOnlyAlphabetic.
  ///
  /// In en, this message translates to:
  /// **'Only alphabetic characters are allowed'**
  String get logInPage_fieldOnlyAlphabetic;

  /// No description provided for @logInPage_createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get logInPage_createAccount;

  /// No description provided for @logInPage_enterYour.
  ///
  /// In en, this message translates to:
  /// **'Enter tour Name, Email and Password for sign up.'**
  String get logInPage_enterYour;

  /// No description provided for @logInPage_alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have account?'**
  String get logInPage_alreadyHaveAccount;

  /// No description provided for @logInPage_bySigningUp.
  ///
  /// In en, this message translates to:
  /// **'By Signing up you agree to our Terms Conditions & Privacy Policy.'**
  String get logInPage_bySigningUp;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'uk':
      return AppLocalizationsUk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
