import 'package:flutter/material.dart';

class ColoredBox extends StatelessWidget {
  final Color color;
  ColoredBox(this.color);
  @override Widget build(BuildContext c) => Container(width: 50, height: 50, color: color);
}

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text('Day 16: Custom Widget')),
    body: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [ColoredBox(Colors.red), ColoredBox(Colors.blue)])),
  ),
));