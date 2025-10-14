CREATE TABLE Alunos (
    ID_Aluno SERIAL PRIMARY KEY,
    Nome_Aluno VARCHAR(100),
    CPF VARCHAR(14) UNIQUE,
    Data_Nascimento DATE,
    Idade INT,
    Peso DECIMAL(5,2),
    Gordura_Corporal DECIMAL(5,2),
    Nivel VARCHAR(20),
    Deficiencia VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Instrutores (
    ID_Instrutor SERIAL PRIMARY KEY,
    Nome VARCHAR(100),
    CREF VARCHAR(20) UNIQUE
);

CREATE TABLE Planos (
    ID_Planos SERIAL PRIMARY KEY,
    Nome_Plano VARCHAR(100),
    Descricao TEXT,
    Valor DECIMAL(10,2)
);

CREATE TABLE Treinos (
    ID_Treinos SERIAL PRIMARY KEY,
    Especificacoes TEXT,
    ID_Instrutor INT,
    FOREIGN KEY (ID_Instrutor) REFERENCES Instrutores(ID_Instrutor)
);

CREATE TABLE Treinos_alunos (
    ID_Aluno INT,
    ID_Treinos INT,
    PRIMARY KEY (ID_Aluno, ID_Treinos),
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
    FOREIGN KEY (ID_Treinos) REFERENCES Treinos(ID_Treinos)
);

CREATE TABLE Escolhe (
    ID_Aluno INT,
    ID_Planos INT,
    PRIMARY KEY (ID_Aluno, ID_Planos),
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
    FOREIGN KEY (ID_Planos) REFERENCES Planos(ID_Planos)

);

