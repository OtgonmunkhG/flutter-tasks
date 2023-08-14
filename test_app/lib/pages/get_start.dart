import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app/models/constants.dart';
import 'package:test_app/pages/welcome.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    Constants myConstants = Constants();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: myConstants.primaryColor.withOpacity(.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/get-started.png"),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Welcome()));
                },
                child: Container(
                  height: 50,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    color:  myConstants.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child:  Text("Get started", style: TextStyle(color:  Colors.white, fontSize: 18),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
