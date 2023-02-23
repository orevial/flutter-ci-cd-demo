// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_ci_cd_demo/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const FlutterDemo(env: 'Test'));

    expect(find.text('Flutter CI/CD demo'), findsOneWidget);
    expect(find.text('Your are currently on Test environment'), findsOneWidget);
  });
}
