CREATE DATABASE Emp;
USE Emp;

CREATE TABLE Emp1(
id INT PRIMARY KEY,
name VARCHAR(50),
dept VARCHAR(40),
salary INT,
year_of_experience INT
);

INSERT INTO Emp1 VALUES(1,'Aakash Singh','Development',72000,2),
                       (2,'Abhishek Pawar','Production',45000,1),
					   (3,'Pranav Deshmukh','HR',59900,3),
					   (4,'Shubham Mahale','Accounts',57000,2),
					   (5,'Sunil Kulkarni','Development',87000,3),
					   (6,'Bhushan Wagh','R&D',75000,2),
					   (7,'Paras Jaiswal','Marketing',32000,1);

SELECT * FROM Emp1;








CREATE PROCEDURE p_name AS
SELECT * FROM Emp1;

CREATE PROCEDURE p_name1 AS
SELECT * FROM Emp1 WHERE dept = 'HR';
EXEC p_name1 ;


CREATE PROC pName3
@dept VARCHAR(30),
@salary INT
AS
BEGIN
SELECT * FROM Emp1 WHERE dept = @dept AND salary = @salary
END
;

exec pname3 @dept='Development' , @salary=72000;
/*exec pname3 'Development' , 72000;
pname3 'Development' , 72000;
*/
