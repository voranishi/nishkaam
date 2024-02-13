import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:your_app/main.dart';

void main() {
  testWidgets('Splash screen renders', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that logo is displayed.
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('Splash screen transitions to login page',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Wait for 2 seconds for splash screen animation to complete.
    await Future.delayed(Duration(seconds: 2));

    // Verify that login page is displayed after splash screen.
    expect(find.text('Login'), findsOneWidget);
  });
}
