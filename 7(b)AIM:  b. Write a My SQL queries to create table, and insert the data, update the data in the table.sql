7(b)AIM:  b. Write a My SQL queries to create table, and insert the data, update the data in the table

 Description:

These are basic MySQL operations to:
•	Create a table named Employees
•	Insert some records into the table
•	Update specific data in that table
________________________________________
 Procedure:
Step 1: Open MySQL Command Line Client
•	Login using your password.
Step 2: Create a Database (if not already created)
CREATE DATABASE CompanyDB;
USE CompanyDB;
Step 3: Create a Table
CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);
Step 4: Insert Data into the Table
INSERT INTO Employees (name, position, salary)
VALUES 
('Alice Johnson', 'Manager', 60000.00),
('Bob Smith', 'Developer', 50000.00),
('Charlie Lee', 'Designer', 45000.00);
Step 5: View the Table Data
SELECT * FROM Employees;
Step 6: Update Data in the Table
UPDATE Employees
SET salary = 55000.00
WHERE name = 'Bob Smith';
Step 7: View Updated Data
SELECT * FROM Employees;


Expected Output:

 After Creating the Table:
Query OK, 0 rows affected (0.02 sec)
After Inserting Data:
Query OK, 3 rows affected (0.01 sec)
 SELECT * FROM Employees;
+--------+---------------+-----------+----------+
| emp_id | name          | position  | salary   |
+--------+---------------+-----------+----------+
|      1 | Alice Johnson | Manager   | 60000.00 |
|      2 | Bob Smith     | Developer | 50000.00 |
|      3 | Charlie Lee   | Designer  | 45000.00 |
+--------+---------------+-----------+----------+
 After Updating Bob Smith’s Salary:
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
 SELECT * FROM Employees; (After Update)
+--------+---------------+-----------+----------+
| emp_id | name          | position  | salary   |
+--------+---------------+-----------+----------+
|      1 | Alice Johnson | Manager   | 60000.00 |
|      2 | Bob Smith     | Developer | 55000.00 |
|      3 | Charlie Lee   | Designer  | 45000.00 |
+--------+---------------+-----------+----------+
