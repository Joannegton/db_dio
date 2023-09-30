-- Crie um banco de dados para as notas e faltas dos alunos
CREATE DATABASE Escola;

-- Use o banco de dados Escola
USE Escola;

-- Crie uma tabela para armazenar informações dos alunos
CREATE TABLE Alunos (
    AlunoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Sobrenome VARCHAR(255) NOT NULL,
    DataNascimento DATE,
    Sexo ENUM('Masculino', 'Feminino', 'Outro'),
    CPF VARCHAR(11) UNIQUE NOT NULL
);

-- Crie uma tabela para armazenar informações das disciplinas
CREATE TABLE Disciplinas (
    DisciplinaID INT AUTO_INCREMENT PRIMARY KEY,
    NomeDisciplina VARCHAR(255) NOT NULL
);

-- Crie uma tabela para armazenar informações das notas
CREATE TABLE Notas (
    NotaID INT AUTO_INCREMENT PRIMARY KEY,
    AlunoID INT,
    DisciplinaID INT,
    Nota FLOAT,
    FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID),
    FOREIGN KEY (DisciplinaID) REFERENCES Disciplinas(DisciplinaID)
);

-- Crie uma tabela para armazenar informações das faltas
CREATE TABLE Faltas (
    FaltaID INT AUTO_INCREMENT PRIMARY KEY,
    AlunoID INT,
    DisciplinaID INT,
    Quantidade INT,
    FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID),
    FOREIGN KEY (DisciplinaID) REFERENCES Disciplinas(DisciplinaID)
);

-- Inserir dados de alunos
INSERT INTO Alunos (Nome, Sobrenome, DataNascimento, Sexo, CPF)
VALUES
    ('João', 'Silva', '2005-03-15', 'Masculino', '12345678901'),
    ('Maria', 'Santos', '2006-06-20', 'Feminino', '23456789012'),
    ('Pedro', 'Oliveira', '2005-08-10', 'Outro', '34567890123');

-- Inserir dados de disciplinas
INSERT INTO Disciplinas (NomeDisciplina)
VALUES
    ('Matemática'),
    ('Português'),
    ('História'),
    ('Geografia');

-- Inserir notas dos alunos
INSERT INTO Notas (AlunoID, DisciplinaID, Nota)
VALUES
    (1, 1, 8.5),
    (1, 2, 9.0),
    (1, 3, 7.5),
    (2, 1, 9.0),
    (2, 2, 8.0),
    (2, 3, 8.5),
    (3, 1, 7.0),
    (3, 2, 7.5),
    (3, 3, 6.0);

-- Inserir faltas dos alunos
INSERT INTO Faltas (AlunoID, DisciplinaID, Quantidade)
VALUES
    (1, 1, 2),
    (1, 2, 1),
    (1, 3, 3),
    (2, 1, 0),
    (2, 2, 1),
    (2, 3, 2),
    (3, 1, 3),
    (3, 2, 2),
    (3, 3, 4);


-- Liste todos os alunos e suas notas em Matemática:
SELECT Alunos.Nome, Alunos.Sobrenome, Notas.Nota
FROM Alunos
INNER JOIN Notas ON Alunos.AlunoID = Notas.AlunoID
INNER JOIN Disciplinas ON Notas.DisciplinaID = Disciplinas.DisciplinaID
WHERE Disciplinas.NomeDisciplina = 'Matemática';


-- Quais alunos têm mais de 2 faltas em Português?
select alunos.nome, alunos.sobrenome, disciplinas.nomedisciplina, faltas.quantidade
from alunos
inner join faltas on alunos.alunoid = faltas.alunoid
inner join disciplinas on faltas.disciplinaid = disciplinas.disciplinaid
where faltas.quantidade > 2 and disciplinas.nomedisciplina = 'Matemática';

-- Quem são os alunos do sexo masculino?
SELECT Nome, Sobrenome
FROM Alunos
WHERE Sexo = 'Masculino';

-- Qual é a nota mais alta em cada disciplina?
SELECT Disciplinas.NomeDisciplina, MAX(Notas.Nota) AS NotaMaisAlta
FROM Disciplinas
INNER JOIN Notas ON Disciplinas.DisciplinaID = Notas.DisciplinaID
GROUP BY Disciplinas.NomeDisciplina;

-- Quantas faltas no total cada aluno tem?
SELECT Alunos.Nome, Alunos.Sobrenome, SUM(Faltas.Quantidade) AS TotalFaltas
FROM Alunos
INNER JOIN Faltas ON Alunos.AlunoID = Faltas.AlunoID
GROUP BY Alunos.Nome, Alunos.Sobrenome;

-- Quais alunos têm notas acima de 7.0 em todas as disciplinas?
SELECT Alunos.Nome, Alunos.Sobrenome
FROM Alunos
WHERE Alunos.AlunoID IN (
    SELECT Notas.AlunoID
    FROM Notas
    GROUP BY Notas.AlunoID
    HAVING MIN(Notas.Nota) > 7.0
);

-- Qual é a nota mais alta e a nota mais baixa da turma em Matemática?
SELECT MAX(Notas.Nota) AS NotaMaisAltaMatematica, MIN(Notas.Nota) AS NotaMaisBaixaMatematica
FROM Notas
INNER JOIN Disciplinas ON Notas.DisciplinaID = Disciplinas.DisciplinaID
WHERE Disciplinas.NomeDisciplina = 'Matemática';

-- Quantos alunos nasceram em 2005?
SELECT COUNT(*) AS TotalAlunosNascidosEm2005
FROM Alunos
WHERE YEAR(DataNascimento) = 2005;


select * from faltas;
select * from disciplinas;
select * from alunos;