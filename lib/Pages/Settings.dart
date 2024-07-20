// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doktakonzo/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPagesState();
}

class _SettingsPagesState extends State<SettingsPage> {
  bool notificationsEnabled = false;
  String _selectedLanguage = "English";

  List<SettingsItemsModel> displayItems =
      List.from(SettingsItemsList.displayList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipOval(
                child: CircleAvatar(
                  backgroundImage: AssetImage("./assets/p2.png"),
                  radius: 28,
                ),
              ),
              SizedBox(
                width: 55,
              ),
              Text(
                "Settings",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12.0, bottom: 12, left: 8, right: 8),
          child: Column(
            children: [
              Container(
                width: 330,
                height: 70,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 207, 185, 229)),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.bell_fill,
                              color: Color.fromARGB(255, 66, 18, 118),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Notification",
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          notificationsEnabled ? "On" : "Off",
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: Colors.grey),
                        ),
                        Switch(
                          value: notificationsEnabled,
                          activeColor:
                              Color.fromARGB(255, 66, 18, 118), // Custom color
                          onChanged: (bool value) {
                            setState(() {
                              notificationsEnabled = value;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                width: 330,
                height: 70,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 207, 185, 229)),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.globe,
                              color: Color.fromARGB(255, 66, 18, 118),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Language",
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: Colors.grey),
                        )
                      ],
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedLanguage,
                        items: <String>["English", "Kiswahili"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,
                                style: GoogleFonts.poppins(fontSize: 18)),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedLanguage = newValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31.0, right: 30),
                child: SizedBox(
                  height: 500,
                  child: ListView.separated(
                    itemCount: displayItems.length,
                    itemBuilder: (context, index) => Container(
                      width: 330,
                      height: 70,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(255, 207, 185, 229)),
                                child: Center(
                                    child: Text(displayItems[index].image!)),
                              ),
                              SizedBox(width: 10),
                              Text(
                                displayItems[index].title!,
                                style: GoogleFonts.poppins(
                                    fontSize: 18, color: Colors.grey),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.grey, // Customize the divider color
                      thickness: 1, // Optional: set the divider thickness
                    ),
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
