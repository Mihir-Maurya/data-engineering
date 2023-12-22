CREATE DATABASE Stud;
USE Stud;

CREATE TABLE Student(
id INT PRIMARY KEY,
name VARCHAR(30),
class INT,
city VARCHAR(30)
);

INSERT INTO Student VALUES(3,'Hina',3,'Delhi'),
                          (4,'Megha',2,'Delhi'),
						  (6,'Gouri',2,'Delhi');

SELECT * FROM Student;

CREATE TABLE Record(
id INT PRIMARY KEY,
class INT,
city VARCHAR(30)
);


INSERT INTO Record VALUES(9,3,'Delhi'),
                         (10,2,'Delhi'),
						 (12,2,'Delhi');
SELECT * FROM Record;










/*EQUI JOIN*/

SELECT Student.name , Student.id , Record.class ,Record.city
FROM Student , Record
WHERE Student.city = record.city;

/*NON EQUI JOIN*/
	SELECT student.name, record.id, record.city
	FROM student, record
	WHERE Student.id < Record.id ;
