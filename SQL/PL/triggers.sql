-- CRIA UMA TRIGGER PARA IMPIRIMIR O NOME DA PLAYLIST QUANDO OCORRE UM INSERT NA TABELA ADICIONA ADICIONA
CREATE OR REPLACE TRIGGER TG_AFTER_ADICIONA_INSERT
AFTER INSERT
ON Adiciona
FOR EACH ROW
DECLARE 
    v_playlist_id Playlist.nome%TYPE;
BEGIN 
    SELECT nome INTO v_playlist_id 
    FROM Playlist 
    WHERE id = :NEW.id;
  
    DBMS_OUTPUT.PUT_LINE('Obra adicionada à playlist: ' || v_playlist_id || ', User: ' || :NEW.username); 
END;

-- TRIGGER QUE RECEBE O MÁXIMO DO ID DE PLAYLIST E MANDA PARA UM PROCEDURE INSERIR NUMA TABELA
CREATE OR REPLACE TRIGGER TG_AFTER_CONTA_INSERT
AFTER INSERT
ON Conta
FOR EACH ROW
DECLARE
    id_playlist playlist.id%TYPE;
    favoritos VARCHAR2(255) := 'Favoritos';
BEGIN
    SELECT MAX(ID)+1 INTO id_playlist
    FROM playlist;
    PR_INSERT_PLAYLIST(id_playlist, favoritos, :NEW.username);
END;

-- mostrar os artigos com o tipo igual e maiores views para recomendações personalizadas
CREATE OR REPLACE TRIGGER TG_ARTIGO_INSERT
BEFORE INSERT
ON Artigo
FOR EACH ROW
DECLARE
    tipo_artigo Artigo.tipo%TYPE;
    resultado VARCHAR2(255);
BEGIN
	tipo_artigo := :NEW.tipo;

	resultado := FUNC_RECOMENDACAO_ARTIGOS(tipo_artigo);

	DBMS_OUTPUT.PUT_LINE(resultado);
END;

