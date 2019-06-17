import 'dart:math';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.amberAccent,
      child: Center(
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.green, fontSize: 45.0),),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(10);
    return "Lucky number is $luckyNumber";
  }

}
