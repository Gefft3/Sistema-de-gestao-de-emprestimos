# Sistema de Apoio e Gestão de empréstimos e doações de equipamentos de Informática para Rede Pública de Ensino da Cidade de Jardim-MS
###  Projeto criado 

<p align="center">
 <a href="#-sobre-o-projeto">Sobre</a> •
 <a href="#-funcionalidades">Funcionalidades</a> •
 <a href="#-como-executar-o-projeto">Como executar</a> • 
 <a href="#-tecnologias">Tecnologias</a> •  
 <a href="#user-content--licença">Licença</a>
</p>

## 💻 Sobre o projeto

Muitos alunos do curso técnico em informática não possuem equipamentos para estudar em casa. A proposta desse projeto é criar um sistema capaz de gerenciar empréstimos e doações de equipamentos de informática para alunos da rede pública de ensino da cidade de Jardim-MS de forma que a escola assuma o papel de mediador entre aluno e doador, garantido a segurança dos envolvidos e o bom aproveitamento do equipamento.

---

## ⚙️ Funcionalidades

- [X] Os usuários logados tem acesso ao menu administrativo, onde podem:
  - [X] Ver equipamentos disponíveis
  - [X] Solicitar empréstimos

- [ ] Os usuários gestores tem acesso ao menu administrativo, onde podem:
  - [X] Gerenciar equipamentos
  - [ ] Validar Cadastro do usuário
  - [ ] Analisar solicitação de empréstimo
  - [ ] Registrar empréstimo do equipamento
  - [ ] Registrar devolução do equipamento
  


- [x] Os usuários tem acesso a parte pública da aplicação web, onde podem:
  - [x] consultar os equipamentos disponíveis
  - [x] Logar
  - [x] Auto-Registro
--
## 🚀 Como executar o projeto

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas: [Git](https://git-scm.com), [Laravel](https://laravel.com/docs/8.x/installation) e [Node.js](https://nodejs.org/en/).

Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)
### 🎲 Rodando o Projeto 

#### Instalando as dependências
```bash
# Clone este repositório
$ git clone https://github.com/Gefft3/tcc-ifms-code.git

# Acesse a pasta do projeto no terminal/cmd
$ cd tcc-ifms-code

# Instale as dependências composer
$ composer install

# Instale as dependências npm (frontend)
$ npm install && npm run dev
```
#### Configurando o projeto
1. Faça uma cópia do arquivo `.env.example` e renomeie para `.env`:
2. Crie um banco de dados
> Sugestão MariaDB ou MySQL: definição de collation: **utf8mb4_general_ci**

3. Configure a conexão com os dados do banco de dados no arquivo `.env`:
```php  
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=NOMEDOBANCO
    DB_USERNAME=USUARIO
    DB_PASSWORD=SENHA
```
#### Rodando o servidor
```bash    
# Criação de nova chave de criptografia da aplicação:
php artisan key:generate

#Criação do link simbólico:
php artisan storage:link

# Criação das tabelas e inserção dos dados no banco de dados:
php artisan migrate:fresh --force --seed

# Execute a aplicação em modo de desenvolvimento
php artisan serve

# O servidor iniciará na porta:8000 - acesse <http://localhost:8000>
```

### 🎲 Acesso ao Projeto (servidor)
Acesso à área pública da aplicação:
> **URL:** http://domínio/

Acesso à área privada da aplicação:
> **URL:** http://domínio/admin <br/> 

**Criar usuário pelo terminal usando tinker:**
```bash
# Executar o tinker
php artisan tinker

# No tinker: 
>>> $user = new \App\Models\User;
>>> $user->email = 'admin@admin.com';
>>> $user->password = Hash::make('senha'); # altere 'senha' para uma senha forte
>>> $user->name = 'Nome do Administrator';
>>> $user->save();
>>> exit() # sair do tinker
```
---
## 🛠 Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

- [Laravel](https://laravel.com/docs)
- [Node.js](https://nodejs.org/en/)
- [Bootstrap](https://getbootstrap.com/)
- [JQuery](https://jquery.com/)

As seguintes dependências foram incluidas no projeto:
- [Módulo de linguagem Português do Brasil (pt_BR) para Laravel](https://github.com/lucascudo/laravel-pt-BR-localization)
- [Laravel Fortify](https://github.com/laravel/fortify)
- [Laravel Permission](https://github.com/spatie/laravel-permission)
- [Laravel UI](https://github.com/laravel/ui)
---
## 💪 Como contribuir para o projeto

1. Faça um **fork** do projeto.
2. Crie uma nova branch com as suas alterações: `git checkout -b my-feature`
3. Salve as alterações e crie uma mensagem de commit contando o que você fez: `git commit -m "feature: My new feature"`
4. Envie as suas alterações: `git push origin my-feature`

## 📝 Licença

Este projeto é um software de código aberto licenciado sob a licença [gnu general public license version 3.0 (gplv3)](./LICENSE).
