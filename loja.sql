CREATE DATABASE  loja;

USE loja;

CREATE TABLE IF NOT EXISTS tb_clientes(
	cod_cliente INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100),
    cidade VARCHAR(50),
    cep INT(8)
);

CREATE TABLE IF NOT EXISTS tb_pedidos(
	cod_pedido INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	data_pedido DATE NOT NULL,
	item VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    cod_cliente INT,
    FOREIGN KEY (cod_cliente) REFERENCES tb_clientes(cod_cliente)
);

INSERT INTO tb_clientes(nome, endereco, cidade, cep) VALUES ("White Clover Markets", "305 - 14th Ave. S. Suite 3B", "Seattle", 98128);
INSERT INTO tb_clientes(nome, endereco, cidade, cep) VALUES ("Matti Karttunen", "Keskuskatu 45", "Helsinki", 21240);
INSERT INTO tb_clientes(nome, endereco, cidade, cep) VALUES ("Wolski", "ul. Filtrowa 68	", "Walla", 01012);

INSERT INTO tb_pedidos(data_pedido, item, valor, cod_cliente) VALUES ( DATE("2025/02/12"), "Iphone 16", 5300.00, 1);
INSERT INTO tb_pedidos(data_pedido, item, valor, cod_cliente) VALUES ( DATE("2024/01/25"), "MacBook Air", 5459.00, 1);
INSERT INTO tb_pedidos(data_pedido, item, valor, cod_cliente) VALUES ( DATE("2022/08/18"), "Ventilador De Mesa Britânia Maxx Force 30cm", 99.00, 2);

SELECT * FROM tb_clientes;
SELECT * FROM tb_pedidos;

SELECT nome, item, valor FROM tb_clientes INNER JOIN tb_pedidos ON tb_clientes.cod_cliente = tb_pedidos.cod_cliente;

