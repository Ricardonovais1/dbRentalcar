-- SQLite
-- 1 - Criando a tabela POSITIONS

CREATE TABLE POSITIONS (
     ID            INTEGER PRIMARY KEY AUTOINCREMENT,
     DESCRIPTION   VARCHAR(120)
);

-- 2 - Inserindo dados na tabela POSITIONS

INSERT INTO POSITIONS (DESCRIPTION)
     VALUES ('Gerente de vendas'),
            ('Gerente de compras'),
            ('Vendedor'),
            ('Mecânico'),
            ('Assistente Administrativo')

SELECT * FROM POSITIONS