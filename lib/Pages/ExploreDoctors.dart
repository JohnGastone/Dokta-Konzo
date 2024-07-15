// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreDoctors extends StatefulWidget {
  const ExploreDoctors({super.key});

  @override
  State<ExploreDoctors> createState() => _ExploreDoctorsState();
}

class _ExploreDoctorsState extends State<ExploreDoctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 20,
                child: Center(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                "Explore Doctors",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 330,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(60, 181, 177, 177),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey,
                        ),
                        labelText: "Search doctor by name",
                        labelStyle: GoogleFonts.poppins(
                            fontSize: 17, color: Colors.grey)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
