-- AUTO INCREMENT
    /* O incremento automático permite que um número único seja gerado automaticamente quando um novo registro é inserido em uma tabela. */
    /* Freqüentemente, esse é o campo de chave primária que gostaríamos que fosse criado automaticamente sempre que um novo registro fosse inserido. */

CREATE TABLE Persons ( Personid int NOT NULL AUTO_INCREMENT, PRIMARY KEY (Personid) );

CREATE TABLE Persons1 ( Personid int PRIMARY KEY NOT NULL AUTOINCREMENT );

CREATE TABLE Persons3 ( Personid int IDENTITY(1,1) PRIMARY KEY );

CREATE SEQUENCE seq_person MINVALUE 1 START WITH 1 INCREMENT BY 1 CACHE 10;


-- CREATE VIEW
    /* Em SQL, uma visão é uma tabela virtual baseada no conjunto de resultados de uma instrução SQL. */
    /* Uma visão contém linhas e colunas, assim como uma tabela real. Os campos em uma visão são campos de uma ou mais tabelas reais no banco de dados. */
    /* Você pode adicionar funções SQL, instruções WHERE e JOIN a uma exibição e apresentar os dados como se fossem provenientes de uma única tabela. */
    /* Syntax */
    -- CREATE VIEW view_name AS
    -- SELECT column1, column2, ...
    -- FROM table_name
    -- WHERE condition;

CREATE VIEW [doBrasil] AS SELECT nome, numero FROM Usuarios WHERE pais = 'Brasil';

SELECT * FROM [doBrasil];

-- CREATE OR REPLACE VIEW
    /* Uma visualização pode ser atualizada com o comando CREATE OR REPLACE VIEW. */
    /* Sintaxe */
    -- CREATE OR REPLACE VIEW view_name AS
    -- SELECT column1, column2, ...
    -- FROM table_name
    -- WHERE condition;
CREATE OR REPLACE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';

-- DROP VIEW
    /* Uma vista é excluída com o comando DROP VIEW. */
    /* Sintaxe */
    -- DROP VIEW view_name;
DROP VIEW [Brazil Customers];