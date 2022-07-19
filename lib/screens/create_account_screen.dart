// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  int currentStep = 0;

  List<Step> stepList() => [
        Step(
          title: Text(
            'Account',
            style: kTestTextStyle,
          ),
          content: Center(
            child: Text('data'),
          ),
          isActive: currentStep >= 0,
        ),
        Step(
          title: Text(
            'Address',
            style: kTestTextStyle,
          ),
          content: Center(
            child: Text('data'),
          ),
          isActive: currentStep >= 1,
        ),
        Step(
          title: Text(
            'Confirm',
            style: kTestTextStyle,
          ),
          content: Center(
            child: Text('data'),
          ),
          isActive: currentStep >= 2,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          // type: StepperType.horizontal,
          currentStep: currentStep,
          onStepTapped: (index) {
            setState(() {
              currentStep = index;
            });
          },

          steps: stepList(),
        ),
      ),
    );
  }
}
