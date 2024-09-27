create database Banco;
use Banco;

CREATE TABLE Cliente (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    RG VARCHAR(10) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    Rua VARCHAR(255) NOT NULL,
    Numero_Casa VARCHAR(10) NOT NULL,
    Bairro VARCHAR(100) NOT NULL
);
CREATE TABLE Dependente (
    ID_Dependentes INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente) 
);

INSERT INTO Cliente (Nome, CPF, RG, Telefone, Rua, Numero_Casa, Bairro)
VALUES ('João Silva', '12345678901', '123456789', '(11) 91234-5678', 'Rua A', '123', 'Centro'),
       ('João Silva', '12345678901', '123456789', '(11) 91234-5678', 'Rua A', '123', 'Centro'),
       ('Maria Oliveira', '23456789012', '234567890', '(11) 92345-6789', 'Rua B', '456', 'Jardim'),
       ('Carlos Santos', '34567890123', '345678901', '(11) 93456-7890', 'Rua C', '789', 'Vila'),
       ('Paulo Almeida', '56789012345', '567890123', '(11) 95678-9012', 'Rua E', '202', 'Bairro Novo');

INSERT INTO Dependente (Nome, CPF, ID_Cliente)
VALUES 
    ('Maria Silva', '67890123456', 1),
    ('José Silva', '78901234567', 1),
    ('Lucas Oliveira', '89012345678', 2),
    ('Fernanda Costa', '90123456789', 2),
    ('Renato Santos', '01234567890', 3),
    ('Sofia Almeida', '12345678901', 4),
    ('Rafael Oliveira', '23456789012', 5),
    ('Juliana Silva', '34567890123', 5);
UPDATE Cliente
SET Nome = 'João Pedro', Rua = 'Rua F', Numero_Casa = '303', Bairro = 'Centro Histórico'
WHERE ID_Cliente = 1;

UPDATE Cliente
SET Nome = 'Carlos Eduardo', Rua = 'Rua G', Numero_Casa = '404', Bairro = 'Parque'
WHERE ID_Cliente = 3;

UPDATE Cliente
SET Nome = 'Paulo Henrique', Rua = 'Rua H', Numero_Casa = '505', Bairro = 'Lagoa'
WHERE ID_Cliente = 5;
	DELETE FROM Dependente WHERE ID_Dependentes IN (2, 5, 7);
    