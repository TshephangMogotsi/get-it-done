import 'package:flutter/material.dart';

class ReusableIconTextFormField extends StatelessWidget {
  const ReusableIconTextFormField({
    Key? key,
    required this.type,
    required this.hint,
    this.obscure,
    required this.controller,
    required this.icon,
  }) : super(key: key);

  final String hint;
  final TextInputType type;
  final bool? obscure;
  final TextEditingController controller;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          obscureText: obscure == null ? false : true,
          keyboardType: type,
          decoration: InputDecoration(
              suffixIcon: Icon(icon),
              hintText: hint,
              border: const OutlineInputBorder()),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
