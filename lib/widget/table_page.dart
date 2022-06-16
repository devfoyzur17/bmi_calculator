// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bmi_calculator/pages/home_page.dart';
import 'package:flutter/material.dart';

class TableSinglePage extends StatefulWidget {
  final String category;
  final String bmi;
  final String bmiPrime;
  final dynamic result;

  const TableSinglePage(
      {Key? key,
      required this.result,
      required this.category,
      required this.bmi,
      required this.bmiPrime})
      : super(key: key);

  @override
  State<TableSinglePage> createState() => _TableSinglePageState();
}

class _TableSinglePageState extends State<TableSinglePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.result.id == tableIndex
          ? Colors.deepOrange.withOpacity(0.3)
          : Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: widget.result.id == 0
                  ? Alignment.center
                  : Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 3),
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
              child: Text(widget.category,
                  style: TextStyle(
                      fontWeight: widget.result.id == 0
                          ? FontWeight.bold
                          : FontWeight.normal)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: widget.result.id == 0
                  ? Alignment.center
                  : Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 3),
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
              width: 100,
              child: Text(widget.bmi,
                  style: TextStyle(
                      fontWeight: widget.result.id == 0
                          ? FontWeight.bold
                          : FontWeight.normal)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: widget.result.id == 0
                  ? Alignment.center
                  : Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 3),
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
              width: 100,
              child: Text(
                widget.bmiPrime,
                style: TextStyle(
                    fontWeight: widget.result.id == 0
                        ? FontWeight.bold
                        : FontWeight.normal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
