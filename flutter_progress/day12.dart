import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FadeDemo()));

class FadeDemo extends StatefulWidget {
  @override _FadeDemoState createState() => _FadeDemoState();
}

class _FadeDemoState extends State<FadeDemo> {
  bool _vis = true;
  @override Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 12: Animation')),
    body: Center(
      child: AnimatedOpacity(
        opacity: _vis ? 1.0 : 0.0,
        duration: Duration(seconds: 1),
        child: Text('Fade Me'),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => setState(() => _vis = !_vis),
      child: Icon(Icons.play_arrow),
    ),
  );
}