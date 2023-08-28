CREATE TABLE Departamento(
SiglaDepto VARCHAR(50) NOT NULL,
NomeDepto VARCHAR(50) NOT NULL,
Quantidade INT,
PRIMARY KEY (SiglaDepto, NomeDepto)
);

CREATE TABLE Funcionario(
CodigoFunc INT,
NomeFunc VARCHAR(50),
idCargo INT NOT NULL,
SiglaDepto VARCHAR(15) NOT NULL,
PRIMARY KEY (codigoFunc, NomeFunc),
FOREIGN KEY (SiglaDepto) REFERENCES Departamento(SiglaDepto)
);

CREATE TABLE CargoFuncionario(
Id INT NOT NULL,
Nome VARCHAR(15) NOT NULL,
Descricao VARCHAR(15),
PRIMARY KEY (Id, Nome) 
);

CREATE TABLE Projeto (
SiglaProj VARCHAR(15) NOT NULL,
NomeProj VARCHAR(15) NOT NULL,
NomeFunc VARCHAR(15),
CodigoFunc INT,
SiglaDepto VARCHAR(15),
PRIMARY KEY (SiglaProj, NomeProj),
FOREIGN KEY (CodigoFunc) REFERENCES funcionario(CodigoFunc),
FOREIGN KEY (SiglaDepto) REFERENCES departamento(SiglaDepto)

);




