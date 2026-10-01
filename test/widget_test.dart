import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:delivery/main.dart';

void main() {
  testWidgets('Lista de entregas exibe registros iniciais', (WidgetTester tester) async {
    await tester.pumpWidget(DeliveryApp());

    expect(find.text('Entregas'), findsOneWidget);
    expect(find.byIcon(Icons.delivery_dining), findsWidgets);
    expect(find.text('1001'), findsOneWidget);
    expect(find.text('1002'), findsOneWidget);
    expect(find.textContaining('R\$'), findsNWidgets(2));
  });
}
