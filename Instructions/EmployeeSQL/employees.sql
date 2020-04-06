-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vospTr
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE departments (
    dept_no char(4) Primary Key  NOT NULL,
    dept_name varchar   NOT NULL
);

CREATE TABLE employees (
    emp_no int Primary Key  NOT NULL,
    birthday date   NOT NULL,
    first_name varchar(15)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date date   NOT NULL
);


CREATE TABLE department_employees (
    emp_no int   NOT NULL,
    dept_no char(4)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	Foreign key (emp_no) References employees(emp_no),
	Foreign key (dept_no) References departments(dept_no)
);

CREATE TABLE department_managers (
    dept_no char(4)   NOT NULL,
    emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	Foreign key (emp_no) References employees(emp_no),
	Foreign key (dept_no) References departments(dept_no)
);


CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	Foreign key (emp_no) References employees(emp_no)	
);

CREATE TABLE titles (
    emp_no int   NOT NULL,
    title varchar   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	Foreign key (emp_no) References employees(emp_no)
);

