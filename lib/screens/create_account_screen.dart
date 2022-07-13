// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get_it_done/screens/account_screens/page_1.dart';
import 'package:get_it_done/screens/account_screens/page_2.dart';
import 'package:get_it_done/screens/account_screens/page_3.dart';
import 'package:get_it_done/screens/account_screens/page_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class CreateAccount extends StatelessWidget {
  final _controller = PageController();

  CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // page view
            SizedBox(
              height: 600,
              child: PageView(
                controller: _controller,
                children: const [
                  Page1(),
                  Page2(),
                  Page3(),
                  Page4(),
                ],
              ),
            ),
      
            // dot indicators
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: JumpingDotEffect(
                activeDotColor: const Color(0xFFFFA600),
                dotColor: Color.fromARGB(255, 133, 133, 133),
                dotHeight: 10,
                dotWidth: 10,
                spacing: 16,
                //verticalOffset: 50,
                jumpScale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
