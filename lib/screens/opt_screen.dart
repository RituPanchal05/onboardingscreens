// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:onboardingscreens/screens/otp_verification_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpscreenWidget extends StatefulWidget {
  const OtpscreenWidget({super.key});

  @override
  State<OtpscreenWidget> createState() => _OtpscreenWidgetState();
}

class _OtpscreenWidgetState extends State<OtpscreenWidget> {
  bool clrbtn = false;
  TextEditingController emailcontroller = TextEditingController();

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
                    labelText: 'Enter Mobile Number',
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
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpverificationWidget()));
                },
                child: Text('Send OTP', style: TextStyle(fontSize: 18, color: Colors.white)),
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
