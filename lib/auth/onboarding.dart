import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:student_management_app/auth/login.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Welcome to Our Student Management Platform',
              body:
                  ' . Our platform offers a range of features to make student management efficient and effective',
              image: Lottie.asset("assets/animations/onboarding1.json"),
            ),
            PageViewModel(
              title: 'Add new student',
              body:
                  ' Add new students to the system with ease, providing all necessary details.',
              image: Lottie.asset("assets/animations/onboarding1.json"),
            ),
            PageViewModel(
              title: 'Edit the student',
              body:
                  'Edit existing student information to ensure data accuracy and currency.',
              image: Lottie.asset("assets/animations/onboarding1.json"),
            ),
            PageViewModel(
              title: 'Delete the student',
              body:
                  'Delete student records when needed, maintaining a clean and organized database',
              image: Lottie.asset("assets/animations/onboarding1.json"),
            ),
          ],
          onDone: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Login(),
            ));
          },
          showNextButton: true,
          next:
              const Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
          showBackButton: false,
          done:
              const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        ),
      );
}
