class Tarefa {
  final String nome;
  final DateTime dataCriacao;
  DateTime? dataConclusao;
  bool concluida;

  Tarefa({
    required this.nome,
    required this.dataCriacao,
    this.dataConclusao,
    this.concluida = false,
  });

  void marcarConcluida() {
    concluida = true;
    dataConclusao = DateTime.now();
  }

  void desmarcarConcluida() {
    concluida = false;
    dataConclusao = null;
  }

  bool estaAtrasada() {
    if (dataConclusao != null) {
      return dataConclusao!.isBefore(DateTime.now());
    } else {
      return false;
    }
  }
}
