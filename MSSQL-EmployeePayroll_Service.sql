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



ALTER TABLE employee_Payrolll ADD gender CHAR(1);
update employee_Payrolll set gender = 'F' where name = 'Terisaa';
update employee_Payrolll set gender = 'M' where name = 'BILLL' or name = 'Charliee';
update employee_Payrolll set salary = 900000.00 where name = 'Terisaa';
select * from employee_Payrolll


SELECT AVG(salary) FROM employee_Payrolll WHERE gender = 'M' GROUP BY gender;
SELECT AVG(salary) FROM employee_Payrolll WHERE gender = 'F' GROUP BY gender;
SELECT SUM(salary) FROM employee_Payrolll WHERE gender = 'M' GROUP BY gender;
SELECT SUM(salary) FROM employee_Payrolll WHERE gender = 'F' GROUP BY gender;
SELECT MIN(salary) FROM employee_Payrolll WHERE gender = 'M' GROUP BY gender;
SELECT MIN(salary) FROM employee_Payrolll WHERE gender = 'F' GROUP BY gender;
SELECT MAX(salary) FROM employee_Payrolll WHERE gender = 'M' GROUP BY gender;
SELECT MAX(salary) FROM employee_Payrolll WHERE gender = 'F' GROUP BY gender;


ALTER TABLE employee_Payrolll Add Department char(10);
ALTER TABLE employee_Payrolll Add Phonenumber int;
ALTER TABLE employee_Payrolll Add Address char(10);
update employee_Payrolll set Department = 'FINANCE' where name = 'BILLL';
update employee_Payrolll set Department = 'MARKETING' where name = 'Terisaa';
update employee_Payrolll set Department = 'PRODUCTION' where name = 'Charliee';
select * from employee_Payrolll


Alter Table employee_Payrolll Add Basic_Pay int;
Alter Table employee_Payrolll Add Deductions int;
Alter Table employee_Payrolll Add Taxable_Pay int;
Alter Table employee_Payrolll Add Income_Tax int;
Alter Table employee_Payrolll Add Net_Pay int;
update employee_Payrolll set Basic_Pay = '9000000' where name = 'BILLL';
update employee_Payrolll set Basic_Pay = '90000' where name = 'Terisaa';
update employee_Payrolll set Basic_Pay = '29000' where name = 'Charliee';
update employee_Payrolll set Deductions = '5638' where name = 'Terisaa';
update employee_Payrolll set Taxable_Pay = '1234' where name = 'Charliee';
update employee_Payrolll set Income_Tax = '9153' where name = 'BILLL';
update employee_Payrolll set Net_Pay = '1539' where name = 'BILLL';