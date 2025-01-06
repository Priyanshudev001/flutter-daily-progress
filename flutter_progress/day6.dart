import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyList()));

class MyList extends StatelessWidget {
  final items = List<String>.generate(20, (i) => "Item ${i+1}");
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 6: ListView')),
    body: ListView.builder(
      itemCount: items.length,
      itemBuilder: (_, i) => ListTile(title: Text(items[i])),
    ),
  );
}