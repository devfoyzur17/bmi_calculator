// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/pages/home_page.dart';
import 'package:bmi_calculator/pages/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Color(0xffF5F3F4),
         
       
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
      initialRoute: HomePage.routeName ,
      routes: {

        HomePage.routeName:(context) => HomePage(),
        SecondPage.routeName: (context) => SecondPage(),

      },
    );
  }
}

 