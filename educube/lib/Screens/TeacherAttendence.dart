// ignore_for_file: prefer_const_constructors

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:educube/Screens/ss.dart';
import 'package:flutter/material.dart';

class TeacherAttendance extends StatefulWidget {
  const TeacherAttendance({Key? key}) : super(key: key);

  @override
  _TeacherAttendanceState createState() => _TeacherAttendanceState();
}

class _TeacherAttendanceState extends State<TeacherAttendance> {
  String teacherName = "Your Name";
  String className = "Class Name";
  DateTime date = DateTime.now();
  String? selectedClass;

  final List<String> classItems = ['Class A', 'Class B', 'Class C', 'Class D'];
  final List<Student> students = [
    Student('John Doe', 101),
    Student('Jane Doe', 102),
    Student('Alice Smith', 103),
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Attendance',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'poppins',
                letterSpacing: -0.5,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SizedBox(
                width: 15,
                height: 15,
                child: Image.asset(
                  'assets/images/menu.png',
                  width: 15,
                  height: 15,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_rounded),
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            onPressed: () {
              // Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Teachername',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(teacherName),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Class',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          hint: const Text(
                            'Select Class',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          items: classItems
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedClass,
                          onChanged: (String? value) {
                            setState(() {
                              selectedClass = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 1),
                            height: 15,
                            width: 100,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        "${date.day}/${date.month}/${date.year}",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: AttendanceTable(students: students),
            ),
          ],
        ),
      ),
    );
  }
}
