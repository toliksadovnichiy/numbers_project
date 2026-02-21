import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:numbers_project/l10n/localization_extension.dart';
import 'package:numbers_project/presentation/screens/log_in/widgets/background_image.dart';
import 'package:numbers_project/presentation/widgets/submit_button.dart';
import 'package:numbers_project/presentation/widgets/text_input_form_field.dart';
import 'package:numbers_project/theme/color_palette.dart';
import 'package:numbers_project/theme/sizes_constants.dart';
import 'package:numbers_project/theme/text_styles.dart';
import 'package:numbers_project/utils/validation_utils.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
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
                      context.T.loginPage_createNewAccount,
                      style: context.displayLarge,
                    ),
                  ),
                  SizedBox(height: h8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: _createInformation(),
                  ),
                  SizedBox(height: h16),
                  _createForm(),
                  SizedBox(height: h24),
                  Text(
                    textAlign: TextAlign.center,
                    context.T.logInPage_bySigningUp,
                    style: context.bodyMedium?.copyWith(color: context.colors.textSecondary),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createInformation() {
    return RichText(
      text: TextSpan(
        style: context.bodyMedium?.copyWith(color: context.colors.textSecondary),
        children: [
          TextSpan(text: '${context.T.logInPage_enterYour}  '),
          TextSpan(
            text: context.T.logInPage_alreadyHaveAccount,
            style: context.bodyMedium?.copyWith(
              color: context.colors.active,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {

              },
          ),
        ],
      ),
    );
  }

  Widget _createForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextInputFormField(
            hintText: context.T.loginPage_fullName,
            controller: nameController,
            keyboardType: TextInputType.text,
            validator: (value) => ValidationUtils.validateAlphabetic30(context, value),
          ),
          SizedBox(height: h16),
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
          SizedBox(height: h24),
          SubmitButton(
            title: context.T.loginPage_signUp,
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
}
