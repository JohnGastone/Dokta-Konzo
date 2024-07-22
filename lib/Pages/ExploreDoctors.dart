// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doktakonzo/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreDoctors extends StatefulWidget {
  const ExploreDoctors({super.key});

  @override
  State<ExploreDoctors> createState() => _ExploreDoctorsState();
}

class _ExploreDoctorsState extends State<ExploreDoctors> {
  List<DoctorsModel> getDoctors = List.from(DoctorsList.displayList);
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
                backgroundColor: const Color.fromARGB(60, 181, 177, 177),
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
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                ),
                SizedBox(
                  height: 600,
                  child: ListView.builder(
                    itemCount: getDoctors.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8, bottom: 10),
                      child: Container(
                        height: 150,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 226, 232),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            children: [
                              Container(
                                height: 105,
                                width: 105,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            getDoctors[index].image!)),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    getDoctors[index].name!,
                                    style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    getDoctors[index].hospital!,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(getDoctors[index].specialization!,
                                      style: GoogleFonts.poppins(
                                          fontSize: 15, color: Colors.grey)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.clock,
                                        color: const Color.fromARGB(
                                            255, 90, 9, 104),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        getDoctors[index].availability!,
                                        style:
                                            GoogleFonts.poppins(fontSize: 16),
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 80,
            width: 330,
            decoration: BoxDecoration(
                color: const Color.fromARGB(60, 181, 177, 177),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: GoogleFonts.poppins(
                  fontSize: 17,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search a doctor by name",
                    hintStyle:
                        GoogleFonts.poppins(fontSize: 18, color: Colors.grey)),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
