import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Day 1: Scaffold')),
      body: Center(child: Text('Hello, Flutter!')),
    ),
  );
}