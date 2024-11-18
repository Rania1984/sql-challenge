# sql-challenge
For this Module challenge, I started by working on the data modeling task by sketching the tables from the CSV files and created an ERD using the QUICKDBD tool.

For Data Engineering, I ran into an issue while importing the CSV files. The error "for reading: Permission denied" occurred because PostgreSQL didn’t have the required permissions to access the CSV
file. I used ChatGPT for assistance, which suggested placing the folder with the CSV files in a publicly accessible directory (/Users/Shared) and using the following command to resolve the issue:
COPY table_name
FROM '/Users/Shared/data/file.csv'
DELIMITER ','
CSV HEADER;

For Data Analysis,I wrote SQL queries to analyze the employee database, including the following tasks:
1.List the employee number, last name, first name, sex, and salary of each employee.
2.List the first name, last name, and hire date for the employees who were hired in 1986.
3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6.List each employee in the Sales department, including their employee number, last name, and first name.
7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
