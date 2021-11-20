// ignore_for_file: camel_case_types, prefer_const_constructors, unused_field, avoid_print, missing_return


import 'package:flutter/material.dart';
import 'package:flutter_application_10/homepage.dart';
import 'package:flutter_application_10/signup.dart';

const double pad = 20.0;

class Login extends StatefulWidget {
  const Login({key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<Login> {
  void validate() {
    if (_formKey.currentState.validate()) {
      print("object");
    } else {
      print("22object");
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage("assets/monophy.gif")),
              Padding(
                padding: const EdgeInsets.only(
                    right: pad, bottom: pad / 2, left: pad),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "user name can not be empty";
                    }
                  },
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: pad, bottom: pad / 2, left: pad),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "user name can not be empty";
                        }
                      },
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>homepage()));
                      }
                  },
                  child: Text("LOGIN")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Text(
                    "Not Have an account? Register",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
