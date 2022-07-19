import 'package:flutter/material.dart';
import 'package:get_it_done/constants.dart';

class ReusableIconButton extends StatelessWidget {
  const ReusableIconButton({
    Key? key,
    required this.buttonColor,
    required this.label,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final Color buttonColor;
  final String label;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        height: 50.0,
        width: 280.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(flex: 1, child: Icon(icon)),
            const VerticalDivider(
              thickness: 2.0,
              color: Colors.white,
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Text(label,
                    style: kButtonTextStyle),
              ),
            ),
          ],
        ),
      ),
    );

    // return ElevatedButton.icon(
    //   onPressed: onPressed,
    //   style: ElevatedButton.styleFrom(
    //       primary: buttonColor, minimumSize: const Size(280, 50)),
    //   label: Text(label,
    //       style: const TextStyle(color: Colors.white, fontSize: 16)),
    //   icon: icon,
    // );
  }
}
