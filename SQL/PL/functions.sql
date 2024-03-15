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

