import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: Center(
      child: Text(
        'Styled Text',
        style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    ),
  ),
));