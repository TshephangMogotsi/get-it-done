import 'package:flutter/material.dart';
import '../../Components/curved_header.dart';
import '../../constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper:
            CustomShape(), // this is my own class which extendsCustomClipper
        child: Container(
          height: 150,
          color: kPrimaryColorYellow,
        ),
      ),
    );
  }
}
