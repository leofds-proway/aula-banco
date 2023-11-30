CREATE DATABASE lista4;
USE lista4;

CREATE TABLE produtos (
	id INT AUTO_INCREMENT,
	nome VARCHAR(30),
	fabricante VARCHAR(30),
	quantidade INT,
	valor FLOAT,
	tipo VARCHAR(20),
	PRIMARY KEY(id)
);

INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('Playstation 4', 'Sony', 100, 1999, 'Console');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('Core i5 8GB Ram SSD 240', 'Dell', 200, 1899, 'Notebook');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('Xbox one', 'Microsoft', 350, 1299, 'Console');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('J1', 'Samsung', 300, 499, 'Celular');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('iPhone 10', 'Apple', 50, 1499, 'Smartphone');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('Playstation 3', 'Sony', 100, 399, 'Console');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('Sofá estofado', 'Coréia', 200, 499, 'Sofá');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('Armário de Serviço', 'Aracaju', 50, 129, 'Armário');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('Refrigerador 420L', 'CCE', 200, 1499, 'Refrigerador');
INSERT INTO produtos (nome, fabricante, quantidade, valor, tipo) VALUES ('Wii', 'Nintendo', 250, 999, 'Console');

select nome from produtos;

-- 1 Exibir o número de produtos em estoque agrupados pelo tipo.
select tipo, sum(quantidade) from produtos group by tipo;

-- 2 Exibir o número de produtos em estoque por fabricante.
select fabricante, sum(quantidade) from produtos group by fabricante;

-- 3 Exibir o número de produtos em estoque de acordo com o tipo e fabricante.
select tipo, fabricante, sum(quantidade) from produtos group by tipo, fabricante;

-- 4 Exibir o valor total dos produtos em estoque agrupados pelo tipo.
select tipo, sum(quantidade*valor) from produtos group by tipo;

-- 5 Exibir o número de produtos em estoque agrupados pelo tipo,
-- exibir somente os que possuem quantidade em estoque superior a
-- 200.
select tipo, sum(quantidade) from produtos group by tipo having sum(quantidade) > 200;

-- 6 A partir do anterior, agrupar além do tipo o fabricante.
select tipo, fabricante, sum(quantidade) from produtos group by tipo ,fabricante having sum(quantidade) > 200;

-- 7 Exibir a quantidade em estoque e o valor do estoque agrupados
-- pelo nome, cujo a quantidade supere 200 e o valor do estoque
-- seja igual ou superior a 100 mil.
select nome, sum(quantidade), sum(quantidade * valor) from produtos 
	group by nome having sum(quantidade) > 200 
		and sum(quantidade * valor) >= 100000;