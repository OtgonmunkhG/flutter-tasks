import 'package:flutter/material.dart';

class InkwellButton extends StatelessWidget {
  const InkwellButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inkwell example"),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("You tapped on top"))
                );
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text("Tap me!", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
