import 'package:flutter/material.dart';

class TextInputFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Icon? prefixIcon;

  const TextInputFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    this.isPassword = false,
    this.validator,
    this.prefixIcon,
  });

  @override
  State<TextInputFormField> createState() => _TextInputFormFieldState();
}

class _TextInputFormFieldState extends State<TextInputFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        obscureText: widget.isPassword ? _obscureText : false,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
            ? IconButton(
              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () => setState(() => _obscureText = !_obscureText),
            )
            : null,
        )
    );
  }
}
