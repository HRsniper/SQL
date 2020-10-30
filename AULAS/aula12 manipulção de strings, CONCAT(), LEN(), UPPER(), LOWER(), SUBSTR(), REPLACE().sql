-- SUBSTR Extrai e retorna uma substring com um comprimento predefinido começando em uma posição especificada em uma string de origem
-- TRIM Retorna uma cópia de uma string que possui caracteres especificados removidos do início e do final de uma string.
-- LTRIM Retorna uma cópia de uma string que possui caracteres especificados removidos do início de uma string.
-- RTRIM Retorna uma cópia de uma string que possui caracteres especificados removidos do final de uma string.
-- LENGTH Retorna o número de caracteres em uma string ou o número de bytes em um BLOB.
-- REPLACE Retorna uma cópia de uma string com cada instância de uma substring substituída por outra substring.
-- UPPER Retorna uma cópia de uma string com todos os caracteres convertidos em maiúsculas.
-- LOWER Retorna uma cópia de uma string com todos os caracteres convertidos em minúsculas.
-- INSTR Encontre uma substring em uma string e retorna um inteiro indicando a posição da primeira ocorrência da substring.
-- || (Operador de concatenação) Concatene duas strings em uma única string.

-- CONCAT()
    /* A função CONCAT () adiciona duas ou mais strings juntas. */
    /* Nota: Concat with string1 + string2 e CONCAT_WS(). */
    /* Sintaxe */
    -- CONCAT(string1, string2, ...., string_n)

-- SELECT CONCAT('string1','string2');
SELECT 'string1' || 'string2';

SELECT UPPER('string1' || 'string2');

SELECT LOWER('string1' || 'string2');

-- SELECT LEN(CONCAT('string1','string2'));
SELECT LENGTH('string1' || 'string2');

-- SELECT SUBSTRING(CONCAT('string1','string2'),0,9);
SELECT SUBSTR('string1' || 'string2', 0 ,9);

SELECT REPLACE(numero,'-','#') FROM Usuarios LIMIT 5;
