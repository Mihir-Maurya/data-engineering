CREATE DATABASE mydb;
use mydb;

CREATE TABLE employee (emp_id INT, emp_name VARCHAR(40),  emp_city VARCHAR(30),emp_country VARCHAR(25), PRIMARY KEY (emp_id));
INSERT INTO employee VALUES (101, 'Utkarsh Tripathi', 'Varanasi', 'India'),
                            (102, 'Abhinav Singh', 'Varanasi', 'India'), 
                            (103, 'Utkarsh Raghuvanshi', 'Varanasi', 'India'),
                            (104, 'Utkarsh Singh', 'Allahabad', 'India'),
                            (105, 'Sudhanshu Yadav', 'Allahabad', 'India'),
                            (106, 'Ashutosh Kumar', 'Patna', 'India');
SELECT * FROM employee;




CREATE TABLE department(dept_id INT PRIMARY KEY ,emp_id INT FOREIGN KEY(emp_id) REFERENCES employee(emp_id) );
INSERT INTO department VALUES(1,103),
							 (3,106),
							 (4,105);

DELETE FROM department WHERE dept_id = 2;
/*inner join*/
SELECT employee.emp_name AS employee_name , employee.emp_id AS employee_id ,employee.emp_country AS country , department.dept_id AS department_id
FROM employee
INNER JOIN 
department ON employee.emp_id = department.emp_id;



/*Left join*/
SELECT employee.emp_name AS employee_name , employee.emp_id AS employee_id ,employee.emp_country AS country , department.dept_id AS department_id
FROM employee
LEFT JOIN 
department ON employee.emp_id = department.emp_id;

/*Right join*/
SELECT employee.emp_name AS employee_name , employee.emp_id AS employee_id ,employee.emp_country AS country , department.dept_id AS department_id
FROM employee
RIGHT JOIN 
department ON employee.emp_id = department.emp_id;

/*Full join*/
SELECT employee.emp_name AS employee_name , employee.emp_id AS employee_id ,employee.emp_country AS country , department.dept_id AS department_id
FROM employee
FULL JOIN 
department ON employee.emp_id = department.emp_id;

/*Cross join*/
SELECT employee.emp_name AS employee_name , employee.emp_id AS employee_id ,employee.emp_country AS country , department.dept_id AS department_id
FROM employee
CROSS JOIN 
department ;

