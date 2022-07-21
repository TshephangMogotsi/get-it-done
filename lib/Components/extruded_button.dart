import 'package:flutter/material.dart';

import '../constants.dart';

class ExtrudedButton extends StatelessWidget {
  const ExtrudedButton({
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 300.0,
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  color: kPrimaryColorYellow,
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
                child: const Padding(
                  padding:  EdgeInsets.only(right: 20.0),
                  child:  Icon(Icons.lightbulb_outline, size: 35.0),
                )),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
