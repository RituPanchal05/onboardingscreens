// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:async';

import 'package:onboardingscreens/screens/Home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryscreenWidget extends StatefulWidget {
  const RecoveryscreenWidget({super.key});

  @override
  State<RecoveryscreenWidget> createState() => _RecoveryscreenWidgetState();
}

class _RecoveryscreenWidgetState extends State<RecoveryscreenWidget> {
  bool clrbtn = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController resetcontroller = TextEditingController();
  TextEditingController passcontoller = TextEditingController();
  TextEditingController npasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Please enter your email address. You will recieve code on your email address.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailcontroller,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      clrbtn = true;
                    });
                  }
                },
                cursorColor: Color(0xffdb3022),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffdb3022))),
                    floatingLabelStyle: TextStyle(color: Color(0xffdb3022)),
                    labelText: 'Reset Code',
                    prefixIcon: Icon(Icons.numbers),
                    prefixIconColor: Colors.black45,
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          emailcontroller.clear();
                        });
                      },
                      child: Icon(
                        CupertinoIcons.multiply,
                        color: Color(0xffdb3022),
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passcontoller,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      clrbtn = true;
                    });
                  }
                },
                cursorColor: Color(0xffdb3022),
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffdb3022))),
                    floatingLabelStyle: TextStyle(color: Color(0xffdb3022)),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'New Password',
                    prefixIconColor: Colors.black45,
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passcontoller.clear();
                        });
                      },
                      child: Icon(
                        CupertinoIcons.multiply,
                        color: Color(0xffdb3022),
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: npasscontroller,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      clrbtn = true;
                    });
                  }
                },
                cursorColor: Color(0xffdb3022),
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffdb3022))),
                    floatingLabelStyle: TextStyle(color: Color(0xffdb3022)),
                    labelText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Colors.black45,
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          npasscontroller.clear();
                        });
                      },
                      child: Icon(
                        CupertinoIcons.multiply,
                        color: Color(0xffdb3022),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Sucessfully reset password'),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ));
                  Timer(Duration(seconds: 2), () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  });
                },
                child: Text('Reset Password', style: TextStyle(fontSize: 18, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color(0xffdb3022),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
