// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailsPage extends StatefulWidget {
  const DoctorDetailsPage({super.key});

  @override
  State<DoctorDetailsPage> createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                "Doctor Details",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                  child: Container(
                    height: 150,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
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
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Maryam Mahwaya",
                                style: GoogleFonts.poppins(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Wakombozi hospital",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text("Cardiology",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.grey)),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.clock,
                                    color:
                                        const Color.fromARGB(255, 90, 9, 104),
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
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: 340,
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 72, 28, 130),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Book an Appointment",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
