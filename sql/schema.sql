-- Criação do banco de dados
CREATE DATABASE filmes_db;

-- Conectar ao banco de dados
\c filmes_db;

-- Criação das tabelas
CREATE TABLE humor (
    id_humor SERIAL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE generos (
    id_genero SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE filmes_series (
    id_filme_serie SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    id_genero INT NOT NULL,
    id_humor INT NOT NULL,
    tipo VARCHAR(50) NOT NULL CHECK (tipo IN ('Filme', 'Série', 'Documentário')),
    ano_lancamento INT,
    rating DECIMAL(3,1),
    FOREIGN KEY (id_genero) REFERENCES generos(id_genero),
    FOREIGN KEY (id_humor) REFERENCES humor(id_humor)
);

-- Criação da view para consultas
CREATE VIEW recomendacoes_view AS
SELECT 
    f.titulo,
    g.nome AS genero,
    h.descricao AS humor,
    f.tipo,
    f.ano_lancamento,
    f.rating
FROM filmes_series f
JOIN generos g ON f.id_genero = g.id_genero
JOIN humor h ON f.id_humor = h.id_humor;
