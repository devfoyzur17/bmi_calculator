// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentFirstSliderValue = 50;
  double _currentSecondSliderValue = 1.5;
  double _bmiResult = 22.22;
  String _bmiCategory = "Normal range";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Select your height & Weight!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 450,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                              width: 100,
                              height: 40,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.green, width: 1.5)),
                              child: FittedBox(
                                  child: Text(
                                "Height:  ${_currentFirstSliderValue.toStringAsFixed(1)}",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500),
                              ))),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Slider(
                                value: _currentFirstSliderValue,
                                max: 150,
                                min: 0,
                                thumbColor: Color(0xffb300b3),
                                divisions: 150,
                                label:
                                    _currentFirstSliderValue.toStringAsFixed(1),
                                onChanged: (double value) {
                                  setState(() {
                                    _currentFirstSliderValue = value;
                                    getBMIResult(_currentFirstSliderValue,
                                        _currentSecondSliderValue);
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/man.jpg",
                        height: 350,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                              width: 100,
                              height: 40,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.green, width: 1.5)),
                              child: FittedBox(
                                  child: Text(
                                "Weight:  ${_currentSecondSliderValue.toStringAsFixed(2)}",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500),
                              ))),
                          Expanded(
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Slider(
                                thumbColor: Color(0xffb300b3),
                                value: _currentSecondSliderValue,
                                max: 2.2,
                                min: 1.2,
                                divisions: 1000,
                                label: _currentSecondSliderValue
                                    .toStringAsFixed(1),
                                onChanged: (double value) {
                                  setState(() {
                                    _currentSecondSliderValue = value;
                                    getBMIResult(_currentFirstSliderValue,
                                        _currentSecondSliderValue);
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Your BMI: ${_bmiResult.toStringAsFixed(1)}",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    letterSpacing: 1,
                    wordSpacing: 1),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _bmiCategory,
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    letterSpacing: 1,
                    wordSpacing: 1),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "View Details",
                        style: TextStyle(fontSize: 18),
                      )))
            ],
          ),
        ),
      ),
    );
  }

  void getBMIResult(double _height, double _weight) {
    setState(() {
      num powOfWeight = pow(_weight, 2);

      _bmiResult = _height / powOfWeight;
      getBMICategory(_bmiResult);
    });
  }

  void getBMICategory(double bmiResult){

  setState(() {
      if(bmiResult < 16.0){
      _bmiCategory = "Underweight (Severe thinness)";
    }
    else if(bmiResult >=16.0 && bmiResult <=16.9){
      _bmiCategory = "Underweight (Moderate thinness)";
    }
    else if(bmiResult >=17.0  && bmiResult <=18.4){
      _bmiCategory = "Underweight (Mild thinness)";
    }
    else if(bmiResult >=18.5  && bmiResult <=24.9){
      _bmiCategory = "Normal range";
    }
    else if(bmiResult >=25.0  && bmiResult <=29.9){
      _bmiCategory = "Overweight (Pre-obese)";
    }
    else if(bmiResult >=30.0  && bmiResult <=34.9){
      _bmiCategory = "Obese (Class I)";
    }

    else if(bmiResult >=35.0  && bmiResult <=39.9){
      _bmiCategory = "Obese (Class II)";
    }
    else if(bmiResult >=40.0){
      _bmiCategory = "Obese (Class III)";
    }
  });


  }
}
