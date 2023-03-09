-- You might want to use a separate file that contains functions for performing specific SQL queries you'll need to use. A constructor function or class could be helpful for organizing these. 

-- An SQL query interacts with data in a database using a) the names of a table, b) the names of columns, and c) relationships between tables.
-- SQL Queries are Structured as Follows:
-- "SELECT *" -a select statement, selecting all (*)
-- "FROM a_table" -a from statement, declaring which table we want to select data from.
-- "INNER JOIN a_related_table" -can do an inner join statement, allowing the query to grab data from both tables, based on a common field.
-- "ON data_they_have_in_common" -An "ON" statement, declaring what variable the two tables have in common that they are being related on.

-- Examples: 
-- SELECT department, COUNT(id) AS number_courses
-- FROM course_names
-- GROUP BY department;

-- SELECT department, SUM(total_enrolled) AS sum_enrolled
-- FROM course_names
-- GROUP BY department;

-- Other SQL query methods and syntax can be found at: (https://www.w3schools.com/sql/sql_quickref.asp).

-- Queries List from Video:
-- A. CREATE Queries:
-- 2. Add Employee
INSERT INTO employee (id, first_name, last_name, role_id)
    VALUES (001, Rick, Danielson, FOREIGN KEY (role_id));

-- 5. Add Roles
INSERT INTO  role (id, title, salary, FOREIGN KEY (department_id))
    VALUES (001, , salary, FOREIGN KEY (department_id));

-- 7. Add Department
INSERT INTO  department (id, name)
    VALUES (int_input, "name_input");


-- B. READ Queries:
-- 1. View All Employees
SELECT *
FROM employee;

SELECT employee
FROM employee
GROUP BY last_name;

-- 6. View All Departments
SELECT *
FROM department
GROUP BY id

-- 4. View All Roles
SELECT *
FROM role
GROUP BY id


-- C. UPDATE Queries:
-- 3. Update Employee Role
UPDATE employee
SET role_id = "role(id)"
WHERE id = employee(id);




-- 8. Quit

-- Bonus Queries:
-- 9. Update Employee Manager
UPDATE produce
SET name = "strawberry"
WHERE id = 1;

-- 10. View Employees by Manager
SELECT *
FROM employee
GROUP BY manager_id

-- 11. View Employees by Department

-- 12, Delete Departments, Roles, and Employees
DELETE FROM department
WHERE id = 2;

SELECT * FROM department

-- 13. View total utilized budjet of department (the combined salaries of all employees in that department)