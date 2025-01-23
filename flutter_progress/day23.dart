import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text('Day 23: SnackBar')),
  body: Builder(builder: (c) => Center(child: ElevatedButton(
    onPressed: () => ScaffoldMessenger.of(c).showSnackBar(SnackBar(content: Text('Hello'))),
    child: Text('Show'),
  ))),
)));