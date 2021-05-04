# Projeto de Laboratório de Programação Web - Equipe 3
### Projeto desenvolvido para a realização de um Workshop para a disciplina MATC84 da UFBA - 2021.1
### Equipe: Alexandre, Danilo, Larissa, Matheus, Pedro, Vinicius

#### Este projeto realiza o cadastro de usuários, faz o login e mostra as informações do usuário logado.

## Exercício

Você deverá fazer uma requisição de getUser no backend, utilizando a rota '/users' e vai disponibilizar as 
informações do usuário em uma página Home que você deverá criar no frontend de forma livre utilizando os widgets do Flutter.

Ponto extra: fazer a validação de data de nascimento no cadastro do usuário.

Não se esqueça de checar os pré-requisitos e instalação para rodar o projeto!

## Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Flutter SDK](https://flutter.dev/docs/get-started/install) e [Node.js](https://nodejs.org/en/). 
Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)

### 🎲 Rodando o Back End (servidor)

```bash
# Clone este repositório
$ git clone <https://github.com/teuaguiar01/lab-web-projeto1.git>

# Acesse a pasta do projeto no terminal/cmd
$ cd backend

# Instale as dependências
$ npm install
$ npm i --save @nestjs/typeorm typeorm sqlite3

# Execute a aplicação em modo de desenvolvimento
$ npm start

# O servidor inciará na porta:3000 - acesse <http://localhost:3000>
```

### 🎲 Rodando o Front End

```bash
# Acesse a pasta do projeto no terminal/cmd
$ cd frontend

# Instale as dependências
$ npm install
$ npm i --save @nestjs/typeorm typeorm sqlite3

# Execute a aplicação em modo de desenvolvimento
$ npm start

# O servidor inciará na porta:3333 - acesse <http://localhost:3333>
```

#### 🚀 Bora codar!
