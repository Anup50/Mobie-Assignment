import 'package:flutter/material.dart';

class SignUpBar extends StatelessWidget {
  const SignUpBar({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Text(
          'Sign up',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        )
      ],
    );
  }
}
