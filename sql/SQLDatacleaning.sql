use demo_db;
select * from employee;
select * from company;

CREATE DATABASE EmpDB;
USE EmpDB;

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
					   (7,'Paras Jaiswal','Marketing',32000,NULL);

SELECT * FROM Emp1;

TRUNCATE TABLE Emp1;

/*delete duplicate data*/

SELECT name , COUNT(name)
FROM emp1
group by name
having count(name)>1;

select name , ROW_NUMBER() OVER (PARTITION BY name order by id) as rn from emp1;

/*DELETE FROM emp1 where  id in(
SELECT id from(select id , ROW_NUMBER() OVER (PARTITION BY name order by id) as rn
from emp1
) as t
where rn > 1);*/

WITH Duplicates AS (
    SELECT id, name,
           ROW_NUMBER() OVER (PARTITION BY name ORDER BY id) AS rn
    FROM emp1
)
DELETE FROM Duplicates
WHERE rn > 1;

/*removing null*/
DELETE
FROM emp1
WHERE year_of_experience IS NULL;

/*update data where year_of_experienc is null*/
UPDATE emp1
SET year_of_experience = 3
WHERE id = 7;

/*dept in UPPER CASE*/
UPDATE emp1
SET dept = UPPER(dept) ;

