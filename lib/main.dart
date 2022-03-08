import 'package:bmi/bmicalc.dart';

import 'package:flutter/material.dart';

import 'bmiresultscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalc(),
    );
  }
}
