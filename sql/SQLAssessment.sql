CREATE DATABASE SQLassessment;
use SQLassessment;

--1.Querying Data by Using Joins and Subqueries
	CREATE TABLE employee (emp_id INT, emp_name VARCHAR(40),  emp_city VARCHAR(30),emp_country VARCHAR(25), PRIMARY KEY (emp_id));
	INSERT INTO employee VALUES (101, 'Manjit', 'Bettiah', 'India'),
								(102, 'Rahul', 'Bhopal', 'India'), 
								(103, 'Saket', 'Bhopal', 'India'),
								(104, 'Utkarsh', 'Delhi', 'India'),
								(105, 'Pyush', 'Jaipur', 'India'),
								(106, 'Ramesh Kumar', 'Patna', 'India');
	SELECT * FROM employee;



	CREATE TABLE department(dept_id INT PRIMARY KEY ,dept_name VARCHAR(30),emp_id INT FOREIGN KEY(emp_id) REFERENCES employee(emp_id) );
	INSERT INTO department VALUES(1,'EE',103),
								 (3,'CSE',106),
								 (4,'CE',105);
							 
	SELECT * FROM department;							 






	/*Joins*/
		 --inner join (only matched records fetched)
		  SELECT employee.emp_id , employee.emp_name ,employee.emp_country , department.dept_id , department.dept_name
		  FROM employee
		  JOIN 
		  department
		  ON employee.emp_id = department.emp_id;

		  --left join ( all records from left table and only matched records from right table is fetched  )
		  SELECT employee.emp_id , employee.emp_name ,employee.emp_country , department.dept_id , department.dept_name
		  FROM employee
		  LEFT JOIN 
		  department
		  ON employee.emp_id = department.emp_id;

		  /*Right join ( All records from right table and only matched records from left table Right table only has 3 records and which are matching with left table
		  that is why we are not seeing any null value in the right table) */
		  SELECT employee.emp_id , employee.emp_name ,employee.emp_country , department.dept_id , department.dept_name
		  FROM employee
		  RIGHT JOIN 
		  department
		  ON employee.emp_id = department.emp_id;

		  --Full join ( all records from both table is fetched ) 
		  SELECT employee.emp_id , employee.emp_name ,employee.emp_country , department.dept_id , department.dept_name
		  FROM employee
		  FULL JOIN 
		  department
		  ON employee.emp_id = department.emp_id;

	 /*subqueries*/
	  -- 1. find the employee details whose branch is CE
			SELECT employee.emp_id ,employee.emp_name , employee.emp_city , employee.emp_country , department.dept_name
			from employee
			JOIN department
			ON employee.emp_id = department.emp_id
			WHERE department.dept_name = (
			 SELECT dept_name FROM department WHERE dept_name = 'CE'
			);

	-- 2. find the employee details who are not part of any department
			SELECT employee.emp_id ,employee.emp_name , employee.emp_city , employee.emp_country
			from employee
			FULL JOIN department
			ON employee.emp_id = department.emp_id
			WHERE employee.emp_id NOT IN (
			 SELECT department.emp_id FROM department 
			);
   
     

--2.Manipulate data by using sql commands using group by and having clause.

CREATE TABLE employee1 (emp_id INT NOT NULL, emp_name VARCHAR(40),  emp_city VARCHAR(30),emp_country VARCHAR(25));
INSERT INTO employee1 VALUES (101, 'Manjit', 'Bettiah', 'India'),
                            (102, 'Rahul', 'Bhopal', 'India'), 
                            (103, 'Saket', 'Bhopal', 'India'),
                            (104, 'Utkarsh', 'Delhi', 'India'),
                            (105, 'Pyush', 'Patna', 'India'),
                            (106, 'Ramesh Kumar', 'Patna', 'India'),
							(106, 'Ramesh Kumar', 'Patna', 'India');
SELECT * FROM employee1;

--GROUP BY AND HAVING CLAUSE WITH EXAMPLES

	--find the id of duplicate records from employee1 table using (GROUP BY AND HAVING)
		SELECT emp_id , COUNT(emp_id) AS total_duplicate_record FROM employee1
		GROUP BY emp_id 
		having(COUNT(emp_id)>1);

	--find total number of employee who are living in the same city and employee's numbers should be greater than 2
		SELECT emp_city , COUNT(emp_id)AS total_no_of_employees FROM employee1
		GROUP BY emp_city 
		having(COUNT(emp_id)>2);

     -- find employee's count of each city
	    SELECT emp_city , COUNT(emp_id)AS total_no_of_employees FROM employee1
		GROUP BY emp_city ;