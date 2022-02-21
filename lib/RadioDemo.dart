import 'package:flutter/material.dart';

void main() => runApp(const RadioDemo());

class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  String? _gender = 'male';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Radio Button Demo'),
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Radio(
                    groupValue: _gender,
                    value: 'male',
                    toggleable: true,
                    activeColor: Colors.green[500],
                    onChanged: (String? value) {
                      _gender = value;
                      setState(() {});
                    },
                  ),
                  const Text('Male'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    groupValue: _gender,
                    value: 'female',
                    toggleable: true,
                    activeColor: Colors.green[500],
                    onChanged: (String? value) {
                      _gender = value;
                      setState(() {});
                    },
                  ),
                  const Text('Female'),
                ],
              ),
              Text('You Select : $_gender'),
            ],
          ),
        ),
      ),
    );
  }
}
