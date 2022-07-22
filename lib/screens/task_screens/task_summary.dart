import 'package:flutter/material.dart';
import '../../Components/reusable_button.dart';
import '../../Components/reusable_list_tile.dart';
import '../../constants.dart';

class TaskSummary extends StatelessWidget {
  const TaskSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SUMMARY'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('Edit', style: kHomePageWidgetTextStyle2),
                    Icon(Icons.edit, color: kAccentColorGrey),
                  ],
                ),
                const ReusableListTile(
                  label: 'TASK',
                  description: 'Moving Houses',
                ),
                const SizedBox(height: 20.0),
                const ReusableListTile(
                  label: 'DESCRIPTION',
                  description:
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nisl eros, interdum a metus a, aliquam cursus lorem. In a bibendum lectus. In hac habitasse platea dictumst. Donec quis ligula sollicitudin, posuere nibh convallis, convallis est.''',
                ),
                const SizedBox(height: 20.0),
                const ReusableListTile(
                  label: 'LOCATION',
                  description: 'Moving Houses',
                ),
                const SizedBox(height: 20.0),
                const ReusableListTile(
                  label: 'DUE DATE',
                  description: 'Moving Houses',
                ),
                const SizedBox(height: 20.0),
                const ReusableListTile(
                  label: 'HOW CAN IT BE DONE',
                  description: 'Moving Houses',
                ),
                const SizedBox(height: 20.0),
                const ReusableListTile(
                  label: 'NUMBER OF PEOPLE NEEDED',
                  description: 'Moving Houses',
                ),
                const SizedBox(height: 20.0),
                const ReusableListTile(
                  label: 'OFFER',
                  description: 'Moving Houses',
                ),
              ],
            ),
            ReusableElevatedButton(
              buttonColor: kPrimaryColorYellow,
              label: 'Confirm',
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/homePage'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
