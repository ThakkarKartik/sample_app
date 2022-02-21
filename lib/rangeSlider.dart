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
  RangeValues _value = const RangeValues(500, 1000);
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Select Price Range",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: RangeSlider(
                  min: 50,
                  max: 5000,
                  activeColor: Colors.green,
                  inactiveColor: Colors.orange,
                  values: _value,
                  // divisions: 2,
                  onChanged: (RangeValues value) {
                    setState(() {
                      int start = value.start.toInt();
                      int end = value.end.toInt();
                      _value = RangeValues(start.toDouble(), end.toDouble());
                      //_value = value;
                    });
                  },
                ),
              ),
              Text(
                'You Selected : $_value',
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
