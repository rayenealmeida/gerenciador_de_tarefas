import 'package:flutter/material.dart';
import 'package:todox/models/gerenciador_tarefas.dart';

void main() {
  final gerenciadorTarefas = GerenciadorTarefas();

  gerenciadorTarefas.adicionarUsuario('João');
  gerenciadorTarefas.adicionarTarefa(
      gerenciadorTarefas.usuarios[0], 'Comprar leite');
  gerenciadorTarefas.adicionarTarefa(
      gerenciadorTarefas.usuarios[0], 'Fazer exercícios');
  gerenciadorTarefas
      .marcarTarefaConcluida(gerenciadorTarefas.usuarios[0].tarefas[1]);

  gerenciadorTarefas.adicionarUsuario('Maria');
  gerenciadorTarefas.adicionarTarefa(
      gerenciadorTarefas.usuarios[1], 'Ler livro');
  gerenciadorTarefas.adicionarTarefa(
      gerenciadorTarefas.usuarios[1], 'Assistir filme');
  gerenciadorTarefas
      .marcarTarefaConcluida(gerenciadorTarefas.usuarios[1].tarefas[0]);

  runApp(MyApp(gerenciadorTarefas: gerenciadorTarefas));
}

class MyApp extends StatelessWidget {
  final GerenciadorTarefas gerenciadorTarefas;

  const MyApp({Key? key, required this.gerenciadorTarefas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDoX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(gerenciadorTarefas: gerenciadorTarefas),
    );
  }
}

class HomePage extends StatelessWidget {
  final GerenciadorTarefas gerenciadorTarefas;

  const HomePage({Key? key, required this.gerenciadorTarefas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ToDoX'),
        ),
        body: ListView.builder(
          itemCount: gerenciadorTarefas.usuarios.length,
          itemBuilder: (BuildContext context, int index) {
            final usuario = gerenciadorTarefas.usuarios[index];
            return ExpansionTile(
              title: Text(usuario.nome),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: usuario.tarefas.length,
                  itemBuilder: (BuildContext context, int index) {
                    final tarefa = usuario.tarefas[index];

                    return ListTile(
                      title: Text(tarefa.nome),
                      trailing: Checkbox(
                        value: tarefa.concluida,
                        onChanged: (value) {
                          if (value!) {
                            gerenciadorTarefas.marcarTarefaConcluida(tarefa);
                          } else {
                            gerenciadorTarefas.desmarcarTarefaConcluida(tarefa);
                          }
                        },
                      ),
                      subtitle: tarefa.dataConclusao != null
                          ? Text('Concluída em ${tarefa.dataConclusao}')
                          : tarefa.estaAtrasada()
                              ? const Text('Atrasada!')
                              : null,
                    );
                  },
                ),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text('Nova tarefa'),
                );
              });
        }));
  }
}
