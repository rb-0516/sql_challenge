--Create and import employees data
CREATE TABLE Employees (
	emp_no INT Primary Key NOT NULL,
	emp_title VARCHAR (30) NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

SELECT * from Employees;

--Create and import departments data
CREATE TABLE Departments (
	dept_no VARCHAR Primary Key NOT NULL,
	dept_name VARCHAR (30) NOT NULL
);

SELECT * from Departments

-- Create and import titles data
CREATE TABLE Titles (
	title_id VARCHAR Primary Key NOT NULL,
	title VARCHAR (30) NOT NULL
);

SELECT * from Titles

--Create and import salaries data
CREATE TABLE Salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

SELECT * FROM Salaries;

--Create and imporat department manager data
CREATE TABLE Dept_Manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

SELECT * FROM Dept_Manager;

--Create and import department employee data
CREATE TABLE Dept_Employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)
);

SELECT * FROM Dept_Employees
