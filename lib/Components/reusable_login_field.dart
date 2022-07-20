import 'package:flutter/material.dart';

class ReusableLoginField extends StatelessWidget {
  const ReusableLoginField({
    Key? key,
    required this.label,
    required this.type,
    required this.hint,
    this.obscure,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  final String label;
  final String hint;
  final TextInputType type;
  final bool? obscure;
  final TextEditingController controller;
  final FormFieldValidator validator;

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
          validator: validator,
          controller: controller,
          obscureText: obscure == null ? false : true,
          keyboardType: type,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(0.5),
            hintText: hint,
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            contentPadding:
                const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
