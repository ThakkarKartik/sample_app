import 'package:flutter/material.dart';

void main() => runApp(Hobbies());

class Hobbies extends StatefulWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  _HobbiesState createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  bool? _football = false;
  bool? _cricket = false;
  bool? _singing = false;
  bool? _reading = false;
  List<String> _selectedValue = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Select Hobbies"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                  value: _football,
                  onChanged: (bool? value) {
                    _football = value;
                    setState(() {
                      if (value == true) {
                        _selectedValue.add('Football');
                      } else {
                        _selectedValue.remove('Football');
                      }
                    });
                  }),
              const Text("Football"),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: _cricket,
                  onChanged: (bool? value) {
                    _cricket = value;
                    setState(() {
                      if (value == true) {
                        _selectedValue.add('Cricket');
                      } else {
                        _selectedValue.remove('Cricket');
                      }
                    });
                  }),
              const Text("Cricket"),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: _singing,
                  onChanged: (bool? value) {
                    _singing = value;
                    setState(() {
                      if (value == true) {
                        _selectedValue.add('Singing');
                      } else {
                        _selectedValue.remove('Singing');
                      }
                    });
                  }),
              const Text("Singing"),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: _reading,
                  onChanged: (bool? value) {
                    _reading = value;
                    setState(() {
                      if (value == true) {
                        _selectedValue.add('Reading');
                      } else {
                        _selectedValue.remove('Reading');
                      }
                    });
                  }),
              const Text("Reading"),
            ],
          ),
          Center(
            child: Text("You Select: $_selectedValue"),
          ),
        ],
      ),
    ));
  }
}
