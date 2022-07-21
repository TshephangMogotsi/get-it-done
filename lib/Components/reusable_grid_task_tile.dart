import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableGridTaskTile extends StatelessWidget {
  const ReusableGridTaskTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label),
        const SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 226, 226, 226),
                border: Border.all(
                  color: const Color.fromARGB(255, 190, 190, 190),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Icon(icon, size: 50.0, color: kPrimaryColorYellow),
          ),
        )
      ],
    );
  }
}
