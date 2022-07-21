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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/office_couch.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.darken),
                ),
              ),
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ReusableAvatar(
                    lenghtAndWidth: 100.0,
                  ),
                  SizedBox(height: 10.0),
                  Text('Tshephang Mogotsi', style: kButtonTextStyle2)
                ],
              ),
            ),
          ),
          const Text(
            'What do you need done today?',
            style: kHomePageWidgetTextStyle,
          ),
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
                  icon: Icons.directions_car_outlined,
                  onPressed: () {
                  
                  },
                ),
                ReusableGridTaskTile(
                  label: 'Moving',
                  icon: Icons.local_shipping_outlined,
                  onPressed: () {
                    Navigator.pushNamed(context, '/task');
                  },
                ),
                ReusableGridTaskTile(
                  label: 'Tutoring',
                  icon: Icons.bus_alert,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Gardening',
                  icon: Icons.forest_outlined,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Cleaning',
                  icon: Icons.cleaning_services_outlined,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'babysitting',
                  icon: Icons.child_care_outlined,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Installations',
                  icon: Icons.handyman_outlined,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Casual Workers',
                  icon: Icons.hail_outlined,
                  onPressed: () {},
                ),
                ReusableGridTaskTile(
                  label: 'Other',
                  icon: Icons.add,
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
