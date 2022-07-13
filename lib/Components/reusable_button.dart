import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  const ReusableElevatedButton({
    Key? key,
    required this.buttonColor,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final Color buttonColor;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        minimumSize: const Size(280,50)
      ),
      child:  Text(label,
          style: const TextStyle(color: Colors.white, fontSize: 16)),
    );
  }

  
}