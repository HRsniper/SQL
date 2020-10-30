-- SELECT
    /* A instrução SELECT é usada para selecionar dados de um banco de dados. */
    /* Os dados retornados são armazenados em uma tabela de resultados, chamada de conjunto de resultados. */
-- FROM
    -- A instrução FROM é usado para especificar de qual tabela selecionar ou excluir dados.

    /* Sintaxe */
    -- SELECT column1, column2, ...
    -- FROM table_name;
    /* Aqui, coluna1, coluna2, ... são os nomes dos campos da tabela da qual você deseja selecionar os dados. */
    /* Se você deseja selecionar todos os campos disponíveis na tabela, use a seguinte sintaxe: */
    -- SELECT * FROM table_name;

SELECT nome, pais FROM Usuarios;