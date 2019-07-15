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
        RaisedButton(
          onPressed: () {},
          color: Colors.yellow,
          padding: EdgeInsets.all(5.0),
          child: Text(
            "Yellow",
            style: TextStyle(color: Colors.white70),
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

class MyRowTest2 extends StatelessWidget {
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

class MyColumnTest1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            "I am Qianghuacong",
            style: TextStyle(fontSize: 19.0),
          ),
        ),
        Expanded(
          child: Text(
            "in finest",
            style: TextStyle(fontSize: 19.0),
          ),
        ),
        Center(
          child: Text(
            "like coding",
            style: TextStyle(fontSize: 19.0),
          ),
        ),
      ],
    );
  }
}

class MyColumnTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            '华南理工大学',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text('地址：广州市天河区五山路381号'),
          leading: Icon(
            Icons.school,
            color: Colors.redAccent,
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            '华南师范大学',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text('地址：广州市天河区中山大道西55号'),
          leading: Icon(
            Icons.school,
            color: Colors.redAccent,
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            '华南农业大学',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text('地址：广东省广州市天河区五山483号'),
          leading: Icon(
            Icons.school,
            color: Colors.redAccent,
          ),
        ),
        Divider(),
      ],
    );
  }
}

class MyStackTest1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const FractionalOffset(0.5, 0.5),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2409023147,856293757&fm=27&gp=0.jpg'),
          radius: 50.0,
        ),
        Container(
          decoration: BoxDecoration(),
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

class MyStackTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2409023147,856293757&fm=27&gp=0.jpg'),
          radius: 50.0,
        ),
        Positioned(
          top: 15.0,
          left: 15.0,
          child: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.red, Colors.orangeAccent, Colors.yellow])),
            child: Text(
              "Flutter",
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 15,
          child: Text(
            "Flutter",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}

class MyCardTest1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 3.0,
      color: Colors.white70,
      child: MyColumnTest2(),
    );
  }
}

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = MyCardTest1();

    return MaterialApp(
      title: 'Stack App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack App'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
