// ignore_for_file: file_names

import 'package:doktakonzo/Pages/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboardingcarousel extends StatelessWidget {
  final Color kDarkBlueColor = const Color.fromARGB(255, 83, 45, 8);

  const Onboardingcarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Started',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const Homepage(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        'Skip',
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const Onboardingcarousel(),
          ),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/konzo1.png',
          height: 400,
          width: 400,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 38.0),
          child: Image.asset(
            'assets/booking.png',
            height: 400,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
        Image.asset(
          'assets/pills.png',
          height: 400,
          width: 400,
          fit: BoxFit.cover,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 430,
              ),
              Text(
                'Welcome to Dr Konzo',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: kDarkBlueColor,
                  fontSize: 34.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Discover the best Tanzanian physicians and enjoy a seamless healing experience',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.blueGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 430,
              ),
              Text(
                'Easy booking.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: kDarkBlueColor,
                  fontSize: 34.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Browse our extensive list of doctors and book an appointment with just few taps',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.blueGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 450,
              ),
              Text(
                'Effective prescription',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: kDarkBlueColor,
                  fontSize: 33.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Choose from a variety of payment options, including Lipa no and cash.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.blueGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
