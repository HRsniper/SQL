-- TRUNCATE TABLE
    /* A instrução TRUNCATE TABLE é usada para excluir os dados dentro de uma tabela, mas não a própria tabela. */
    /* Sintaxe */
    -- TRUNCATE TABLE table_name;

-- ALTER TABLE
    /* A instrução ALTER TABLE é usada para adicionar, excluir ou modificar colunas em uma tabela existente.
    A instrução ALTER TABLE também é usada para adicionar e eliminar várias restrições em uma tabela existente. */

-- ALTER TABLE - ADD Column
    /* Para adicionar uma coluna a uma tabela, use a seguinte sintaxe: */
    -- ALTER TABLE table_name
    -- ADD column_name datatype;

-- ALTER TABLE - DROP COLUMN
    /* Para excluir uma coluna em uma tabela, use a seguinte sintaxe (observe que alguns sistemas de banco de dados não permitem a exclusão de uma coluna): */
    -- ALTER TABLE table_name
    -- DROP COLUMN column_name;

-- ALTER TABLE - ALTER / MODIFY COLUMN
    /* Para alterar o tipo de dados de uma coluna em uma tabela, use a seguinte sintaxe: */
    /* Acesso SQL Server / MS: */
    -- ALTER TABLE table_name
    -- ALTER COLUMN column_name datatype;
    /* My SQL / Oracle (versão anterior 10G): */
    -- ALTER TABLE table_name
    -- MODIFY COLUMN column_name datatype;
    /* Oracle 10G e posterior: */
    -- ALTER TABLE table_name
    -- MODIFY column_name datatype;

TRUNCATE TABLE Persons;

ALTER TABLE Usuarios ADD coluna1 varchar(10);

ALTER TABLE Usuarios DROP coluna1;

ALTER TABLE Usuarios ALTER COLUMN coluna1 varchar(50);