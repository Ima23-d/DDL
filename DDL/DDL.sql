-- ===================================
-- TABELA: ALUNOS
-- ===================================
CREATE TABLE alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    idade INT NOT NULL,
    peso DECIMAL(5,2) NOT NULL,
    gordura_corporal DECIMAL(5,2),
    nivel VARCHAR(20),
    deficiencia VARCHAR(100),
    email VARCHAR(100) NOT NULL,
    sexo VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

-- ===================================
-- TABELA: INSTRUTORES
-- ===================================
CREATE TABLE instrutores (
    id_instrutor SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cref VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);


-- ===================================
-- TABELA: TREINOS
-- ===================================
CREATE TABLE treinos (
    id_treinos SERIAL PRIMARY KEY,
    especificacoes TEXT NOT NULL,
    id_instrutor INT NOT NULL,
    FOREIGN KEY (id_instrutor) REFERENCES instrutores(id_instrutor)
);

-- ===================================
-- TABELA: TREINOS_ALUNOS
-- ===================================
CREATE TABLE treinos_alunos (
    id_aluno INT NOT NULL,
    id_treinos INT NOT NULL,
    PRIMARY KEY (id_aluno, id_treinos),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_treinos) REFERENCES treinos(id_treinos)
);



