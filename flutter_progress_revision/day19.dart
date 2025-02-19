import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text('Day 19: GridView')),
  body: GridView.count(crossAxisCount: 3, children: List.generate(9, (i) => Card(child: Center(child: Text('${i+1}'))))),
)));