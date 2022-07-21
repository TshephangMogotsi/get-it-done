import 'package:flutter/material.dart';
import 'package:get_it_done/constants.dart';

class ReusableUnifiedButton extends StatelessWidget {
  const ReusableUnifiedButton({
    Key? key,
    required this.buttonColor,
    required this.label,
    required this.label2,
    required this.onPressed,
  }) : super(key: key);

  final Color buttonColor;
  final String label;
  final String label2;
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
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        height: 50.0,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Center(child: Text(label, style: kUnifiedButtonTextStyle))),
            const VerticalDivider(
              thickness: 2.0,
              color: kAccentColorBlue,
            ),
            Expanded(child: Center(child: Text(label2, style: kUnifiedButtonTextStyle))),
          ],
        ),
      ),
    );
  }
}
