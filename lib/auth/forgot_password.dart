// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/auth_utils.dart';
import '../widgets/global/auth_textFormField_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final TextEditingController _emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Future resetPassword() async {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );
      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: _emailController.text.trim());

        Utils.showSnackBar('Password Reset Email send');
        Navigator.of(context).popUntil((route) => route.isFirst);
      } on FirebaseAuthException catch (e) {
        log('$e');

        Utils.showSnackBar('${e.message}');
        Navigator.of(context).pop();
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reset password'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Recevie an email to reset your password'),
                  const SizedBox(height: 20),
                  AuthTextFormFieldWidgt(
                    labelText: 'Email',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter valid email'
                            : null,
                  ),
                  const SizedBox(height: 30),
                  OutlinedButton(
                      onPressed: resetPassword,
                      child: const Text('Reset password'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
