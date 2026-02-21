import 'package:flutter/material.dart';
import 'package:numbers_project/l10n/generated/app_localizations.dart';
import 'package:numbers_project/l10n/locales.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:numbers_project/presentation/screens/log_in/log_in_screen.dart';
import 'package:numbers_project/presentation/screens/log_in/register_screen.dart';
import 'package:numbers_project/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Project',
      theme: AppTheme.dark,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Locales.all,
      locale: const Locale('en'),
      home: const LogInScreen(),
    );
  }
}
