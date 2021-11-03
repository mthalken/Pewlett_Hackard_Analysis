-- Deliverable 1
SELECT emp.emp_no,
	emp.first_name,
	emp.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as emp
INNER JOIN titles as ti
ON (emp.emp_no = ti.emp_no)
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

SELECT COUNT (emp_no)
FROM retirement_titles
	
-- Remove duplicates
SELECT
	DISTINCT ON (emp_no) emp_no
	emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM 
	retirement_titles
ORDER BY
	emp_no,
	to_date DESC;
	
SELECT COUNT (emp_no)
FROM unique_titles

SELECT * FROM unique_titles;

--create table with unique titles and number of employees
SELECT COUNT(unique_titles.emp_no), unique_titles.title
INTO retiring_titles
FROM unique_titles 
GROUP BY unique_titles.title
ORDER BY  unique_titles.count DESC

SELECT * FROM unique_titles;
SELECT * FROM retirement_titles;
SELECT * FROM retiring_titles;


-- Deliverable 2
SELECT 
	DISTINCT ON (emp_no)
		emp.emp_no,
		emp.first_name,
		emp.last_name,
		emp.birth_date,
		de.from_date,
		de.to_date,
		ti.title
INTO mentorship_eligibility
FROM employees as emp
INNER JOIN dept_emp as de
ON (emp.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (emp.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY  emp_no

SELECT * FROM mentorship_eligibility;


-- Find total retiring salary for each department
SELECT * FROM current_emp;

SELECT de.emp_no,
	de.dept_no,
	sa.salary
INTO salary_retired_count
FROM dept_emp as de
INNER JOIN employees as emp
ON (de.emp_no = emp.emp_no)
INNER JOIN salaries as sa
ON (de.emp_no = sa.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no

SELECT * FROM salary_retired_count;

SELECT dept_no, SUM (salary)
INTO retire_department
FROM salary_retired_count
GROUP BY dept_no
ORDER BY dept_no;

SELECT * FROM retire_department;


-- Find total retiring count for each department
SELECT dept_no, COUNT(emp_no)
INTO retire_department_count
FROM salary_retired_count
GROUP BY dept_no
ORDER BY dept_no;

SELECT * FROM retire_department_count;

