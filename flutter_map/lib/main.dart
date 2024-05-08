import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: FlutterMapPage(),
    );
  }
}


class FlutterMapPage extends StatelessWidget {
  const FlutterMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter map clustering"),),
      body: SizedBox.shrink(),
    );
  }
}


class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.deepPurple
                  ),
                  width: 100,
                  child: TextField(

                    decoration: InputDecoration(

                    ),

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

