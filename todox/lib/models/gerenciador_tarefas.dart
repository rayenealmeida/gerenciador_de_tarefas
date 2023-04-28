import 'package:flutter/material.dart';

import 'tarefa.dart';
import 'usuario.dart';

class GerenciadorTarefas extends ChangeNotifier {
  final List<Usuario> _usuarios = [];

  List<Usuario> get usuarios => _usuarios;

  void adicionarUsuario(String nome) {
    _usuarios.add(Usuario(nome: nome));
    notifyListeners();
  }

  void removerUsuario(Usuario usuario) {
    _usuarios.remove(usuario);
    notifyListeners();
  }

  void adicionarTarefa(Usuario usuario, String nome) {
    usuario.adicionarTarefa(nome);
    notifyListeners();
  }

  void removerTarefa(Usuario usuario, Tarefa tarefa) {
    usuario.removerTarefa(tarefa);
    notifyListeners();
  }

  void marcarTarefaConcluida(Tarefa tarefa) {
    tarefa.marcarConcluida();
    notifyListeners();
  }

  void desmarcarTarefaConcluida(Tarefa tarefa) {
    tarefa.desmarcarConcluida();
    notifyListeners();
  }
}
