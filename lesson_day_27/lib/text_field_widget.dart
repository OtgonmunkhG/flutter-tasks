import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "Username",
        hintText: "Enter your user name",

      ),
      keyboardType: TextInputType.text,
      onChanged: (value) {
        print("Username $value");
      },
    );
  }
}
