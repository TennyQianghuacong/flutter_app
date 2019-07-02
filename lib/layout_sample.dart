import 'package:flutter/material.dart';

class MyRowTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          color: Colors.redAccent,
          padding: EdgeInsets.all(5.0),
          child: Text(
            "Red",
            style: TextStyle(color: Colors.white70),
          ),
        ),
        Expanded(
          child: RaisedButton(
            onPressed: () {},
            color: Colors.yellow,
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Yellow",
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          color: Colors.orange,
          padding: EdgeInsets.all(5.0),
          child: Text(
            "Orange",
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}
