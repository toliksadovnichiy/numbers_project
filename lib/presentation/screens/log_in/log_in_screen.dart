import 'package:flutter/material.dart';
import 'package:numbers_project/l10n/localization_extension.dart';
import 'package:numbers_project/presentation/screens/log_in/widgets/background_image.dart';
import 'package:numbers_project/presentation/widgets/submit_button.dart';
import 'package:numbers_project/presentation/widgets/text_input_form_field.dart';
import 'package:numbers_project/theme/color_palette.dart';
import 'package:numbers_project/theme/sizes_constants.dart';
import 'package:numbers_project/theme/text_styles.dart';
import 'package:numbers_project/utils/validation_utils.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = screenWidth(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            BackgroundImage(),
            Container(
              constraints: BoxConstraints(
                maxWidth: width > desktopMidWidth
                    ? width * 0.3
                    : width > desktopDetectedWidth
                    ? width * 0.5
                    : width * 0.8,
              ),
              padding: pV16,
              child: Column(
                children: [
                  Padding(
                    padding: pV48,
                    child: Text(
                      context.T.loginPage_signIn,
                      style: context.displayLarge,
                    ),
                  ),
                  SizedBox(height: h8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      context.T.loginPage_enterYourEmail,
                      style: context.bodyMedium?.copyWith(color: context.colors.textSecondary),
                    ),
                  ),
                  SizedBox(height: h16),
                  _createForm(),
                  SizedBox(height: h8),
                  _createDoNotHaveAccount(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextInputFormField(
            hintText: context.T.loginPage_email,
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) => ValidationUtils.validateEmail(context, value),
          ),
          SizedBox(height: h16),
          TextInputFormField(
            isPassword: true,
            hintText: context.T.loginPage_password,
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) => ValidationUtils.validatePassword(context, value),
          ),
          SizedBox(height: h8),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                context.T.loginPage_forgetPassword,
                style: context.bodySmall,
              ),
            ),
          ),
          SizedBox(height: h8),
          SubmitButton(
            title: context.T.loginPage_signIn,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                //todo add cubit auth
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _createDoNotHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.T.loginPage_doNotHaveAccount,
          style: context.bodySmall,
        ),
        SizedBox(width: h8),
        TextButton(
          onPressed: () {},
          child: Text(
            context.T.loginPage_createNewAccount,
            style: context.bodySmall?.copyWith(color: context.colors.active, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
