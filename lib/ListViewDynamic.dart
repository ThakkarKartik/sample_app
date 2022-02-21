import 'package:flutter/material.dart';

void main() => runApp(ListViewBuilder());

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<String> subjects = [
    "Android",
    "Flutter",
    "Kotlin",
    "Java",
    "Swift",
    "Objective-C",
    "Python",
    "PHP",
    "JavaScript",
    "ReactNative"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dynamic List View'),
          ),
          body: ListView.builder(
            padding: EdgeInsets.all(20),
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  title: Text(subjects[index]),
                  leading: Icon(Icons.list),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.blue[400],
                  ),
                ),
              );
            },
            itemCount: subjects.length,
          )),
    );
  }
}
