-- GROUP BY
    /* A instrução GROUP BY agrupa linhas que têm os mesmos valores em linhas de resumo, 
        como "encontre o número de clientes em cada país". */
    /* A instrução GROUP BY é freqüentemente usada com funções de agregação (COUNT, MAX, MIN, SUM, AVG)
        para agrupar o conjunto de resultados por uma ou mais colunas. */
    /* Sintaxe */
    -- SELECT column_name(s)
    -- FROM table_name
    -- WHERE condition
    -- GROUP BY column_name(s)
    -- ORDER BY column_name(s);

-- HAVING
    /* O comando HAVING é usado em vez de WHERE com funções agregadas ou dados agrupados. */
    /* muito usado em junção do grou by, para filtrar os resultados de um agrupamento */
    /* having somente é executado depois que os dados forem agrupados */
    /* sintaxe */
    -- SELECT funçãoAgregada(column_name(s)), column_name(s)
    -- FROM table_name
    -- GROUP BY  column_name(s)
    -- HAVING condition;


SELECT Count(id) AS Contagem,pais FROM Usuarios GROUP BY pais;

SELECT Count(nome) AS Contagem,nome FROM Usuarios GROUP BY nome;

SELECT Count(id) AS quantidade,pais FROM Usuarios GROUP BY pais HAVING Count(id) > 4;