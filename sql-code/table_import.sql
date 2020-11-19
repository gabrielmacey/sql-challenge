create table departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(40)
);

create table dept_emp (
	emp_no VARCHAR (20),
	dept_no VARCHAR(20)
);

create table employees (
	emp_no VARCHAR(30),
	emp_title_id VARCHAR(40),
	birth_date VARCHAR(30),
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	sex VARCHAR(10),
	hire_date VARCHAR(40)
);

create table titles (
	title_id VARCHAR(40),
	title VARCHAR(40)
);

create table salaries (
	emp_no VARCHAR(20),
	salary INTEGER
);

create table dept_manager (
	emp_no VARCHAR (20),
	dept_no VARCHAR(20)
);

