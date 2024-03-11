CREATE DATABASE IF NOT EXISTS letterboxd;
USE letterboxd;
-- Tabela Usuário
CREATE TABLE Usuario (
    email VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL
);

-- Tabela Conta
CREATE TABLE Conta (
    username VARCHAR(255) PRIMARY KEY,
    senha VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    FOREIGN KEY (email) REFERENCES Usuario(email)
);

-- Tabela Seguir
CREATE TABLE Seguir (
    segue VARCHAR(255),
    seguido VARCHAR(255),
    data DATE NOT NULL,
    PRIMARY KEY (segue, seguido),
    FOREIGN KEY (segue) REFERENCES Conta(username),
    FOREIGN KEY (seguido) REFERENCES Conta(username)
);

-- Tabela Artigo
CREATE TABLE Artigo (
    username VARCHAR(255),
    data DATE,
    tipo VARCHAR(255) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    views INT NOT NULL DEFAULT 0,
    conteudo TEXT NOT NULL,
    PRIMARY KEY (username, data),
    FOREIGN KEY (username) REFERENCES Conta(username)
);

-- Tabela Obras
CREATE TABLE Obras (
    cod INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    genero VARCHAR(255)
);

-- Tabela Filmes
CREATE TABLE Filmes (
    cod INT PRIMARY KEY,
    elenco VARCHAR(255),
    atores VARCHAR(255),
    producao VARCHAR(255),
    diretor VARCHAR(255),
    duracao INT,
    FOREIGN KEY (cod) REFERENCES Obras(cod)
);

-- Tabela Atores
CREATE TABLE Atores (
    cod INT,
    ator VARCHAR(255),
    PRIMARY KEY (cod, ator),
    FOREIGN KEY (cod) REFERENCES Filmes(cod)
);

-- Tabela Producao
CREATE TABLE Producao (
    cod INT,
    producao VARCHAR(255),
    PRIMARY KEY (cod, producao),
    FOREIGN KEY (cod) REFERENCES Filmes(cod)
);

-- Tabela Livros
CREATE TABLE Livros (
    cod INT PRIMARY KEY,
    paginas INT,
    escritor VARCHAR(255),
    FOREIGN KEY (cod) REFERENCES Obras(cod)
);

-- Tabela Playlist
CREATE TABLE Playlist (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    nome VARCHAR(255) NOT NULL,
    FOREIGN KEY (username) REFERENCES Conta(username)
);

-- Tabela Avalia
CREATE TABLE Avalia (
    cod INT,
    username VARCHAR(255),
    review TEXT,
    data DATE NOT NULL,
    estrelas DECIMAL(2,1) NOT NULL,
    PRIMARY KEY (cod, username),
    FOREIGN KEY (cod) REFERENCES Obras(cod) ON DELETE CASCADE,
    FOREIGN KEY (username) REFERENCES Conta(username) ON DELETE CASCADE
);

-- Tabela Comentario
CREATE TABLE Comentario (
    id INT AUTO_INCREMENT,
    data DATE NOT NULL,
    texto TEXT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    cod INT,
    username VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (cod) REFERENCES Obras(cod) ON DELETE CASCADE,
    FOREIGN KEY (username) REFERENCES Conta(username) ON DELETE CASCADE
);

-- Tabela Adiciona
CREATE TABLE Adiciona (
    ID INT,
    COD INT,
    USERNAME VARCHAR(255),
    DATA DATE NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (COD) REFERENCES Obras(cod),
    FOREIGN KEY (USERNAME) REFERENCES Conta(username)
);
