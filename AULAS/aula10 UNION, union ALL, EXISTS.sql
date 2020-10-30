-- UNION
    /* O operador UNION é usado para combinar o conjunto de resultados de duas ou mais instruções SELECT. */
    /* Nota: Os nomes das colunas no conjunto de resultados são geralmente iguais aos nomes das colunas na primeira instrução SELECT no UNION. */
    /* Cada instrução SELECT em UNION deve ter o mesmo número de colunas.
       As colunas também devem ter tipos de dados semelhantes.
       As colunas em cada instrução SELECT também devem estar na mesma ordem. */
    /* Sintaxe UNION */
    -- SELECT column_name(s) FROM table1
    -- UNION
    -- SELECT column_name(s) FROM table2;

    /* Sintaxe UNION ALL */
    /* O operador UNION seleciona apenas valores distintos por padrão.
        Para permitir valores duplicados, use UNION ALL: */
    -- SELECT column_name(s) FROM table1
    -- UNION ALL
    -- SELECT column_name(s) FROM table2;

-- EXISTS
    /* O operador EXISTS é usado para testar a existência de qualquer registro em uma subconsulta. */
    /* O operador EXISTS retorna verdadeiro se a subconsulta retornar um ou mais registros. */
    /* Sintaxe */
    -- SELECT column_name(s)
    -- FROM table_name
    -- WHERE EXISTS
    -- (SELECT column_name FROM table_name WHERE condition);

SELECT id from Usuarios UNION SELECT user_id FROM Endereco;

SELECT id from Usuarios UNION ALL SELECT user_id FROM Endereco;

SELECT id from Usuarios WHERE id LIKE '1%'
    -- UNION SELECT user_id FROM Endereco
    UNION ALL SELECT user_id FROM Endereco
    WHERE user_id LIKE '1%';

SELECT id FROM Usuarios WHERE EXISTS 
    (SELECT user_id FROM Endereco WHERE Endereco.user_id = Usuarios.id AND Usuarios.id < 10);
