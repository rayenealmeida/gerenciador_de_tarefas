Projeto ToDoX

O projeto "ToDoX" é um Gerenciador de Tarefas, ou seja, é um sistema que permite criar, gerenciar e acompanhar tarefas a serem realizadas. O sistema é baseado em uma estrutura de classes orientadas a objetos, que incluem as classes Tarefa, Usuario, Grupo e a classe GerenciadorTarefas que é a principal.

O sistema de gerenciamento de tarefas permite criar novas tarefas, associar tarefas a usuários e grupos, marcar tarefas como concluídas e visualizar o status das tarefas. O sistema também permite criar novos usuários e grupos, associar usuários a grupos e visualizar a lista de tarefas de um usuário ou grupo.

O projeto irá utilizar encapsulamento para proteger a informação de cada tarefa e usuário, garantindo que apenas as classes autorizadas possam acessar e modificar os dados. Além disso, o projeto utilizará associação para relacionar tarefas com usuários e grupos, permitindo que o sistema de gerenciamento de tarefas seja flexível e escalável.



|   Classes |   Atributos   |  
------------------------------
|   Tarefa  |   representa uma tarefa a ser realizada e possui atributos como nome, 
|           |   data de criação, data de conclusão e status. Além disso, a classe também 
|           |   possui métodos que permitem alterar o status da tarefa e associar a tarefa 
|           |   a usuários e grupos.
|---------------------------------------------------------------------------------------------
|   Usuario |   representa um usuário do sistema e possui um nome e uma lista de tarefas
|           |   associadas. A classe também possui métodos que permitem adicionar, remover
|           |   e visualizar tarefas da lista de tarefas do usuário.
|---------------------------------------------------------------------------------------------
|   Grupo   |   representa um grupo de usuários e possui um nome e uma lista de usuários 
|           |   associados. A classe também possui métodos que permitem adicionar, 
|           |   remover e visualizar usuários da lista de usuários do grupo.  
|-----------|--------------------------------------------------------------------------------
|Gerenciador|   é a classe principal do sistema de gerenciamento de tarefas e é responsável 
|    de     |   por criar e gerenciar objetos das outras classes. A classe também possui 
|  Tarefas  |   métodos que permitem criar tarefas, adicionar tarefas a usuários e grupos, 
|           |    marcar tarefas como concluídas, criar usuários e grupos, e visualizar a 
|           |    lista de tarefas de um usuário ou grupo.


