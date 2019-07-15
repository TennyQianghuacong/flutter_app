import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return null;
  }

}

class NavigationApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var stack;
    return MaterialApp(
      title: 'Navigation App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation App'),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }

}