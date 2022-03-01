import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main(List<String> args) {
  runApp(ChartDemo());
}

class ChartDemo extends StatelessWidget {
  ChartDemo({Key? key}) : super(key: key);

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
        child: LineChart(
          LineChartData(lineBarsData: [
            LineChartBarData(
                spots: [
                  FlSpot(1, 4),
                  FlSpot(1, 4),
                  FlSpot(1, 4),
                  FlSpot(1, 4),
                ],
                isCurved: true,
                colors: [Colors.green]),
          ]),
        ),
      ),
    ));
  }
}
