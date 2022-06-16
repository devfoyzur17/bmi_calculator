// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bmi_calculator/model/table_model.dart';
import 'package:bmi_calculator/widget/table_page.dart';
import 'package:flutter/material.dart'; 

class SecondPage extends StatefulWidget {
  static final routeName = "second-page";
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}


class _SecondPageState extends State<SecondPage> {
  double bmiResult = 0;
  @override
  void didChangeDependencies() {
     bmiResult = ModalRoute.of(context)!.settings.arguments as double;
    super.didChangeDependencies();
  }
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [PopupMenuButton(itemBuilder: (context) => [])],
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            Text("BMI, basic categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,letterSpacing: 1,wordSpacing: 1),),

            Card(
              elevation: 5,
              shadowColor: Colors.purple,
              child: Container(
                height: 450,
                child: ListView.builder(
                  itemCount: tableData.length,
                  itemBuilder: (context,index)=> TableSinglePage(category: tableData[index].category, bmi: tableData[index].bmi, bmiPrime: tableData[index].bmiPrime,result: tableData[index],)),
              ),
            ),

          
            
            

          ],
        ),
      ),
    );
  }
}