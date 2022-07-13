import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(),
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Row(
                children: const [
                  Text(
                    "Phone number",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                  key: _formKey,
                  child: IntlPhoneField(
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(
                                  255, 78, 78, 78))), // your color
                    ),
                    initialCountryCode: 'BW',
                    onChanged: (phone) {
                      if (kDebugMode) {
                        print(phone.completeNumber);
                      }
                    },
                  )),
                 
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Send verification code",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
               const SizedBox(
                    height: 50.0,
                  ),
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Enter verification code sent to you",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              VerificationCode(
                textStyle: const TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 68, 68, 68)),
                keyboardType: TextInputType.number,
                underlineColor: Colors
                    .amber, // If this is null it will use primaryColor: Colors.red from Theme
                length: 4,
                cursorColor: Colors
                    .blue, // If this is null it will default to the ambient
                // clearAll is NOT required, you can delete it
                // takes any widget, so you can implement your design
                clearAll: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'clear all',
                    style: TextStyle(
                        fontSize: 14.0,
                        decoration: TextDecoration.underline,
                        color: Colors.blue[700]),
                  ),
                ),
                onCompleted: (String value) {
                  // setState(() {
                  //   _code = value;
                  // });
                },
                onEditing: (bool value) {
                  // setState(() {
                  //   _onEditing = value;
                  // });
                  // if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
