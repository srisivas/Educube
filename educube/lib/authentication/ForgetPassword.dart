// ignore_for_file: prefer_const_constructors

import 'package:educube/Constants/BottomBars.dart';
import 'package:educube/Constants/Button.dart';
import 'package:educube/Constants/TextStyle.dart';
import 'package:educube/Constants/constants.dart';
import 'package:educube/Constants/text_input_field.dart';
import 'package:educube/authentication/OtpVerification.dart';
import 'package:flutter/material.dart';


class forgetPassword extends StatefulWidget {
  
  const forgetPassword({super.key});
  

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
  
}

class _forgetPasswordState extends State<forgetPassword> {
   TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return  Scaffold(
      
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
              
              Align(alignment:Alignment.center, ),
              
               Text('Forgot Password', style: TextStyles.loginTextStyle),
              Text(
                'Enter Registered Email-ID associated with  \nyour account', textAlign: TextAlign.center,
                style: TextStyles.customTextStyle(fontSize: 12),
              ),
              SizedBox(height: 10,),
            Padding(padding:EdgeInsets.all(20),
            child:   Column(crossAxisAlignment:CrossAxisAlignment.start,
             children: [
              Text(
                      'Email-ID',
                      style: TextStyles.customTextStyle(),
                    ),
                    
             CustomTextInputField(
                      label: 'email@email.com',
                      obscureText: true,
                      controller: passwordController,
                    ),
              
             ]  
             
             ),
            ),
             SizedBox(height: 30.0), // Add some spacing
              Center(
                child: CustomButton(
                  width: width * 0.6,
                  color: loginFont,
                  text: 'Send OTP',
                  onPressed: () {
                     Navigator.push(context,
                        MaterialPageRoute(builder: (context) => otpValidation()));
                  },
                  onPressedWithName: () {
                    
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => otpValidation()));
                    
                  },
                ),
              ),
            ],
            
         
          ),
          
          
          
        ),
                 floatingActionButton: FloatingBottomTabNavigator(),

    );
  }
}