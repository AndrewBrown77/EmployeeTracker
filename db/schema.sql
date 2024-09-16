DROP DATABASE IF EXISTS staff_db; --drop the database "staff_db" if it exists to avoid conflict when creating a new one

CREATE DATABASE staff_db; --create a new database named "staff_db"

USE staff_db; -- Select the 'staff_db' database to execute subsequent commands within it

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
); -- Create a table named 'department' to store department information

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES department(id) 
    ON DELETE CASCADE
); -- Create a table named 'role' to store job roles within the organization

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id)
    REFERENCES role(id), 
    FOREIGN KEY (manager_id)
    REFERENCES employee(id) 
    manager_id INT NOT NULL
    ON DELETE SET NULL
); -- Create a table named 'employee' to store employee information