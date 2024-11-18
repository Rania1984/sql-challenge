CREATE TABLE titles(
title_id VARCHAR PRIMARY KEY NOT NULL,
title VARCHAR NOT NULL
);

CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY NOT NULL,
dept_name VARCHAR NOT NULL
);

CREATE TABLE employees (
emp_no INTEGER PRIMARY KEY NOT NULL,
emp_title_id VARCHAR NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL
);


CREATE TABLE dept_emp (
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INTEGER NOT NULL
);

CREATE TABLE dept_manager(
dept_no VARCHAR NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);






