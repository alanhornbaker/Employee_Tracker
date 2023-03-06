# Employee Tracker

## Table of Contents

1.[Description and Purpose](#description)

2.[Installation](#installation)

3.[Usage](#usage)

4.[Contribution](#contribution)

5.[License](#license)

6.[Questions](#questions)

## Description

Developers frequently have to create interfaces that allow non-developers to easily view and interact with information stored in databases. These interfaces are called content management systems (CMS).

The Employee Tracker application solves the problem of tracking employee personal information, perfor

## Installation

You can install this application by forking the repository from github.com/alanhornbaker/Employee_Tracker and opening the repository in your text editor. You will also want the LTS version of NPM so the node works.

## Usage

Functions that you will use to to use the application once you have installed it:
build a command-line application from scratch to manage a company's employee database, using Node.js, Inquirer, and MySQL.

## Contribution

You can contribute to this application by opening a pull request at github.com/alanhornbaker/Employee_Tracker. Currently there are no rules or standards for contribution.

## License

The Alan License

## Questions

Known erros and other issues can be raised to the repository on github at github.com/alanhornbaker/Employee_Tracker , or can be sent to my github profile at github.com/alanhornbaker. As last resort, questions can be emailed to me directly at alanhornbaker@gmail.com

## User Story

AS A business owner
I WANT to be able to view and manage the departments, roles, and employees in my company
SO THAT I can organize and plan my business

## Acceptance Criteria

GIVEN a command-line application that accepts user input
WHEN I start the application
THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role

WHEN I choose to view all departments
THEN I am presented with a formatted table showing department names and department ids

WHEN I choose to view all roles
THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role

WHEN I choose to view all employees
THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to

WHEN I choose to add a department
THEN I am prompted to enter the name of the department and that department is added to the database

WHEN I choose to add a role
THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database

WHEN I choose to add an employee
THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database

WHEN I choose to update an employee role
THEN I am prompted to select an employee to update and their new role and this information is updated in the database

## Schema

![ Table Tree Image](./assets/images/table_tree.png "Tables Example")
As the image illustrates, your schema should contain the following three tables:

department

    id: INT PRIMARY KEY

    name: VARCHAR(30) to hold department name

role

    id: INT PRIMARY KEY

    title: VARCHAR(30) to hold role title

    salary: DECIMAL to hold role salary

    department_id: INT to hold reference to department role belongs to

employee

    id: INT PRIMARY KEY

    first_name: VARCHAR(30) to hold employee first name

    last_name: VARCHAR(30) to hold employee last name

    role_id: INT to hold reference to employee role

    manager_id: INT to hold reference to another employee that is the manager of the current employee (null if the employee has no manager)

You might want to use a separate file that contains functions for performing specific SQL queries you'll need to use. A constructor function or class could be helpful for organizing these. You might also want to include a seeds.sql file to pre-populate your database, making the development of individual features much easier.

## Bonus

Try to add some additional functionality to your application, such as the ability to do the following:

    Update employee managers.

    View employees by manager.

    View employees by department.

    Delete departments, roles, and employees.

    View the total utilized budget of a department—in other words, the combined salaries of all employees in that department.
