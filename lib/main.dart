import 'package:flutter/material.dart';
import 'package:get_it_done/screens/welcome_screen.dart';

import 'constants.dart';

void main() => runApp(const GetItDone());

class GetItDone extends StatelessWidget {
  const GetItDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryButtonColor,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: const WelcomeScreen(),
    );
  }
}
