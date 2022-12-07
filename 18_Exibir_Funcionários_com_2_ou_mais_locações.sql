-- SQLite
-- 18 - Construa uma consulta capaz de exibir somente 
-- os funcionários que realizaram mais ou igual a 2 locações.

-- Criação de uma VIEW DE todos os funcionários e o número de locações

CREATE VIEW LOCATIONS_BY_EMPLOYEE AS
SELECT E.NAME AS 'Funcionário(a)',
       COUNT(L.EMPLOYEE_ID) AS 'Número_de_locações' FROM LOCATIONS AS 'L'
INNER JOIN EMPLOYEES AS 'E' ON (L.EMPLOYEE_ID = E.ID) 
GROUP BY EMPLOYEE_ID

-- Filtrando a VIEW LOCATIONS_BY_EMPLOYEE

SELECT * FROM LOCATIONS_BY_EMPLOYEE 
WHERE Número_de_locações >= 2;

