import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(create: (_) => Counter(), child: MyApp())
);

class Counter with ChangeNotifier {
  int _c = 0;
  int get count => _c;
  void inc() { _c++; notifyListeners(); }
}

class MyApp extends StatelessWidget {
  @override Widget build(BuildContext c) => MaterialApp(home: CounterPage());
}

class CounterPage extends StatelessWidget {
  @override Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text('Day 13: Provider')),
    body: Center(child: Text('${context.watch<Counter>().count}', style: TextStyle(fontSize: 48))),
    floatingActionButton: FloatingActionButton(onPressed: () => context.read<Counter>().inc()),
  );
}