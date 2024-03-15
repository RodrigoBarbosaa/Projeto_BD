-- PROCEDURE RESPONSÁVEL POR ADICIONAR A PLAYLIST DE FAVORITOS
CREATE OR REPLACE PROCEDURE PR_INSERT_PLAYLIST (id_playlist IN NUMBER, favoritos IN VARCHAR2, username_conta IN VARCHAR2)
IS
BEGIN
    INSERT INTO Playlist (id, username, nome) VALUES (id_playlist, username_conta, favoritos);
    DBMS_OUTPUT.PUT_LINE('Playlist criada'); 
END;