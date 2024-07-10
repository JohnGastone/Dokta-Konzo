// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Onboardingcarousel extends StatefulWidget {
  const Onboardingcarousel({super.key});

  @override
  State<Onboardingcarousel> createState() => _OnboardingcarouselState();
}

class _OnboardingcarouselState extends State<Onboardingcarousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to Dokta Konzo App',
                style: GoogleFonts.poppins(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
