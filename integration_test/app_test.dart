// integration_test/app_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutterwidgettesting/main.dart';
// import ''; // Update with your actual project name

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('submit text and verify output', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Enter text into the input field
    await tester.enterText(find.byKey(Key('inputField')), 'Hello Flutter');

    // Tap the submit button
    await tester.tap(find.byKey(Key('submitButton')));
    await tester.pump(); // Triggers UI update

    // Check outputText widget contains the expected string
    final outputText = tester.widget<Text>(find.byKey(Key('outputText')));
    expect(outputText.data, equals('Hello Flutter'));
  });

}
