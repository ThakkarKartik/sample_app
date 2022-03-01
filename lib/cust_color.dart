import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CustomColor());
}

class CustomColor extends StatefulWidget {
  const CustomColor({Key? key}) : super(key: key);

  @override
  _CustomColorState createState() => _CustomColorState();
}

class _CustomColorState extends State<CustomColor> {
  Color mycolor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Color Demo'),
        ),
        backgroundColor: mycolor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mycolor = Colors.blue;
                    });
                  },
                  child: Text('BLUE')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mycolor = Colors.green;
                    });
                  },
                  child: Text('GREEN')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mycolor = Colors.purple;
                    });
                  },
                  child: Text('PURPLE')),
            ],
          ),
        ),
      ),
    );
  }
}
