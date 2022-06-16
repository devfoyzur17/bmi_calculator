import 'package:flutter/material.dart'; 

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
          )
          ],
        ),
      ),
    );
  }
}