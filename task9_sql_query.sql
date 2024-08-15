select * from employee

--Regex examples

1) Find employee name starting with 'M'

select *from employee where emp_name ~*'^M'

2) Find job_title of employee starting with 'S or D'

select * from employee where job_title ~*'^(S|D)[a-z]'

3) Find hiring date of employee who are hired only in may month

select * from employee where hire_date::varchar ~* '^[0-9]{4}-(0|5){2}-[0-9]{2}$'

4) Find job_title of employee who's starting letter should be any alphabet , 5th letter should be 'W' or 'S'
	and next 3 digit should be any
	
select * from employee where job_title ~* '^[a-z]{4}(w|s)[a-z]{3}'

5) Find phone_no of employee who's 1st digit should be in between 0-5 and next 5 digit in between 1-8 and
	6th digit should be 2 or 5 or 8 or 1 and next digit in between 0-4 

select * from employee where phone_no ~*'^[0-5][1-8]{5}(2|5|8|1)[0-4]$'

6) Find emp_name who's 1st three letters should be any alphabet 4th letter should be 'L' or 'E' or 'N'
	and next three letter should be any alphabet

select * from employee where emp_name ~*'^[a-z]{3}(l|e|n)[a-z]{3}'