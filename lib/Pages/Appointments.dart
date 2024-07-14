// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key});

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                child: CircleAvatar(
                  backgroundImage: AssetImage("./assets/p2.png"),
                  radius: 28,
                ),
              ),
              Text(
                "My Appointments",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color.fromARGB(255, 227, 222, 222),
                child: Icon(CupertinoIcons.plus),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "My Appointments",
              style: GoogleFonts.poppins(
                  fontSize: 23, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
