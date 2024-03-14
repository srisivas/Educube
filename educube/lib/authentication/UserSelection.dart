// ignore_for_file: prefer_const_constructors

import 'package:educube/Constants/BottomBars.dart';
import 'package:educube/Screens/TeacherAttendence.dart';
import 'package:flutter/material.dart';

class UserSelection extends StatefulWidget {
  const UserSelection({Key? key}) : super(key: key);

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int? selectedCircle; // To keep track of the selected circle

  void _selectTeacher() {
    setState(() {
      selectedCircle = 0;
    });
    // Navigate to teacher screen
    // _navigateToTeacherScreen();
     Navigator.push(context,
       MaterialPageRoute(builder: (context) => TeacherAttendance()));
  }

  void _selectParent() {
    setState(() {
      selectedCircle = 1;
    });
    // Navigate to parent screen
    // _navigateToParentScreen();
    Navigator.push(context,
       MaterialPageRoute(builder: (context) => TeacherAttendance()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text(
                'Login to continue to use this app',
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                'I am a .....',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _selectTeacher,
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: selectedCircle == 0
                                  ? Colors.blue
                                  : Colors.transparent,
                              width:
                                  3, // Adjust the width of the border as needed
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/Teacher.png'),
                           
                            
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Teacher',
                          style: TextStyle(
                            color: selectedCircle == 0
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: _selectParent,
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: selectedCircle == 1
                                  ? Colors.blue
                                  : Colors.transparent,
                              width:
                                  3, // Adjust the width of the border as needed
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/Parents.png'),
      
                           
                          ),
                        ),
                        SizedBox(height: 10),
                         Text(
                          'Parent/Student',
                          style: TextStyle(
                            color: selectedCircle == 1
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        
      ),
      floatingActionButton: FloatingBottomTabNavigator(),
    );
  }
}
