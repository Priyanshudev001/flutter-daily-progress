import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: GestureDemo()));

class GestureDemo extends StatefulWidget {
  @override _GestureDemoState createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  String _msg = 'Tap me';
  @override Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 11: Gesture')),
    body: Center(
      child: GestureDetector(
        onTap: () => setState(() => _msg = 'Tapped!'),
        child: Container(padding: EdgeInsets.all(24), color: Colors.green, child: Text(_msg)),
      ),
    ),
  );
}