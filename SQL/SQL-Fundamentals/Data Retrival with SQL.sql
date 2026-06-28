use employees;
select name,age from employees;
select name as employee_name, age as employee_age from employees;
select * from employees where age > 30;
select * from employees where department = "Sales" and age > 30;
select * from employees where age > 30 and age < 40;
select * from employees where age between 30 and 40;
select * from employees where department = 'Sales' or department = 'Marketing';
select * from employees where name like 'Jo%';
select * from employees where department is null;
select * from employees where department is not null and age is not null;
select * from employees where department in ('Sales', 'Marketing');
select * from employees where department not in ('Sales', 'Marketing');
select * from employees where (department in ('Sales', 'Marketing')) and age > 30;

select * from employees limit 5;
select * from employees limit 5 offset 10;

select * from employees order by age desc;
select * from employees order by age desc, employee_id;
select * from employees order by name, age desc;