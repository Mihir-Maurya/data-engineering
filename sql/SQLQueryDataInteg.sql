CREATE DATABASE demo_db;
use demo_db;

/*defult */
Create table Demo(Id int,name varchar(50),Salary int default 15000);
INSERT INTO Demo(Id,name) VALUES(1,'Sachin');
SELECT * FROM Demo;

/* unique */
Create table demo1(id int unique,name varchar(50),price int unique);
INSERT INTO Demo1(Id,name,price) VALUES(NULL,'Sachin',NULL);
INSERT INTO Demo1(Id,name,price) VALUES(2,'Sachin',300000);
SELECT * FROM Demo1;

/*not null*/
Create table Demo2(id int not null, age int);
INSERT INTO Demo2 VALUES(6,28);
INSERT INTO Demo2 VALUES(NULL,28); /* doesn't allow null value to insert in Demo2 table */
SELECT * FROM Demo2;

/*check*/
Create table demo3(id int, Age int check(Age between 18 and 24));
INSERT INTO Demo3 VALUES(1,22);
INSERT INTO Demo3 VALUES(2,25); /* not inserting because age in not in between 18 and 24 because of CHECK constraint */
SELECT * FROM Demo3;

/*primary key*/
Create table demo4(id int primary key, salary money);
INSERT INTO demo4 VALUES(1,50000);
INSERT INTO demo4 VALUES(1,90000); /*can not insert duplicate id i.e. key due to primary key contraint*/
SELECT * FROM Demo4;

/*composite primary key*/
create table demo5(id int,name varchar(50),primary key(id,name));
INSERT INTO demo5 VALUES(1,'Kundan');
INSERT INTO demo5 VALUES(1,'Deepika'); /* both name and id should be unique not any one so , it is fine to have same id */
INSERT INTO demo5 VALUES(1,'Kundan'); /*Cannot insert duplicate key because both id and name is duplicate which is already in the table*/
SELECT * FROM Demo5;

/*foreign key*/
Create table employee(id int primary key,name varchar(50),age int);

Create table company(email varchar(50),address varchar(50),employee_id int ,foreign key(employee_id) references employee(id));


SELECT name FROM sys.tables;
-