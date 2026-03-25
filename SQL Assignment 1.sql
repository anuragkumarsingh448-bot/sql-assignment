create database Pwassignment;
use Pwassignment;
create table Employees_
(EmpID char(3),
EmpName varchar(20),
Department varchar(15),
City varchar(15),
Salary int,
HireDate date);

select * from Employees_;

Insert into Employees_
values
("101", "Rahul Mehta", "Sales", "Delhi", 55000, 20200412);
select * from Employees_;
Insert into Employees_
values
("102", "Priya Sharma", "HR", "Mumbai", 62000, 20190925),
("103", "Aman Singh", "IT", "Bengaluru", 72000, 20210310),
("104", "Neha Patel", "Sales", "Delhi", 48000, 20220114),
("105", "Karan Joshi", "Marketing", "Pune", 45000, 20180722),
("106", "Divya Nair", "IT", "Chennai", 81000, 20191211),
("107", "Raj Kumar", "HR", "Delhi", 60000, 20200528),
("108", "Simran Kaur", "Finance", "Mumbai", 58000, 20210803),
("109", "Arjun Reddy", "IT", "Hyderabad", 70000, 20220218),
("110", "Anjali Das", "Sales", "Kolkata", 51000, 20230115);
select * from Employees_; 

### Question no.1 Show employees working in either the 'IT' or 'HR' departments.
select EmpID, EmpName, Department, City, Salary, HireDate from Employees_
where department in ("IT", "HR") 
order by department;

### Question no. 2 Retrieve employees whose department is in 'Sales', 'IT', or 'finance'. 
select * from employees_;

select EmpID, EmpName, Department, City, Salary, HireDate from Employees_
where Department in ("Sales", "IT", "finance")
order by Department;

### Question No. 3 Display employees whose salary is between Rs 50,000 and 70,000. 
select EmpID, EmpName, Department, City, Salary, HireDate from Employees_
where salary between 50000 and 70000
order by Salary;

#### Question no. 4 List employees whose name start with the letter 'A'.
select * from employees_
where EmpName like "A%";

### Question no. 5 Find employees whose name contain the substring 'an'. 
select * from Employees_
where EmpName like "%an%";

#### Question no. 6 Show employees who are from 'Delhi' or 'mumbai' and earn more than 55,000. 
 select * from Employees_
 where City in ( "delhi", "Mumbai")
and Salary > 55000
order by city;

#### Question no. 7 Display all employees except those from the 'HR' department.
select * from employees_
where department <> "HR";

### Question no. 8 Get all employees hired between 2019 and 2022, ordered by HireDate.
select * from Employees_
where HireDate Between "2019-01-01" and "2022-12-31"
order by HireDate asc;