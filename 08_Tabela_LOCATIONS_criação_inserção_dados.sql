-- SQLite
-- 1 - Criando a tabela LOCATIONS 

CREATE TABLE LOCATIONS (
     ID             INTEGER PRIMARY KEY AUTOINCREMENT,
     START_DATE     DATETIME NOT NULL,
     END_DATE       DATETIME NOT NULL,
     TOTAL          FLOAT(10,2) NOT NULL,
     CUSTOMER_ID    INTEGER NOT NULL,
     CAR_ID         INTEGER NOT NULL,
     EMPLOYEE_ID    INTEGER NOT NULL,

     FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (ID),
     FOREIGN KEY (CAR_ID) REFERENCES CARS (ID),
     FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES (ID)
);

-- 2 - Inserindo dados na tabela LOCATIONS 

INSERT INTO LOCATIONS (START_DATE, END_DATE, TOTAL, CUSTOMER_ID, CAR_ID, EMPLOYEE_ID)
     VALUES ('2021-04-01', '2021-04-07', 1500, 1, 1, 2),
            ('2022-05-20', '2022-05-30', 1800, 2, 1, 5),
            ('2021-03-10', '2021-03-21', 2500, 5, 6, 5),
            ('2018-02-20', '2018-03-05', 1250, 6, 4, 6),
            ('2022-11-20', '2022-11-29', 900, 1, 3, 2),
            ('2019-10-01', '2019-10-29', 2800, 3, 1, 6)

-- Inseri mais uma tupla, abaixo, para efeito do exercício 18, pois lá todos os
-- Funcionários tinhas 2 locações, então coloquei mais um, diferente, para o filtro 
-- daquele exercício ter efeito prático.
            
INSERT INTO LOCATIONS (START_DATE, END_DATE, TOTAL, CUSTOMER_ID, CAR_ID, EMPLOYEE_ID)
     VALUES ('2021-04-01', '2021-04-07', 1500, 1, 1, 1)

SELECT * FROM LOCATIONS
