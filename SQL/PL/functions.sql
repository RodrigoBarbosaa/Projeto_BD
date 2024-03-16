-- function para trazer o artigo do mesmo tipo que tenha a maior view
CREATE OR REPLACE FUNCTION FUNC_RECOMENDACAO_ARTIGOS (tipo_artigo VARCHAR2) 
RETURN VARCHAR2
IS
    resultado VARCHAR2(255);
BEGIN
    SELECT titulo INTO resultado FROM (SELECT views, titulo
    FROM Artigo a
    WHERE tipo = tipo_artigo
    ORDER BY views DESC) WHERE ROWNUM <= 1;
    RETURN resultado;
END;

CREATE OR REPLACE FUNCTION FN_CONTA_COMENTARIOS(username_conta IN VARCHAR2) RETURN tipo_comentarios PIPELINED IS
    v_comentario comentario.texto%TYPE;
BEGIN
    FOR c IN (SELECT texto FROM comentario WHERE nome = username_conta) LOOP
        PIPE ROW (c.texto);
    END LOOP;
    RETURN;
END;
-- SELECT * FROM TABLE(FN_CONTA_COMENTARIOS('maria.o'));
