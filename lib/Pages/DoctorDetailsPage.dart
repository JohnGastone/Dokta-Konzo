// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class DoctorDetailsPage extends StatefulWidget {
  const DoctorDetailsPage({super.key});

  @override
  State<DoctorDetailsPage> createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-6.8161, 37.667);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> _requestPermission() async {
    var status = await Permission.location.status;
    if (status.isDenied) {
      if (await Permission.location.request().isGranted) {
        // Either the permission was already granted before or the user just granted it.
      }
    }
  }

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                              Text("Cardiologist",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.grey)),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Wakombozi hospital",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text("Morogoro, Tanzania",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.grey)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "About",
                                style: GoogleFonts.poppins(
                                    fontSize: 22, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Review",
                                style: GoogleFonts.poppins(
                                    fontSize: 22, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Rating",
                                style: GoogleFonts.poppins(
                                    fontSize: 22, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Dr Maryam Mahwaya is the greatest cardiology specialist in the country since 2010. She has achieved several successful awards both in Tanzania and at international level for her wonderful contribution in the field...",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 200,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Working Time",
                        style: GoogleFonts.poppins(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text("Mon-Fri: 04:30 PM - 07:30 PM",
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.grey))
                    ],
                  ),
                )
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
