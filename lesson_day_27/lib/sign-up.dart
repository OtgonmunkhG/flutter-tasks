import 'package:flutter/material.dart';
import 'package:lesson_day_27/text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _userController.dispose();
    _rePasswordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(flex: 2, child: Container()),
              Text(
                "iCodegram",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  hintText: "Утасны дугаар",
                  isPassword: false,
                  controller: _phoneNumberController),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  hintText: "Хэрэглэгчийн нэр",
                  isPassword: false,
                  controller: _userController),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  hintText: "Нууц үг",
                  isPassword: true,
                  controller: _passwordController),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  hintText: "Нууц үгээ давтана уу",
                  isPassword: false,
                  controller: _rePasswordController),

              SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
