-- SELECT TOP
    /* A instrução SELECT TOP é usada para especificar o número de registros a serem retornados. */
        /* Nota: Nem todos os sistemas de banco de dados são compatíveis SELECT TOP. MySQL usa LIMIT e Oracle usa ROWNUM. */
    /* SQL Server / MS Access Syntax: */
    --     SELECT TOP number|percent column_name(s)
    --     FROM table_name
    --     WHERE condition;

    /* MySQL Syntax: */
    --     SELECT column_name(s)
    --     FROM table_name
    --     WHERE condition
    --     LIMIT number;

    /* Oracle Syntax: */
    --     SELECT column_name(s)
    --     FROM table_name
    --     WHERE ROWNUM <= number;

    -- SELECT TOP PERCENT
        /* A TOP PERCENT instrução SQL seleciona os primeiros % dos registros da tabela (para SQL Server / MS Access): */
    /* Sintaxe */
    -- SELECT TOP % PERCENT * FROM table_name;

    -- ORDER BY
        /* A instrução ORDER BY é usada para classificar o conjunto de resultados em ordem crescente ou decrescente. */
        /* A instrução ORDER BY classifica os registros em ordem crescente por padrão.
            Para classificar os registros em ordem decrescente, use a palavra-chave DESC. */
    /* Sintaxe */
    -- SELECT column1, column2, ...
    -- FROM table_name
    -- ORDER BY column1, column2, ... ASC|DESC;


-- SELECT TOP 10 * FROM Usuarios;
SELECT * FROM Usuarios LIMIT 5;

-- SELECT * FROM Usuarios ORDER BY pais;
SELECT pais FROM Usuarios ORDER BY pais LIMIT 10;

SELECT pais FROM Usuarios ORDER BY pais DESC LIMIT 10;

SELECT pais, nome FROM Usuarios ORDER BY pais ASC, nome DESC LIMIT 10;