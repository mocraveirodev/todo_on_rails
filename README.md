# TODO on Rails 📋

Este projeto é um sistema de gerenciamento de tarefas simples, desenvolvido em Ruby on Rails.

O sistema permite criar, visualizar, atualizar, excluir e listar tarefas. Cada tarefa possui um título, uma descrição, um status (pendente ou concluída), além de registros automáticos de data de criação, atualização, conclusão e exclusão. 

## ✅ Tecnologias Utilizadas

- **Linguagem**: Ruby 2.7.7
- **Framework**: Ruby on Rails 5.2.1
- **Banco de Dados**: SQLite3
- **Front-end**: Bootstrap 4

## Modelagem do Banco de Dados

- **Tarefas (`tasks`)**:
  - `id`: UUID (gerado automaticamente)
  - `title`: String (obrigatório)
  - `description`: Text (opcional, máximo 500 caracteres)
  - `status`: Boolean (padrão: `false` para pendente, `true` para concluída)
  - `created_at`: Datetime (preenchido automaticamente)
  - `completed_at`: Datetime (nulo por padrão, preenchido automaticamente quando a tarefa é concluída)
  - `deleted_at`: Datetime (nulo por padrão, preenchido automaticamente quando a tarefa é excluída)
  - `updated_at`: Datetime (preenchido automaticamente)

## Funcionalidades

- **Criar Tarefas**: Ao criar, o status é definido como pendente por padrão, e as datas de criação e conclusão são gerenciadas automaticamente.
- **Listar Tarefas**: Todas as tarefas são listadas em uma página de visualização geral.
- **Visualizar Detalhes de Tarefas**: Exibe os detalhes de uma tarefa específica, incluindo o status e datas.
- **Atualizar Tarefas**: Permite alterar qualquer campo de uma tarefa. Se o status for marcado como concluído, a data de conclusão é definida automaticamente.
- **Excluir Tarefas**: Em vez de remover do banco de dados, a data de exclusão é registrada e a tarefa é marcada como excluída, não sendo mais exibida na lista.
- **Paginação**: A página de listagem de tarefas é paginada para facilitar a navegação.
- **Localização**: O sistema suporta múltiplos idiomas, e o idioma é definido pela URL (ex: `/?locale=pt`).

## 🔁 Como Rodar a Aplicação

1. **Pré-requisitos**:
   - Instale o [Ruby](https://www.ruby-lang.org/en/) (2.3.8) e o [Rails](https://rubyonrails.org/) (5.2.1).
   - Instale o [SQLite3](https://www.sqlite.org/).

2. **Clone o repositório**:
   ```bash
   git clone https://github.com/seu-usuario/todo-list.git
   cd todo-list


## 👩🏻‍💻 Casos de Teste
### Caso 1: Criar uma nova tarefa
**Ação**: Criar uma tarefa com título e descrição.

**Resultado Esperado**: A tarefa é criada com status "pendente", e a data de criação é registrada automaticamente.
### Caso 2: Concluir uma tarefa
**Ação**: Atualizar o status de uma tarefa de "pendente" para "concluído".

**Resultado Esperado**: A data de conclusão é preenchida automaticamente.
### Caso 3: Excluir uma tarefa
**Ação**: Excluir uma tarefa.

**Resultado Esperado**: A tarefa não é deletada do banco de dados, mas sua data de exclusão é preenchida e a tarefa desaparece da listagem.
### Caso 4: Limitação de caracteres na descrição
**Ação**: Criar ou atualizar uma tarefa com uma descrição maior que 500 caracteres.

**Resultado Esperado**: A tarefa não é salva, e uma mensagem de erro é exibida.

## 💡 Pontos de Melhoria
- Internacionalização
- Autenticação: Adicionar autenticação de usuários, permitindo que cada usuário gerencie suas próprias tarefas.
- Filtro de Tarefas: Implementar filtros de tarefas por status (pendente/concluído), datas (criadas, concluídas ou excluídas) e .
Melhorias no Front-end: Aumentar a personalização da interface com Bootstrap e melhorar a responsividade.
Notificações: Adicionar notificações por e-mail ou via sistema quando uma tarefa estiver próxima do prazo de conclusão.
Testes Automatizados: Implementar testes automatizados com RSpec e Capybara para garantir a qualidade do código e funcionalidades.


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
