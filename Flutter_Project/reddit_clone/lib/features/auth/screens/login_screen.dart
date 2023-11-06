import 'package:flutter/material.dart';
import 'package:reddit_clone/core/common/sign_in_button.dart';
import 'package:reddit_clone/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            Constants.logoPath,
            height: 40,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          // * Text
          const Text(
            'Dive into anything',
            style: TextStyle(
              fontSize: 24,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          // * Image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(Constants.loginEmotePath, height: 400),
          ),

          const SizedBox(height: 30),

          // * Log in button
          const SignInButton()
        ],
      ),
    );
  }
}
