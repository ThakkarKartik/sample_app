import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Alert',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyView(),
    );
  }
}

class MyView extends StatelessWidget {
  const MyView({Key? key}) : super(key: key);

  // TextEditingController _txtValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Alert Dialog'),
          onPressed: () {
            _showDialog(context);
            // Fluttertoast.showToast(
            //   msg: "This is Toast Message",
            //   gravity: ToastGravity.BOTTOM,
            //   toastLength: Toast.LENGTH_LONG,
            //   timeInSecForIosWeb: 4,
            // );
          },
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Simple Alert"),
        content: const Text("This is Simple Alert"),
        actions: [
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
