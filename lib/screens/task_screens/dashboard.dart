import 'package:flutter/material.dart';
import '../../Components/curved_header.dart';
import '../../Components/reusable_avatar.dart';
import '../../Components/reusable_grid_task_tile.dart';
import '../../constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper:
                CustomShape(), // this is my own class which extendsCustomClipper
            child: Container(
              height: 300,
              color: kPrimaryColorYellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ReusableAvatar(
                    lenghtAndWidth: 100.0,
                  ),
                  SizedBox(height: 10.0),
                  Text('Tshephang Mogotsi')
                ],
              ),
            ),
          ),
          const Text('What do you need done today?'),
          Expanded(
            child: GridView.count(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              crossAxisCount: 3,
              children: [
                ReusableGridTaskTile(
                  label: 'Deliveries',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Moving',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Tutoring',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Deliveries',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Moving',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Tutoring',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Deliveries',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Moving',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Tutoring',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
