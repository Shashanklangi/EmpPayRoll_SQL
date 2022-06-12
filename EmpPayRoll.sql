CREATE DATABASE Emp_Pay_Roll

USE Emp_Pay_Roll

CREATE TABLE Employee_Pay_Roll
(
	ID int identity (1,1) primary key,
	Name varchar (30) NOT NULL,
	salary int,
	StartDate Date
);