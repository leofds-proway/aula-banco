-- 1 Crie um novo usuário através do MySQL Workbench, conceda a permissão SELECT para uma VIEW criada (atividade veículos).
GRANT SELECT ON veiculos.info_veiculos TO 'leo'@'%';
FLUSH PRIVILEGES;

-- 2 Conceda acesso total a esse usuário a tabela veiculos.
GRANT ALL PRIVILEGES ON veiculos.veiculo TO 'leo'@'%';
FLUSH PRIVILEGES;

-- 3 Revogue as permissões concedidas as todas as tabelas desse usuário.
REVOKE SELECT ON veiculos.* FROM 'leo'@'%';
FLUSH PRIVILEGES;