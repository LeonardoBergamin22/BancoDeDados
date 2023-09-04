
CREATE TABLE departamento (
    sigla_depto VARCHAR(15),
    nome_depto VARCHAR(50),
    qtd_funcionarios_depto INT NOT NULL CHECK(qtd_funcionarios_depto >= 0),
    PRIMARY KEY (sigla_depto, nome_depto)
);

CREATE TABLE funcionario (
    codigo_funcionario INT CHECK(codigo_funcionario >= 0),
    nome_funcionario VARCHAR(50) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    sigla_depto VARCHAR(15) NOT NULL,
    PRIMARY KEY (codigo_funcionario, nome_funcionario),
    FOREIGN KEY (sigla_depto) REFERENCES departamento(sigla_depto)
);

CREATE TABLE projeto (
    sigla_projeto VARCHAR(15),
    nome_projeto VARCHAR(50),
    codigo_funcionario INT NOT NULL CHECK(codigo_funcionario >= 0),
    sigla_depto VARCHAR(15) NOT NULL,
    PRIMARY KEY (sigla_projeto, nome_projeto),
    FOREIGN KEY (sigla_depto) REFERENCES departamento(sigla_depto),
    FOREIGN KEY (codigo_funcionario) REFERENCES funcionario(codigo_funcionario)
);

INSERT INTO departamento (sigla_depto, nome_depto, qtd_funcionarios_depto)
VALUES
('ADM', 'Adiministracao', 4),
('SC', 'Seguranca', 7),
('GRT', 'Gerente', 1);

select * from departamento;

DELETE FROM departamento WHERE sigla_depto LIKE "VND%";





INSERT INTO funcionario (codigo_funcionario, nome_funcionario, cargo, sigla_depto)
VALUES

(1274, 'Zoro', 'Programador', 'PMD'),
(9274, 'Vegeta', 'Programador', 'PMD'),
(9299, 'Sasuke', 'Programador', 'PMD'),
(9874, 'Hiei', 'Programador', 'PMD');


