// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DatePicker extends StatefulWidget {
  final DateTime initialDate;

  const DatePicker({super.key, required this.initialDate});

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime _selectedDate;
  late DateTime _firstDate;
  late DateTime _lastDate;
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
    _firstDate = DateTime(_selectedDate.year, _selectedDate.month - 1, 1);
    _lastDate = DateTime(_selectedDate.year, _selectedDate.month + 1, 0);
    _controller = ScrollController(
        initialScrollOffset:
            (_selectedDate.day - 1) * 50.0); // Adjust initial scroll position
  }

  void _onDateSelected(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  Widget _buildDateRow(DateTime date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(7, (index) {
        DateTime currentDate = date.add(Duration(days: index));
        bool isSelected = currentDate.day == _selectedDate.day &&
            currentDate.month == _selectedDate.month &&
            currentDate.year == _selectedDate.year;

        return GestureDetector(
          onTap: () => _onDateSelected(currentDate),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: isSelected
                ? const Color.fromARGB(255, 66, 18, 118)
                : Colors.transparent,
            child: Text(
              currentDate.day.toString(),
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${_selectedDate.month} ${_selectedDate.year}",
                  style: GoogleFonts.poppins(
                      fontSize: 23, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 66, 18, 118),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pick a month",
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.white),
                          ),
                          const Icon(Icons.arrow_drop_down,
                              color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(7, (index) {
                return Text(
                  ["M", "T", "W", "T", "F", "S", "S"][index],
                  style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                );
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: ((_lastDate.difference(_firstDate).inDays) / 7).ceil(),
              itemBuilder: (context, index) {
                DateTime startDate = _firstDate.add(Duration(days: index * 7));
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: _buildDateRow(startDate),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
