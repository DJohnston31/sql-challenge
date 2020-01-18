-- List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary 
FROM employees
INNER JOIN salaries on
employees.emp_no=salaries.emp_no;

-- List employees who were hired in 1986.

SELECT emp_no, last_name, first_name, birth_date, gender, hire_date
FROM employees
WHERE hire_date >= '01/1/1986'
and hire_date <= '12/31/1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date 
FROM departments
INNER JOIN dept_manager on
departments.dept_no=dept_manager.dept_no
INNER JOIN employees on
dept_manager.emp_no=employees.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees on
dept_emp.emp_no=employees.emp_no
INNER JOIN departments on
dept_emp.dept_no=departments.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT emp_no, last_name, first_name, birth_date, gender, hire_date
FROM employees
WHERE first_name = 'Hercules'
and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name. 

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees on
dept_emp.emp_no=employees.emp_no
INNER JOIN departments on
dept_emp.dept_no=departments.dept_no
WHERE dept_emp.dept_no = 'd007';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees on
dept_emp.emp_no=employees.emp_no
INNER JOIN departments on
dept_emp.dept_no=departments.dept_no
WHERE dept_emp.dept_no = 'd007'
or dept_emp.dept_no = 'd005';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name);


