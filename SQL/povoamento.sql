INSERT INTO usuario (email, nome, cpf) VALUES
('joao.s@example.com', 'João', '12345678900'),
('maria.o@example.com', 'Maria', '98765432100'),
('pedro.s@example.com', 'Pedro', '45678912300'),
('ana.c@example.com', 'Ana', '32165498700'),
('carlos.p@example.com', 'Carlos', '78912345600'),
('juliana.f@example.com', 'Juliana', '65498732100'),
('lucas.a@example.com', 'Lucas', '23456789000'),
('luiza.s@example.com', 'Luiza', '87654321000'),
('marcelo.l@example.com', 'Marcelo', '34567890100'),
('camila.r@example.com', 'Camila', '67890123400');

INSERT INTO Conta (username, senha, email) VALUES
('joao.s', 'senha123', 'joao.s@example.com'),
('maria.o', 'senha456', 'maria.o@example.com'),
('pedro.s', 'senha789', 'pedro.s@example.com'),
('ana.c', 'senhaabc', 'ana.c@example.com'),
('carlos.p', 'senha1234', 'carlos.p@example.com'),
('juliana.f', 'senha7890', 'juliana.f@example.com'),
('lucas.a', 'senhaabc1', 'lucas.a@example.com'),
('luiza.s', 'senha12345', 'luiza.s@example.com'),
('marcelo.l', 'senha4567', 'marcelo.l@example.com'),
('camila.r', 'senha78901', 'camila.r@example.com');

INSERT INTO Obras (nome, genero) VALUES
('Dom Quixote', 'Romance'),
('1984', 'Ficção Científica'),
('Duna 2', 'Ficção Científica'),
('Clube da Luta', 'Suspense'),
('O Senhor dos Anéis', 'Fantasia'),
('Interstellar', 'Ficção Científica'),
('Harry Potter e a Pedra Filosofal', 'Fantasia'),
('Psicopata Americano', 'Comédia'),
('Amor e Outras Drogas', 'Comédia Romântica'),
('A Metamorfose', 'Ficção Absurda'),
('Batman O Cavaleiro Das Trevas', 'Ação');

INSERT INTO Avalia (cod, username, data, review, estrelas) VALUES
(1, 'marcelo.l', '2023-12-08', 'AMEI ESTE LIVRO, ROMANCE DE PRIMEIRA CLASSE. DOM QUIXOTE É MUITO BRABO NA PORRADA.', 2.0),
(3, 'juliana.f', '2024-03-10', 'FILME DE PRIMEIRA CLASSE, COBRONA BEM DETALHADA E GRANDE.', 4.5),
(10, 'ana.c', '2024-01-23', 'QUE BARATONA SAPECA! LIVRO IMPECÁVEL E MUDOU MINHA PERCEPÇÃO DE MUNDO.', 5.0),
(6, 'maria.o', '2023-12-29', 'BURACO NEGROOOOOOOOOOOOOOOOOOOOOOOOO.', 5.0),
(7, 'joao.s', '2024-01-12', 'ARRASTA A TABACA NA VARA VAI SENTANDO NA VASSOURA EITA BRUXINHA RABUDA.', 4.0);

INSERT INTO Livros (cod, paginas, escritor) VALUES
(1, 1033, 'Miguel de Cervantes'),
(2, 416, 'George Orwell'),
(5, 1568, 'J.R.R. Tolkien'),
(7, 208, 'J. K. Rowling'),
(10, 112 ,'Franz Kafka');

INSERT INTO Filmes (cod, elenco, atores, producao, diretor, duracao) VALUES
(3, 'Thimothee Chalamet', 'Zendaya', 'Geydson', 'Denis Villeneuve', 160),
(4, 'Edward Norton', 'Brad Pitt', 'Antonio', 'David Fincher', 140),
(6, 'Matthew McConaughey', 'Jessica Chastian', 'Rodrigo', 'Christopher Nolan', 160),
(8, 'Christian Bale', 'Jared Leto', 'Gabriel', 'Mary Harron', 100),
(9, 'Robson Fidalgo', 'Clara', 'Mariana', 'Pericles Sardinha', 110),
(11, 'Christian Bale', 'Morgan Freeman', 'Rodrigo', 'Christopher Nolan', 150);

INSERT INTO atores (cod, ator) VALUES
(3, 'Zendaya'),
(4, 'Brad Pitt'),
(6, 'Jessica Chastian'),
(8, 'Jared Leto'),
(9, 'Clara');

INSERT INTO producao (cod, producao) VALUES
(3, 'Geydson'),
(4, 'Antonio'),
(6, 'Rodrigo'),
(8, 'Gabriel'),
(9, 'Mariana');

INSERT INTO Artigo (username, titulo, conteudo, tipo, views, data) VALUES
('joao.s', 'O livro mais vendido de todos os tempos, depois da bíblia', 'velho porém muito atual em seus temas. Don quixote é um personagem muito interessante', 'Resenha', 3, '2017-02-04'),
('maria.o', 'Amor e outras drogas', 'FILME FOFÍSSIMO E EMOCIONANTE ANNE HATHAWAY E JAKE GYLLENHAALL MEUS FAVS <3', 'Resenha', 18, '2022-12-01'),
('ana.c', 'Harry potter', 'dos meus livros do harry é o meu favorito!', 'Resenha', 0, '2016-07-29'),
('ana.c', 'A metamorfose', 'kafkaesco', 'Resenha', 2, '2024-03-10'),
('carlos.p', 'A obra prima de kafka', 'o titulo já diz tudo', 'Resenha', 2893, '2021-03-21'),
('marcelo.l', 'uma fantasia masculina sem pé nem cabeça', 'nossa q horrível esse filme', 'Artigo', 342, '2020-05-18'),
('lucas.a', '5 estrelas', 'amei gente recomendo para todo mundo que tem pai', 'Artigo', 97, '2022-04-19'),
('lucas.a', 'deplorável', 'livro chato gostei não', 'Artigo', 8, '2018-09-03'),
('luiza.s', 'OSCAR-WORTHY', 'esse filme vai ganhar todas as suas indicações ao oscar viu se preparem pra lavada que vai ser', 'Artigo', 972, '2011-02-11'),
('juliana.f', 'meh', ':/', 'Resenha', 0, '2019-10-23');

INSERT INTO comentario (cod, username, nome, texto, data) VALUES
(3, 'juliana.f', 'marcelo.l', 'concordo que a cobrona é grande mas a minha é maior.', '2024-03-10'),
(3, 'juliana.f', 'lucas.a', 'IH ALA QUE PAPO É ESSE KSKSKSKSKSKSK', '2024-03-10'),
(7, 'joao.s', 'maria.o', 'KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK CHAPOU LEGAL', '2024-01-29'),
(7, 'joao.s', 'maria.o', 'ME CHAMA DE HARRY PORRAAAAAAA!', '2024-01-12'),
(7, 'joao.s', 'carlos.p', 'SE ACHA O ENGRAÇADINHO NE OTARIO', '2024-01-13'),
(10, 'ana.c', 'juliana.f', 'AMO BARATAS TAMBEM', '2024-01-23');

INSERT INTO Playlist (username, nome) VALUES
('joao.s', 'Arafilmes'),
('maria.o', 'Melhores filmes de terror de 1945'),
('juliana.f', 'Filmes de Ficção'),
('juliana.f', 'Playlist Lua de Mel'),
('ana.c', 'Filmes com conteúdo +18');

INSERT INTO Adiciona (id, cod, username, data) VALUES
(1, 11, 'joao.s', '2024-03-10'),
(1, 8, 'joao.s', '2024-03-10'),
(1, 6, 'joao.s', '2024-03-9'),
(1, 1, 'joao.s', '2024-03-01'),
(1, 5, 'joao.s', '2024-03-10'),
(1, 3, 'maria.o', '2024-03-02'),
(3, 3, 'juliana.f', '2024-02-29'),
(3, 6, 'ana.c', '2024-03-01'),
(4, 9, 'juliana.f', '2024-03-02'),
(4, 2, 'lucas.a', '2024-03-02'),
(4, 3, 'lucas.a', '2024-03-02'),
(5, 7, 'ana.c', '2024-03-08');
