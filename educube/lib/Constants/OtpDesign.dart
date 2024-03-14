import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPInput extends StatelessWidget {
  const OTPInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: SizedBox(
        width: width,
        child: Pinput(
          length: 6, // Adjust length according to your requirement
          
          defaultPinTheme: PinTheme(
            height: 50.0,
            width: 50.0,
            textStyle:const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontWeight: FontWeight.w200,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black.withOpacity(0.5),
                width: 2.0,
              ),
            ),
          ),
          focusedPinTheme: PinTheme(
            height: 60.0,
            width: 60.0,
            textStyle: const TextStyle(
              fontSize: 24.0,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
