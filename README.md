# API de Gerenciamento Escolar com Django e Django Rest Framework

Este projeto consiste em uma API completa para o gerenciamento de uma escola, desenvolvida com Django e Django Rest Framework. A API permite a administração de alunos, cursos e matrículas, oferecendo endpoints para operações CRUD e consultas específicas. A segurança da API é garantida pela autenticação básica e permissões, assegurando que apenas usuários autenticados possam acessar os recursos.

## Funcionalidades

- **Administração de Alunos:**
  - CRUD completo (criação, leitura, atualização e exclusão).
  - Pesquisa de alunos por nome e CPF.
  - Exibição dos alunos com campos como ID, nome, RG, CPF e data de nascimento.

- **Administração de Cursos:**
  - CRUD completo para cursos.
  - Pesquisa de cursos por código e nível.
  - Filtro por nível do curso.
  - Exibição dos cursos com campos como ID, código do curso, descrição e nível.

- **Administração de Matrículas:**
  - CRUD completo para matrículas.
  - Exibição das matrículas com campos como ID, aluno, curso e período.
  - Listagem das matrículas de um aluno específico.
  - Listagem dos alunos matriculados em um curso específico.

## Tecnologias Utilizadas

- **Django:** Utilizado para a estruturação do backend e administração.
- **Django Rest Framework:** Facilita a criação dos endpoints e serializers.
- **Autenticação Básica:** Implementada para garantir que apenas usuários autenticados possam acessar e modificar os dados.

## Modelos

- **Aluno:**
  - Campos: nome, RG, CPF, data de nascimento.
- **Curso:**
  - Campos: código do curso, descrição, nível (Básico, Intermediário, Avançado).
- **Matricula:**
  - Campos: aluno, curso, período (Matutino, Vespertino, Noturno).

## Endpoints

- **Alunos:**
  - `GET /alunos/`: Lista todos os alunos.
  - `POST /alunos/`: Cria um novo aluno.
  - `GET /alunos/{id}/`: Obtém detalhes de um aluno específico.
  - `PUT /alunos/{id}/`: Atualiza um aluno específico.
  - `DELETE /alunos/{id}/`: Exclui um aluno específico.

- **Cursos:**
  - `GET /cursos/`: Lista todos os cursos.
  - `POST /cursos/`: Cria um novo curso.
  - `GET /cursos/{id}/`: Obtém detalhes de um curso específico.
  - `PUT /cursos/{id}/`: Atualiza um curso específico.
  - `DELETE /cursos/{id}/`: Exclui um curso específico.

- **Matrículas:**
  - `GET /matriculas/`: Lista todas as matrículas.
  - `POST /matriculas/`: Cria uma nova matrícula.
  - `GET /matriculas/{id}/`: Obtém detalhes de uma matrícula específica.
  - `PUT /matriculas/{id}/`: Atualiza uma matrícula específica.
  - `DELETE /matriculas/{id}/`: Exclui uma matrícula específica.

- **Consultas Específicas:**
  - `GET /aluno/{id}/matriculas/`: Lista todas as matrículas de um aluno específico.
  - `GET /curso/{id}/matriculas/`: Lista todos os alunos matriculados em um curso específico.

## Como Executar o Projeto

1. **Clone o repositório:**
   ```sh
   git clone git@github.com:josejfs/API_Django_Rest_Framework.git
   cd API_Django_Rest_Framework

1. **Instale as dependências:**
   pip install django djangorestframework
   pip install django
