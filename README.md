# TODO on Rails 📋

Este projeto é um sistema de gerenciamento de tarefas simples, desenvolvido em Ruby on Rails.

O sistema permite criar, visualizar, atualizar, excluir e listar tarefas. Cada tarefa possui um título, uma descrição, um status (pendente ou concluída), além de registros automáticos de data de criação, atualização, conclusão e exclusão. 

## ✅ Tecnologias Utilizadas

- **Linguagem**: Ruby 2.7.7
- **Framework**: Ruby on Rails 5.2.1
- **Banco de Dados**: SQLite3
- **Front-end**: Bootstrap 4

## 🎲 Modelagem do Banco de Dados

| Tasks  |
| ------------ |
|  id: UUID |
|  title: string |
|  description: text(500) |
|  status: boolean (default: false) |
|  created_at: datetime |
|  updated_at: datetime |
|  completed_at: datetime |
|  deleted_at: datetime |

- **Tarefas (`tasks`)**:
  - `id`: UUID (gerado automaticamente)
  - `title`: String (obrigatório)
  - `description`: Text (opcional, máximo 500 caracteres)
  - `status`: Boolean (padrão: `false` para pendente, `true` para concluída)
  - `created_at`: Datetime (preenchido automaticamente)
  - `updated_at`: Datetime (preenchido automaticamente)
  - `completed_at`: Datetime (nulo por padrão, preenchido automaticamente quando a tarefa é concluída)
  - `deleted_at`: Datetime (nulo por padrão, preenchido automaticamente quando a tarefa é excluída)

## Funcionalidades

- [x] **Criar Tarefas**: Ao criar, o status é definido como pendente por padrão, e as datas de criação e conclusão são gerenciadas automaticamente.
- [x] **Listar Tarefas**: Todas as tarefas não excluídas são listadas em uma página de visualização geral.
- [x] **Visualizar Detalhes de Tarefas**: Exibe os detalhes de uma tarefa específica, incluindo o status e datas.
- [x] **Atualizar Tarefas**: Permite alterar qualquer campo de uma tarefa. Se o status for marcado como concluído, a data de conclusão é definida automaticamente.
- [x] **Excluir Tarefas**: Em vez de remover do banco de dados, a data de exclusão é registrada e a tarefa é marcada como excluída, não sendo mais exibida na lista.

## 🔁 Como Rodar a Aplicação

1. **Pré-requisitos**:
   - [Ruby](https://www.ruby-lang.org/en/) (2.7.7)
   - [Rails](https://rubyonrails.org/) (5.2.1)
   - [NPM](hhttps://www.npmjs.com/) ou [YARN](https://yarnpkg.com/)

2. **Clone o repositório**:
   ```bash
   git clone git@github.com:mocraveirodev/todo_on_rails.git
   cd todo_on_rails
   ```
3. **Instale as dependências**:
   ```bash
   bundle install
   npm install ou yarn install
   ```
4. **Configure o banco de dados**:
   ```ruby
   rails db:create
   rails db:migrate
   ```
5. **Execute o servidor**:
   ```ruby
   rails server
   ```
6. **Acesse a aplicação**: Abra o navegador e vá para http://localhost:3000.

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
- Paginação
- Autenticação: Adicionar autenticação de usuários, permitindo que cada usuário gerencie suas próprias tarefas.
- Filtro de Tarefas: Implementar filtros de tarefas por status (pendente/concluído), datas (criadas, concluídas ou excluídas) e titulo (inteiro ou parcial).
- Incluir status "em progresso".
- Adicionar data de vencimento: O usuário pode atribuir uma data de vencimento para cada tarefa. 
- Notificações de prazo: A aplicação alerta o usuário sobre tarefas que estão próximas do prazo ou já passaram da data de vencimento. 
- Categorias: O usuário pode organizar as tarefas em diferentes categorias, como "Trabalho", "Pessoal", etc. 
- Mover tarefas entre categorias : Permitir que o usuário mova uma tarefa de uma categoria para outra. 
- Excluir categorias : O usuário deve poder excluir categorias que não são mais necessárias. 
- Definir prioridade da tarefa: O usuário pode atribuir uma prioridade à tarefa (baixa, média, alta). 
- Notificações: Adicionar notificações por e-mail ou via sistema quando uma tarefa estiver próxima do prazo de conclusão.
- Melhorias no Front-end: Aumentar a personalização da interface com Bootstrap e melhorar a responsividade.
- API
- Testes: Implementar testes unitários e de integração para garantir a qualidade do código. 

------------

Feito por Monica Craveiro 💜
