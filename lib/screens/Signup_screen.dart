// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:async';

import 'package:onboardingscreens/screens/Home_screen.dart';
import 'package:onboardingscreens/screens/Login_screen.dart';
import 'package:onboardingscreens/screens/forgot_screen.dart';
import 'package:flutter/material.dart';

class SignupscreenWidget extends StatelessWidget {
  const SignupscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Column(
        children: [
          Image.asset('Assets/Login_Image.png'),
          SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Color(0xffdb3022),
                    decoration: InputDecoration(
                      labelText: 'Enter Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
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
                      labelText: 'Enter Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.numbers),
                      prefixIconColor: Colors.black45,
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffdb3022))),
                      floatingLabelStyle: TextStyle(color: Color(0xffdb3022)),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    cursorColor: Color(0xffdb3022),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Enter Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.black45,
                      suffixIcon: Icon(Icons.remove_red_eye),
                      suffixIconColor: Colors.black45,
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffdb3022))),
                      floatingLabelStyle: TextStyle(color: Color(0xffdb3022)),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    cursorColor: Color(0xffdb3022),
                    decoration: InputDecoration(
                      labelText: 'Confirm password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.black45,
                      suffixIcon: Icon(Icons.remove_red_eye),
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
                    child: Text('Create Account', style: TextStyle(fontSize: 18, color: Colors.white)),
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
                        "Already have Account?",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginscreenWidget()));
                        },
                        child: Text(
                          'Log In',
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