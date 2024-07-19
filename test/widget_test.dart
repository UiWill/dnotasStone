// Importações para o primeiro teste
import 'package:flutter_test/flutter_test.dart';
import 'package:dnotas/main.dart' as app1; // Renomeando para evitar conflito de nomes

// Importações para o segundo teste
import 'package:flutter/material.dart';



void main() {
  // Teste 1: para o aplicativo 'dnotas'
  testWidgets('Teste básico para MyApp em dnotas', (WidgetTester tester) async {
    // Build do app e gatilho para um frame.
    await tester.pumpWidget(const app1.MyApp());

    // Aqui você pode adicionar verificações específicas para o seu aplicativo 'dnotas'.
    // Por exemplo:
    // expect(find.text('Título da página'), findsOneWidget);
    // expect(find.byKey(Key('chave_especifica')), findsOneWidget);
  });

  // Teste 2: para o aplicativo 'deeplinkflutter'
  testWidgets('Teste básico para MyApp em deeplinkflutter', (WidgetTester tester) async {
    // Build do app e gatilho para um frame.
 

    // Verifica que o contador começa em 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Simula o toque no ícone '+' e gatilho para um frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que o contador incrementou.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
