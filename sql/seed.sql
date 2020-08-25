USE employee_db;

INSERT INTO department (name)
VALUES ('Sales'), ('Development');

INSERT INTO role (title, salary, department_id)
VALUES ('Sales Rep', 60000, 1),
  ('Sales Manager', 90000, 1),
  ('Jr Developer', 75000, 2),
  ('Sr Developer', 120000, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Jenna', 'Fischer', 2, NULL),
  ('Steve', 'Carell', 1, 1),
  ('John', 'Krasinski', 4, NULL),
  ('Craig', 'Robinson', 3, 3);
