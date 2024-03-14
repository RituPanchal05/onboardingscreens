// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class JHome extends StatelessWidget {
  const JHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello! This is HomeScreen")
        ],
      ),
    );
  }
}
