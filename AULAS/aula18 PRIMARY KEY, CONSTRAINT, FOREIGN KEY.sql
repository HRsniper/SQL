-- PRIMARY KEY
    /* A restrição PRIMARY KEY identifica exclusivamente cada registro em uma tabela. */
        
    -- CREATE TABLE Usuarios (
    --     id      INTEGER       PRIMARY KEY NOT NULL
    -- );

    -- CREATE TABLE Usuarios (
    --     id     INTEGER NOT NULL
    --     PRIMARY KEY (id)
    -- );

    -- ALTER TABLE Usuarios
    -- ADD PRIMARY KEY (ID);

-- CONSTRAINT
    /* O comando ADD CONSTRAINT é usado para criar uma restrição depois que uma tabela já foi criada.
    O comando DROP CONSTRAINT é usado para excluir uma restrição depois que uma tabela já foi criada. */
    
    -- ALTER TABLE Persons
    -- ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

    -- ALTER TABLE Usuarios
    -- DROP PRIMARY KEY;

    -- ALTER TABLE Persons
    -- DROP CONSTRAINT PK_Person;

    /* Para permitir a nomenclatura de uma restrição PRIMARY KEY e para definir uma restrição PRIMARY KEY em várias colunas, use a seguinte sintaxe SQL: */
    -- CREATE TABLE Persons (
    --     ID int NOT NULL,
    --     LastName varchar(255) NOT NULL,
    --     CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
    -- );
    /* Nota: No exemplo acima, há apenas UMA CHAVE PRIMÁRIA (PK_Person). No entanto, o VALUE da chave primária é composto de DUAS COLUNAS (ID + Sobrenome). */

-- FOREIGN KEY
    /* A restrição FOREIGN KEY é uma chave usada para vincular duas tabelas. */
    /* A FOREIGN KEY é um campo (ou coleção de campos) em uma tabela que se refere à PRIMARY KEY em outra tabela. */

    -- CREATE TABLE Orders (
    -- OrderID int NOT NULL,
    -- PersonID int,
    -- PRIMARY KEY (OrderID),
    -- FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
    -- );

    -- CREATE TABLE Orders (
    -- OrderID int NOT NULL PRIMARY KEY,
    -- PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
    -- );

    -- ALTER TABLE Orders
    -- ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

    -- ALTER TABLE Orders
    -- DROP FOREIGN KEY FK_PersonOrder;

    /* Para permitir a nomenclatura de uma restrição FOREIGN KEY e para definir uma restrição FOREIGN KEY em várias colunas, use a seguinte sintaxe SQL: */
    -- CREATE TABLE Orders (
    --     OrderID int NOT NULL,
    --     PersonID int,
    --     PRIMARY KEY (OrderID),
    --     CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
    -- );




DROP TABLE IF EXISTS PK;

CREATE TABLE PK (
    PK_id INTEGER PRIMARY KEY AUTOINCREMENT,
    u_id  INTEGER REFERENCES Usuarios (id) 
    --  u_id  INTEGER CONSTRAINT id REFERENCES Usuarios (id) 
);


