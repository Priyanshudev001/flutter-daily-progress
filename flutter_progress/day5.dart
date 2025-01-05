import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Counter()));

class Counter extends StatefulWidget {
  @override _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 5: Counter')),
    body: Center(child: Text('$_count', style: TextStyle(fontSize: 48))),
    floatingActionButton: FloatingActionButton(
      onPressed: () => setState(() => _count++),
      child: Icon(Icons.add),
    ),
  );
}