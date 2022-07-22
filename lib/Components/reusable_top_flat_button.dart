import 'package:flutter/material.dart';
import 'package:get_it_done/constants.dart';

class ReusableTopFlatButton extends StatelessWidget {
  const ReusableTopFlatButton({
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
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(
            width: 2.0,
            color: kAccentColorBlue,
          ),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        height: 50.0,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10.0,
            ),
            const Icon(
              Icons.add,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(label, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
