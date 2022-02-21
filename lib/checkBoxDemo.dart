import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckBox Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('CheckBox Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Select Hobbies:"),
              Checkbox(
                  value: checked,
                  onChanged: (bool? value) {
                    checked = value;
                    setState(() {});
                  }),
              Text("Checked : $checked"),
            ],
          ),
        ),
      ),
    );
  }
}
