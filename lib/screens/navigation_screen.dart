// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:onboardingscreens/screens/Home_screen.dart';
import 'package:onboardingscreens/screens/cart_screen.dart';
import 'package:onboardingscreens/screens/favorite_screen.dart';
import 'package:onboardingscreens/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int pageIndedx = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartWidget(),
    FavoriteWidget(),
    ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndedx,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: FloatingActionButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Icon(
              Icons.qr_code,
              color: Colors.white,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            backgroundColor: Color(0xffdb3022),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: Color(0xffdb3022),
        gapLocation: GapLocation.center,
        activeIndex: pageIndedx,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        iconSize: 25,
        elevation: 0,
        onTap: (index) {
          setState(() {
            pageIndedx = index;
          });
        },
      ),
    );
  }
}
