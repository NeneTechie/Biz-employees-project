create database employees;

use employees;

select* from employee;
select emp_name, dept_name, salary, row_number()
over(partition by dept_name order by emp_name asc) RN
from employee
where salary < 120000;

select emp_name, dept_name, salary, row_number()
over(partition by dept_name order by emp_name asc) RN
from employee
where salary > 120000;

select emp_name, dept_name, salary, row_number()
over(partition by dept_name order by emp_name asc) RN
from employee
where salary >= 135000;

select emp_name, dept_name, salary, row_number()
over(partition by dept_name order by emp_name asc) RN,
rank()
over(partition by dept_name order by emp_name asc) RK
from employee;

select emp_name, dept_name, salary, row_number()
over(partition by dept_name order by emp_name asc) RN ,
rank()
over(partition by dept_name order by emp_name asc) RK,
dense_rank()
over(partition by dept_name order by emp_name asc) DK
from employee;