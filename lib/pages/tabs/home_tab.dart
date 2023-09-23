import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: DrawerHeader(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Signed In as '),
            Text(
              "${user!.email}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              child: const Text('Sign Out'),
            ),
          ],
        ),
      )),
      appBar: AppBar(
        title: const Text('Home'),
      ),
    );
  }
}
