import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MySlider());
}

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int _value = 24;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Slider Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                "Select Age",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Slider(
                  min: 18,
                  max: 100,
                  activeColor: Colors.green,
                  inactiveColor: Colors.orange,
                  value: _value.toDouble(),
                  // divisions: 2,
                  onChanged: (value) {
                    setState(() {
                      _value = value.toInt();
                    });
                  },
                ),
              ),
              Text(
                'You Selected : $_value',
                style: const TextStyle(fontSize: 40),
              )
            ],
          ),
        ),
      ),
    );
  }
}
