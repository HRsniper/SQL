-- SELECT DISTINCT
    /* A instrução SELECT DISTINCT é usada para retornar apenas valores 
        distintos (diferentes que nao sejam iguais). */

    /* Sintaxe */
    -- SELECT DISTINCT column1, column2, ... FROM table_name;
    /* todos os campos disponíveis na tabela, use a seguinte sintaxe: */
    -- SELECT * FROM table_name;

-- COUNT()
    -- A função COUNT() retorna o número de linhas que correspondem a um critério especificado.
    /* Sintaxe */
    -- SELECT COUNT(*) FROM table_name;
    -- SELECT COUNT(column_name) FROM table_name;

SELECT DISTINCT pais FROM Usuarios;

SELECT COUNT(pais) FROM Usuarios;

SELECT COUNT(DISTINCT pais) FROM Usuarios;