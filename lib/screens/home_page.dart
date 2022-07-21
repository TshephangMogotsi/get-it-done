import 'package:flutter/material.dart';

import '../Components/background_circles.dart';
import '../Components/extruded_button.dart';
import '../Components/reusable_circle_container.dart';
import '../Components/weather_card.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                WeatherCard(),
                ExtrudedButton(),
              ],
            ),
            const Center(
              child: HomePageBackgroundCircle(),
            ),
            Center(
              child: Container(
                width: 150.0,
                height: 150.0,
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
            ),
            Center(
              child: SizedBox(
                height: 330,
                width: 330,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ReusableCircleContainer(
                          color: kPrimaryColor,
                          icon: Icons.description_outlined,
                          label: 'POST TASK',
                          style: kReusableCircleContainerTextStyle2,
                          borderColor: kPrimaryColor,
                        ),
                        ReusableCircleContainer(
                          color: kAccentBlue,
                          icon: Icons.map_outlined,
                          label: 'FIND TASK',
                          style: kReusableCircleContainerTextStyle,
                          borderColor: kAccentBlue,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ReusableCircleContainer(
                          color: kAccentBlue,
                          icon: Icons.credit_card_outlined,
                          label: 'FUND',
                          style: kReusableCircleContainerTextStyle,
                          borderColor: kAccentBlue,
                        ),
                        ReusableCircleContainer(
                          color: kPrimaryColor,
                          icon: Icons.forum_outlined,
                          label: 'INBOX',
                          style: kReusableCircleContainerTextStyle2,
                          borderColor: kPrimaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 145, 145, 145),
                            style: BorderStyle.solid,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(Icons.light_mode_outlined, size: 40.0),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('19')
                              ],
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Weather's great! Perfect day to get\nThings done",
                                  style: kHomePageWidgetTextStyle,
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "Rose Hill - Thur, Jul 20",
                                ),
                              ],
                            ),
                            const Icon(Icons.more_vert_sharp, size: 40.0)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
