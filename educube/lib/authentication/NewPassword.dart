// ignore_for_file: prefer_const_constructors

import 'package:educube/Constants/BottomBars.dart';
import 'package:educube/Constants/Button.dart';
import 'package:educube/Constants/TextStyle.dart';
import 'package:educube/Constants/constants.dart';
import 'package:educube/Constants/text_input_field.dart';
import 'package:educube/authentication/UserSelection.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
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
              Text('Reset Password', style: TextStyles.loginTextStyle),
              Text(
                'Enter the new password you want to set',
                style: TextStyles.customTextStyle(fontSize: 12),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.0),
                    Text(
                      'New Password',
                      style: TextStyles.customTextStyle(),
                    ),
                    CustomTextInputField(
                      label: 'Enter your password',
                      controller: emailController,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Re Enter Password',
                      style: TextStyles.customTextStyle(),
                    ),
                    CustomTextInputField(
                      label: 'Re enter your password',
                      obscureText: true,
                      controller: passwordController,
                    ),
                  Align(
                    alignment: Alignment.bottomRight,
                  
                    
                  )
                  ],
                ),
              ),
              SizedBox(height: 30.0), // Add some spacing
              Center(
                child: CustomButton(
                  width: width * 0.6,
                  color: loginFont,
                  text: 'Submit',
                  onPressed: () {
                     Navigator.push(context,
                       MaterialPageRoute(builder: (context) => UserSelection()));
                  },
                  // onPressedWithName: () {
                    
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => UserSelection()));
                    
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
