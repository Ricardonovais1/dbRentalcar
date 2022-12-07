-- SQLite
-- 20 - Construa uma consulta capaz de exibir todas as locações realizadas, 
-- assim como também o nome do cliente, do automóvel e do 
-- funcionário vinculados em cada locação


SELECT CA.NAME AS 'Carro',
       C.NAME AS 'Cliente', 
       E.NAME AS 'Funcionário' FROM LOCATIONS AS 'L'
JOIN CUSTOMERS AS 'C' ON (L.CUSTOMER_ID = C.ID)
JOIN CARS AS 'CA' ON (L.CAR_ID = CA.ID)
JOIN EMPLOYEES AS 'E' ON (L.EMPLOYEE_ID = E.ID)

