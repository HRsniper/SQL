-- Funções NULL
    /* IFNULL(), ISNULL(), COALESCE(), and NVL() */

-- INSERT INTO Usuarios (nome, email, pais, numero)
--     VALUES ('Hércules', 'HR@DEV.com', 'Brasil', NULL);
SELECT * FROM Usuarios WHERE id = 107;

SELECT *, IFNULL(numero,'0') FROM Usuarios WHERE id = 107;

SELECT *, COALESCE(numero,'0') FROM Usuarios WHERE id = 107;

-- SELECT *, ISNULL(numero,'0') FROM Usuarios WHERE id = 107;

-- SELECT *, IsNull(numero,'0') FROM Usuarios WHERE id = 107;

-- SELECT *, NVL(numero,'0') FROM Usuarios WHERE id = 107;