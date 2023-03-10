-- You might also want to include a seeds.sql file to pre-populate your database, making the development of individual features much easier.'
USE workforce_db

INSERT INTO department (id, name)
VALUES (001, Sales),
       (002, Engineering),
       (003, Finance),
       (004, Legal);

INSERT INTO role (id, title, salary, department_id)
VALUES (001, Sales Lead, salary, department_id),
       (002, Sales Associate, salary, department_id),
       (003, Lead Engineer, salary, department_id),
       (004, title, salary, department_id),
       (005, title, salary, department_id),
       (006, title, salary, department_id),
       (007, title, salary, department_id),
       (008, title, salary, department_id);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (001, John, Leabawitz, role_id, manager_id),
       (001, first_name, last_name, role_id, manager_id),
       (001, first_name, last_name, role_id, manager_id),
       (001, first_name, last_name, role_id, manager_id);












