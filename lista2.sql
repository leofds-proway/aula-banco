-- 1 Criar uma base de dados chamada exercicio2.
create database exercicio2;
use exercicio2;

-- 2 Crie a tabela cursos com os seguintes campos:
create table cursos (
	id int auto_increment,
    nome varchar(45) not null,
    primary key(id)
);

-- 3 Crie a tabela alunos com os seguintes campos:
create table alunos (
	id int auto_increment,
    nome varchar(45) not null,
    id_curso int,
    primary key(id),
    foreign key (id_curso) references cursos(id)
);

-- 4 Cadastre os seguintes cursos:
insert into cursos (nome) values ('Flutter'),('Java'),('Kotlin'),('Objective-C'),('Swift');

-- 5 Cadastre os seguintes alunos:
insert into alunos (nome, id_curso) values
	('José', 1),
    ('Dalva', 2),
    ('Osvaldo', 2),
    ('Guga', 3),
    ('Zilda', 1),
    ('Humberto', 5),
    ('Aroldo', 1),
    ('Anastácio', 5),
    ('Regina', 2),
    ('Dolores', 1),
    ('Eustácio', 1),
    ('Fernanda', 3);

-- 6 Liste o nome dos alunos que estão matriculados no curso Flutter.
select * from alunos where id_curso = 1;
select * from alunos a join cursos c on a.id_curso = c.id where c.nome like 'Flutter';



select * from alunos a, cursos c where a.id_curso = c.id;
select * from alunos a join cursos c on a.id_curso = c.id;
select * from alunos a inner join cursos c on a.id_curso = c.id;
select * from alunos a left join cursos c on a.id_curso = c.id;
select * from alunos a right join cursos c on a.id_curso = c.id;







