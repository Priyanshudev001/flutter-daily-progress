import 'package:flutter/material.dart';
import 'package:todo_doing_own/todo_add.dart';

void main() {
  runApp(TodoDoingOwn());
}

class TodoDoingOwn extends StatelessWidget {
  const TodoDoingOwn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Todoadd());
  }
}
