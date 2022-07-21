import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/Components/reusable_button.dart';

import '../Components/background_circles.dart';
import '../Components/reusable_icon_button.dart';

class MoreOptionsScreen extends StatelessWidget {
  const MoreOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          const TopBackgroundCircle(),
          const BottomBackgroundCircle(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Choose your social',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReusableElevatedButton(
                        buttonColor: const Color(0xFFFFA600),
                        label: 'Create Account',
                        onPressed: () {}),
                    const SizedBox(
                      height: 20,
                    ),
                    ReusableIconButton(
                      buttonColor: const Color(0xFF2B5865),
                      label: 'Google',
                      onPressed: () {},
                      icon: FontAwesomeIcons.google,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReusableIconButton(
                      buttonColor: const Color(0xFF2B5865),
                      label: 'Facebook',
                      onPressed: () {},
                      icon: FontAwesomeIcons.facebookF,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReusableIconButton(
                      buttonColor: const Color(0xFF2B5865),
                      label: 'Weibo',
                      onPressed: () {},
                      icon: FontAwesomeIcons.weibo,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        'By signing up you are indicating that you agree to\n the Terms and privacy policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
