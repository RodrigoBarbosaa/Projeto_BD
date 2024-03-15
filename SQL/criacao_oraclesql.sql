-- Tabela Usuário
CREATE TABLE Usuario (
    email VARCHAR2(255) PRIMARY KEY,
    nome VARCHAR2(255) NOT NULL,
    cpf VARCHAR2(11) UNIQUE NOT NULL
);

-- Tabela Conta
CREATE TABLE Conta (
    username VARCHAR2(255) PRIMARY KEY,
    senha VARCHAR2(255) NOT NULL,
    email VARCHAR2(255) UNIQUE,
    CONSTRAINT fk_email FOREIGN KEY (email) REFERENCES Usuario(email)
);

-- Tabela Seguir
CREATE TABLE Seguir (
    segue VARCHAR2(255),
    seguido VARCHAR2(255),
    data DATE NOT NULL,
    CONSTRAINT pk_seguir PRIMARY KEY (segue, seguido),
    CONSTRAINT fk_seguir_username FOREIGN KEY (segue) REFERENCES Conta(username),
    CONSTRAINT fk_seguido_username FOREIGN KEY (seguido) REFERENCES Conta(username)
);

-- Tabela Artigo
CREATE TABLE Artigo (
    username VARCHAR2(255),
    data DATE,
    tipo VARCHAR2(255) NOT NULL,
    titulo VARCHAR2(255) NOT NULL,
    views NUMBER(10,0) NOT NULL,
    conteudo CLOB NOT NULL,
    CONSTRAINT pk_artigo PRIMARY KEY (username, data),
    CONSTRAINT fk_artigo_username FOREIGN KEY (username) REFERENCES Conta(username)
);

-- Tabela Obras
CREATE TABLE Obras (
    cod NUMBER PRIMARY KEY,
    nome VARCHAR2(255),
    genero VARCHAR2(255)
);

-- Tabela Filmes
CREATE TABLE Filmes (
    cod NUMBER PRIMARY KEY,
    elenco VARCHAR2(255),
    atores VARCHAR2(255),
    producao VARCHAR2(255),
    diretor VARCHAR2(255),
    duracao NUMBER,
    CONSTRAINT fk_filmes_cod FOREIGN KEY (cod) REFERENCES Obras(cod)
);

-- Tabela Atores
CREATE TABLE Atores (
    cod NUMBER,
    ator VARCHAR2(255),
    CONSTRAINT pk_atores PRIMARY KEY (cod, ator),
    CONSTRAINT fk_atores_cod FOREIGN KEY (cod) REFERENCES Filmes(cod)
);

-- Tabela Producao
CREATE TABLE Producao (
    cod NUMBER,
    producao VARCHAR2(255),
    CONSTRAINT pk_producao PRIMARY KEY (cod, producao),
    CONSTRAINT fk_producao_cod FOREIGN KEY (cod) REFERENCES Filmes(cod)
);

-- Tabela Livros
CREATE TABLE Livros (
    cod NUMBER PRIMARY KEY,
    paginas NUMBER,
    escritor VARCHAR2(255),
    CONSTRAINT fk_livros_cod FOREIGN KEY (cod) REFERENCES Obras(cod)
);

-- Tabela Playlist
CREATE TABLE Playlist (
    id NUMBER PRIMARY KEY,
    username VARCHAR2(255),
    nome VARCHAR2(255) NOT NULL,
    CONSTRAINT fk_playlist_username FOREIGN KEY (username) REFERENCES Conta(username)
);

-- Tabela Avalia
CREATE TABLE Avalia (
    cod NUMBER,
    username VARCHAR2(255),
    review CLOB,
    data DATE NOT NULL,
    estrelas NUMBER(3,1) NOT NULL,
    CONSTRAINT pk_avalia PRIMARY KEY (cod, username),
    CONSTRAINT fk_avalia_cod FOREIGN KEY (cod) REFERENCES Obras(cod) ON DELETE CASCADE,
    CONSTRAINT fk_avalia_username FOREIGN KEY (username) REFERENCES Conta(username) ON DELETE CASCADE
);

-- Tabela Comentario
CREATE TABLE Comentario (
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    data DATE NOT NULL,
    texto CLOB NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    cod NUMBER,
    username VARCHAR2(255),
    CONSTRAINT pk_comentario PRIMARY KEY (id),
    CONSTRAINT fk_comentario_cod FOREIGN KEY (cod) REFERENCES Obras(cod) ON DELETE CASCADE,
    CONSTRAINT fk_comentario_username FOREIGN KEY (username) REFERENCES Conta(username) ON DELETE CASCADE
);

-- Tabela Adiciona
CREATE TABLE Adiciona (
    ID NUMBER,
    COD NUMBER,
    USERNAME VARCHAR2(255),
    DATA DATE NOT NULL,
    CONSTRAINT pk_adiciona PRIMARY KEY (ID, COD, USERNAME),
    CONSTRAINT fk_adiciona_cod FOREIGN KEY (COD) REFERENCES Obras(cod),
    CONSTRAINT fk_adiciona_username FOREIGN KEY (USERNAME) REFERENCES Conta(username)
);
