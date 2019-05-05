import 'package:flutter_test/flutter_test.dart';
import 'package:lonewolf/src/widgets/para/para.dart';

void main() {
  group('Widgets > Para:', () {
    testWidgets('Renders OK', (WidgetTester tester) async {
      final String paraText = 'Test';
      await tester.pumpWidget(Para(paraText));

      expect(find.text(paraText), findsOneWidget);
    });
  });
}