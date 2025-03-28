CREATE TABLE Funcionarios (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento_id INT NOT NULL,
    cargo_id INT NOT NULL,
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(id),
	FOREIGN KEY (cargo_id) REFERENCES Cargos(id)
);

CREATE TABLE Departamentos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Cargos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    nivel VARCHAR(50) NOT NULL
);


INSERT INTO Cargos (nome, nivel) VALUES 
('Analista', 'Pleno'),
('Gerente', 'Sênior'),
('Assistente', 'Júnior'),
('Coordenador','Sênior'),
('Desenvolvedor','Pleno');

INSERT INTO Departamentos (nome) VALUES ('TI'), ('RH'), ('Fincanceiro'), ('Marketing');

INSERT INTO Funcionarios (nome, data_nascimento, salario, departamento_id,cargo_id) VALUES 
('Ana Silva', '1985-06-15', 5500.00, 1, 5),
('Carlos Santos','1990-03-22', 4800.00, 2,1),
('Bruna Costa','1987-12-10', 6000.00,3,2),
('Daniel Oliveira','1992-08-05', 5200.00, 1,5),
('Fernanda Lima','1995-09-30', 4500.00, 2,3),
('Gustavo Souza','1980-01-25', 7000.00, 3,2),
('Helena Martins','1983-1-17', 5300.00, 1,4),
('Igor Ferreira','1991-07-08', 4900.00, 2,1),
('Juliana Rocha','1989-04-19', 5600.00, 3,2),
('Lucas Mendes','1993-06-23', 5100.00, 1,5);

SELECT * FROM Cargos;
SELECT * FROM Departamentos;
SELECT * FROM Funcionarios;

