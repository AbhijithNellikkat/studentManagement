import 'package:flutter/material.dart';

class AuthTextFormFieldWidgt extends StatelessWidget {
  const AuthTextFormFieldWidgt({
    super.key,
    required this.labelText,
    required this.controller,
    this.obscureText = false,
    required this.keyboardType,
    required this.validator,
  });

  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      autocorrect: true,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
