import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it_done/screens/home_page.dart';
import 'package:get_it_done/screens/welcome_screen.dart';

import 'constants.dart';
import 'screens/create_account_screen.dart';
import 'screens/login.dart';
import 'screens/more_options_screen.dart';

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
        primaryColor: kPrimaryButtonColor,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const Login(),
        '/createAccount': (context) => const CreateAccount(),
        '/moreOptions': (context) => const MoreOptionsScreen(),
        '/homePage': (context) => const HomePage(),
      },
    );
  }
}
