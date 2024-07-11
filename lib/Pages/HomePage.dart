// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("./assets/konzo1.png"),
                    radius: 28,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Habari,",
                      style:
                          GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
                    ),
                    Text("Mr Konzo",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
            Container(
              height: 55,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(60, 181, 177, 177),
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.bell,
                      ),
                      onPressed: () {},
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 23,
                      child: Icon(Icons.menu_open_rounded),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's find",
                style: GoogleFonts.poppins(
                    fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Text(
                "your suitable doctor",
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 190,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 206, 230),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [Align()],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
