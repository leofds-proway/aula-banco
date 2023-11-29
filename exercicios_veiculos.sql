CREATE DATABASE veiculos;
USE veiculos;

CREATE TABLE marca (
	cd_marca INT auto_increment,
	ds_marca VARCHAR(30),
	PRIMARY KEY(cd_marca)
);

CREATE TABLE modelo (
	cd_modelo INT auto_increment,
	cd_marca INT,
	ds_modelo VARCHAR(50),
	PRIMARY KEY(cd_modelo),
	FOREIGN KEY(cd_marca) REFERENCES marca(cd_marca)
);

CREATE TABLE veiculo (
	nr_placa VARCHAR(7) NOT NULL,
	cd_modelo INT,
	nr_ano_fab INT,
	nr_ano_mod INT,
	PRIMARY KEY(nr_placa),
	FOREIGN KEY(cd_modelo) REFERENCES modelo(cd_modelo)
);

CREATE TABLE combustivel (
	cd_combustivel INT auto_increment,
	ds_combustivel VARCHAR(30),
	PRIMARY KEY(cd_combustivel)
);

CREATE TABLE veiculo_combustivel (
	cd_combustivel INT,
    nr_placa VARCHAR(7),
	PRIMARY KEY(cd_combustivel, nr_placa),
	FOREIGN KEY(cd_combustivel) REFERENCES combustivel(cd_combustivel),
    FOREIGN KEY(nr_placa) REFERENCES veiculo(nr_placa)
);

insert into combustivel (ds_combustivel) values ('gasolina');
insert into combustivel (ds_combustivel) values ('alcool');
insert into combustivel (ds_combustivel) values ('diesel');
insert into combustivel (ds_combustivel) values ('gnv');
insert into combustivel (ds_combustivel) values ('flex');

insert into marca (ds_marca) values ('volkswagem');
insert into marca (ds_marca) values ('fiat');
insert into marca (ds_marca) values ('ford');
insert into marca (ds_marca) values ('chevrolet');
insert into marca (ds_marca) values ('citroen');
insert into marca (ds_marca) values ('peugeot');
insert into marca (ds_marca) values ('volvo');

insert into modelo (cd_marca, ds_modelo) values (1,'gol');
insert into modelo (cd_marca, ds_modelo) values (1,'voyage');
insert into modelo (cd_marca, ds_modelo) values (1,'passat');
insert into modelo (cd_marca, ds_modelo) values (2,'palio');
insert into modelo (cd_marca, ds_modelo) values (2,'strada');
insert into modelo (cd_marca, ds_modelo) values (2,'bravo');
insert into modelo (cd_marca, ds_modelo) values (3,'focus');
insert into modelo (cd_marca, ds_modelo) values (3,'sportage');
insert into modelo (cd_marca, ds_modelo) values (3,'ranger');
insert into modelo (cd_marca, ds_modelo) values (4,'camaro');
insert into modelo (cd_marca, ds_modelo) values (4,'corsa');
insert into modelo (cd_marca, ds_modelo) values (4,'chevet');
insert into modelo (cd_marca, ds_modelo) values (5,'c3');
insert into modelo (cd_marca, ds_modelo) values (5,'c4');
insert into modelo (cd_marca, ds_modelo) values (5,'c5');
insert into modelo (cd_marca, ds_modelo) values (6,'306');
insert into modelo (cd_marca, ds_modelo) values (6,'307');
insert into modelo (cd_marca, ds_modelo) values (6,'308');
insert into modelo (cd_marca, ds_modelo) values (7,'volvo20v');
insert into modelo (cd_marca, ds_modelo) values (7,'volvo21v');
insert into modelo (cd_marca, ds_modelo) values (7,'volvo22v');

insert into veiculo values ('lxg3147',4,2010,2011);
insert into veiculo values ('mmm1122',12,1980,1981);
insert into veiculo values ('abc0001',1,2011,2011);
insert into veiculo values ('abc0002',2,2011,2011);
insert into veiculo values ('abc0003',3,2011,2011);
insert into veiculo values ('abc0004',4,2011,2011);
insert into veiculo values ('abc0005',5,2011,2011);
insert into veiculo values ('abc0006',6,2011,2011);
insert into veiculo values ('abc0007',7,2011,2011);
insert into veiculo values ('abc0008',8,2011,2011);
insert into veiculo values ('abc0009',9,2012,2012);
insert into veiculo values ('abc0010',10,2012,2012);
insert into veiculo values ('abc0011',11,2012,2012);
insert into veiculo values ('abc0012',12,2012,2012);
insert into veiculo values ('abc0013',13,2012,2012);
insert into veiculo values ('abc0014',14,2012,2012);
insert into veiculo values ('abc0015',15,2012,2012);
insert into veiculo values ('abc0016',16,2012,2012);
insert into veiculo values ('abc0017',17,2012,2012);
insert into veiculo values ('abc0018',18,2012,2012);
insert into veiculo values ('abc0019',19,2012,2012);
insert into veiculo values ('abc0020',20,2012,2012);
insert into veiculo values ('abd0009',1,2000,2001);
insert into veiculo values ('abd0010',2,2000,2001);
insert into veiculo values ('abd0011',3,2000,2001);
insert into veiculo values ('abd0012',4,2000,2001);
insert into veiculo values ('abd0013',5,2000,2001);
insert into veiculo values ('abd0014',6,2000,2001);
insert into veiculo values ('abd0015',7,2000,2001);
insert into veiculo values ('abd0016',8,2000,2001);
insert into veiculo values ('abd0017',9,2000,2001);
insert into veiculo values ('abd0018',10,2000,2001);

insert into veiculo_combustivel values (1,'lxg3147');
insert into veiculo_combustivel values (2,'mmm1122');
insert into veiculo_combustivel values (3,'abc0001');
insert into veiculo_combustivel values (4,'abc0002');
insert into veiculo_combustivel values (5,'abc0003');
insert into veiculo_combustivel values (1,'abc0004');
insert into veiculo_combustivel values (2,'abc0005');
insert into veiculo_combustivel values (3,'abc0006');
insert into veiculo_combustivel values (4,'abc0007');
insert into veiculo_combustivel values (5,'abc0008');
insert into veiculo_combustivel values (1,'abc0009');
insert into veiculo_combustivel values (2,'abc0010');
insert into veiculo_combustivel values (3,'abc0011');
insert into veiculo_combustivel values (4,'abc0012');
insert into veiculo_combustivel values (5,'abc0013');
insert into veiculo_combustivel values (1,'abc0014');
insert into veiculo_combustivel values (2,'abc0015');
insert into veiculo_combustivel values (3,'abc0016');
insert into veiculo_combustivel values (4,'abc0017');
insert into veiculo_combustivel values (5,'abc0018');
insert into veiculo_combustivel values (1,'abc0019'); 
insert into veiculo_combustivel values (2,'abc0020');
insert into veiculo_combustivel values (3,'abd0009');
insert into veiculo_combustivel values (4,'abd0010');
insert into veiculo_combustivel values (5,'abd0011');
insert into veiculo_combustivel values (1,'abd0012');
insert into veiculo_combustivel values (2,'abd0013');
insert into veiculo_combustivel values (3,'abd0014');
insert into veiculo_combustivel values (4,'abd0015');
insert into veiculo_combustivel values (5,'abd0016');
insert into veiculo_combustivel values (1,'abd0017');
insert into veiculo_combustivel values (2,'abd0018');
insert into veiculo_combustivel values (2,'abc0003');
insert into veiculo_combustivel values (3,'abc0003');
insert into veiculo_combustivel values (4,'abc0003');
insert into veiculo_combustivel values (1,'abc0002');
insert into veiculo_combustivel values (2,'lxg3147');
insert into veiculo_combustivel values (3,'lxg3147');

-- 2 Exibir informações dos veículos fabricados a partir de 2010 (inclusive).
select * from veiculo where nr_ano_fab >= 2010;

-- 3 Exibir o número da placa e a descrição do modelo dos veículos.
select nr_placa, ds_modelo from veiculo inner join modelo on veiculo.cd_modelo = modelo.cd_modelo;

-- 4 Exibir a descrição dos modelos da marca volkswagem.
select ds_modelo from modelo inner join marca on modelo.cd_marca = marca.cd_marca where ds_marca = 'volkswagem';
select ds_modelo from modelo where cd_marca = (select cd_marca from marca where ds_marca = 'volkswagem');	-- sub-select

-- 5 Exibir a descrição dos modelos das marcas citroen e peugeot.
select ds_modelo from modelo inner join marca on modelo.cd_marca = marca.cd_marca where ds_marca in ('citroen','peugeot');

-- 6 Exibir informações dos veículos cujo ano de fabricação e ano modelo são idênticos.
select * from veiculo where nr_ano_fab = nr_ano_mod;

-- 7 Exibir informações dos veículos cujo ano de fabricação e ano modelo são diferentes.
select * from veiculo where nr_ano_fab <> nr_ano_mod;

-- 8 Exibir o número da placa e a descrição do combustível de todos os veículos a gasolina.
select nr_placa from veiculo_combustivel vc 
	inner join combustivel c on vc.cd_combustivel = c.cd_combustivel
    where c.ds_combustivel like 'gasolina';
    
-- 9 Exibir informações dos veículos (placa, descrição do modelo, descrição da marca, ano de fabricação e ano do modelo).
select nr_placa, ds_modelo, ds_marca, nr_ano_fab, nr_ano_mod from veiculo v
	inner join modelo mo on v.cd_modelo = mo.cd_modelo
    inner join marca ma on mo.cd_marca = ma.cd_marca;
    
-- 10 Exibir informações dos veículos (placa, descrição do modelo, descrição da marca, ano
-- de fabricação e ano do modelo) fabricados a partir de 2010 (inclusive).
select nr_placa, ds_modelo, ds_marca, nr_ano_fab, nr_ano_mod from veiculo v
	inner join modelo mo on v.cd_modelo = mo.cd_modelo
    inner join marca ma on mo.cd_marca = ma.cd_marca
    where nr_ano_fab >= 2010;
    
-- 11 Exibir informações dos veículos (descrição do modelo, descrição da marca, ano de
-- fabricação e ano do modelo) fabricados a partir de 2010 (inclusive) e que são movidos
-- a "diesel".
select v.nr_placa, ds_modelo, ds_marca, nr_ano_fab, nr_ano_mod from veiculo v
	inner join modelo mo on v.cd_modelo = mo.cd_modelo
    inner join marca ma on mo.cd_marca = ma.cd_marca
    inner join veiculo_combustivel vc on vc.nr_placa = v.nr_placa
    inner join combustivel c on c.cd_combustivel = vc.cd_combustivel
    where nr_ano_fab >= 2010 and c.ds_combustivel like 'diesel';

-- 12 Exibir a idade média dos veículos cadastrados considerando o ano do modelo.
select avg(2023-nr_ano_mod) from veiculo;

-- 13 Exibir a descrição dos modelos e das marcas dos veículos que apresentam a maior
-- quantidade de veículos cadastrados na base de dados.
select ds_modelo, ds_marca from veiculo ve
	inner join modelo mo on ve.cd_modelo = mo.cd_modelo
    inner join marca ma on ma.cd_marca = mo.cd_marca
    group by ds_modelo, ds_marca
    having count(*) = 
		(select max(N.Num) from 
			(select count(*) as Num from veiculo group by veiculo.cd_modelo) AS N);

    