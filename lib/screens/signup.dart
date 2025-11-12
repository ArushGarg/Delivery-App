import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Text(
          "Sign Up Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}