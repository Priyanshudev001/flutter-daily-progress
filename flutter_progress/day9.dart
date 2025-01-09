import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text('Day 9: Image')),
    body: Center(
      child: Image.network('https://via.placeholder.com/150'),
    ),
  ),
));