USE employee_db;
-- Creating sales and development departments for MySQL workbench
INSERT INTO department (name)
VALUES ('Sales'), ('Development');
-- Creating starter titles, salary, and department id's for MySQL workbench
INSERT INTO role (title, salary, department_id)
VALUES ('Sales Rep', 60000, 1),
  ('Sales Manager', 90000, 1),
  ('Jr Developer', 75000, 2),
  ('Sr Developer', 120000, 2);
-- Creating starter employee first names, last names, role id's, and manager id's for MySQL workbench
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Jenna', 'Fischer', 2, NULL),
  ('Steve', 'Carell', 1, 1),
  ('John', 'Krasinski', 4, NULL),
  ('Craig', 'Robinson', 3, 3);
