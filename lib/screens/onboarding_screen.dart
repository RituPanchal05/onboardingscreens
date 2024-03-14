// ignore_for_file: prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, sort_child_properties_last
import 'package:onboardingscreens/screens/Login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboardingscreens/screens/home.dart';

class OnboardingScreen extends StatelessWidget {
  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19, color: Colors.black38),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introkey,
      pages: [
        PageViewModel(
          title: 'Let’s engage with community',
          body: 'engaging with apartment members to actively participating  in various community activities, encouraging connections within the shared living environments.',
          image: Image.asset(
            'Assets/Group.png',
            width: 500,
            height: 300,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Receive frequent emergency alerts',
          body: 'Frequentlyget timely emergency alerts relevant to building or it’s surroundings ensuringthey stayed informed.',
          image: Image.asset(
            'Assets/Group2.png',
            width: 500,
            height: 300,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Easily access local service contacts',
          body: 'Geteffortlessly obtain contact information for services regarding electricity',
          image: Image.asset(
            'Assets/Group3.png',
            width: 600,
            height: 600,
          ),
          decoration: PageDecoration(pageMargin: EdgeInsets.fromLTRB(0, 150, 0, 0), titleTextStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), bodyTextStyle: TextStyle(fontSize: 19)),
          footer: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => JHome()));
              },
              child: Text(
                "Let's Start",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(55), backgroundColor: Color.fromARGB(255, 212, 20, 110)),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        'Back',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
      ),
      next: Container(
        padding: EdgeInsets.all(15), // Adjust the padding as needed
        decoration: BoxDecoration(
          color: Color(0xFFFED131), // Background color
          borderRadius: BorderRadius.circular(50), // Optional: for rounded corners
        ),
        child: Icon(
          Icons.arrow_right_alt,
          color: Colors.black,
        ),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeColor: Color(0xFFFED131),
          activeSize: Size(
            10,
            10,
          )),
    );
  }
}
