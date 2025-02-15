import 'package:flutter/material.dart';
import 'dart:async';

Stream<int> counter() async* {
  for (int i=1; i<=5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() => runApp(MaterialApp(home: SBPage()));

class SBPage extends StatelessWidget {
  @override Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 15: StreamBuilder')),
    body: StreamBuilder<int>(
      stream: counter(),
      builder: (_, snap) {
        if (!snap.hasData) return Center(child: CircularProgressIndicator());
        return Center(child: Text('Count: ${snap.data}'));
      },
    ),
  );
}