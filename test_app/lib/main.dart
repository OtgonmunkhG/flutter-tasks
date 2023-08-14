import 'package:flutter/material.dart';
import 'package:test_app/pages/get_start.dart';
import 'package:test_app/provider/weather_service.dart';

void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather app",
      debugShowCheckedModeBanner: false,
      home: GetStart(),

    );
  }
}

