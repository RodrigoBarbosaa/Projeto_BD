INSERT ALL 
INTO Usuario (email, nome, cpf) VALUES ('joao.s@example.com', 'João', '12345678900')
INTO Usuario (email, nome, cpf) VALUES ('maria.o@example.com', 'Maria', '98765432100')
INTO Usuario (email, nome, cpf) VALUES ('pedro.s@example.com', 'Pedro', '45678912300')
INTO Usuario (email, nome, cpf) VALUES ('ana.c@example.com', 'Ana', '32165498700')
INTO Usuario (email, nome, cpf) VALUES ('carlos.p@example.com', 'Carlos', '78912345600')
INTO Usuario (email, nome, cpf) VALUES ('juliana.f@example.com', 'Juliana', '65498732100')
INTO Usuario (email, nome, cpf) VALUES ('lucas.a@example.com', 'Lucas', '23456789000')
INTO Usuario (email, nome, cpf) VALUES ('luiza.s@example.com', 'Luiza', '87654321000')
INTO Usuario (email, nome, cpf) VALUES ('marcelo.l@example.com', 'Marcelo', '34567890100')
INTO Usuario (email, nome, cpf) VALUES ('camila.r@example.com', 'Camila', '67890123400')
SELECT * FROM dual;

INSERT ALL 
INTO Conta (username, senha, email) VALUES ('joao.s', 'senha123', 'joao.s@example.com')
INTO Conta (username, senha, email) VALUES ('maria.o', 'senha456', 'maria.o@example.com')
INTO Conta (username, senha, email) VALUES ('pedro.s', 'senha789', 'pedro.s@example.com')
INTO Conta (username, senha, email) VALUES ('ana.c', 'senhaabc', 'ana.c@example.com')
INTO Conta (username, senha, email) VALUES ('carlos.p', 'senha1234', 'carlos.p@example.com')
INTO Conta (username, senha, email) VALUES ('juliana.f', 'senha7890', 'juliana.f@example.com')
INTO Conta (username, senha, email) VALUES ('lucas.a', 'senhaabc1', 'lucas.a@example.com')
INTO Conta (username, senha, email) VALUES ('luiza.s', 'senha12345', 'luiza.s@example.com')
INTO Conta (username, senha, email) VALUES ('marcelo.l', 'senha4567', 'marcelo.l@example.com')
INTO Conta (username, senha, email) VALUES ('camila.r', 'senha78901', 'camila.r@example.com')
SELECT * FROM dual;

INSERT ALL 
INTO Obras (cod, nome, genero) VALUES (1, 'Dom Quixote', 'Romance')
INTO Obras (cod, nome, genero) VALUES (2, '1984', 'Ficção Científica')
INTO Obras (cod, nome, genero) VALUES (3, 'Duna 2', 'Ficção Científica')
INTO Obras (cod, nome, genero) VALUES (4, 'Clube da Luta', 'Suspense')
INTO Obras (cod, nome, genero) VALUES (5, 'O Senhor dos Anéis', 'Fantasia')
INTO Obras (cod, nome, genero) VALUES (6, 'Interstellar', 'Ficção Científica')
INTO Obras (cod, nome, genero) VALUES (7, 'Harry Potter e a Pedra Filosofal', 'Fantasia')
INTO Obras (cod, nome, genero) VALUES (8, 'Psicopata Americano', 'Comédia')
INTO Obras (cod, nome, genero) VALUES (9, 'Amor e Outras Drogas', 'Comédia Romântica')
INTO Obras (cod, nome, genero) VALUES (10, 'A Metamorfose', 'Ficção Absurda')
INTO Obras (cod, nome, genero) VALUES (11, 'Batman O Cavaleiro Das Trevas', 'Ação')
SELECT * FROM dual;

INSERT ALL 
INTO Avalia (cod, username, data, review, estrelas) VALUES (1, 'marcelo.l', TO_DATE('2023-12-08', 'YYYY-MM-DD'), 'AMEI ESTE LIVRO, ROMANCE DE PRIMEIRA CLASSE. DOM QUIXOTE É MUITO BRABO NA PORRADA.', 2.0)
INTO Avalia (cod, username, data, review, estrelas) VALUES (3, 'juliana.f', TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'FILME DE PRIMEIRA CLASSE, COBRONA BEM DETALHADA E GRANDE.', 4.5)
INTO Avalia (cod, username, data, review, estrelas) VALUES (10, 'ana.c', TO_DATE('2024-01-23', 'YYYY-MM-DD'), 'QUE BARATONA SAPECA! LIVRO IMPECÁVEL E MUDOU MINHA PERCEPÇÃO DE MUNDO.', 5.0)
INTO Avalia (cod, username, data, review, estrelas) VALUES (6, 'maria.o', TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'BURACO NEGROOOOOOOOOOOOOOOOOOOOOOOOO.', 5.0)
INTO Avalia (cod, username, data, review, estrelas) VALUES (7, 'joao.s', TO_DATE('2024-01-12', 'YYYY-MM-DD'), 'ARRASTA A TABACA NA VARA VAI SENTANDO NA VASSOURA EITA BRUXINHA RABUDA.', 4.0)
INTO Avalia (cod, username, data, review, estrelas) VALUES (1, 'joao.s', TO_DATE('2024-01-23', 'YYYY-MM-DD'), 'BOM DIA PRINCESAAA PUFAVO SENTI NA GLOCK', 5.0);
SELECT * FROM dual;

INSERT ALL 
INTO Livros (cod, paginas, escritor) VALUES (1, 1033, 'Miguel de Cervantes')
INTO Livros (cod, paginas, escritor) VALUES (2, 416, 'George Orwell')
INTO Livros (cod, paginas, escritor) VALUES (5, 1568, 'J.R.R. Tolkien')
INTO Livros (cod, paginas, escritor) VALUES (7, 208, 'J. K. Rowling')
INTO Livros (cod, paginas, escritor) VALUES (10, 112 ,'Franz Kafka')
SELECT * FROM dual;

INSERT ALL 
INTO Filmes (cod, diretor, duracao) VALUES (3, 'Denis Villeneuve', 160)
INTO Filmes (cod, diretor, duracao) VALUES (4, 'David Fincher', 140)
INTO Filmes (cod, diretor, duracao) VALUES (6, 'Christopher Nolan', 160)
INTO Filmes (cod, diretor, duracao) VALUES (8, 'Mary Harron', 100)
INTO Filmes (cod, diretor, duracao) VALUES (9, 'Pericles Sardinha', 110)
INTO Filmes (cod, diretor, duracao) VALUES (11, 'Christopher Nolan', 150)
SELECT * FROM dual;

INSERT ALL 
INTO atores (cod, ator) VALUES (3, 'Zendaya')
INTO atores (cod, ator) VALUES (4, 'Brad Pitt')
INTO atores (cod, ator) VALUES (6, 'Jessica Chastian')
INTO atores (cod, ator) VALUES (8, 'Jared Leto')
INTO atores (cod, ator) VALUES (9, 'Clara')
SELECT * FROM dual;

INSERT ALL 
INTO producao (cod, producao) VALUES (3, 'Geydson')
INTO producao (cod, producao) VALUES (4, 'Antonio')
INTO producao (cod, producao) VALUES (6, 'Rodrigo')
INTO producao (cod, producao) VALUES (8, 'Gabriel')
INTO producao (cod, producao) VALUES (9, 'Mariana')
SELECT * FROM dual;

INSERT ALL
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('joao.s', 'O livro mais vendido de todos os tempos, depois da bíblia', 'velho porém muito atual em seus temas. Don quixote é um personagem muito interessante', 'Resenha', 3, TO_DATE('2017-02-04', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('maria.o', 'Amor e outras drogas', 'FILME FOFÍSSIMO E EMOCIONANTE ANNE HATHAWAY E JAKE GYLLENHAALL MEUS FAVS <3', 'Resenha', 18, TO_DATE('2022-12-01', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('ana.c', 'Harry potter', 'dos meus livros do harry é o meu favorito!', 'Resenha', 0, TO_DATE('2016-07-29', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('ana.c', 'A metamorfose', 'kafkaesco', 'Resenha', 2, TO_DATE('2024-03-10', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('carlos.p', 'A obra prima de kafka', 'o titulo já diz tudo', 'Resenha', 2893, TO_DATE('2021-03-21', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('marcelo.l', 'uma fantasia masculina sem pé nem cabeça', 'nossa q horrível esse filme', 'Artigo', 342, TO_DATE('2020-05-18', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('lucas.a', '5 estrelas', 'amei gente recomendo para todo mundo que tem pai', 'Artigo', 97, TO_DATE('2022-04-19', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('lucas.a', 'deplorável', 'livro chato gostei não', 'Artigo', 8, TO_DATE('2018-09-03', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('luiza.s', 'OSCAR-WORTHY', 'esse filme vai ganhar todas as suas indicações ao oscar viu se preparem pra lavada que vai ser', 'Artigo', 972, TO_DATE('2011-02-11', 'YYYY-MM-DD'))
INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES ('juliana.f', 'meh', ':/', 'Resenha', 0, TO_DATE('2019-10-23', 'YYYY-MM-DD'))
SELECT * FROM dual;

INSERT ALL
INTO comentario (id, cod, username, nome, texto, data) VALUES (1, 3, 'juliana.f', 'marcelo.l', 'concordo que a cobrona é grande mas a minha é maior.', TO_DATE('2024-03-10', 'YYYY-MM-DD'))
INTO comentario (id, cod, username, nome, texto, data) VALUES (2, 3, 'juliana.f', 'lucas.a', 'IH ALA QUE PAPO É ESSE KSKSKSKSKSKSK', TO_DATE('2024-03-10', 'YYYY-MM-DD'))
INTO comentario (id, cod, username, nome, texto, data) VALUES (3, 7, 'joao.s', 'maria.o', 'KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK CHAPOU LEGAL', TO_DATE('2024-01-29', 'YYYY-MM-DD'))
INTO comentario (id, cod, username, nome, texto, data) VALUES (4, 7, 'joao.s', 'maria.o', 'ME CHAMA DE HARRY PORRAAAAAAA!', TO_DATE('2024-01-12', 'YYYY-MM-DD'))
INTO comentario (id, cod, username, nome, texto, data) VALUES (5, 7, 'joao.s', 'carlos.p', 'SE ACHA O ENGRAÇADINHO NE OTARIO', TO_DATE('2024-01-13', 'YYYY-MM-DD'))
INTO comentario (id, cod, username, nome, texto, data) VALUES (6, 10, 'ana.c', 'juliana.f', 'AMO BARATAS TAMBEM', TO_DATE('2024-01-23', 'YYYY-MM-DD'))
SELECT * FROM dual;

INSERT ALL
INTO Playlist (id, username, nome) VALUES (1, 'joao.s', 'Arafilmes')
INTO Playlist (id, username, nome) VALUES (2, 'maria.o', 'Melhores filmes de terror de 1945')
INTO Playlist (id, username, nome) VALUES (3, 'juliana.f', 'Filmes de Ficção')
INTO Playlist (id, username, nome) VALUES (4, 'juliana.f', 'Playlist Lua de Mel')
INTO Playlist (id, username, nome) VALUES (5, 'ana.c', 'Filmes com conteúdo +18')
SELECT * FROM dual;

INSERT ALL 
INTO Adiciona (id, cod, username, data) VALUES (1, 11, 'joao.s', TO_DATE('2024-03-10', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (1, 8, 'joao.s', TO_DATE('2024-03-10', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (1, 6, 'joao.s', TO_DATE('2024-03-09', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (1, 1, 'joao.s', TO_DATE('2024-03-01', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (1, 5, 'joao.s', TO_DATE('2024-03-10', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (3, 3, 'maria.o', TO_DATE('2024-03-02', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (3, 3, 'juliana.f', TO_DATE('2024-02-29', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (3, 6, 'ana.c', TO_DATE('2024-03-01', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (4, 9, 'juliana.f', TO_DATE('2024-03-02', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (4, 2, 'lucas.a', TO_DATE('2024-03-02', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (4, 3, 'lucas.a', TO_DATE('2024-03-02', 'YYYY-MM-DD')) 
INTO Adiciona (id, cod, username, data) VALUES (5, 7, 'ana.c', TO_DATE('2024-03-08', 'YYYY-MM-DD')) 
SELECT * FROM dual;

INSERT ALL
INTO Seguir (segue, seguido, data) VALUES ('joao.s', 'maria.o', TO_DATE('2012-05-22', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('joao.s', 'juliana.f', TO_DATE('2012-05-22', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('joao.s', 'ana.c', TO_DATE('2012-05-27', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('lucas.a', 'maria.o', TO_DATE('2023-11-22', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('maria.o', 'juliana.f', TO_DATE('2022-09-03', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('maria.o', 'joao.s', TO_DATE('2012-05-22', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('maria.o', 'lucas.a', TO_DATE('2023-09-01', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('ana.c', 'maria.o', TO_DATE('2015-03-12', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('marcelo.l', 'juliana.f', TO_DATE('2017-12-09', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('juliana.f', 'marcelo.l', TO_DATE('2017-12-10', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('luiza.s', 'camila.r', TO_DATE('2021-04-13', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('luiza.s', 'maria.o', TO_DATE('2021-04-13', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('carlos.p', 'camila.r', TO_DATE('2017-03-21', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('camila.r', 'carlos.p', TO_DATE('2019-10-01', 'YYYY-MM-DD'))
INTO Seguir (segue, seguido, data) VALUES ('juliana.f', 'carlos.p', TO_DATE('2018-01-22', 'YYYY-MM-DD'))
SELECT * FROM dual;
