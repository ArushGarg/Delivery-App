import 'package:flutter/material.dart';

class Login extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: Color(0xff8f8f8),
        body: SafeArea(
            child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 400,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login", style: TextStyle(
                    fontSize: 40
                    color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
                  Text("Welcome Back", style: TextStyle(
                    fontSize: 30
                    color: Theme.of(context).primaryColor,
      ),
              )
      ],
      ),
              ),
            Center(
              child: Container(
               height: 300
               width: 400
               child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     TextFormField(
                        decoration: InputDecoration(
                          fillColor: Color(0xfff5d8e4),
                          filled: true,
                          hintText: "Email"
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,

      )

      ),
      )
                            TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                fillColor: Color(0xfff5d8e4),
                                  filled: true,
                                    hintText: "Passwword"
                                    border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,

      )

      ),
      )

      ],
      ),
               ),
            )
            ],
          ),
        ),
      );

  }
}