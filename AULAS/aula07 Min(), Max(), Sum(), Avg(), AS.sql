-- Nota: os valores NULL são ignorados. 

-- Avg()
    /* A função Avg () retorna o valor médio de uma expressão. */
    /* Sintaxe */
        -- Avg(expression)
    -- SELECT Avg(Price) AS AveragePrice FROM Products;

-- Sum()
    /* A função Sum () calcula a soma de um conjunto de valores. */
    /* Sintaxe */
        -- Sum(expression)
    -- SELECT Sum(Quantity) AS TotalItemsOrdered FROM OrderDetails;

-- Min()
    /* A função Min () retorna o valor mínimo em um conjunto de valores. */
    /* Sintaxe */
        -- Min(expression)
    -- SELECT Min(Price) AS SmallestPrice FROM Products;

-- Max()
    /* A função Max () retorna o valor máximo em um conjunto de valores. */
    /* Sintaxe */
        -- Max(expression)
    -- SELECT Max(Price) AS LargestPrice FROM Products;

-- AS
    /* O comando AS é usado para renomear uma coluna ou tabela com um alias. */
    /* Um alias existe apenas durante a consulta. */

SELECT Sum(numero) FROM Usuarios LIMIT 5;
SELECT Sum(numero) AS 'Soma' FROM Usuarios LIMIT 5;

SELECT Avg(numero) AS 'Media' FROM Usuarios LIMIT 5;

SELECT Min(numero) AS 'Minino' FROM Usuarios LIMIT 5;

SELECT Max(numero) AS 'Maximo' FROM Usuarios LIMIT 5;

