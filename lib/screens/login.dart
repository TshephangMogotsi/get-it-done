import 'dart:ui';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it_done/Components/reusable_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  bool _isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                    Row(
                      children: const [
                        Text('Login Email'),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      autofocus: false,
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                        hintText: '@nomvoyo.bokete@gmail.com',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: const [
                        Text('Password'),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      autofocus: false,
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                        hintText: 'Password',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
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
                          _isValid =
                              EmailValidator.validate(_emailController.text);
                          if (_isValid) {
                            Fluttertoast.showToast(
                                msg: "Valid Email",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                fontSize: 16.0);
                          } else if (_emailController.text.isEmpty) {
                            Fluttertoast.showToast(
                                msg: 'Enter Email',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                fontSize: 16.0);
                          } else {
                            Fluttertoast.showToast(
                                msg: 'Enter a Valid Email',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                fontSize: 16.0);
                          }
                          if (_formKey.currentState!.validate()) {
                            // If the form is
                            if (kDebugMode) {
                              print('safe');
                            }
                          }
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
