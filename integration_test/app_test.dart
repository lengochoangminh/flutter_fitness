import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_application/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();

      final Finder bmi_icon = find.byIcon(Icons.monitor_weight);

      await tester.tap(bmi_icon);

      await tester.pumpAndSettle();

      expect(find.text('Calculate BMI'), findsOneWidget);
    });
  });
}
