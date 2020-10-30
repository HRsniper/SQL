-- INSERT INTO
    /* A instrução INSERT INTO é usada para inserir novos registros em uma tabela. */
    /* Sintaxe */
        /* É possível escrever a instrução INSERT INTO de duas maneiras. */
    /* A primeira forma especifica os nomes das colunas e os valores a serem inseridos: */
    -- INSERT INTO table_name (column1, column2, column3, ...)
    -- VALUES (value1, value2, value3, ...);

    /* Se você estiver adicionando valores para todas as colunas da tabela,
        não será necessário especificar os nomes das colunas na consulta SQL.
        No entanto, certifique-se de que a ordem dos valores esteja na mesma
        ordem das colunas da tabela. */
    -- INSERT INTO table_name
    -- VALUES (value1, value2, value3, ...);

-- NULL
    -- Não é possível testar valores NULL com operadores de comparação, como =, <ou <>.
    -- Teremos que usar os operadores IS NULL e IS NOT NULL.
    /* Sintaxe IS NULL */
        -- SELECT column_names
        -- FROM table_name
        -- WHERE column_name IS NULL;
    /* Sintaxe NÃO É NULL */
        -- SELECT column_names
        -- FROM table_name
        -- WHERE column_name IS NOT NULL;

-- UPDATE
    /* A instrução UPDATE é usada para modificar os registros existentes em uma tabela. */
    /* Sintaxe */
        -- UPDATE table_name
        -- SET column1 = value1, column2 = value2, ...
        -- WHERE condition;

--SET
    /* O comando é usado com UPDATE para especificar quais colunas e valores devem ser atualizados em uma tabela. */

-- DELETE
    /* A instrução DELETE é usada para excluir registros existentes em uma tabela. */
    /* Sintaxe */
        -- DELETE FROM table_name WHERE condition;
        -- DELETE coluna FROM table_name WHERE condition;

-- INSERT INTO Usuarios (nome, email, pais, numero) VALUES ('Hércules', 'HR@DEV.com', 'BRASIL', '91234-5678');
SELECT * FROM Usuarios WHERE nome = 'Hércules';

SELECT COUNT(nome) FROM Usuarios WHERE nome IS NULL;
SELECT COUNT(nome) FROM Usuarios WHERE nome IS NOT NULL;

UPDATE Usuarios SET pais = 'Brasil @' WHERE id = 107;
-- SELECT * FROM Usuarios WHERE nome = 'Hércules';

DELETE FROM Usuarios WHERE nome = 'DEV';
SELECT * FROM Usuarios;