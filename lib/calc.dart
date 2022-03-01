import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CalcDemo());
}

class CalcDemo extends StatefulWidget {
  const CalcDemo({Key? key}) : super(key: key);

  @override
  _CalcDemoState createState() => _CalcDemoState();
}

class _CalcDemoState extends State<CalcDemo> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  int _ans = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculation Demo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _num1,
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _num2,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: Text('+'),
                  onPressed: () {
                    setState(() {
                      _ans = int.parse(_num1.value.text) +
                          int.parse(_num2.value.text);
                    });
                  },
                ),
                TextButton(
                  child: Text('-'),
                  onPressed: () {
                    setState(() {
                      _ans = int.parse(_num1.value.text) -
                          int.parse(_num2.value.text);
                    });
                  },
                ),
                TextButton(
                  child: Text('*'),
                  onPressed: () {
                    setState(() {
                      _ans = int.parse(_num1.value.text) *
                          int.parse(_num2.value.text);
                    });
                  },
                ),
                TextButton(
                  child: Text('/'),
                  onPressed: () {
                    setState(() {
                      _ans = int.parse(_num1.value.text) ~/
                          int.parse(_num2.value.text);
                    });
                  },
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("$_ans"),
            )
          ],
        ),
      ),
    );
  }
}
