import 'package:flutter/material.dart';
import 'package:get_it_done/Components/reusable_button.dart';

class MoreOptionsScreen extends StatelessWidget {
  const MoreOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
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
                ReusableElevatedButton(
                    buttonColor: const Color(0xFF2B5865),
                    label: 'Google',
                    onPressed: () {}),
                const SizedBox(
                  height: 20,
                ),
                ReusableElevatedButton(
                    buttonColor: const Color(0xFF2B5865),
                    label: 'Facebook',
                    onPressed: () {}),
                const SizedBox(
                  height: 20,
                ),
                ReusableElevatedButton(
                    buttonColor: const Color(0xFF2B5865),
                    label: 'Weibo',
                    onPressed: () {}),
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
    ));
  }
}
