import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyForm()));

class MyForm extends StatefulWidget {
  @override _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _ctrl = TextEditingController();
  @override Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 8: Form')),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        TextField(controller: _ctrl, decoration: InputDecoration(labelText: 'Enter text')),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () => print(_ctrl.text), child: Text('Submit')),
      ]),
    ),
  );
}