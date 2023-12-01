create database lista6;
use lista6;

-- 1
create table funcionarios (
	id int auto_increment,
    nome varchar(50),
    cargo varchar(50),
    primary key(id)
);
start transaction;
insert into funcionarios (nome, cargo) values ('Leo','CEO'), ('Zilda','DevSenior');
select * from funcionarios;
commit;
select * from funcionarios;
rollback;
select * from funcionarios;	-- Não foram removidos pois o commit já terminou a transação.

-- 2
create table transacoes (
	id int auto_increment,
    nome varchar(50),
    descricao varchar(50) not null,
    primary key(id)
);
start transaction;
insert into transacoes (nome, descricao) values ('Venda','Vista'), ('Venda','Prazo');
select * from transacoes;
insert into transacoes (nome, descricao) values ('Compra',null);
select * from transacoes;
rollback;
select * from transacoes;

-- 3
create table inventario (
	id int auto_increment,
    nome varchar(50),
    quantidade int,
    primary key(id)
);
insert into inventario (nome, quantidade) values ('Carro',2), ('Casa',3), ('Terreno',5);
start transaction;
select * from inventario;
update inventario set quantidade = 8 where id = 3;
commit;
select * from inventario;
start transaction;
update inventario set quantidade = 2 where id = 2;
rollback;
select * from inventario;

-- 4 
create table pessoas (
	id int auto_increment,
    nome varchar(50),
    idade int,
    primary key(id)
);
start transaction;
insert into pessoas (nome, idade) values ('Leo',25), ('Ana',18), ('Zilda',21);
savepoint p1;
insert into pessoas (nome, idade) values ('Iolanda',80), ('Anastácio',73);
select * from pessoas;
rollback to savepoint p1;
commit;
select * from pessoas;

-- 5
create table estoque (
	id int auto_increment,
    nome varchar(50),
    quantidade int,
    primary key(id)
);
lock tables estoque write;
lock tables estoque read;
start transaction;
insert into estoque (nome, quantidade) values ('PS5',20), ('TV',30);
commit;
select * from estoque;
unlock tables;