// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get loginPage_signIn => 'Вхід';

  @override
  String get loginPage_signUp => 'Реєстрація';

  @override
  String get loginPage_fullName => 'Ім\'я';

  @override
  String get loginPage_email => 'Email';

  @override
  String get loginPage_password => 'Пароль';

  @override
  String get loginPage_enter => 'Увійти';

  @override
  String get loginPage_enterYourEmail =>
      'Введіть свою електронну пошту і пароль щоб увійти.';

  @override
  String get loginPage_forgetPassword => 'Забули пароль?';

  @override
  String get loginPage_doNotHaveAccount => 'Немає облікового запису?';

  @override
  String get loginPage_createNewAccount => 'Створити обліковий запис.';

  @override
  String get loginPage_emailIsRequired => 'Введіть електронну пошту';

  @override
  String get loginPage_enterValidEmail =>
      'Введіть дійсну адресу електронної пошти';

  @override
  String get loginPage_passwordIsRequired => 'Введіть пароль';

  @override
  String get loginPage_passwordMustBe =>
      'Пароль має містити щонайменше 6 символів';

  @override
  String get logInPage_fieldCanNotBeEmpty => 'Поле не може бути порожнім';

  @override
  String get logInPage_fieldMustBe30 => 'Максимум 30 символів';

  @override
  String get logInPage_fieldOnlyAlphabetic =>
      'Дозволяється використовувати лише букви.';

  @override
  String get logInPage_createAccount => 'Створити Обліковий Запис';

  @override
  String get logInPage_enterYour =>
      'Введіть своє ім\'я, електронну пошту та пароль для реєстрації.';

  @override
  String get logInPage_alreadyHaveAccount => 'Вже є обліковий запис?';

  @override
  String get logInPage_bySigningUp =>
      'Реєструючись, ви погоджуєтеся з нашими Умовами та Політикою конфіденційності.';
}
