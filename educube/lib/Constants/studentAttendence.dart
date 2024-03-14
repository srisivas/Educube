import 'package:flutter/material.dart';

class StudentAttendance extends StatelessWidget {
  final String name;
  final String rollNumber;
  final bool isPresent;

  StudentAttendance({
    required this.name,
    required this.rollNumber,
    required this.isPresent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name),
        Text(rollNumber),
        Text(isPresent ? 'Yes' : 'No'),
        Text(isPresent ? 'No' : 'Yes'),
      ],
    );
  }
}
