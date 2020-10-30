-- Constraints (AULA 18)
    /* As restrições podem ser especificadas quando a tabela é criada com a instrução CREATE TABLE ou depois que a tabela é criada com a instrução ALTER TABLE. */
    /* Sintaxe */
    -- CREATE TABLE table_name (
        -- column1 datatype constraint,
        -- column2 datatype constraint,
        -- column3 datatype constraint,
        -- ....
    -- );

/* Restrições
    As restrições SQL são usadas para especificar regras para os dados em uma tabela.
    As restrições são usadas para limitar o tipo de dados que podem entrar em uma tabela. Isso garante a precisão e confiabilidade dos dados na tabela. Se houver qualquer violação entre a restrição e a ação de dados, a ação será abortada.
    As restrições podem ser no nível da coluna ou no nível da tabela. As restrições de nível de coluna se aplicam a uma coluna e as restrições de nível de tabela se aplicam a toda a tabela.

    --/ As seguintes restrições são comumente usadas em SQL:
    1= NOT NULL - Garante que uma coluna não pode ter um valor NULL
        CREATE TABLE Persons ( ID integer NOT NULL );

    2= UNIQUE - Garante que todos os valores em uma coluna sejam diferentes
        CREATE TABLE Persons ( ID int NOT NULL UNIQUE );
        CREATE TABLE Persons ( ID int NOT NULL, UNIQUE (ID) );
    --/ Para nomear uma restrição UNIQUE e definir uma restrição UNIQUE em várias colunas, use a seguinte sintaxe SQL:
        -- CREATE TABLE Persons ( ID int NOT NULL, LastName varchar(255) NOT NULL, CONSTRAINT UC_Person UNIQUE (ID,LastName) );
        -- ALTER TABLE Persons ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);
    --/ Para eliminar uma restrição UNIQUE, use o seguinte SQL:
        -- ALTER TABLE Persons DROP INDEX UC_Person;
        -- ALTER TABLE Persons DROP CONSTRAINT UC_Person;
    --/ Para eliminar uma restrição UNIQUE, use o seguinte SQL:
        -- ALTER TABLE Persons DROP INDEX UC_Person;
        -- ALTER TABLE Persons DROP CONSTRAINT UC_Person;

    3= PRIMARY KEY - Uma combinação de NOT NULL e UNIQUE. Identifica exclusivamente cada linha em uma tabela
        (AULA 18)

    4= FOREIGN KEY - Identifica exclusivamente uma linha / registro em outra tabela
        (AULA 18)

    5= CHECK  - Garante que todos os valores em uma coluna satisfaçam uma condição específica
        -- CREATE TABLE Persons ( Age int, CHECK (Age>=18) );
        -- CREATE TABLE Persons ( Age int CHECK (Age>=18) );
        -- ALTER TABLE Persons ADD CHECK (Age>=18);
    --/ Para permitir a nomenclatura de uma restrição CHECK e para definir uma restrição CHECK em várias colunas, use a seguinte sintaxe SQL:
        -- CREATE TABLE Persons ( Age int, City varchar(255), CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes') );
        -- ALTER TABLE Persons ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandnes');
    --/ Para eliminar uma restrição CHECK, use o seguinte SQL:
        -- ALTER TABLE Persons DROP CONSTRAINT CHK_PersonAge;
        -- ALTER TABLE Persons DROP CHECK CHK_PersonAge;

    6= DEFAULT - Define um valor padrão para uma coluna quando nenhum valor é especificado
        -- CREATE TABLE Persons ( City varchar(255) DEFAULT 'Sandnes' );
        MySQL: ALTER TABLE Persons ALTER City SET DEFAULT 'Sandnes';
        SQL server: ALTER TABLE Persons ADD CONSTRAINT df_City DEFAULT 'Sandnes' FOR City;
        Acesso MS: ALTER TABLE Persons ALTER COLUMN City SET DEFAULT 'Sandnes';
        Oráculo: ALTER TABLE Persons MODIFY City DEFAULT 'Sandnes';
        --/ Para eliminar uma restrição DEFAULT, use o seguinte SQL:
            -- ALTER TABLE Persons ALTER City DROP DEFAULT;
            -- ALTER TABLE Persons ALTER COLUMN City DROP DEFAULT;

    7= INDEX - usado para criar e recuperar dados do banco de dados muito rapidamente
        --/ Sintaxe
            -- CREATE INDEX index_name
            -- ON table_name (column1, column2, ...);
        --/ Cria um índice exclusivo em uma tabela. Valores duplicados não são permitidos:
            -- CREATE UNIQUE INDEX index_name ON table_name (column1, column2, ...);
        --/ A instrução DROP INDEX é usada para excluir um índice em uma tabela.
            -- Acesso MS: DROP INDEX index_name ON table_name;
            -- Servidor SQL: DROP INDEX table_name.index_name;
            -- DB2 / Oracle: DROP INDEX index_name;
            -- MySQL: ALTER TABLE table_name DROP INDEX index_name;
 */

CREATE TABLE dbnotnulo (id int NOT NULL);

CREATE TABLE dbunique (id int UNIQUE);

CREATE TABLE dbrestricao ( ID int NOT NULL, Email varchar(255) NOT NULL, CONSTRAINT Pessoa UNIQUE (ID,Email) );

CREATE INDEX i ON Usuarios (nome, pais);
-- DROP INDEX i ON Usuarios;

CREATE UNION INDEX iu ON Usuarios (nome, pais);

CREATE TABLE dbcheck ( age int CHECK(age = 18) );

CREATE TABLE dbdefault ( City varchar(255) DEFAULT 'Sandnes' );
