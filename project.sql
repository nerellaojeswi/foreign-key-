create database company_management;
use company_management;
create table Departments(dept_id int PRIMARY KEY,dept_name varchar(50) unique,location varchar(50) default 'Hyderabad'); 
create table employees(emp_id int PRIMARY KEY,emp_name varchar(50) NOT NULL,email varchar(100) UNIQUE,age int check(age>=18),salary decimal(10,2),city varchar(50) default 'hyd',joining_date date);
INSERT INTO Departments values
(1,'it','hyd'),
(2,'operations','ben'),
(3,'hr','chennai'),
(4,'finance','ben'),
(5,'marketing','chennai');
INSERT INTO employees values
(101, 'Anitha', 'anitha101@gmail.com', 22, 55000.00, 'Hyderabad', '2024-01-15'),
(102, 'Karthik', 'karthik102@gmail.com', 24, 45000.00, 'Bangalore','2023-06-10'),
(103, 'Rahul', 'rahul103@gmail.com', 27, 60000.00, 'Chennai','2022-08-20'),
(104, 'Priya', 'priya104@gmail.com', 25, 50000.00, 'Mumbai','2024-03-05'),
(105, 'Suresh', 'suresh105@gmail.com', 29, 48000.00, 'Pune','2021-11-12'),
(106, 'Divya', 'divya106@gmail.com', 23, 70000.00, 'Hyderabad','2023-02-18'),
(107, 'Arjun', 'arjun107@gmail.com', 26, 42000.00, 'Chennai','2022-05-25'),
(108, 'Sneha', 'sneha108@gmail.com', 28, 65000.00, 'Bangalore','2021-09-30'),
(109, 'Vijay', 'vijay109@gmail.com', 30, 53000.00, 'Delhi','2020-12-01'),
(110, 'Pooja', 'pooja110@gmail.com', 24, 47000.00, 'Mumbai','2024-04-08'),
(111, 'Ravi', 'ravi111@gmail.com', 31, 75000.00, 'Pune','2019-07-14'),
(112, 'Neha', 'neha112@gmail.com', 22, 44000.00, 'Hyderabad','2024-02-20'),
(113, 'Ajay', 'ajay113@gmail.com', 27, 68000.00, 'Delhi','2022-10-11'),
(114, 'Meena', 'meena114@gmail.com', 25, 52000.00, 'Chennai','2023-08-16'),
(115, 'Varun', 'varun115@gmail.com', 28, 49000.00, 'Bangalore','2021-06-05'),
(116, 'Lakshmi', 'lakshmi116@gmail.com', 26, NULL, 'Hyderabad','2022-03-22'),
(117, 'Manoj', 'manoj117@gmail.com', 23, 43000.00, 'Pune','2024-01-10'),
(118, 'Kavya', 'kavya118@gmail.com', 29, 71000.00, 'hyd','2020-11-18'),
(119, 'Rakesh', 'rakesh119@gmail.com', null, 56000.00, 'Mumbai','2018-09-27');
select *from employees;
select *from Departments;
INSERT INTO employees(emp_id,emp_name,email,age,salary,joining_date) values
(121,'oji','oje2004@gmail.com',23,56890,'2024-04-08');
select *from employees;
delete from employees where emp_id=120;
update employees set emp_id=120 where emp_id=121;
select *from employees;
insert INTO employees values(119,'satish','satish@gmail.com',null,45000,'chennai','2023-11-07');
select emp_name,salary from employees; 
select *from employees where city='hyderabad';
select *from employees where salary> 50000.00;
select *from employees where city='Hyderabad' AND salary>50000.00;
select *from employees where emp_name like 'a%';
select *from employees where emp_name like '%a';
select *from employees where city in('Hyderadab','chennai','bangalore');
select *from employees where salary between 40000 and 70000;
select *from employees order by salary asc;
select *from employees order by salary desc;
select *from employees order by city,salary;
select count(*) from employees;
select sum(salary) from employees;
select sum(salary)/count(*) as avg from employees;
select max(salary) from employees;
select min(salary) from employees;
create index empindex on employees(emp_name);
create unique index elecmail on employees(email);
show indexes from employees;
create user 'hr1_user'@'localhost' identified by 'hr1123';
grant select,update on company_management.employees to 'hr1_user'@'localhost';
create user 'viewer_user'@'localhost' identified by 'viewer123';
grant select on company_management.employees to 'viewer_user'@'localhost';
show grants for viewer_user@localhost;
alter table employees add column dept varchar(30);
select *from employees;
select dept , count(*) from employees group by dept;
select dept,sum(salary)/count(*) from employees group by dept;
select dept ,max(salary) from employees group by dept;
select city ,sum(salary) from employees group by city;
select dept ,count(*) from employees group by dept having count(*)>3;
select city ,count(*) from employees group by city having count(*)>2;
select dept, sum(salary)/count(*) as avg from employees group by dept order by avg desc limit 1;
select city,sum(salary) as total_salary from employees group by city order by city ,total_salary desc limit 1;
select dept ,sum(salary) as total_salary from employees group by dept having total_salary>200000.00;





