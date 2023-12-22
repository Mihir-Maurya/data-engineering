CREATE DATABASE Emp;
USE Emp;

CREATE TABLE Emp1(
id INT ,
name VARCHAR(50),
dept VARCHAR(40),
salary INT,
year_of_experience INT
);

INSERT INTO Emp1 VALUES(1,'Aakash Singh','Development',72000,2),
                       (2,'Abhishek Pawar','Production',45000,1),
					   (2,'Abhishek Pawar','Production',45000,1),
					   (3,'Pranav Deshmukh','HR',59900,3),
					   (4,'Shubham Mahale','Accounts',57000,2),
					   (5,'Sunil Kulkarni','Development',87000,3),
					   (6,'Bhushan Wagh','R&D',75000,2),
					   (6,'Bhushan Wagh','R&D',75000,2),
					   (7,'Paras Jaiswal','Marketing',32000,1);

SELECT * FROM Emp1;






CREATE TABLE Emp2(
id INT PRIMARY KEY,
name VARCHAR(50),
dept VARCHAR(40),
salary INT,
year_of_experience INT
);

INSERT INTO Emp2 VALUES(1,'Prashant Wagh','R&D',49000,1),
                       (2,'Abhishek Pawar','Production',45000,1),
					   (3,'Gautam Jain','Development',56000,4),
					   (4,'Shubham Mahale','Accounts',57000,2),
					   (5,'Rahul Thakur','Production',76000,4);

SELECT * FROM Emp2;

/*UNION It displays all the records but it removes duplicates*/
SELECT id , name FROM Emp1 
UNION 
SELECT id , name FROM Emp2 ; 

/*UNION ALL It displays all the records with duplicates from both the tables*/
SELECT id , name FROM Emp1 
UNION ALL
SELECT id , name FROM Emp2 ; 





/*INTERSECT It displays rows which are present in both the table*/
SELECT id , name FROM Emp1 
INTERSECT
SELECT id , name FROM Emp2 ; 

/*EXCEPT  	It displays the rows which are present in the first query but absent in the second query with no duplicates.*/
SELECT id , name FROM Emp1 
EXCEPT
SELECT id , name FROM Emp2 ; 
