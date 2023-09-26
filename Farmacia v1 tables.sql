CREATE DATABASE banco_farmacia;

USE banco_farmacia;

CREATE TABLE cliente (
    cpf VARCHAR(12),
    Email VARCHAR(50),
    data_de_nacimento DATE,
    qtd_numeros_cpf INT NOT NULL CHECK(qtd_numeros_cpf >= 0),
    CONSTRAINT pk_cliente PRIMARY KEY (cpf)
);
CREATE TABLE cliente_telefone(
celular INT,
residecial INT
);
CREATE TABLE cliente_endereco(
cidade VARCHAR (50),
bairro VARCHAR (50),
rua VARCHAR (50),
numero_da_casa INT
);
CREATE TABLE fabricante(
razao_social VARCHAR(50),
nome_fantazia VARCHAR(50),
email VARCHAR(50),
codigo INT NOT NULL,
PRIMARY KEY (codigo)
);
CREATE TABLE medicamento(
codigo INT,
nome VARCHAR(50),
id_fabricante INT,
data_de_validade DATE,
PRIMARY KEY (data_de_validade)
);
CREATE TABLE venda(
codigo_da_venda INT,
data_da_venda DATE,
cpf_do_cliente VARCHAR(12),
codigo_do_medicamento_vendido INT,
PRIMARY KEY(codigo_da_venda,codigo_do_medicamento_vendido)
);

