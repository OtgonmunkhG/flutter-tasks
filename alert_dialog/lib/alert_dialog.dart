import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {

  void _showAlertDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Alert Dialog Example"),
        content: Text("This is a sample AlertDialog in Flutter"),
        actions: <Widget> [
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: Text("Ok"))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog example"),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                _showAlertDialog(context);
              },
            child: Text("Show AlertDialog"),
          ),
        ),
      ),
    );
  }
}