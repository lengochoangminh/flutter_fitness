import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application/main.dart' as app;
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('verify the BMI calculatation', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      final Finder bmi_icon = find.byIcon(Icons.monitor_weight);
      await tester.tap(bmi_icon);
      await tester.pumpAndSettle();

      // Verify if appropriate message appears.
      expect(find.text('Calculate BMI'), findsOneWidget);

      // Enter your height & weight
      await tester.enterText(find.byKey(Key("txt_height")), '1.7');
      await tester.enterText(find.byKey(Key("txt_weight")), '70');
      await tester.tap(find.text("Calculate BMI"));
      await tester.pumpAndSettle();

      expect(find.text('Your BMI'), findsOneWidget);
      await Future.delayed(Duration(seconds: 5));
    });
  });
}
