import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BottomNav()));

class BottomNav extends StatefulWidget {
  @override _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _i = 0;
  final _pages = [Center(child: Text('Home')), Center(child: Text('Settings'))];
  @override Widget build(BuildContext c) => Scaffold(
    body: _pages[_i],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _i,
      items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')],
      onTap: (i) => setState(() => _i = i),
    ),
  );
}