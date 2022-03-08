import 'dart:math';

import 'package:bmi/bmiresultscreen.dart';
import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  bool isMale = true;
  double height = 120;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 171, 202, 223),
            Color.fromARGB(255, 209, 169, 202),
          ])),
        ),
        title: Text("BMI CALC"),
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        isMale = true;
                      });
                    }),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 120,
                            child: Image(
                              image: AssetImage('assets/images/Male-icon.png'),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "MALE",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isMale
                            ? Color.fromARGB(255, 171, 202, 223)
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        isMale = false;
                      });
                    }),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 120,
                            child: Image(
                              image:
                                  AssetImage('assets/images/Female-icon.png'),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: !isMale
                            ? Color.fromARGB(255, 209, 169, 202)
                            : Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: const [
                Color.fromARGB(255, 171, 202, 223),
                Color.fromARGB(255, 209, 169, 202),
              ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "${height.round()}",
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "CM",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Slider(
                    value: height,
                    max: 250,
                    min: 75,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                      print(value.round());
                    }),
              ],
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: const [
                      Color.fromARGB(255, 171, 202, 223),
                      Color.fromARGB(255, 209, 169, 202),
                    ]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${age}",
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: 'age++',
                            mini: true,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(
                            heroTag: 'age--',
                            mini: true,
                            onPressed: () {
                              setState(
                                () {
                                  age--;
                                },
                              );
                            },
                            child: Icon(Icons.remove),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: const [
                      Color.fromARGB(255, 171, 202, 223),
                      Color.fromARGB(255, 209, 169, 202),
                    ]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${weight}",
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: 'weight++',
                            mini: true,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(
                            heroTag: 'weight--',
                            mini: true,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: Icon(Icons.remove),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: const [
                Color.fromARGB(255, 171, 202, 223),
                Color.fromARGB(255, 209, 169, 202),
              ]),
            ),
            child: MaterialButton(
              child: Text(
                "CALCULATER",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                var result = (weight / pow(height / 100, 2)).round();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResultScreen(
                        isMale: isMale, age: age, result: result),
                  ),
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}
