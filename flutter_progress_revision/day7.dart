import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: FirstPage(),
  routes: {'/second': (_) => SecondPage()},
));

class FirstPage extends StatelessWidget {
  @override Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 7: First')),
    body: Center(
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(c, '/second'),
        child: Text('Go to Second'),
      ),
    ),
  );
}

class SecondPage extends StatelessWidget {
  @override Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Second Page')),
    body: Center(child: Text('Welcome to Day 7')),
  );
}