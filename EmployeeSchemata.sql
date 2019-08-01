-- DROP TABLE
DROP TABLE IF EXISTS Employees; 
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Dept_emp;
DROP TABLE IF EXISTS Dept_mgr;
DROP TABLE IF EXISTS Titles;
DROP TABLE IF EXISTS Salaries;

-- Create Employee Table
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY  NOT NULL,
    birth_date VARCHAR(25),
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    gender VARCHAR(1),
    hire_date VARCHAR(25)
);

--Create Departments Table
CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY  NOT NULL,
	dept_name VARCHAR(25) NOT NULL
);

--Create Dept_emp Table
CREATE TABLE Dept_emp (
    emp_no INT  NOT NULL,
    dept_no VARCHAR(4),
    from_date VARCHAR(10),
    to_date VARCHAR(10),
   	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

--Create Dept_mgr Table
CREATE TABLE Dept_mgr (
    dept_no VARCHAR(4) NOT NULL,
	emp_no INT  NOT NULL,
    from_date VARCHAR(10),
    to_date VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no) 
);

--Create Titiles Table
CREATE TABLE Titles (
    emp_no INT NOT NULL,
	title VARCHAR(25),
    from_date VARCHAR(10),
    to_date VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no) 
);

--Create Salaries Table
CREATE TABLE Salaries (
    emp_no INT  NOT NULL,
    salary INT,
    from_date VARCHAR(10),
    to_date VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no) 
);

-- Confirmation
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Dept_emp;
SELECT * FROM Dept_mgr;
SELECT * FROM Titles;
SELECT * FROM Salaries;

