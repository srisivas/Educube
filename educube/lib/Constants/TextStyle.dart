import 'package:educube/Constants/constants.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle loginTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: loginFont, // Change the color to your desired color
    letterSpacing: -0.5,
  );

  static TextStyle customTextStyle({
    String fontFamily = 'Poppins',
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 14,
    Color color = black,
    double letterSpacing = -0.5,
    
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
      letterSpacing: letterSpacing,
    );
  }
}
