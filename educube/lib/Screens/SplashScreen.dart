// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:async';

import 'package:educube/Constants/constants.dart';
import 'package:educube/authentication/LoginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
      ),
    );
    return Scaffold(
      body: Center(
        child: Image.asset(splashImage), // Replace 'assets/logo.png' with your image path
      ),
    );
  }
}
