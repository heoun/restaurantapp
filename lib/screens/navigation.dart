// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:restaurant_app/config/theme.dart';
import 'package:restaurant_app/screens/like.dart';
import 'package:restaurant_app/screens/home.dart';
import 'package:restaurant_app/screens/checkout.dart';
import 'package:restaurant_app/screens/user.dart';
import 'package:unicons/unicons.dart';
import 'package:line_icons/line_icons.dart';
class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreen();
}

class _RootScreen extends State<RootScreen> {
  final pageNav = [
    MenuScreen(),
    CheckOut(),
    LikeScreen(),
    UserProfileScreen(),
  ];

  int selectedIndex = 0;

  void ontabChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: colorOne,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: GNav(
            color: Colors.white,
            
            backgroundColor: colorOne,
            hoverColor: colorTeritary,
            activeColor: colorThree,//colorSiji,
            tabBackgroundColor: colorHighlight,
            gap:8,
            padding: EdgeInsets.all(10), //Size of navigation Bar
            tabMargin: EdgeInsets.only(right: 10, left: 10),
            textStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            tabs: const [
              GButton(
                icon: UniconsLine.estate,
                text: 'Home',
                // style: GoogleFonts.poppins(),
              ),
              GButton(
                icon: UniconsLine.shopping_cart,
                text: 'Cart',
              ),
              GButton(
                icon: UniconsLine.heart,
                text: 'Favorites',
              ),
              GButton(
                icon: UniconsLine.user,
                text: 'Profile',
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: ontabChange,
          ),
        ),
      ),
      body: pageNav.elementAt(selectedIndex),
    );
  }
}
