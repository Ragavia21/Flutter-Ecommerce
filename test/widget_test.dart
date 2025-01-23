import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ecommerce/pages/logo_page.dart';

void main() {
  testWidgets('Logo Page displays "Continue" button', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LogoPage()));

    // Verify that the Logo Page title is displayed
    expect(find.text('Logo Page'), findsOneWidget);

    // Verify that the "Continue" button is displayed
    expect(find.text('Continue'), findsOneWidget);

    // Tap the "Continue" button and trigger a frame.
    await tester.tap(find.text('Continue'));
    await tester.pump();

    // Verify that the LoginPage is displayed after tapping the "Continue" button
    expect(find.text('Login'), findsOneWidget);
  });
}
