CREATE DATABASE People;
SELECT name FROM sys.databases;
USE people;

CREATE TABLE Customers(
CustomerID INT NOT NULL,
CustomerName VARCHAR(50),
ContactName VARCHAR(50),
Address VARCHAR(50),
City VARCHAR(25),
PostalCode VARCHAR(25),
Country VARCHAR(30),
PRIMARY KEY (CustomerID)
);

SELECT name FROM sys.tables;

INSERT INTO Customers VALUES(1 ,'Alfreds Futterkiste','Maria Anders','Obere Str. 57' ,'Berlin' ,  '12209' ,'Germany');
INSERT INTO Customers VALUES(2 ,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222' ,'México D.F.' ,  '05021' ,'Mexico');
INSERT INTO Customers VALUES(3 ,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312' ,'México D.F.' ,  '05023' ,'Mexico');
INSERT INTO Customers VALUES(4 ,'Around the Horn','Thomas Hardy','120 Hanover Sq.' ,'London' ,  'WA1 1DP' ,'UK');

INSERT INTO Customers VALUES(5 ,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8' ,'Luleå' ,  'S-958 22' ,'Swedan');
INSERT INTO Customers VALUES(6 ,' the Horn','Thomas ','Hanover Sq.' ,'London' ,  'WA1 1DPY' ,'UK');

SELECT Country , COUNT(CustomerID) AS No_of_People
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) >1;
/* DROP TABLE Customers; */
SELECT * FROM Customers;
CREATE TABLE Employees (
	EmployeeID INT PRIMARY KEY,
	Name NVARCHAR(50),
	DepartmentID INT,
	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
INSERT INTO Employees VALUES
       (2, 'Jane Smith', 2);

SELECT * FROM Employees;

CREATE TABLE Departments(
	DepartmentID INT PRIMARY KEY,
	DepartmentName NVARCHAR(60)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'IT'), (2, 'Sales'), (3, 'Marketing');


SELECT e.Name , d.DepartmentName 
FROM Employees e
JOIN
Departments d
ON e.DepartmentID = d.DepartmentID;

/* */
DELETE FROM Employees WHERE DepartmentID = 2;
DELETE FROM Departments WHERE DepartmentID = 2; /* Before deleting a department, you should delete or update related records in the Employees table first to maintain referential integrity. */
SELECT * FROM Departments;

SELECT name FROM sys.tables;




