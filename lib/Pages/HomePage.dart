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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 190,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 206, 230),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage("./assets/cardio.png"),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Column(
                                children: [
                                  Text(
                                    "Cardio",
                                    style: GoogleFonts.poppins(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text("12 doctors",
                                      style: GoogleFonts.poppins(fontSize: 20)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 18,
                                        backgroundImage:
                                            AssetImage("./assets/konzo1.png"),
                                      ),
                                      CircleAvatar(
                                        radius: 18,
                                        backgroundImage:
                                            AssetImage("./assets/konzo1.png"),
                                      ),
                                      CircleAvatar(
                                        radius: 18,
                                        child: Text(
                                          "+5",
                                          style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 190,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 206, 230),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage("./assets/tooth.png"),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Column(
                                children: [
                                  Text(
                                    "Dental",
                                    style: GoogleFonts.poppins(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text("09 doctors",
                                      style: GoogleFonts.poppins(fontSize: 20)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 18,
                                        backgroundImage:
                                            AssetImage("./assets/konzo1.png"),
                                      ),
                                      CircleAvatar(
                                        radius: 18,
                                        backgroundImage:
                                            AssetImage("./assets/konzo1.png"),
                                      ),
                                      CircleAvatar(
                                        radius: 18,
                                        child: Text(
                                          "+5",
                                          style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
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
