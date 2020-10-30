    -- BETWEEN
        /* O operador BETWEEN seleciona valores dentro de um determinado intervalo. Os valores podem ser números, texto ou datas. */
        /* O operador BETWEEN é inclusivo: os valores inicial e final são incluídos.  */
    /* Sintaxe */
    -- SELECT column_name(s)
    -- FROM table_name
    -- WHERE column_name BETWEEN value1 AND value2;

    -- LIKE
        /* O operador LIKE é usado em uma cláusula WHERE para pesquisar um padrão especificado em uma coluna. */
        /* Existem dois curingas geralmente usados ​​em conjunto com o operador LIKE: */
        /* % - o sinal de porcentagem representa zero, um ou vários caracteres */
        /* _ - O sublinhado representa um único caractere */
            /* Nota: o MS Access usa um asterisco (*) em vez do sinal de porcentagem (%)
                e um ponto de interrogação (?) Em vez do sublinhado (_). */
        /* Sintaxe */
            -- SELECT column1, column2, ...
            -- FROM table_name
            -- WHERE columnN LIKE pattern;

    -- IN
        /* O operador IN permite que você especifique vários valores em uma cláusula WHERE. */
        /* O operador IN é uma abreviação para várias condições OR. */
    /* Sintaxe */
        -- SELECT column_name(s)
        -- FROM table_name
        -- WHERE column_name IN (value1, value2, ...);
    /* ou */
        -- SELECT column_name(s)
        -- FROM table_name
        -- WHERE column_name IN (SELECT STATEMENT);
        /* ou */
        -- WHERE column_name IN (SELECT valor FROM nomeDaTabela);


SELECT * FROM Usuarios WHERE pais BETWEEN 'BRASIL' and 'Uruguay';
-- SELECT * FROM Usuarios WHERE pais NOT BETWEEN 'BRASIL' and 'Uruguay';

SELECT * FROM Usuarios WHERE pais IN('Uruguay', 'BRASIL');
-- SELECT * FROM Usuarios WHERE pais NOT IN('Uruguay', 'BRASIL');

SELECT * FROM Usuarios WHERE pais IN(SELECT pais FROM Usuarios);

SELECT nome FROM Usuarios WHERE nome LIKE 'A%';
-- SELECT nome FROM Usuarios WHERE nome LIKE '%A';

SELECT nome FROM Usuarios WHERE nome LIKE '_c%';
