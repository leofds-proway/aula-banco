create database lista7;
use lista7;

-- 1
create table usuarios (
	id int auto_increment,
    nome varchar(50),
    email varchar(50),
    primary key(id)
);

DELIMITER //
CREATE PROCEDURE add_usuario (IN param_nome varchar(50), IN param_email varchar(50))
BEGIN
    INSERT INTO usuarios (nome, email) VALUES (param_nome, param_email);
END;
//
DELIMITER ;

call add_usuario('Leo', 'leo@gmail');
call add_usuario('Ana', 'ana@gmail');
select * from usuarios;
drop procedure add_usuario;

-- 2 
create table funcionarios (
	id int auto_increment,
    nome varchar(50),
    salario float,
    primary key(id)
);

DELIMITER //
CREATE FUNCTION soma_salarios() RETURNS FLOAT DETERMINISTIC
BEGIN
	DECLARE resultado FLOAT;
    SELECT SUM(salario) FROM funcionarios INTO resultado;
    RETURN resultado;
END;
//
DELIMITER ;

DELIMITER //
CREATE FUNCTION media_salarios() RETURNS FLOAT DETERMINISTIC
BEGIN
	DECLARE resultado FLOAT;
    SELECT AVG(salario) FROM funcionarios INTO resultado;
    RETURN resultado;
END;
//
DELIMITER ;
insert into funcionarios (nome, salario) values ('Leo', 1000),('Zilda',2000);
SELECT soma_salarios();
SELECT media_salarios();

drop function soma_salarios;
drop function media_salarios;