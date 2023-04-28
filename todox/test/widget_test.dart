import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todox/main.dart';
import 'package:todox/models/gerenciador_tarefas.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Cria uma instância de GerenciadorTarefas para passar para MyApp
    final gerenciadorTarefas = GerenciadorTarefas();

    // Adiciona algumas tarefas para o gerenciador de tarefas
    expect(find.text('Tarefa 1'), findsOneWidget);
    expect(find.text('Tarefa 2'), findsOneWidget);

    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(gerenciadorTarefas: gerenciadorTarefas));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
