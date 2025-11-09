--- Projeto: Microsserviços com Docker e Swarm
Este repositório foi desenvolvido como parte do desafio da DIO "Docker: Utilização Prática no Cenário de Microsserviços". O objetivo é simular uma arquitetura de microsserviços utilizando Docker, Docker Compose e
Docker Swarm, com serviços PHP, MySQL e NGINX.

--- Aviso de Segurança
 Todas as informações contidas neste projeto são "fictícias e simbólicas", incluindo IPs, senhas, nomes de usuários e bancos de dados. Nenhum dado real foi utilizado ou exposto.
 O projeto está estruturado para fins educacionais e demonstração técnica.

--- Arquitetura do Projeto
O projeto é composto por três microsserviços principais:
- PHP + Apache: Serviço web que insere dados aleatórios em um banco MySQL.
- MySQL: Banco de dados relacional que armazena os dados enviados pelo serviço PHP.
- NGINX: Proxy reverso que distribui requisições entre múltiplas réplicas do serviço PHP.

--- Tecnologias Utilizadas
- Docker
- Docker Compose
- Docker Swarm
- PHP 7.4 + Apache
- MySQL 5.7
- NGINX
- Shell Script

--- Serviços e Configurações

-- Serviço PHP (`app/index.php`)

- Conecta ao banco MySQL usando credenciais simbólicas (FAKES):
  - Host: mysql
  - Usuário: joao
  - Senha: senha123
  - Banco: meubanco
- Insere dados aleatórios na tabela dados.

--- Banco de Dados (db/init.sql)

- sql
CREATE TABLE dados (
    AlunoID int,
    Nome varchar(50),
    Sobrenome varchar(50),
    Endereco varchar(150),
    Cidade varchar(50),
    Host varchar(50)
);

--- Proxy Reverso (nginx/nginx.conf)
Distribui requisições entre réplicas do serviço PHP.
Escuta na porta 4500.

--- Testes e Validação
Cada acesso à aplicação insere um novo registro na tabela dados.
O nome do host (container) é registrado, permitindo visualizar o balanceamento entre réplicas.
O banco pode ser acessado via cliente MySQL para verificar os dados inseridos.

--- Segurança e Privacidade
Este projeto foi desenvolvido com foco em segurança:
- Nenhuma credencial real foi utilizada.
- IPs, senhas e nomes de banco são todos falsos.
- O código está pronto para ser adaptado a ambientes reais, bastando substituir os valores fictícios por variáveis reais ou seguras.
