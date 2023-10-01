// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/config/theme.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Like',
        style: GoogleFonts.poppins(
          fontSize: 33,
          color: colorOne,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
