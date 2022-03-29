
SELECT DISTINCT ON (emp_no) e.birth_date,
e.emp_no,
e.first_Name,
e.last_name,
ti.title
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.from_date DESC;
