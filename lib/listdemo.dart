import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyList());
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: Center(
          child: ListView(
            children: [
              ListTile(
                title: Text('List Item 1'),
                subtitle: Text('This is my Subtitle'),
                leading: Icon(Icons.mail),
                trailing: TextButton(
                  child: Text('View'),
                  onPressed: () {},
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text('List Item 2'),
                subtitle: Text('This is my Subtitle'),
                leading: Icon(Icons.download),
                trailing: TextButton(
                  child: Text('View'),
                  onPressed: () {},
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text('List Item 3'),
                subtitle: Text('This is my Subtitle'),
                leading: Icon(Icons.list),
                trailing: TextButton(
                  child: Text('View'),
                  onPressed: () {},
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text('List Item 4'),
                subtitle: Text('This is my Subtitle'),
                leading: Icon(Icons.add),
                trailing: TextButton(
                  child: Text('View'),
                  onPressed: () {},
                ),
                onTap: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
