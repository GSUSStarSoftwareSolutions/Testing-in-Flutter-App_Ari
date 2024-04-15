// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, implementation_imports, unnecessary_import, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nkwel/grid.dart';
import 'package:flutter_test/src/widget_tester.dart';
import 'package:flutter_test/src/binding.dart';

void main() {
  testWidgets('Reverse string widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'Hello');
    expect(find.text('Hello'), findsOneWidget);
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("olleH"), findsOneWidget);
  });
}
