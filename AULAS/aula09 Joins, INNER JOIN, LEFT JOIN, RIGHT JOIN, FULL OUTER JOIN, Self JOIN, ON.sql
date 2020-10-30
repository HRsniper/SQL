-- JOIN
    /* Uma cláusula JOIN é usada para combinar linhas de duas ou mais tabelas,
        com base em uma coluna relacionada entre elas. */
    /* Sintaxe */
    -- SELECT column_name(s), column_name(s)2, ...
    -- FROM table_name_DE
    -- INNER JOIN table_name_PARA ON column_name_DE.ID=column_name_PARA.ID;

-- Diferentes tipos de JOINs
    /* (INNER) JOIN : Retorna registros que possuem valores correspondentes em ambas as tabelas */
        -- https://www.w3schools.com/sql/img_innerjoin.gif
    /* Sintaxe */
    -- SELECT column_name(s)
    -- FROM table1
    -- INNER JOIN table2
    -- ON table1.column_name = table2.column_name;
    /* LEFT (OUTER) JOIN : Retorna todos os registros da tabela da esquerda e os registros correspondentes da tabela da direita.O resultado é NULL do lado direito, se não houver correspondência. */
        -- https://www.w3schools.com/sql/img_leftjoin.gif
    /* Sintaxe */
    -- SELECT column_name(s)
    -- FROM table1
    -- LEFT JOIN table2
    -- ON table1.column_name = table2.column_name;

    /* RIGHT (OUTER) JOIN : Retorna todos os registros da tabela da direita e os registros correspondentes da tabela da esquerda. O resultado é NULL do lado esquerdo, se não houver correspondência. */
        -- https://www.w3schools.com/sql/img_rightjoin.gif
    /* Sintaxe */
    -- SELECT column_name(s)
    -- FROM table1
    -- RIGHT JOIN table2
    -- ON table1.column_name = table2.column_name;

    /* FULL (OUTER) JOIN : Retorna todos os registros quando há uma correspondência na tabela da esquerda ou da direita */
        -- https://www.w3schools.com/sql/img_fulljoin.gif
    /* Sintaxe */
    -- SELECT column_name(s)
    -- FROM table1
    -- FULL JOIN table2 ou
    -- FULL OUTER JOIN  table2
    -- ON table1.column_name = table2.column_name;

-- Self JOIN
    /* Um self JOIN é uma junção regular, mas a tabela é associada a si mesma. */
    /* Sintaxe */
    -- SELECT column_name(s)
    -- FROM table1 T1, table1 T2
    -- WHERE condition;
    /* T1 e T2 são aliases de tabela diferentes para a mesma tabela. */

-- ON

--     primeira tabela, segunda tabela
SELECT Usuarios.nome, Endereco.cidade FROM Usuarios -- extrair da primeira tabela
--  extrair o restante da segunda tabela
    INNER JOIN Endereco ON Usuarios.id = Endereco.user_id 
    LIMIT 5;

SELECT Usuarios.*, Endereco.* FROM Usuarios
    INNER JOIN Endereco ON Usuarios.id = Endereco.user_id 
    LIMIT 5;

-- SELECT Usuarios.*, Endereco.* FROM Usuarios
--     FULL OUTER JOIN Endereco ON Usuarios.id = Endereco.user_id 
--     LIMIT 5;

SELECT Usuarios.*, Endereco.* FROM Usuarios
    LEFT JOIN Endereco ON Usuarios.id = Endereco.user_id 
    LIMIT 5;

-- SELECT Usuarios.*, Endereco.* FROM Usuarios
--     RIGHT JOIN Endereco ON Usuarios.id = Endereco.user_id 
--     LIMIT 5;

-- Self JOIN
SELECT A.nome,A.pais, B.nome,B.pais FROM Usuarios A, Usuarios B WHERE A.pais=B.pais
    LIMIT 5;
