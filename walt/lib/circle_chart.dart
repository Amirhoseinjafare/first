import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Mychart extends StatelessWidget {
  const Mychart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
      //title
      Text("خرج های شما",style: TextStyle(fontSize: 20),),
      //data
      PieChart(
      swapAnimationDuration: const Duration(milliseconds: 750),
      swapAnimationCurve: Curves.easeInOutQuint,
      PieChartData(
        //item
        sections:[ PieChartSectionData(
          value: 30,
          color: Colors.blue
        ),PieChartSectionData(
          value: 20,
          color: Colors.red
        ),
        PieChartSectionData(
          value: 20,
          color: Colors.green
        ),
        PieChartSectionData(
          value: 20,
          color: Colors.amber
        ),
        PieChartSectionData(
          value: 20,
          color: Colors.black
        )],
      ),
      )
    ],);
  }
}