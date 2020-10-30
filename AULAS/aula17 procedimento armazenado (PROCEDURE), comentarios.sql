/* O que é um procedimento armazenado?
Um procedimento armazenado é um código SQL preparado que você pode salvar, para que o código possa ser reutilizado indefinidamente.
Portanto, se você tem uma consulta SQL que escreve repetidamente, salve-a como um procedimento armazenado e, em seguida, apenas chame-a para executá-la.
Você também pode passar parâmetros para um procedimento armazenado, de forma que o procedimento armazenado possa agir com base nos valores dos parâmetros que são transmitidos. */
/* Sintaxe */
    -- CREATE PROCEDURE procedure_name
    -- AS
    -- sql_statement
    -- GO;
/* Execute um procedimento armazenado */
    -- EXEC procedure_name;

-- Procedimento armazenado com um parâmetro
    -- CREATE PROCEDURE nomeProcedure @parâmetro varchar(30)
    -- AS
    -- SELECT * FROM table WHERE coluna = @parâmetro
    -- GO;
/* Execute o procedimento armazenado acima da seguinte maneira: */
    -- EXEC nomeProcedure @parâmetro = 'London';

/* Procedimento armazenado com vários parâmetros
    Configurar vários parâmetros é muito fácil. Apenas liste cada parâmetro e o tipo de dados separados por uma vírgula, conforme mostrado abaixo. */

CREATE PROCEDURE todos AS SELECT * FROM Usuarios GO;

EXEC todos;


CREATE PROCEDURE paisBrasil @pBrasil varchar(30) AS SELECT * FROM Usuarios
WHERE pais = @pBrasil
GO;

EXEC todos @pBrasil = 'BRASIL';

-- Comentários de várias linhas
-- Os comentários de várias linhas começam com /* e terminam com */.

-- Comentários de linha única
-- Comentários de linha única começam com --.