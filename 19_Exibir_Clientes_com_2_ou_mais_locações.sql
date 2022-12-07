-- SQLite
-- 19 - Construa uma consulta capaz de exibir somente 
-- os clientes que realizaram mais ou igual a 2 locações.

-- Criação de uma VIEW DE todos os clientes e o número de locações

CREATE VIEW LOCATIONS_BY_CUSTOMER AS
SELECT C.NAME AS 'Nome',
       C.LASTNAME AS 'Sobrenome',
       C.EMAIL AS 'Email',
       C.PHONE AS 'Telefone',
       COUNT(L.CUSTOMER_ID) AS 'Número_de_locações' FROM LOCATIONS AS 'L'
INNER JOIN CUSTOMERS AS 'C' ON (L.CUSTOMER_ID = C.ID)
GROUP BY CUSTOMER_ID;

-- Filtrando a VIEW LOCATIONS_BY_EMPLOYEE

SELECT * FROM LOCATIONS_BY_CUSTOMER
WHERE Número_de_locações >= 2;

