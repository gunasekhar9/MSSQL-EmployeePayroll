create database EmplyeePayroll_Service;
use EmplyeePayroll_Service;
create table employee_Payrolll( id int IDENTITY(1,1) not null primary key, name varchar(150) not null, salary money not null, start date not null)
select * from employee_Payrolll
exec sp_help employee_Payrolll 
INSERT INTO employee_Payrolll (name, salary, start) Values
( 'BILLL', 1000000.00,'2021-01-03' ), 
( 'Terisaa', 2000000.00, '2019-11-04' ),
( 'Charliee', 300000.00, '2020-05-21' );
select * from employee_Payrolll
SELECT name,salary from employee_Payrolll WHERE name = 'BILLL'
select * from employee_Payrolll
WHERE start BETWEEN CAST('2021-01-03' AS DATE) AND GETDATE();