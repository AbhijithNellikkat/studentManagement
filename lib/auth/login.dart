import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email), labelText: 'Email'),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) => value != null && value.length < 6
                          ? 'Enter min. 6 characters'
                          : null,
                      obscureText: true,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined),
                          labelText: 'Password'),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                        child: Text('Login'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      child: const Text(
                        'Forgot Password ? ',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        text: 'No account ? ',
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer(),
                            text: 'Sign Up',
                            style: const TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
