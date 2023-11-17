import 'package:flutter/material.dart';
import 'package:lesson_day_27/text_field_widget.dart';
import 'package:lesson_day_27/text_them_widget.dart';

class ThemeWidget extends StatelessWidget {
  ThemeWidget({super.key});
  ThemeData data = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      displaySmall: TextStyle(fontSize: 14.0),
    ),

  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: data,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Display large", style: data.textTheme.displayLarge,),

              Text("Display Medium", style: data.textTheme.displayMedium,),
              Text("Display Small", style: data.textTheme.displaySmall,),
              TextThemeWidget(),
              TextFieldWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
