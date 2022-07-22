import 'package:flutter/material.dart';
import 'package:get_it_done/constants.dart';

class TaskSummary extends StatelessWidget {
  const TaskSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SUMMARY'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: const [
            ReusableListTile(),
          ],
        ),
      ),
    );
  }
}

class ReusableListTile extends StatelessWidget {
  const ReusableListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.radio_button_checked,
          color: kPrimaryColorYellow,
        ),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('TASK'),
            Text('Moving houses'),
          ],
        )
      ],
    );
  }
}
