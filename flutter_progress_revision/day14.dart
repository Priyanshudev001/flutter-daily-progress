import 'package:flutter/material.dart';

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data loaded';
}

void main() => runApp(MaterialApp(home: FBPage()));

class FBPage extends StatelessWidget {
  @override Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 14: FutureBuilder')),
    body: FutureBuilder<String>(
      future: fetchData(),
      builder: (_, snap) {
        if (!snap.hasData) return Center(child: CircularProgressIndicator());
        return Center(child: Text(snap.data!));
      },
    ),
  );
}