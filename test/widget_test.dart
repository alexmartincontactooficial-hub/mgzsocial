import 'package:flutter_test/flutter_test.dart';
import 'package:mgzsocial/app/app.dart';

void main() {
  testWidgets('NO.SO shell renders product vision and modules', (tester) async {
    await tester.pumpWidget(const NoSoApp());

    expect(find.text('NO.SO'), findsOneWidget);
    expect(find.text('Un sistema social modular, visual y emocional.'), findsOneWidget);
    expect(find.textContaining('Feed · Fase 1'), findsOneWidget);
    expect(find.textContaining('TuVibe · Fase 2'), findsOneWidget);
    expect(find.text('Roadmap funcional'), findsOneWidget);
  });
}
