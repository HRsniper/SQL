-- CASE
    /* A instrução CASE passa pelas condições e retorna um valor quando a primeira condição é atendida (como uma instrução IF-THEN-ELSE). Portanto, quando uma condição for verdadeira, ela interromperá a leitura e retornará o resultado. Se nenhuma condição for verdadeira, ele retornará o valor na cláusula ELSE. */
    /* Se não houver parte ELSE e nenhuma condição for verdadeira, ele retornará NULL. */
    /* Sintaxe */
    -- CASE
        -- WHEN condition1 THEN result1
        -- WHEN condition2 THEN result2
        -- WHEN conditionN THEN resultN
        -- ELSE result
    -- END;

-- tipos de dados
    /* 
    1.booleanos = 
        bit - Número Inteiro que pode ser 0, 1 ou NULL.
        BOOLEAN .
    2.caracteres = 
        char(n) - [Tamanho fixo], completado com espaços em bracos.
        varchar(n) - Tamanho variável com limite.
        varchar(max) - Tamanho variável com limite.
        text - Tamanho variável máximo 2GB de dados em (texto).
        nchar - Tamanho fixo com espaços em bracos.
        nvarchar - Tamanho variável.
        nvarchar(max) - Tamanho variável.
        ntext - Tamanho variável 2GB de texto.
        binary(n) - Tamanho fixo (binário).
        varbinary - Tamanho variável (binário).
        varbinary(max) - Tamanho variável (binário)	2GB.
        image - Tamanho variável (binário)	2GB.
    3.números = 
        INTEGER .
        tinyint - Permite [números inteiros] de 0 a 255.
        smallint - Permite [números inteiros] entre -32,768 e 32,767.
        int - Permite [números inteiros] entre -2,147,483,648 e 2,147,483,647.
        bigint - Permite [números inteiros] entre -9,223,372,036,854,775,808 e 9,223,372,036,854,775,807.
        decimal(p,s) - Precisão de número flutuante e número de escala. Permite número de -10^38 +1 a 10^38 –1.
        numeric(p,s) - Precisão de número flutuante e número de escala. Permite número de -10^38 +1 a 10^38 –1.
            O parâmetro p indica o número total máximo de dígitos que podem ser armazenados (ambos à esquerda e à direita do ponto decimal). p deve ser um valor de 1 a 38. O padrão é 18.
            O parâmetro s indica o número máximo de dígitos armazenados à direita do ponto decimal. s deve ser um valor de 0 a p. O valor padrão é 0.
        smallmoney - Tipo de "Moeda" de -214,748.3648 a 214,748.3647.
        money - Tipo de "Moeda" de -922,337,203,685,477.5808 a 922,337,203,685,477.5807.
        float(n) - Precisão de número flutuante de -1.79E + 308 a 1.79E + 308.
            O parâmetro n indica se o campo deve conter 4 ou 8 bytes. float (24) contém um campo de 4 bytes e o float(53) mantém um campo de 8 bytes. O valor padrão de n é 53.
        real - Precisão de número flutuante de -3,40E + 38 a 3,40E + 38.
    4.temporais = 
        datetime - De 1 de janeiro de 1753 a 31 de dezembro de 9999 com uma precisão de 3,33 milisegundos.
        datetime2 - De 1º de janeiro de 0001 a 31 de dezembro de 9999 com precisão de 100 nanossegundos.
        smalldatetime - De 1 de janeiro de 1900 a 6 de junho de 2079 com precisão de 1 minuto.
        date - Armazena apenas uma data. De 1 de janeiro de 0001 a 31 de dezembro de 9999.
        time - Armazena um tempo apenas para uma precisão de 100 nanosegundos.
        datetimeoffset - O mesmo que datetime2 com a adição de um deslocamento de fuso horário.
        timestamp - Armazena um número único que é atualizado sempre que uma linha é criada ou modificada. O valor do timestamp é baseado em um relógio interno e não corresponde ao tempo real. Cada tabela pode ter apenas uma variável timestamp
        CURRENT_TIMESTAMP - A função retorna o carimbo de data/hora atual do sistema operacional do servidor no qual o banco de dados é executado. 
    5.none = 
        BLOB O valor é um blob de dados, armazenado exatamente como foi inserido.
        NULL .
     */


SELECT nome,pais, 
-- SELECT *, 
    CASE
        WHEN nome = 'DEV1' THEN 'achou o nome'
        WHEN pais = 'BRASIL' THEN 'pais brasil'
        WHEN pais = 'Spain' THEN 'pais espanha'
        ELSE 'nem uma condicao aceita'
    END
FROM Usuarios;