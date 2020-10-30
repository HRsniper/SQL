/* Os operadores ANY e ALL são usados ​​com uma cláusula WHERE ou HAVING. */
-- ALL
    /* O operador ALL retorna verdadeiro se todos os valores da subconsulta atendem à condição. */
    /* sintaxe */
    -- SELECT column_name(s)
    -- FROM table_name
    -- WHERE column_name operator ALL
    -- (SELECT column_name FROM table_name WHERE condition);
-- ANY
    /* O operador ANY retorna verdadeiro se qualquer um dos valores da subconsulta atender à condição. */
    /* sintaxe */
    -- SELECT column_name(s)
    -- FROM table_name
    -- WHERE column_name operator ANY
    -- (SELECT column_name FROM table_name WHERE condition);

/* Observação: o operador deve ser um operador de comparação padrão ( =, <>, !=, >, >=, < Ou <=). */

-- SELECT INTO
    /* O comando SELECT INTO copia dados de uma tabela e os insere em uma nova tabela. */
    /* sintaxe */
    -- SELECT * INTO newTable 
    -- FROM oldTable;
    -- WHERE condition;
    /* A seguinte instrução SQL usa a cláusula IN para copiar a tabela em uma nova tabela em outro banco de dados: */
    -- SELECT * INTO newTable IN 'Database2.mdb'
    -- FROM oldTable;
    -- WHERE condition;

-- SubQuery
    /* Uma subconsulta é uma consulta SQL aninhada em uma consulta maior. */
    /* Uma subconsulta pode ocorrer em:
    - Uma cláusula SELECT
    - A cláusula FROM
    - Uma cláusula WHERE */
    /* A subconsulta pode ser aninhada dentro de uma instrução SELECT, INSERT, UPDATE ou DELETE ou dentro de outra subconsulta. */
    -- SELECT select* 
    -- FROM table 
    -- WHERE condition operator 
    -- (subQuery);

-- SELECT id FROM Usuarios WHERE id = ANY(SELECT user_id FROM Endereco WHERE user_id < 10);
SELECT id FROM Usuarios WHERE id IN(SELECT user_id FROM Endereco WHERE user_id < 10);

-- SELECT id FROM Usuarios WHERE id = ALL(SELECT user_id FROM Endereco WHERE user_id < 10);

-- SELECT nome INTO NovaTabela FROM Usuarios WHERE nome = 'DEV1';
CREATE TABLE NovaTabela AS SELECT nome FROM Usuarios WHERE nome = 'DEV1';
SELECT nome FROM NovaTabela;