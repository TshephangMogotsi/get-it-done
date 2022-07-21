import 'package:flutter/material.dart';

class ReusableAvatar extends StatelessWidget {
  const ReusableAvatar({
    Key? key, required this.lenghtAndWidth,
  }) : super(key: key);

 final double lenghtAndWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: lenghtAndWidth,
        height: lenghtAndWidth,
        decoration: BoxDecoration(
          //color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: AssetImage('assets/pug_portrait.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(150.0)),
          border: Border.all(
            color: Colors.white,
            width: 4.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 4,
            ),
          ],
        ),
      ),
    );
  }
}
