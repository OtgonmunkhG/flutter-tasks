import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  const TextFieldInput({super.key, required this.hintText, required this.isPassword, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        filled: true,
        contentPadding: EdgeInsets.all(8),

      ),
      obscureText: isPassword,
      keyboardType: TextInputType.text,
    );
  }
}
