import 'package:flutter/material.dart';
import 'signup.dart';

class Login extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    const pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    final regex = RegExp(pattern);
    return value == null || value.isEmpty
        ? 'Email is required'
        : !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  void validation(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (password.text.length < 8) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Password is too short")),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login successful")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff88f8f8),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 400,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 40,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 300,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: email,
                        validator: validateEmail,
                        decoration: InputDecoration(
                          fillColor: Color(0xfff5d8e4),
                          filled: true,
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: password,
                        obscureText: true,
                        validator: (value) => value == null || value.isEmpty
                            ? 'Password is required'
                            : null,
                        decoration: InputDecoration(
                          fillColor: Color(0xfff5d8e4),
                          filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    validation(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have An Account? ",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}