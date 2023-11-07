import 'package:flutter/material.dart';


class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          width: 150,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constrainst){
              if(constrainst.maxWidth > 200 ) {
                return Text("Wide Layout");
              } else {
                return Text("Narrow Layout");
              }
            },
          ),
        ),
      ),
    );
  }
}
