import 'package:flutter/material.dart';

void main() {
  runApp(const ToDoX());
}

class ToDoX extends StatelessWidget {
  const ToDoX({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDoX',
      home: GerenciadorTarefas(title: 'ToDoX'),
    );
  }
}

class GerenciadorTarefas extends StatefulWidget {
  const GerenciadorTarefas({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _GerenciadorTarefasState createState() => _GerenciadorTarefasState();
}

class _GerenciadorTarefasState extends State<GerenciadorTarefas> {
  List<Tarefa> tasks = [];
  final TextEditingController _textFieldController = TextEditingController();

  void addTask(String descricao) {
    setState(() {
      tasks.add(Tarefa(descricao: descricao, dataCriacao: DateTime.now()));
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void toggleTaskCompletion(int index) {
    setState(() {
      tasks[index].concluida = !tasks[index].concluida;
    });
  }

  void showTaskDescription(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Descrição da tarefa'),
          content: Text(
              'Descrição: ${tasks[index].descricao}\nData de criação: ${tasks[index].dataCriacao}'),
          actions: [
            TextButton(
              child: const Text('Marcar como concluída'),
              onPressed: () {
                toggleTaskCompletion(index);
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Excluir'),
              onPressed: () {
                deleteTask(index);
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple[500],
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              tasks[index].descricao,
              style: TextStyle(
                decoration:
                    tasks[index].concluida ? TextDecoration.lineThrough : null,
              ),
            ),
            onTap: () {
              showTaskDescription(index);
            },
            trailing: Checkbox(
              value: tasks[index].concluida,
              onChanged: (bool? value) {
                toggleTaskCompletion(index);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String? result = await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Adicionar tarefa'),
                  content: TextField(
                    controller: _textFieldController,
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Cancelar'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: const Text('Adicionar'),
                      onPressed: () {
                        addTask(_textFieldController.text);
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
              });

          if (result != null) {
            addTask(result);
          }
        },
        tooltip: 'Adicionar tarefa',
        backgroundColor: Colors.purple[500],
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Tarefa {
  final String descricao;
  final DateTime dataCriacao;
  bool concluida;

  Tarefa(
      {required this.descricao,
      required this.dataCriacao,
      this.concluida = false});
}
