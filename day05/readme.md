---self join 

A self join is a SQL join where a table is joined with itself.
It’s used when you need to compare rows within the same table or represent relationships inside one table (like hierarchy or duplicates).

select e1.emp_name,e1.salary,e1.joining_date,e2.salary as manager_salary ,
e2.joining_date as manager_joining_date 
from employee e1
join employee e2 on e1.manager_id =e2.emp_id
where e1.salary> e2.salary and e1.joining_date>e2.joining_date
order by e1.emp_name;
