import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/home_page.dart';
import 'screens/task_screens/task.dart';
import 'screens/welcome_screen.dart';
import 'screens/create_account_screen.dart';
import 'screens/login.dart';
import 'screens/more_options_screen.dart';
import 'screens/task_screens/dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const GetItDone());
}

class GetItDone extends StatelessWidget {
  const GetItDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColorYellow,
        appBarTheme: const AppBarTheme(
          color: kAccentColorBlue,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const Login(),
        '/createAccount': (context) => const CreateAccount(),
        '/moreOptions': (context) => const MoreOptionsScreen(),
        '/homePage': (context) => const HomePage(),
        '/taskDashboard': (context) => const Dashboard(),
        '/task': (context) =>  const Task(),
      },
    );
  }
}
