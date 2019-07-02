import 'package:flutter/material.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        appBar: AppBar(title: Text('Text Widget'),),
        body: Center(
          child: Container(
            child: Text('Hello world', style: TextStyle(fontSize: 40.0, color: Colors.white70), ),
            alignment: Alignment.bottomRight,
            width: 500,
            height: 400,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pink,Colors.red,Colors.orange]),
              border: Border.all(width: 3.0, color: Colors.redAccent),
              borderRadius: BorderRadius.all(Radius.circular(3.0)),
              boxShadow: [BoxShadow(
                color: Color(0x66FF1744),
                spreadRadius: 2.0,
                blurRadius: 3.0,
                offset: Offset(1.0, 1.0)
              )]
            ),
          ),
        ),
      ),
    );
  }

}