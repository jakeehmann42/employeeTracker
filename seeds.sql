DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

USE employees;
CREATE TABLE department (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
	id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL
);

CREATE TABLE employee (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT UNSIGNED
);

use employees;
INSERT INTO department
	(name)
VALUES
    ('Executive'),
    ('Statistics'),
    ('Accounts'),
    ('CAB');
INSERT INTO role
    (title, salary, department_id)
VALUES
    ('CEO', 1000000, 1),
    ('Director', 200000, 2),
    ('Manager', 150000, 3),
    ('Associate', 50000, 4),
    ('Contractor', 30000, 5),
INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Allen', 'Roberts', 1, NULL),
    ('Matt', 'Mehok', 2, 1),
    ('Thad', 'Ehmann', 3, NULL),
    ('Michelle', 'Rosowitz', 4, 3),
    ('Lindsay', 'Ehmann', 5, NULL),
