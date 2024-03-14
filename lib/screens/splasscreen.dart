// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:onboardingscreens/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class splashscreenWidget extends StatefulWidget {
  const splashscreenWidget({super.key});

  @override
  State<splashscreenWidget> createState() => _splashscreenWidgetState();
}

class _splashscreenWidgetState extends State<splashscreenWidget> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: SpinKitSpinningLines(
            color: Colors.amber,
            size: 100,
          ),
        ),
      ],
    ));
  }
}
