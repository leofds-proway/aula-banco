create database projeto;
use projeto;
create table cliente (
    nome varchar(50) not null,
    telefone varchar(11),
    idade int,
    dependentes int
);
ALTER TABLE cliente ADD email VARCHAR(20);
ALTER TABLE cliente DROP COLUMN dependentes;
ALTER TABLE cliente MODIFY COLUMN email VARCHAR(150);
-- DROP TABLE cliente;
INSERT INTO cliente VALUES ('Leonardo', '46990001234', 21, 'leo@gmail.com');
INSERT INTO cliente (nome, telefone, idade) VALUES ('Ana', '46990005555', 30);
INSERT INTO cliente VALUES
('Zilda','47990001001',45,'zilda@terra.com'),
('José','47990003003',45,'ze@gmail.com'),
('Jim','47990002002',37,'jim@bol.com');
select * from cliente;

