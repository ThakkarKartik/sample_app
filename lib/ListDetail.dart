import 'package:flutter/material.dart';

class ListDetail extends StatelessWidget {
  String _value = "";
  ListDetail(value) {
    _value = value;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List Detail")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                " You Select $_value",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.orange[400],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Go Back"))
            ],
          ),
        ),
      ),
    );
  }
}
