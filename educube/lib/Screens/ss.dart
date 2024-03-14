import 'package:flutter/material.dart';

class Student {
  final String name;
  final int rollNumber;

  Student(this.name, this.rollNumber);
}

class AttendanceTable extends StatefulWidget {
  final List<Student> students;

  const AttendanceTable({Key? key, required this.students}) : super(key: key);

  @override
  State<AttendanceTable> createState() => _AttendanceTableState();
}

class _AttendanceTableState extends State<AttendanceTable> {
  late Map<int, bool> attendance;
  bool selectAllPresent = false;
  bool selectAllAbsent = false;

  @override
  void initState() {
    super.initState();
    attendance = Map.fromIterable(widget.students,
        key: (student) => student.rollNumber, value: (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: 380, // Set a fixed width
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(1),
          child: DataTable(
            columnSpacing: 20.0,
            columns: [
              DataColumn(label: SizedBox(width:50.0, child: Text('Name')),),
              DataColumn(label: SizedBox(width:50.0, child: Text('Roll No')),),
              DataColumn(
                label: Row(
                  children: [
                    Checkbox(
                      shape: const CircleBorder(),
                      fillColor: MaterialStateProperty.all<Color>(Colors.green),
                      value: selectAllPresent,
                      onChanged: (value) {
                        setState(() {
                          selectAllPresent = value!;
                          for (var student in widget.students) {
                            attendance[student.rollNumber] = value;
                          }
                        });
                      },
                    ),
                    const SizedBox(width: 0.4),
                    SizedBox(width:50, child:  const Text('Present')),
                  ],
                ),
              ),
              DataColumn(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  child: Row(
                    children: [
                      Checkbox(
                        shape: const CircleBorder(),
                        fillColor: MaterialStateProperty.all<Color>(Colors.red),
                        value: selectAllAbsent,
                        onChanged: (value) {
                          setState(() {
                            
                          });
                        },
                      ),
                      const SizedBox(width: 1),
                      const Text('Absent'),
                    ],
                  ),
                ),
              ),
            ],
            rows: widget.students.map((student) => _buildDataRow(student)).toList(),
          ),
        ),
      ),
    );
  }

  DataRow _buildDataRow(Student student) {
    return DataRow(
      cells: [
        DataCell(Text(student.name)),
        DataCell(Text(student.rollNumber.toString())),
        DataCell(
          Center(
            child: Checkbox(
              shape: const CircleBorder(),
              fillColor: MaterialStateProperty.all<Color>(Colors.green),
              value: attendance[student.rollNumber]!,
              onChanged: (value) => setState(() {
                attendance[student.rollNumber] = value!;
              }),
            ),
          ),
        ),
        DataCell(
          Checkbox(
            shape: const CircleBorder(),
            fillColor: MaterialStateProperty.all<Color>(Colors.red),
            value: !attendance[student.rollNumber]!,
            onChanged: (value) => setState(() {
              attendance[student.rollNumber] = !value!;
            }),
          ),
        ),
      ],
    );
  }
}
