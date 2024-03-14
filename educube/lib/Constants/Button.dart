import 'package:educube/Constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final VoidCallback? onPressedWithName;
  final double? width;
  final Color? color;

  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.onPressedWithName,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        
        
        onPressed: onPressed != null
            ? onPressed
            : () {
                if (onPressedWithName != null) {
                  onPressedWithName!();
                }
              },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           shadowColor: black,
          elevation: 4,
          
          backgroundColor: color,
        ),
        child: Text(
          text,
          style:const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
