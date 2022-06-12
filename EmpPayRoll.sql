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