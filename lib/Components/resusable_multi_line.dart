import 'package:flutter/material.dart';

class ReusableMultiLineField extends StatelessWidget {
  const ReusableMultiLineField({
    Key? key,
    required this.label,
    required this.hint,
    this.obscure,
    required this.controller,
  }) : super(key: key);
  final String label;
  final String hint;
  final bool? obscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: TextInputType.multiline,
          maxLines: 8,
          controller: controller,
          obscureText: obscure == null ? false : true,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            hintText: hint,
          ),
        ),
      ],
    );
  }
}
