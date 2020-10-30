-- CREATE DATABASE
    /* A instrução CREATE DATABASE é usada para criar um novo banco de dados SQL. */
    /* Sintaxe */
    -- CREATE DATABASE databasename;

-- DROP DATABASE
    /* A instrução DROP DATABASE é usada para eliminar um banco de dados SQL existente. */
    /* Nota: Tenha cuidado antes de eliminar um banco de dados. Excluir um banco de dados resultará na perda de informações completas armazenadas no banco de dados! */
    /* Sintaxe */
    -- DROP DATABASE databasename;

-- BACKUP DATABASE
    /* A instrução BACKUP DATABASE é usada no SQL Server para criar um backup completo de um banco de dados SQL existente. */
    /* Sintaxe */
    -- BACKUP DATABASE databasename
    -- TO DISK = 'filepath';

    -- BACKUP WITH DIFFERENTIAL
    /* Um backup diferencial faz backup apenas das partes do banco de dados que foram alteradas desde o último backup completo do banco de dados. */
    /* Sintaxe */
    -- BACKUP DATABASE databasename
    -- TO DISK = 'filepath'
    -- WITH DIFFERENTIAL;

-- CREATE TABLE
    /* A instrução CREATE TABLE é usada para criar uma nova tabela em um banco de dados. */
/* Sintaxe */
    -- CREATE TABLE table_name (
        -- column1 datatype,
        -- column2 datatype,
        -- column3 datatype,
    -- ....
    -- );

-- DROP TABLE
    /* A instrução DROP TABLE é usada para eliminar uma tabela existente em um banco de dados. */
    /* Sintaxe */
    -- DROP TABLE table_name;

CREATE DATABASE aula19;

DROP DATABASE aula19;

BACKUP DATABASE sqldatabase
TO DISK = 'D:\backups\sqldatabase.bak';

CREATE TABLE Persons (
    PersonID INTEGER,
    FirstName varchar(255),
);

DROP TABLE Persons;

/* Criar tabela usando outra tabela */
    /* Sintaxe */
    -- CREATE TABLE new_table_name AS
        -- SELECT column1, column2,...
        -- FROM existing_table_name
        -- WHERE ....;

CREATE TABLE PersonsFullName AS
    SELECT FirstName FROM Persons;