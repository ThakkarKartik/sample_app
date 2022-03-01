import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main(List<String> args) {
  runApp(ChartDemo());
}

class ChartDemo extends StatelessWidget {
  ChartDemo({Key? key}) : super(key: key);

  final List<FlSpot> List1 = List.generate(10, (index) {
    return FlSpot(index.toDouble(), index.toDouble() * Random().nextDouble());
  });

  final List<FlSpot> List2 = List.generate(10, (index) {
    return FlSpot(index.toDouble(), index.toDouble() * Random().nextDouble());
  });

  final List<FlSpot> List3 = List.generate(10, (index) {
    return FlSpot(index.toDouble(), index.toDouble() * Random().nextDouble());
  });

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
          child: LineChart(LineChartData(lineBarsData: [
            LineChartBarData(
                spots: List1, isCurved: true, colors: [Colors.green]),
            LineChartBarData(
                spots: List2, isCurved: true, colors: [Colors.blue]),
            LineChartBarData(
                spots: List3, isCurved: true, colors: [Colors.purple]),
          ])),
        ),
      ),
    );
  }
}
