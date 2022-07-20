import 'dart:ui';
//import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it_done/Components/reusable_button.dart';
import 'package:get_it_done/Components/reusable_login_field.dart';
import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //bool _isValid = false;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/buildings.jpg', fit: BoxFit.cover),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 6.5, sigmaY: 6.5),
                    child: Container(color: Colors.transparent),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableLoginField(
                            controller: _emailController,
                            hint: 'johndoe@gmail.com',
                            type: TextInputType.emailAddress,
                            label: 'Login Email',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10.0),
                          ReusableLoginField(
                            obscure: true,
                            controller: _passwordController,
                            hint: 'Password',
                            type: TextInputType.visiblePassword,
                            label: 'Password',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('Forgot your password?'),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ReusableElevatedButton(
                            buttonColor: const Color(0xFFFFA600),
                            label: 'Login',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                signIn();
                                Navigator.pushNamed(context, '/homePage');
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _emailController.text.trim(),
    );
  }



  // void validate() {
  //   _isValid = EmailValidator.validate(_emailController.text);
  //   if (_isValid) {
  //     Fluttertoast.showToast(
  //         msg: "Valid Email",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.TOP,
  //         timeInSecForIosWeb: 1,
  //         fontSize: 16.0);
  //   } else if (_emailController.text.isEmpty) {
  //     Fluttertoast.showToast(
  //         msg: 'Enter Email',
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.TOP,
  //         timeInSecForIosWeb: 1,
  //         fontSize: 16.0);
  //   } else {
  //     Fluttertoast.showToast(
  //         msg: 'Enter a Valid Email',
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.TOP,
  //         timeInSecForIosWeb: 1,
  //         fontSize: 16.0);
  //   }
  //   if (_formKey.currentState!.validate()) {
  //    signIn();

  //   }
  // }
}
