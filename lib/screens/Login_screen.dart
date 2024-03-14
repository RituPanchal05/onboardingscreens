// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:async';

import 'package:onboardingscreens/screens/Home_screen.dart';
import 'package:onboardingscreens/screens/Signup_screen.dart';
import 'package:onboardingscreens/screens/forgot_screen.dart';
import 'package:flutter/material.dart';

class LoginscreenWidget extends StatelessWidget {
  const LoginscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 170,
          ),
          Image.asset('Assets/Login_Image.png'),
          SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Color(0xffdb3022),
                    decoration: InputDecoration(
                      labelText: 'Enter Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.black45,
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffdb3022))),
                      floatingLabelStyle: TextStyle(color: Color(0xffdb3022)),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    cursorColor: Color(0xffdb3022),
                    decoration: InputDecoration(
                      labelText: 'Enter password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIconColor: Colors.black45,
                      suffixIconColor: Colors.black45,
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffdb3022))),
                      floatingLabelStyle: TextStyle(color: Color(0xffdb3022)),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotscreenWidget()));
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Login Secessfull'),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating,
                      ));
                      Timer(Duration(seconds: 3), () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      });
                    },
                    child: Text('Log In', style: TextStyle(fontSize: 18, color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(55),
                      backgroundColor: Color(0xffdb3022),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have Account?",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupscreenWidget()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Color(0xffdb3022), fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(),
                      )
                    ],
                  )
                ],
              ))
        ],
      )),
    );
  }
}