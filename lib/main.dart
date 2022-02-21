import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "sample App",
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyScreen> {
  TextEditingController txtNum1 = TextEditingController();
  TextEditingController txtNum2 = TextEditingController();
  int ans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(
              controller: txtNum1,
            ),
            TextField(
              controller: txtNum2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Name",
                  hintText: "Enter Name"),
            ),
            TextButton(
                onPressed: _changeState, child: const Text('Click me to Add')),
            Text("$ans")
          ],
        ),
      ),
    );
  }

  _changeState() {
    int v1 = int.parse(txtNum1.text);
    int v2 = int.parse(txtNum2.text);
    setState(() {
      ans = v1 + v2;
    });
  }
}
