import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text('Day 24: Dialog')),
  body: Builder(builder: (c) => Center(child: ElevatedButton(
    onPressed: () => showDialog(context: c, builder: (_) => AlertDialog(title: Text('Hi'), content: Text('Day 24'))),
    child: Text('Dialog'),
  ))),
)));