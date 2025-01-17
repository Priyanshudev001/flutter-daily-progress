import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primarySwatch: Colors.green),
  home: Scaffold(
    appBar: AppBar(title: Text('Day 17: Theme')),
    body: Center(child: Text('Themed Text')),
  ),
));