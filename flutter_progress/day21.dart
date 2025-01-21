import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(title: Text('Day 21: Drawer')),
  drawer: Drawer(child: ListView(children: [DrawerHeader(child: Text('Header')), ListTile(title: Text('Item1'))])),
)));