import 'dart:math';

import 'package:flutter/material.dart';

import 'result.dart';

class BMIScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BMIScreen> {
  bool isMale = true;
  double height = 120.0;

  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          elevation: 20.0,
          title: Center(child: Text('BMI CALCULATOR')),
          backgroundColor: Colors.black,
        ),
        body: Column(children: [
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: isMale ? Colors.red : Colors.grey[800],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                height: 70.0,
                                width: 70.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: isMale ? Colors.grey[800] : Colors.red,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 70.0,
                                width: 70.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'FAMALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]))),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.grey[800],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.baseline, textBaseline: TextBaseline.alphabetic, children: [
                      Text(
                        '${height.round()}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'CM',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ]),
                    Slider(
                        value: height,
                        activeColor: Colors.grey[500],
                        max: 250,
                        min: 80,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        }),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[800],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.grey[700],
                                mini: true,
                                heroTag: 'weight-',
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.grey[700],
                                heroTag: 'weight+',
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[800],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.grey[700],
                                heroTag: 'age-',
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.grey[700],
                                mini: true,
                                heroTag: 'age+',
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            height: 40.0,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              isMale: isMale,
                              age: age,
                              result: result.round(),
                            )));
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      );
}
