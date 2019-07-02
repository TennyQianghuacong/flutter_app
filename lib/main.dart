import 'package:flutter/material.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Widget'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Container(
              width: 80.0,
              color: Colors.red,
            ),
            new Container(
              width: 80.0,
              color: Colors.orange,
            ),
            new Container(
              width: 80.0,
              color: Colors.yellow,
            ),
            new Container(
              width: 80.0,
              color: Colors.green,
            ),
            new Container(
              width: 80.0,
              color: Colors.lightBlueAccent,
            ),
            new Container(
              width: 80.0,
              color: Colors.blue,
            ),
            new Container(
              width: 80.0,
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
