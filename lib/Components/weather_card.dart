import 'package:flutter/material.dart';

import '../constants.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}