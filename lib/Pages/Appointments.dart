// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "May 2024",
                style: GoogleFonts.poppins(
                    fontSize: 23, fontWeight: FontWeight.w500),
              ),
              Container(
                height: 130,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 239, 235, 235),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("./assets/d2.jpeg")),
                            borderRadius: BorderRadius.circular(15)),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 66, 18, 118),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.phone,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "Voice Call -",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: " Accepted",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 66, 18, 118))),
                          ])),
                          Text(
                            "Dr. Maryam Mahwaya",
                            style: GoogleFonts.poppins(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.clock,
                                color: Color.fromARGB(255, 66, 18, 118),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "4:30 PM - 7:30 PM",
                                style: GoogleFonts.poppins(fontSize: 16),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 239, 235, 235),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("./assets/d1.jpeg")),
                            borderRadius: BorderRadius.circular(15)),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 66, 18, 118),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.videocam,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "Video Call -",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: " Declined",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, color: Colors.redAccent)),
                          ])),
                          Text(
                            "Dr. Ethan Mahwaya",
                            style: GoogleFonts.poppins(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.clock,
                                color: Color.fromARGB(255, 66, 18, 118),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "5:30 PM - 7:30 PM",
                                style: GoogleFonts.poppins(fontSize: 16),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 239, 235, 235),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("./assets/d3.jpeg")),
                            borderRadius: BorderRadius.circular(15)),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 66, 18, 118),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.message,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "Message -",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: " Read",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 66, 18, 118))),
                          ])),
                          Text(
                            "Dr. Kipwiru Bwakila",
                            style: GoogleFonts.poppins(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.clock,
                                color: Color.fromARGB(255, 66, 18, 118),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "4:30 PM - 7:30 PM",
                                style: GoogleFonts.poppins(fontSize: 16),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
