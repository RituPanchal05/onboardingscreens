// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:onboardingscreens/screens/opt_screen.dart';
import 'package:onboardingscreens/screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotscreenWidget extends StatefulWidget {
  const ForgotscreenWidget({super.key});

  @override
  State<ForgotscreenWidget> createState() => _ForgotscreenWidgetState();
}

class _ForgotscreenWidgetState extends State<ForgotscreenWidget> {
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
                    labelText: 'Enter Email',
                    prefixIcon: Icon(Icons.email),
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
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RecoveryscreenWidget()));
                },
                child: Text('Send Code', style: TextStyle(fontSize: 18, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color(0xffdb3022),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpscreenWidget()));
                },
                child: Text('Try Another Way', style: TextStyle(fontSize: 16, color: Colors.blue)),
                style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(55), elevation: 0, alignment: Alignment.centerLeft),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
