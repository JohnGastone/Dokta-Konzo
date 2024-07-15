// ignore_for_file: prefer_final_fields, prefer_const_constructors, library_private_types_in_public_api

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
  late DateTime _currentMonth;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
    _currentMonth = DateTime(widget.initialDate.year, widget.initialDate.month);
  }

  List<String> _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  List<DropdownMenuItem<int>> get _dropdownMenuItems {
    List<DropdownMenuItem<int>> items = [];
    for (int i = 0; i < _months.length; i++) {
      items.add(DropdownMenuItem(
        value: i + 1,
        child: Text(
          _months[i],
          style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
        ),
      ));
    }
    return items;
  }

  void _onMonthChanged(int? newMonth) {
    if (newMonth != null) {
      setState(() {
        _currentMonth = DateTime(_currentMonth.year, newMonth);
        _selectedDate = DateTime(_currentMonth.year, _currentMonth.month, 1);
      });
    }
  }

  List<Widget> _buildDateRow() {
    List<Widget> dateWidgets = [];
    int daysInMonth =
        DateTime(_currentMonth.year, _currentMonth.month + 1, 0).day;
    for (int day = 1; day <= daysInMonth; day++) {
      DateTime currentDate =
          DateTime(_currentMonth.year, _currentMonth.month, day);
      bool isSelected = currentDate.day == _selectedDate.day &&
          currentDate.month == _selectedDate.month &&
          currentDate.year == _selectedDate.year;

      dateWidgets.add(
        GestureDetector(
          onTap: () => setState(() {
            _selectedDate = currentDate;
          }),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: isSelected
                ? Color.fromARGB(255, 66, 18, 118)
                : Colors.transparent,
            child: Text(
              currentDate.day.toString(),
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      );
    }
    return dateWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${_months[_currentMonth.month - 1]} ${_currentMonth.year}",
                  style: GoogleFonts.poppins(
                      fontSize: 23, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 66, 18, 118),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          dropdownColor: Color.fromARGB(255, 66, 18, 118),
                          value: _currentMonth.month,
                          items: _dropdownMenuItems,
                          onChanged: _onMonthChanged,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(7, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      ["M", "T", "W", "T", "F", "S", "S"][index],
                      style:
                          GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                    ),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _buildDateRow(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
