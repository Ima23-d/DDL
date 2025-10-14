CREATE TABLE Alunos (
    ID_Aluno SERIAL PRIMARY KEY,
    Nome_Aluno VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    Data_Nascimento DATE NOT NULL,
    Idade INT NOT NULL,
    Peso DECIMAL(5,2) NOT NULL,
    Gordura_Corporal DECIMAL(5,2),
    Nivel VARCHAR(20),
    Deficiencia VARCHAR(100),
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE Instrutores (
    ID_Instrutor SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CREF VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE Planos (
    ID_Planos SERIAL PRIMARY KEY,
    Nome_Plano VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE Treinos (
    ID_Treinos SERIAL PRIMARY KEY,
    Especificacoes TEXT NOT NULL,
    ID_Instrutor INT NOT NULL,
    FOREIGN KEY (ID_Instrutor) REFERENCES Instrutores(ID_Instrutor)
);

CREATE TABLE Treinos_alunos (
    ID_Aluno INT NOT NULL,
    ID_Treinos INT NOT NULL,
    PRIMARY KEY (ID_Aluno, ID_Treinos),
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
    FOREIGN KEY (ID_Treinos) REFERENCES Treinos(ID_Treinos)
);

CREATE TABLE Escolhe (
    ID_Aluno INT NOT NULL,
    ID_Planos INT NOT NULL,
    PRIMARY KEY (ID_Aluno, ID_Planos),
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
    FOREIGN KEY (ID_Planos) REFERENCES Planos(ID_Planos)
);
