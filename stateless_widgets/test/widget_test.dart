// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('title is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Daily Cino QAlendar"),
        ),
      ),
    ));
    
    expect(find.text("Daily Cino QAlendar"), findsOneWidget);
  });

  testWidgets("MyCard is not empty", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: MyCard(
        title: Text("Hasło na dziś:"),
        icon: Icon(Icons.today),

      ),
    ));

    expect(find.widgetWithText(MyCard, ("Hasło na dziś:")), findsOneWidget);
    expect(find.widgetWithIcon(MyCard, (Icons.today)), findsOneWidget);
  });

 testWidgets("there are three cards", (WidgetTester tester) async{
    await tester.pumpWidget(MaterialApp(
      home: MyCard(),
    ));
    expect(find.byWidget(MyCard()), findsNWidgets(3));
  });
}

