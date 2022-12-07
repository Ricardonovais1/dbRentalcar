-- SQLite
-- 17 - Construa uma consulta capaz de exibir todos os funcionários 
-- e seus respectivos cargos

SELECT E.NAME AS 'Funcionário(a)', 
       P.DESCRIPTION AS 'Cargo' FROM EMPLOYEES AS 'E'
JOIN POSITIONS AS 'P' ON (E.POSITION_ID = P.ID);


