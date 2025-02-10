import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text('Day 10: Stack')),
    body: Center(
      child: Stack(
        children: [
          Container(width: 200, height: 200, color: Colors.blue),
          Positioned(top: 50, left: 50, child: Container(width: 100, height: 100, color: Colors.red)),
        ],
      ),
    ),
  ),
));