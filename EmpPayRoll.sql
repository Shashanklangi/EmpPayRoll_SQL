CREATE DATABASE Emp_Pay_Roll

USE Emp_Pay_Roll

CREATE TABLE Employee_Pay_Roll
(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	NAME VARCHAR (30) NOT NULL,
	salary INT,
	StartDate DATE
);

INSERT INTO Employee_Pay_Roll VALUES('Jonny', 7500, '2021-10-03')
INSERT INTO Employee_Pay_Roll VALUES('Jaden', 5500, '2022-02-22')
INSERT INTO Employee_Pay_Roll VALUES('Captain', 2000, '2021-12-10')
INSERT INTO Employee_Pay_Roll VALUES('Hulk', 9600, '2022-01-15')

SELECT * FROM Employee_Pay_Roll

SELECT salary FROM Employee_Pay_Roll WHERE NAME = 'Jaden'

ALTER TABLE Employee_Pay_Roll
ADD Gender VARCHAR(8)
UPDATE Employee_Pay_Roll SET Gender = 'FEMALE' WHERE NAME = 'Captain'
UPDATE Employee_Pay_Roll SET Gender = 'MALE' WHERE NAME = 'Jonny' or NAME = 'Jaden' or NAME = 'Hulk'

SELECT SUM(salary) FROM Employee_Pay_Roll WHERE Gender = 'FEMALE' GROUP BY Gender;
SELECT SUM(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT AVG(salary) FROM Employee_Pay_Roll WHERE Gender = 'FEMALE' GROUP BY Gender;
SELECT AVG(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT MIN(salary) FROM Employee_Pay_Roll WHERE Gender = 'FEMALE' GROUP BY Gender;
SELECT MIN(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT MAX(salary) FROM Employee_Pay_Roll WHERE Gender = 'FEMALE' GROUP BY Gender;
SELECT MAX(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT COUNT(salary) FROM Employee_Pay_Roll WHERE Gender = 'FEMALE' GROUP BY Gender;
SELECT COUNT(salary) FROM Employee_Pay_Roll WHERE Gender = 'MALE' GROUP BY Gender;

SELECT * FROM Employee_Pay_Roll
ALTER TABLE Employee_Pay_Roll
ADD PhoneNumber BIGINT, Address VARCHAR(100), Department VARCHAR(30)

UPDATE Employee_Pay_Roll SET Address = 'Miami'WHERE NAME in ('Captian')
UPDATE Employee_Pay_Roll SET Address = 'Florida'WHERE NAME in ('Jaden')
UPDATE Employee_Pay_Roll SET Address = 'Texas'WHERE NAME in ('Jonny')
UPDATE Employee_Pay_Roll SET Address = 'Ohio'WHERE NAME in ('Hulk')
UPDATE Employee_Pay_Roll SET Department = 'Counsellor' WHERE NAME in ('Captain');
UPDATE Employee_Pay_Roll SET Department = 'Asistant Manager' WHERE NAME in ('Hulk');
UPDATE Employee_Pay_Roll SET Department = 'CEO' WHERE NAME in ('Jonny');
UPDATE Employee_Pay_Roll SET Department = 'Manager' WHERE NAME in ('Jaden');
UPDATE Employee_Pay_Roll SET PhoneNumber = 1236589632 WHERE NAME = 'Jonny';
UPDATE Employee_Pay_Roll SET PhoneNumber = 9652352148 WHERE NAME = 'Jaden';
UPDATE Employee_Pay_Roll SET PhoneNumber = 5489623541 WHERE NAME = 'Captain';
UPDATE Employee_Pay_Roll SET PhoneNumber = 8521463597 WHERE NAME = 'Hulk';

SELECT * FROM Employee_Pay_Roll
ALTER TABLE Employee_Pay_Roll
ADD BasicPay BIGINT, Deduction BIGINT, Taxable BIGINT, IncomeTax BIGINT, NetPay BIGINT