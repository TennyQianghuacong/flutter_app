import 'package:flutter/material.dart';

import 'layout_sample.dart';
import 'navigation_sample.dart';

void main() => runApp(NavigationApp());

class MyAPP extends StatelessWidget {
  final List<String> items;

  MyAPP({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Widget'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
          child: MyStackTest2(),
        ),
      ),
    );
  }
}

class MyTextList extends StatelessWidget {
  final List<String> items;

  const MyTextList({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: Text('${items[index]}'),
          );
        });
  }
}

class MyGridView extends StatelessWidget {
  final List<String> items;

  const MyGridView({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          childAspectRatio: 1
        ),
        itemBuilder: (context, index) {
          return new ListTile(
            title: Text(
              '${items[index]}',
              style: TextStyle(backgroundColor: Colors.blueGrey),
            ),

          );
        });
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.red,
        ),
        new Container(
          width: 180.0,
          color: Colors.orange,
        ),
        new Container(
          width: 180.0,
          color: Colors.yellow,
        ),
        new Container(
          width: 180.0,
          color: Colors.lightGreen,
        ),
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.blue,
        ),
        new Container(
          width: 180.0,
          color: Colors.purple,
        )
      ],
    );
  }
}
