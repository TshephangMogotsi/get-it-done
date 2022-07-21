import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_done/Components/reusable_button.dart';
import '../Components/background_circles.dart';
import '../Components/reusable_icon_button.dart';
import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const TopBackgroundCircle(),
            const BottomBackgroundCircle(),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, bottom: 30.0, right: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                                color: Color.fromARGB(255, 90, 90, 90),
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //We take the image from the assets
                      Image.asset(
                        'assets/bee.png',
                        height: 150,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Welcome to GET IT DONE',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'You never know when you might even land a job',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      ReusableElevatedButton(
                        buttonColor: kPrimaryColorYellow,
                        label: 'Create account',
                        onPressed: () {
                          Navigator.pushNamed(context, '/createAccount');
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableIconButton(
                        buttonColor: const Color(0xFF2B5865),
                        label: 'Continue with Google',
                        onPressed: () {},
                        icon: FontAwesomeIcons.google,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/moreOptions');
                        },
                        child: const Text(
                          'More options',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '''By tapping create account or more options, I agree to \nGet It Done Terms Of Service,Payment terms of service,Privacy Policy and Non-discrimination Policy''',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
