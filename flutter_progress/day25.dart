import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override void paint(Canvas c, Size s) {
    c.drawCircle(Offset(s.width/2, s.height/2), 50, Paint()..color=Colors.purple);
  }
  @override bool shouldRepaint(_) => false;
}

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text('Day 25: Paint')),
  body: CustomPaint(size: Size(200,200), painter: MyPainter()),
)));