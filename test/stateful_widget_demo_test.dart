import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hello_world/demo/stateful_widget_demo.dart';

void main() {
  group('Widgets Test', () {
    testWidgets("StatefulWidgetDemo Widgets Test", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: StatefulWidgetDemo()));

      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.byType(TextButton));
      await tester.pump();

      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
    });
  });
}
