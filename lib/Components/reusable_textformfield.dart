import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({
    Key? key,
    required this.label,
    required this.type, required this.hint,  this.obscure, required this.controller,
  }) : super(key: key);
  final String label;
  final String hint;
  final TextInputType type;
  final bool? obscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          controller: controller,
          obscureText: obscure == null ? false : true,
          keyboardType: type,
          decoration:
              InputDecoration(hintText: hint, border: const OutlineInputBorder()),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
