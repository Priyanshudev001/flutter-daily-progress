import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(
    title: Text('Day 22: Actions'),
    actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
  ),
)));