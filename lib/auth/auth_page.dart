import 'package:flutter/material.dart';
import 'package:student_management_app/auth/login.dart';
import 'package:student_management_app/auth/signup.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? Login(onClickedSignUp: toggle)
      : SignUp(onClickedSignUp: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
