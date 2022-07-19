import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  const ReusableElevatedButton({
    Key? key,
    required this.buttonColor,
    required this.label,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final Color buttonColor;
  final String label;
  final VoidCallback onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: buttonColor, minimumSize: const Size(280, 50)),
      label: Text(label,
          style: const TextStyle(color: Colors.white, fontSize: 16)),
      icon: icon,
    );
  }
}
