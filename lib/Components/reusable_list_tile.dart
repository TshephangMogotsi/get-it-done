import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableListTile extends StatelessWidget {
  const ReusableListTile({
    Key? key,
    required this.label,
    required this.description,
  }) : super(key: key);

  final String label;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.radio_button_checked,
          color: kPrimaryColorYellow,
        ),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: kTextAccentBlue2,
            ),
            const SizedBox(
              height: 5.0,
            ),
            SizedBox(
              width: 300.0,
              child: Text(
                description,
                style: kHomePageWidgetTextStyle2,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                maxLines: 20,
              ),
            ),
          ],
        )
      ],
    );
  }
}
