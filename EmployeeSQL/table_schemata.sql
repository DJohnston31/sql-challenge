
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    hire_date DATE NOT NULL
);

Select * from employees

CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,
    dept_name varchar(30) NOT NULL
);

select * from departments

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    from_date date NOT NULL,
    to_date date NOT NULL
);

select * from dept_emp;

CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    from_date date NOT NULL,
    to_date date NOT NULL
);

select * from dept_manager

CREATE TABLE salaries (
    emp_no int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary money NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);

select * from salaries

CREATE TABLE titles (
    emp_no int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    title VARCHAR(30) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);

select * from titles
