import 'package:flutter/material.dart';
import 'package:numbers_project/theme/sizes_constants.dart';
import 'package:numbers_project/theme/text_styles.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const SubmitButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h48,
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            title,
            style: context.titleMedium,
          ),
        ),
      ),
    );
  }
}
