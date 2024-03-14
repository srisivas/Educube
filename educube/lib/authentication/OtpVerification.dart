// ignore_for_file: prefer_const_constructors

import 'package:educube/Constants/BottomBars.dart';
import 'package:educube/Constants/Button.dart';
import 'package:educube/Constants/OtpDesign.dart';
import 'package:educube/Constants/TextStyle.dart';
import 'package:educube/Constants/constants.dart';
import 'package:educube/authentication/NewPassword.dart';
import 'package:flutter/material.dart';

class otpValidation extends StatefulWidget {
  const otpValidation({super.key});

  @override
  State<otpValidation> createState() => _otpValidationState();
}

class _otpValidationState extends State<otpValidation> {
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

            Align(
              alignment: Alignment.center,
            ),

            Text('Verification', style: TextStyles.loginTextStyle),
            Text(
              'Enter the verification code sent to your \nEmail-ID',
              textAlign: TextAlign.center,
              style: TextStyles.customTextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left:
                              10), // Adjust the value according to your requirement
                      child: Text(
                        "Code",
                        style: TextStyle(
                          color: black,
                          fontFamily: "poppins",
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: const [OTPInput()],
                    ),
                    TextButton(
                      child: Text(
                        "Resend Code?",
                        style: TextStyle(
                            color: black, fontFamily: "poppins", fontSize: 14),
                      ),
                      onPressed: () {
                        //Get.to(ForgetPassword());
                      },
                    )
                  ]),
            ),
            SizedBox(height: 30.0), // Add some spacing
            Center(
              child: CustomButton(
                width: width * 0.6,
                color: loginFont,
                text: 'Verify Otp',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewPassword()));
                },
                // onPressedWithName: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => Otpscreen()));
                // },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingBottomTabNavigator(),
    );
  }
}
