use employees;
select * from employees;
select name,
case department
	when 'sales' then 'sales team'
    else 'other'
end as employee_name from employees;

select name,
case department
	when 'sales' then 'sales team'
    when 'marketing' then 'marketing team'
    else 'other'
end as employee_name from employees;

select name,
case 
	when age < 30 then 'young'
    when age >=30 and age <40 then 'mid-aged'
    else 'senior'
end as employee_name from employees;

select name, 
case 
	when age < 30 then
		case 
			when department = 'Sales' then 'Jr Sales'
            else 'Junior'
		end
	when age >=30 and age < 40 then 'Middle-Aged'
    else 'Senior'
    
end as employee_name from employees;

select name, 
case
	when department is null then 'No Department Assigned'
    else department
end as department_status from employees;
            