-- WHERE
    /* A instrução WHERE é usada para filtrar registros.
        e usada para extrair apenas os registros que atendem a uma condição especificada. */
    /* Nota: A cláusula WHERE não é usada apenas na instrução SELECT, ela também é usada na instrução UPDATE, DELETE, etc.! */
    /* WHERE requer aspas simples '' ou dupla "" em torno dos valores de texto.
        No entanto, os campos numéricos não devem ser colocados entre aspas: */
    /* Sintaxe */
    -- SELECT * FROM table_name WHERE WHERE condition;

    -- SELECT * FROM table_name WHERE column='string';
    -- SELECT * FROM table_name WHERE column=number;

    /* Os seguintes operadores podem ser usados na cláusula WHERE: */
    -- =       Igual.
    -- <>      Diferente. em outras versões de SQL escritas como != .
    -- >       Maior que.
    -- <       Menor que.
    -- >=      Maior ou igual.
    -- <=      Menor ou igual.
    -- BETWEEN Valores dentro um certo intervalo.
    -- LIKE    Pesquise um padrão.
    -- IN      Para especificar vários valores possíveis para uma coluna.

-- AND, OR, NOT

    /* Os operadores AND e OR são usados ​​para filtrar registros com base em mais de uma condição:
        O operador AND exibe um registro se todas as condições separadas por AND forem verdadeiras.
        O operador OR exibe um registro se alguma das condições separadas por OR for TRUE. */
    /* O operador NOT exibe um registro se as condições NÃO forem verdadeiras. */

    /* AND Syntax */
    -- SELECT column1, column2, ...
    -- FROM table_name
    -- WHERE condition1 AND condition2 AND condition3 ...;
    
    /* OR Syntax */
    -- SELECT column1, column2, ...
    -- FROM table_name
    -- WHERE condition1 OR condition2 OR condition3 ...;
    
    /* NOT Syntax */
    -- SELECT column1, column2, ...
    -- FROM table_name
    -- WHERE NOT condition;

SELECT * FROM Usuarios WHERE nome = 'DEV';

SELECT * FROM Usuarios WHERE pais = 'BRASIL' AND numero = '91234-5678';

SELECT * FROM Usuarios WHERE pais = 'BRASIL' OR email = 'DEV1@DEV.com';

SELECT * FROM Usuarios WHERE NOT pais = 'BRASIL';