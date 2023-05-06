Projeto ToDoX

O projeto "ToDoX" é um Gerenciador de Tarefas, ou seja, é um sistema que permite criar, gerenciar e acompanhar tarefas a serem realizadas. O sistema é baseado em uma estrutura de classes orientadas a objetos,Este projeto é um aplicativo de gerenciamento de tarefas chamado

 "ToDoX" é u Gerenciador de Tarefas desenvolvido em Flutter. O aplicativo permite que o usuário adicione, visualize e gerencie tarefas. O aplicativo possui uma tela principal que exibe uma lista de tarefas. Cada tarefa da lista é exibida como um ListTile com um título, uma caixa de seleção de conclusão e um botão de informações para exibir mais detalhes sobre a tarefa. O usuário pode adicionar novas tarefas clicando no botão de adicionar. O aplicativo usa o estado do widget para controlar a lista de tarefas e atualizar a interface do usuário em tempo real à medida que as tarefas são adicionadas ou alteradas.





|   Classes |   Atributos   |
------------------------------
|   ToDoX   |   É a classe principal do aplicativo, que inicia a execução do código. 
|           |   Ela herda de StatelessWidget e é responsável por retornar um MaterialApp,
|           |   que configura a aplicação em geral.
|---------------------------------------------------------------------------------------------
|                  | 	É a classe responsável por gerenciar o estado da lista de tarefas. 
|GerenciadorTarefas|	Ela herda de StatefulWidget e tem como objetivo criar um estado mutável |                  |	para a aplicação, implementando a lógica de adição, remoção e marcação |                  |	de tarefas concluídas.
|------------------------------------------------------------------------------------------------
|                        |	É a classe que implementa o estado mutável gerenciado pela 
|_GerenciadorTarefasState|	classe GerenciadorTarefas. Ela herda de State
|                        |	<GerenciadorTarefas> e contém as variáveis de estado da
|                        |	aplicação, como a lista de tarefas e o controlador de campo de |                        |	texto.
|-----------------------------------------------------------------------------------------------
| Tafrefa |	É a classe que define a estrutura de cada tarefa presente na lista. Ela contém
|         |	os atributos de cada tarefa, como descrição, data de criação e estado de
|         |	conclusão.
-------------------------------------------------------------------------------------------------
