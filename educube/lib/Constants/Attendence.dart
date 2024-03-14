import 'package:flutter/material.dart';

class AttendanceHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Student Name',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Roll No',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Present',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Absent',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
