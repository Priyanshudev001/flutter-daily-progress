import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Day 28: finds a Text widget', (WidgetTester t) async {
    await t.pumpWidget(MaterialApp(home: Text('Hello')));
    expect(find.text('Hello'), findsOneWidget);
  });
}