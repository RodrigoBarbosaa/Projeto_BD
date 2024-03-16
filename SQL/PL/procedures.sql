-- PROCEDURE RESPONSÁVEL POR ADICIONAR A PLAYLIST DE FAVORITOS
CREATE OR REPLACE PROCEDURE PR_INSERT_PLAYLIST (id_playlist IN NUMBER, favoritos IN VARCHAR2, username_conta IN VARCHAR2)
IS
BEGIN
    INSERT INTO Playlist (id, username, nome) VALUES (id_playlist, username_conta, favoritos);
    DBMS_OUTPUT.PUT_LINE('Playlist criada'); 
END;

-- procedure para devolver todos os comentarios de uma determinada conta
CREATE OR REPLACE TYPE tipo_comentarios AS TABLE OF CLOB;

CREATE OR REPLACE PROCEDURE PR_CONTA_COMENTARIOS (username_conta IN VARCHAR2)
IS
    comentarios tipo_comentarios;
BEGIN
    SELECT texto BULK COLLECT INTO comentarios
    FROM comentario c
    WHERE username_conta = c.nome;
    
    FOR i IN 1..comentarios.COUNT 
    LOOP
        DBMS_OUTPUT.PUT_LINE(comentarios(i));
    END LOOP;
END;
--  executar esse comando: EXECUTE PR_CONTA_COMENTARIOS(<NOME_DO_USUARIO>);