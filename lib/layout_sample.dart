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

class MyColumnTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          "I am Qianghuacong",
          style: TextStyle(fontSize: 19.0),
        ),
        Text(
          "in finest",
          style: TextStyle(fontSize: 19.0),
        ),
        Text(
          "like coding",
          style: TextStyle(fontSize: 19.0),
        ),
      ],
    );
  }
}

class MyStackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: FractionalOffset(0.5, 0.5),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2409023147,856293757&fm=27&gp=0.jpg'),
          radius: 50.0,
        ),
        Container(
          child: Text(
            "Flutter",
            style: TextStyle(color: Colors.white70),
          ),
          padding: EdgeInsets.all(5.0),
        )
      ],
    );
  }
}

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var stack = MyStackTest();

    return MaterialApp(
      title: 'Stack App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack App'),
          backgroundColor: Colors.teal,
        ),
        body: Center(child: stack,),
      ),
    );
  }
}
