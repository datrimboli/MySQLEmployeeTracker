DROP DATABASE IF EXISTS employee_db;
-- Creating the employee database for MySQL Workbench
CREATE DATABASE employee_db;
-- Telling workbench we are useing the employee database for the work below
USE employee_db;
-- Creating the department table & assigning it id and name variables
CREATE TABLE department (
  id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(30) UNIQUE NOT NULL
);
-- Creating the role table & assigning it id, title, salary, and department id variables and saying that department_id references department id (from previous table) via "Foreign Key" and "References"
CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL UNSIGNED NOT NULL,
  department_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);
-- Creating the employee table & assigning it id, first name, last name, role id, and manager id, and saying that role_id references role id (from previous table) & that manager_id references employee id (both in this table) via "Foreign Key" and "References" 
CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  manager_id INT UNSIGNED,
  FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);
