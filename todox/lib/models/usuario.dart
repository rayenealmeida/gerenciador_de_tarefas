import 'tarefa.dart';

class Usuario {
  final String nome;
  final List<Tarefa> tarefas;

  Usuario({required this.nome, List<Tarefa>? tarefas})
      : tarefas = tarefas ?? [];

  void adicionarTarefa(String nome) {
    tarefas.add(Tarefa(nome: nome, dataCriacao: DateTime.now()));
  }

  void removerTarefa(Tarefa tarefa) {
    tarefas.remove(tarefa);
  }

  int getTarefasConcluidas() {
    return tarefas.where((tarefa) => tarefa.concluida).length;
  }

  int getTarefasAtrasadas() {
    return tarefas.where((tarefa) => tarefa.estaAtrasada()).length;
  }
}
