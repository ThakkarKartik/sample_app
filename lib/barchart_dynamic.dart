import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main(List<String> args) {
  runApp(ChartDemo());
}

class DataItem {
  int x;
  double y1;
  double y2;
  double y3;
  DataItem(
      {required this.x, required this.y1, required this.y2, required this.y3});
}

class ChartDemo extends StatelessWidget {
  ChartDemo({Key? key}) : super(key: key);

  final List<DataItem> _data = List.generate(
      5,
      (index) => DataItem(
          x: index,
          y1: Random().nextDouble(),
          y2: Random().nextDouble(),
          y3: Random().nextDouble()));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bar Chart Demo'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: BarChart(
            BarChartData(
              groupsSpace: 10,
              barGroups: _data
                  .map((e) => BarChartGroupData(x: e.x, barRods: [
                        BarChartRodData(y: e.y1, colors: [Colors.blue]),
                        BarChartRodData(y: e.y2, colors: [Colors.green]),
                        BarChartRodData(y: e.y3, colors: [Colors.purple]),
                      ]))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
