

// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class CustomTextInputField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextInputField({
    Key? key,
    required this.label,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

            
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        
        
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.never, // Prevent label from floating
         contentPadding: const EdgeInsets.symmetric( horizontal: 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
        // Additional decoration properties can be added here
        // Example: You can customize the appearance of the label, hint text, prefix/suffix icons, etc.
        // For demonstration, let's add some padding to the label
        labelStyle: const TextStyle(
          // Customize label text style if needed
          fontSize: 12.0,
        
        ),
        // Add more customization as needed
      ),
    );
  }
}
