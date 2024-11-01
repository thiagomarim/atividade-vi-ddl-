-- Inserção dos tipos de humor
INSERT INTO humor (descricao) VALUES 
    ('Muito triste'),
    ('Triste'),
    ('Feliz'),
    ('Muito feliz');

-- Inserção dos gêneros
INSERT INTO generos (nome) VALUES 
    ('Drama inspirador'),
    ('Comédia leve'),
    ('Documentário motivacional'),
    ('Drama leve'),
    ('Comédia romântica'),
    ('Aventura'),
    ('Comédia'),
    ('Musical'),
    ('Comédia exagerada'),
    ('Fantasia'),
    ('Fantasia alegre');

-- Inserção de filmes e séries
INSERT INTO filmes_series (titulo, id_genero, id_humor, tipo, ano_lancamento, rating) VALUES 
    ('Forrest Gump', 
        (SELECT id_genero FROM generos WHERE nome = 'Drama inspirador'),
        (SELECT id_humor FROM humor WHERE descricao = 'Muito triste'),
        'Filme', 1994, 8.8),
    
    ('Steve Jobs: O Homem e a Máquina',
        (SELECT id_genero FROM generos WHERE nome = 'Documentário motivacional'),
        (SELECT id_humor FROM humor WHERE descricao = 'Muito triste'),
        'Documentário', 2015, 7.2),
    
    ('Brooklyn Nine-Nine',
        (SELECT id_genero FROM generos WHERE nome = 'Comédia leve'),
        (SELECT id_humor FROM humor WHERE descricao = 'Triste'),
        'Série', 2013, 8.4),
    
    ('Harry Potter e a Pedra Filosofal',
        (SELECT id_genero FROM generos WHERE nome = 'Fantasia'),
        (SELECT id_humor FROM humor WHERE descricao = 'Triste'),
        'Filme', 2001, 7.6),
    
    ('Modern Family',
        (SELECT id_genero FROM generos WHERE nome = 'Comédia'),
        (SELECT id_humor FROM humor WHERE descricao = 'Feliz'),
        'Série', 2009, 8.5),
    
    ('Paddington',
        (SELECT id_genero FROM generos WHERE nome = 'Fantasia alegre'),
        (SELECT id_humor FROM humor WHERE descricao = 'Muito feliz'),
        'Filme', 2014, 7.2),
    
    ('La La Land',
        (SELECT id_genero FROM generos WHERE nome = 'Musical'),
        (SELECT id_humor FROM humor WHERE descricao = 'Feliz'),
        'Filme', 2016, 8.0),
    
    ('Como eu era antes de você',
        (SELECT id_genero FROM generos WHERE nome = 'Comédia romântica'),
        (SELECT id_humor FROM humor WHERE descricao = 'Triste'),
        'Filme', 2016, 7.4);
