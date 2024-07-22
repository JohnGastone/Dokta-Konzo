// ignore_for_file: prefer_const_constructors

import 'package:doktakonzo/Pages/ExploreDoctors.dart';
import 'package:doktakonzo/Pages/components/DatePicker.dart';
import 'package:doktakonzo/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAppointment extends StatefulWidget {
  const CreateAppointment({super.key});

  @override
  State<CreateAppointment> createState() => _CreateAppointmentState();
}

class _CreateAppointmentState extends State<CreateAppointment> {
  List<AppointmentTimesModel> displayAppointmentsMorningTimes =
      List.from(AppointmentMorningTimesList.displayList);
  List<AppointmentTimesModel> displayAppointmentsEveningTimes =
      List.from(AppointmentEveningTimesList.getAppointmentTimes);

  // State to manage the active button
  String activeButton = "Morning";
  String? selectedFeeOption;

  AppointmentTimesModel? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "New Appointment",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DatePicker(initialDate: DateTime.now()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTimeButton("Morning"),
                  _buildTimeButton("Evening"),
                ],
              ),

              SizedBox(height: 20),

              // Conditionally render the GridView based on the active button
              if (activeButton == "Morning")
                _buildTimeGridView(displayAppointmentsMorningTimes)
              else
                _buildTimeGridView(displayAppointmentsEveningTimes),

              SizedBox(
                height: 20,
              ),
              Text("Fees information",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 15,
              ),
              _buildFeeOption(
                "Messaging",
                "\$5",
                CupertinoIcons.mail,
              ),
              SizedBox(height: 15),
              _buildFeeOption("Voice Call", "\$10", CupertinoIcons.phone),
              // Set Messaging as default selected
              SizedBox(height: 15),
              _buildFeeOption(
                  "Video Call", "\$20", CupertinoIcons.video_camera),

              SizedBox(height: 30),
              InkWell(
                child: Container(
                  width: 330,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 66, 18, 118),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => ExploreDoctors()));
                },
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  // Function to build the time buttons
  Widget _buildTimeButton(String label) {
    bool isActive = activeButton == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          activeButton = label;
        });
      },
      child: Container(
        width: 155,
        height: 50,
        decoration: BoxDecoration(
          color:
              isActive ? const Color.fromARGB(255, 66, 18, 118) : Colors.white,
          border: Border.all(
              width: 1, color: isActive ? Colors.transparent : Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: isActive
                        ? Colors.white
                        : const Color.fromARGB(255, 238, 233, 233),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Icon(
                    isActive ? Icons.light_mode : CupertinoIcons.sunset,
                    color: isActive
                        ? const Color.fromARGB(255, 66, 18, 118)
                        : Colors.grey,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(width: 30),
              Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: isActive ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build the time GridView
  Widget _buildTimeGridView(List<AppointmentTimesModel> appointments) {
    return SizedBox(
      height: 180,
      width: 340,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: appointments.length,
        itemBuilder: (context, index) {
          final appointment = appointments[index];
          final isSelected =
              selectedTime == appointment; // Compare objects directly

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTime = isSelected ? null : appointment;
              });
            },
            child: Container(
              width: 120,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: isSelected
                      ? const Color.fromARGB(255, 66, 18, 118)
                      : Colors.grey,
                ),
                color: isSelected
                    ? const Color.fromARGB(255, 66, 18, 118)
                    : Colors
                        .transparent, // Make background transparent when not selected
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Center(
                  child: Text(
                    appointment.time!,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFeeOption(String label, String price, IconData icon,
      {bool defaultSelected = false}) {
    final isSelected = selectedFeeOption == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFeeOption = isSelected ? null : label; // Toggle selection
        });
      },
      child: Container(
        width: 330,
        height: 81,
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 66, 18, 118)
              : Colors.white,
          border: Border.all(
              width: 1, color: isSelected ? Colors.transparent : Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.white
                          : const Color.fromARGB(255, 224, 219, 219),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Icon(icon,
                            color: isSelected
                                ? const Color.fromARGB(255, 66, 18, 118)
                                : null)), // Conditional icon color
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(
                        label,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: isSelected
                              ? Colors.white
                              : null, // Conditional text color
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Can $label with the doctor", // Updated description
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: isSelected ? Colors.white : null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                price,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: isSelected ? Colors.white : null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
