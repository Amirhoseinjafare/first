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
      const Text("خرج های ما",style: TextStyle(fontSize: 20),),
      //data
      PieChart(
      swapAnimationDuration: const Duration(milliseconds: 750),
      swapAnimationCurve: Curves.easeInOutQuint,
      PieChartData(
        //item
        sections:[ PieChartSectionData(
          value: 30,
          color: Colors.blue
        ),],
      ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 700,left: 270),
        child: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),),
      )
    ],);
  }
}