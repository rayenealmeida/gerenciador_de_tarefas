# todox

> Status do Projeto: :heavy_check_mark: (concluido)
---

## Descrição do projeto 

<p align="justify">
  Projeto realizado em Flutter, referente a um gerenciador de tarefas com uma lista de tarefas

</p>


---

## Pré-requisitos

:warning: [Flutter](https://flutter.dev/docs/get-started/install)

:warning: [Android Studio](https://developer.android.com/studio)

:warning: [Vscode](https://code.visualstudio.com/download)

---

## ▶️ Como execultar a aplicação

No terminal, clone o projeto: 

```
git clone https://github.com/rayenealmeida/gerenciador_de_tarefas.git
```

Acesse o diretório do projeto:
```
cd gerenciador_de_tarefas/todox
```

Execute o seguinte comando para baixar as dependências do projeto:
```
flutter pub get
```

Conecte um dispositivo móvel ou inicie um emulador Android ou iOS.
Execute o aplicativo no dispositivo ou emulador com o seguinte comando:
```
flutter run
```
## Casos de uso

Objetivo: Permitir ao usuário gerenciar suas tarefas diárias.

Ator principal: Usuário

Fluxo principal:

    1. O usuário abre o aplicativo.
    2. O sistema exibe uma lista de tarefas cadastradas previamente, se houver.
    3. O usuário pode adicionar novas tarefas através do botão "Adicionar tarefa".
    4. O sistema exibe um campo de texto para que o usuário digite a descrição da tarefa.
    5. O usuário digita a descrição da tarefa e clica em "Adicionar".
    6. O sistema adiciona a tarefa na lista de tarefas.
    7. O usuário pode marcar uma tarefa como concluída através do checkbox.
    8. O sistema marca a tarefa como concluída.
    9. O usuário pode visualizar os detalhes da tarefa ao clicar na mesma.
    10. O sistema exibe os detalhes da tarefa, incluindo a descrição e a data de criação.
    11. O usuário pode marcar a tarefa como concluída ou excluí-la através dos botões na tela de detalhes.
    12. O sistema marca a tarefa como concluída ou a exclui, de acordo com a ação do usuário.

Fluxo alternativo:

    13. No passo 5 do fluxo principal, o usuário clica em "Cancelar" ao invés de "Adicionar".
    14. O sistema não adiciona a tarefa na lista de tarefas.

Pós-condições:

    As tarefas cadastradas pelo usuário são salvas no sistema e podem ser visualizadas e gerenciadas posteriormente.
---

## Linguagens, dependencias e libs utilizadas

- [Layout: Flutter app](https://docs.flutter.dev/ui/layout)
- [Material Components widgets: Flutter app](https://docs.flutter.dev/ui/widgets/material)

---

## 🎓 Autora
 <br />
 <sub><b>Rayene Ferreira Almeida</b></sub> ☕
 <br />

## 📝 Licença 

The [MIT License](https://github.com/rayenealmeida/gerenciador_de_tarefas/tree/master?tab=MIT-1-ov-file) (MIT)

