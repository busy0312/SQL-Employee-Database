/*1. List the following details of each employee: 
employee number, last name, first name, gender, and salary.*/

select employees.emp_no,employees.first_name,employees.last_name,employees.gender,salaries.salary
from salaries
inner join employees
on salaries.emp_no=employees.emp_no;


--2. List employees who were hired in 1986.
select*
from employees
where hire_date>='1985-12-31'
and hire_date<='1987-01-01';


/*3. List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name, 
and start and end employment dates.
*/

select dm.*,e.first_name,e.last_name,d.dept_name
from department_managers as dm
inner join departments as d on dm.dept_no=d.dept_no
inner join employees as e on dm.emp_no=e.emp_no


/*4. List the department of each employee with the following information: 
employee number, last name, first name, and department name.*/

select de.emp_no, d.dept_name, e.first_name, e.last_name
from department_employees as de
inner join departments as d on d.dept_no=de.dept_no
inner join employees as e on e.emp_no=de.emp_no;


--5. List all employees whose first name is "Hercules" and last names begin with "B."

select*
from employees
where first_name='Hercules' and last_name like 'B%'
;


/*6. List all employees in the Sales department, 
including their employee number, last name, first name, and department name.*/

select de.emp_no, d.dept_name, e.first_name, e.last_name 
from department_employees as de	
inner join departments as d on d.dept_no=de.dept_no
inner join employees as e on e.emp_no=de.emp_no
and de.dept_no='d007'
;


/*7. List all employees in the Sales and Development departments,
including their employee number, last name, first name, and department name.*/

select de.emp_no, d.dept_name, e.first_name, e.last_name 
from department_employees as de	
inner join departments as d on d.dept_no=de.dept_no 
inner join employees as e on e.emp_no=de.emp_no
where de.dept_no='d007' or de.dept_no='d005' 
;

/*8. In descending order, 
list the frequency count of employee last names, i.e., how many employees share each last name.*/

SELECT last_name,
count(*) 
FROM employees
group by last_name
order by count desc;