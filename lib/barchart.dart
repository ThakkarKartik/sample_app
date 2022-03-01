import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main(List<String> args) {
  runApp(ChartDemo());
}

class ChartDemo extends StatelessWidget {
  const ChartDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Line Chart Demo'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: BarChart(
            BarChartData(barGroups: [
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(y: 3, width: 20, colors: [Colors.green])
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(y: 2, width: 20, colors: [Colors.purple])
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(y: 1, width: 20, colors: [Colors.blue])
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(y: 5, width: 20, colors: [Colors.blueGrey])
              ]),
              BarChartGroupData(x: 5, barRods: [
                BarChartRodData(y: 4, width: 20, colors: [Colors.lightGreen]),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
