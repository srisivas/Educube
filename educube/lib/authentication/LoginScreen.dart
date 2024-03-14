// ignore_for_file: prefer_const_constructors

import 'package:educube/Constants/BottomBars.dart';
import 'package:educube/Constants/Button.dart';
import 'package:educube/Constants/TextStyle.dart';
import 'package:educube/Constants/constants.dart';
import 'package:educube/Constants/text_input_field.dart';
import 'package:educube/authentication/ForgetPassword.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: appColor,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Stack(children: [
                  Image.asset(
                    LoginImage,
                    width: width * 0.65,
                    height: height * 0.41,
                  )
                ]),
              ),
              Text('Login', style: TextStyles.loginTextStyle),
              Text(
                'Login to continue to use this app',
                style: TextStyles.customTextStyle(fontSize: 12),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.0),
                    Text(
                      'Username',
                      style: TextStyles.customTextStyle(),
                    ),
                    CustomTextInputField(
                      label: 'Enter your username',
                      controller: emailController,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Password',
                      style: TextStyles.customTextStyle(),
                    ),
                    CustomTextInputField(
                      label: 'Enter your password',
                      obscureText: true,
                      controller: passwordController,
                    ),
                  Align(
                    alignment: Alignment.bottomRight,
                  
                    child : TextButton(
                    
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                          color: black, fontFamily: "poppins", fontSize: 14),
                    ),
                    onPressed: () {
                       Navigator.push(context,
                        MaterialPageRoute(builder: (context) => forgetPassword()));
                      //Get.to(ForgetPassword());
                    },
                  )
                  )
                  ],
                ),
              ),
              SizedBox(height: 30.0), // Add some spacing
              Center(
                child: CustomButton(
                  width: width * 0.6,
                  color: loginFont,
                  text: 'Login',
                  onPressed: () {
                    
                  },
                  // onPressedWithName: () {
                    
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => forgetPassword()));
                    
                  // },
                ),
              ),
              SizedBox(height: 16.0), // Add some spacing
            ],
          ),
          
        ),
                 floatingActionButton: FloatingBottomTabNavigator(),

        );
  }
}
