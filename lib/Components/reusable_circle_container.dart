import 'package:flutter/material.dart';

class ReusableCircleContainer extends StatelessWidget {
  const ReusableCircleContainer({
    Key? key,
    required this.label,
    required this.icon,
    required this.color,
    required this.style,
    required this.borderColor, required this.onPressed,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final Color color;
  final Color borderColor;
  final TextStyle style;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(150.0)),
          border: Border.all(
            color: borderColor,
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50.0, color: color),
            Text(label, style: style),
          ],
        ),
      ),
    );
  }
}
