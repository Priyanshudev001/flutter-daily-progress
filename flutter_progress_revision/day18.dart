import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text('Day 18: Responsive')),
  body: LayoutBuilder(builder: (_, cons) {
    return Center(child: Text('Width: ${cons.maxWidth.toStringAsFixed(0)}'));
  }),
)));