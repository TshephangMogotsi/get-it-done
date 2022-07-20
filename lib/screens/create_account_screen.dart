// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Components/reusable_textformfield.dart';
import '../constants.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  int currentStep = 0;
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  List<Step> stepList() => [
        Step(
          title: Text(
            'Mobile',
            style: kTestTextStyle,
          ),
          content: Center(
            child: Column(
              children: [
                ReusableTextFormField(
                  label: 'Cell Phone',
                  hint: 'Enter Your Mobile number',
                  type: TextInputType.phone,
                  controller: _mobileController,
                ),
              ],
            ),
          ),
          isActive: currentStep >= 0,
        ),
        Step(
          title: Text(
            'Account',
            style: kTestTextStyle,
          ),
          content: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableTextFormField(
                  label: 'Full Name',
                  hint: 'Enter Your Full Name',
                  type: TextInputType.name,
                  controller: _fullNameController,
                ),
                ReusableTextFormField(
                  label: 'Email Address',
                  hint: 'Enter Email Address',
                  type: TextInputType.emailAddress,
                  controller: _emailController,
                ),
              ],
            ),
          ),
          isActive: currentStep >= 1,
        ),
        Step(
          title: Text(
            'Password',
            style: kTestTextStyle,
          ),
          content: Center(
            child: Column(
              children: [
                ReusableTextFormField(
                  obscure: true,
                  label: 'Password',
                  hint: 'Enter Password',
                  type: TextInputType.visiblePassword,
                  controller: _passwordController,
                ),
                ReusableTextFormField(
                  obscure: true,
                  label: 'Confirm Password',
                  hint: 'Re-Enter Password',
                  type: TextInputType.emailAddress,
                  controller: _confirmPasswordController,
                ),
              ],
            ),
          ),
          isActive: currentStep >= 2,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
            primary: kPrimaryButtonColor,
          )),
          child: Form(
            key: _formKey,
            child: Stepper(
              //type: StepperType.horizontal,
              currentStep: currentStep,
              onStepTapped: (index) {
                setState(() {
                  currentStep = index;
                });
              },
              onStepContinue: (() {
                setState(() {
                  if (currentStep != 2) {
                    currentStep++;
                  }
                });
              }),
              onStepCancel: (() {
                setState(() {
                  if (currentStep != 0) {
                    currentStep--;
                  }
                });
              }),
              steps: stepList(),
            ),
          ),
        ),
      ),
    );
  }
}
