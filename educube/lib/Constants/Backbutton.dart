import 'package:flutter/material.dart';

class BackButtonComponent extends StatelessWidget {
  final VoidCallback onPressed;

  const BackButtonComponent({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        
        
        icon: const Icon(Icons.arrow_back) ,iconSize: 20,
        onPressed: onPressed,
      ),
    );
  }
}
