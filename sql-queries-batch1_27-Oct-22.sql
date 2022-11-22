--git urls
--https://github.com/SriTejaInstitute02Jun22/sql-database-queries/tree/master

--date 27-Oct-22
create table company (comp_id number(10), 
					  comp_name varchar2(20), 
					  comp_email varchar2(20),
					  column_mobile varchar2(20),
					  column_address varchar2(20),
					  column_location varchar2(20));
            
desc company;


insert into company VALUES (9, 'SriTeja', 'sriteja@gmail.com', '+918801826101', 'Kokkanti Cross', 'A.P');
insert into company VALUES (2, 'Hari', 'hari@gmail.com', '+91889333', 'Cross', 'A.P');
insert into company VALUES (3, 'Teja', 'teja@gmail.com', '+918333', 'Hyderabad', 'T.S');

select * from company;


select * from company where comp_email='sriteja@gmail.com' and column_mobile='+918801826101';

select * from company where comp_email='teja@gmail.com' and column_mobile='+918333' and comp_id=3;

select * from company where comp_email='hari@gmail.com';

--date 28-Oct-22
select * from company;
insert into company(comp_id, comp_name, comp_email) VALUES (10, 'JyothV2444', 'jyothis@gmail.com');

--add new column into the existing table
ALTER TABLE <table_name> ADD <column_name> datatype;                           --syntax
ALTER TABLE company ADD Email varchar2(255);                                   --example

--delete existing column into the existing table
ALTER TABLE <table_name> DROP COLUMN <column_name>;                            --syntax
ALTER TABLE company DROP COLUMN Email;                                         --example

--how to rename the column name from the existing table.
ALTER TABLE <table_name> RENAME COLUMN <old_column_name> TO <new_column_name>;	--syntax
ALTER TABLE company RENAME COLUMN column_mobile TO comp_mobile;						      --example

--how to rename the table name from the existing table.
ALTER TABLE <table_name> RENAME TO <new_table_name>;		                        --syntax
ALTER TABLE company RENAME TO companydetails;				                            --example

--how to delete the existing table 
DROP TABLE <table_name>;                  --syntax
DROP TABLE company;                       --example                  

--29-Oct-22
--creating new employee table
create table employee(
employee_id varchar2(250) not null,
employee_name varchar2(250) not null,
employee_salary number(25,3) null,
employee_gender char(4) not null,
employee_joining_date date null,
employee_mobile varchar2(15) not null,
employee_email varchar2(30) not null,
employee_company_name varchar2(25) null,
employee_location varchar2(25) null
);

--how to delete the table 
drop table employee;

--insert some data into employee tables.
insert into employee values('R1022', 'Ramesh', null, 'M', '10-Oct-22', '+9189282233', 'ramesh@gmail.com', null, 'Hyderabad');
insert into employee values('V2444', 'Vikram', 55000.24, 'M', '01-Oct-22', '+91782373349', 'vikram@gmail.com', 'HCL', 'Bangalore');
insert into employee values('S3443', 'Srivalli', 50000.04, 'F', '01-Aug-22', '+916534903429', 'srivalli@gmail.com', 'Infosys', 'Bangalore');

insert into employee values('C2443', 'Chandra', 100000.24, 'M', '15-Jan-21', '+917896539260', 'chandra@gmail.com', 'IBM', 'Chenai');
insert into employee values('A3454', 'Arun', 40000.40, 'M', '10-Aug-22', '+918938748422', 'arun@gmail.com', 'HCL', 'Hyderbad');
insert into employee values('B3424', 'Balu', 30000.04, 'M', '01-Aug-22', '+9178965430283', 'balu@gmail.com', 'Cyinet', 'Pune');
insert into employee values('A3425', 'Anil', 80000.04, 'M', '11-Feb-21', '+918654209872', 'anil@gmail.com', 'Infosys', 'Bangalore');
insert into employee values('J3456', 'Jyothis', 75000.04, 'M', '03-Mar-21', '+918765390987', 'jyothis@gmail.com', 'IBM', 'Hyderabad');
insert into employee values('N2454', 'Naresh', 45000.00, 'M', '01-Aug-22', '+917890374824', 'naresh@gmail.com', 'HCL', 'Pune');
insert into employee values('A6734', 'Arjun', 50000.00, 'M', '08-Jan-20', '+918765432190', 'arjun@gmail.com', 'TCS', 'Chenai');

select * from employee;


----------------------
insert into employee(
  employee_id, 
  employee_name,
  employee_salary, 
  employee_gender,
  employee_joining_date,
  employee_mobile, 
  employee_email,
  employee_company_name,
  employee_location)
values('R7890', 'Ram', 25000.09, 'M', SYSDATE, '+9024422423', 'ram1@gmail.com', null, 'Hyderabad');


select * from employee;

insert into employee(
  employee_id, 
  employee_name,
  employee_gender,
  employee_mobile, 
  employee_email)
values('V7780', 'Vikram', 'M','+989098734', 'vikram11@gmail.com');

select * from employee;

--how to find the total table name form the user.
select * from tab;

commit;

--how to add new column in the existing table
alter table employee add employee_dept varchar2(25);

commit;

select * from employee;

select * from employee where employee_id='R1022';

select * from employee where employee_email='chandra@gmail.com' and employee_mobile='+917896539260';

select * from employee where employee_company_name is not null;

select * from employee where employee_company_name is null;

select * from employee where employee_salary is null;


--how to update the existing record in the table.
--employee salary is null then going to update the employee_dept column.
update employee set employee_dept='IT' where employee_salary is null;

select * from employee where employee_salary is null;

commit;

--key points
0.environment setup (oracle softwar installation, access requests(git,jenkins, databases(in diff env (dev, uat, preprod, prod))))
1.creating the new users.
2.give the permission to that new users.
3.diff types of languages in oracle.
4.how to create new tables and how to delete the table.
5.how to insert the data into the new table.
6.how to add new column in existing table and how to delete existing column from the tables.
7.how to rename the table name and columns name.
8.select 
9.where
10.null and  not null uses while creating the table.
11.update 
12.commit 
13.DISTINCT
14.count
15.primary and foreign key




--
CREATE TABLE current_test (col1 TIMESTAMP WITH TIME ZONE);
--31-Oct-22
select * from  employee;

select count(distinct employee_name) from employee;

select distinct employee_id from employee;

select count(*) from employee;

CREATE TABLE mytimestamp (
     id INTEGER,
     made_on TIMESTAMP(4)
   );
   
   INSERT INTO mytimestamp (id, made_on) VALUES (
      1, TIMESTAMP '2005-05-13 07:15:31.123456789'
    );
    
select * from mytimestamp;

--delete the table.
drop table <table_name>;  --syntax
drop table MYTIMESTAMP;   --examples

select * from employee;

--how to avoid the dublicate recored while retriving the data form tables.
--we need to use DISTINCT command to avoid the dublicate recored while retriving the data form tables.
select distinct employee_id from employee;

select * from employee where employee_id in('R2452','S3443');

select * from employee where employee_id ='R2452';

select * from employee where employee_id ='S3443';


select count(*) from employee;

select * from employee;

--31-Oct-22
--update commands
--if we want to update the any records in existing table then we need to follow below syntax.
update <table_name> set <column_names>=<column_values> where <column_names>=<column_values>;    --syntax
update employee set employee_salary=52000.20 where employee_id='V7780';           --examples

select * from employee where employee_id='V7780';

select * from employee where employee_id='V1234';

update employee set employee_salary='48000.90', employee_joining_date='12-Jan-21',  where employee_id='V1234';

select * from employee where employee_id='V7780';

update employee set employee_joining_date='01-Mar-2021', employee_company_name='Tech Mahendra', employee_location='Chennai' where employee_id='V7780';

commit;

--03-Nov-22

--how to find the total table name form the user.
select * from tab;

commit; --this is using for to save the data.

--how to add new column in the existing table
alter table employee add employee_dept varchar2(25);

commit;

select * from employee; --select command is used to get/retrive the data from the table.

--whenever we are going to get the data from the table based on some coditions then we need to use where command.
--to run the sql commands using "control+enter" shortcut key.
select * from employee where employee_id='R1022';

--if we want to get the data based on multiple conditions then we need to use and command, like below 
select * from employee where employee_email='chandra@gmail.com' and employee_mobile='+917896539260';

select * from employee;
--is command is used to get the data based on some conditions level like is null or is not null.
select * from employee where employee_company_name is not null;

select * from employee where employee_company_name is null;

select * from employee where employee_salary is null;

select * from employee where employee_salary is not null;

select * from employee where employee_salary is null and employee_dept is not null;

--------------------------------------------------------------------------
select * from employee;

desc employee;

update employee set employee_company_name='Tech Mahendra', employee_location = 'Pune' where employee_id = 'V1234';

select * from employee where employee_id = 'V1234';

--I want to get employee_id, emailid, mobile number and salary from the employee;
select employee_id, employee_email, employee_mobile, employee_salary from  employee;

--I want to get employee_id, emailid, mobile number and salary from the employee but whoever employee_salary is having more then 40000.
select employee_id, employee_email, employee_mobile, employee_salary from employee where employee_salary > 40000;

--I want to get employee_id, emailid, mobile number and salary from the employee but whoever employee_salary is having less than 40000.
select employee_id, employee_email, employee_mobile, employee_salary from employee where employee_salary < 40000;

--I want to get employee_id, emailid, mobile number and salary from the employee but whoever employee_salary is having more than 40000 and less than 70000;
select employee_id, employee_email, employee_mobile, employee_salary from employee where employee_salary > 40000 and employee_salary <70000;

commit; 

-----------------------------------------------
--04-Nov-22
insert into employee(
  employee_id, 
  employee_name,
  employee_salary, 
  employee_gender,
  employee_joining_date,
  employee_mobile, 
  employee_email,
  employee_company_name,
  employee_location)
values('P3244', 'Arun', 25000.09, 'M', SYSDATE, '+99876543210', 'p324@gmail.com', 'HCL', 'Bangalore');

select * from employee where  employee_id='P3244'; --SYSDATE default is dd-mm-yy

--Operators in Oracle.
1.Arithmetic Operator   --> +, -, *, /
2.Relation Operator    --> >, <, >=, <=,  != (or) <>
3.Logical Operator     --> AND, OR, NOT
4.Special Operator     --> between, in, like, is, any, all, exists 
5.Set Operator         --> union, union all, intersect, minus
6.where clause         --  It is used to get the data/records from the existing table baseds some coditions.

--1.Arithmetic Operators examples(+, -, *, /)
select * from employee;


----------------------------
--2.Relation Operator examples (>,>=, <,  <=,  != (or) <>)
--get the data base on whoever employee salary more than 50000
select * from employee where employee_salary > 50000; 

--get the data base on whoever employee salary less than 40000
select * from employee where employee_salary < 40000;

--get the data base on whoever employee salary more than or equals 80000
select * from employee where employee_salary >= 80000;

--get the data base on whoever employee salary less than or equals 55000
select * from employee where employee_salary <= 55000;

--get the data base on whoever employee salary != 50000.04
select * from employee where employee_salary != 50000.04;

--get the data base on whoever employee salary = 50000.04
select * from employee where employee_salary = 50000.04;

----------------------------
--3.Logical Operator     --> AND, OR, NOT
--AND  - if we are getting the data from the existing table using multiple condition then we should use AND operator b/w that two column name.
select * from <table_name> where <column_name>=<value> and <column_name>=<value>;   --syntax

--get the data base on whoever employee salary more than 40000 and employee company name = 'HCL'
select * from employee where employee_salary >40000 and employee_company_name = 'HCL';

--get the data base on whoever employee salary more than 40000 and employee company name = 'Infosys'
select * from employee where employee_salary >40000 and employee_company_name = 'Infosys';


--get the data base on whoever employee salary more than 40000 and employee company name = 'Tech Mahendra' and employee location = 'Chennai'
select * from employee where employee_salary >40000 and employee_company_name = 'Tech Mahendra' and employee_location = 'Chennai';

--OR  - if we are getting the data from the existing table using multiple condition then we should use OR operator b/w that two column name.
select * from <table_name> where <column_name>=<value> or <column_name>=<value>;   --syntax

select * from employee where employee_salary = 52000.2 or employee_salary = 50000.04;

select * from employee where employee_salary = 50000.24;

select * from employee where employee_salary = 52000.2 or employee_salary = 50000.24;

commit;

update employee set employee_salary = 28000.00 where employee_id='R1022';

select * from employee where employee_id= 'R1022';

commit;

-------------------------------------------------------
--05-Nov-22
--or 
select * from  employee;

select employee_id, employee_name, employee_dept from employee;

update employee set employee_dept='Admin' where employee_id='R2452';

select * from employee where employee_id='R2452';

select employee_id, employee_name, employee_dept from employee where employee_id='R2452';

update employee set employee_dept='Tech Leader' where employee_id='R7890';

select employee_id, employee_name, employee_dept from employee where employee_id='R7890';

update employee set employee_dept='HR Department' where employee_id='V7780';

select employee_id, employee_dept from employee where employee_id='V7780';

update employee set employee_dept='Developer' where employee_id='V2444';

select employee_id, employee_name, employee_dept from employee where employee_id='V2444';

commit;

select * from employee;

--whoever employee department is null, we need to get that recods from the table.
--is command is used to get the data based on some conditions level like is null or is not null.
select * from employee where employee_dept is null;

select employee_id, employee_name, employee_email, employee_dept  from employee where employee_dept is null;

--whoever employee department is not null, we need to get that recods from the table.
select employee_id, employee_name, employee_email, employee_dept from employee where employee_dept is not null;

--we need to update multiple recods at a time.
--I want to update employee department=Developer whoever employee id is (C2443, N2454, P3244) 
update employee set employee_dept='Developer' where employee_id in ('C2443', 'N2454', 'P3244');

select employee_id, employee_name, employee_email, employee_dept from employee where employee_id in ('C2443', 'N2454', 'P3244');

select employee_name, employee_id, employee_email, employee_dept, employee_company_name from employee where employee_dept is null;

select employee_name, employee_id, employee_email, employee_dept, employee_company_name from employee where employee_id in ('A3454', 'A6734', 'S3443', 'J3456');

--I want to update employee department='Marketing' whoever employee id is (A3454 or A6734 or S3443 or J3456)  and employee company name = Infosys or TCS
update employee set employee_dept='Marketing' where employee_id in ('A3454', 'A6734', 'S3443', 'J3456') and employee_company_name in ('Infosys', 'TCS');

select employee_id, employee_name, employee_email, employee_company_name,employee_dept 
  from employee  
  where employee_id in ('A3454', 'A6734', 'S3443', 'J3456') 
  and employee_company_name in ('Infosys', 'TCS');

commit;

--------------------------------------------------------------
--NOT 
----I want to get the data from employee table whoever company name not equal Infosys
select * from employee where employee_company_name='Infosys';

select * from employee where employee_company_name not in ('Infosys');

select employee_id, employee_email, employee_salary, employee_company_name from employee where employee_company_name not in ('HCL', 'Tech Mahendra');

select employee_id, employee_email, employee_salary, employee_company_name from employee where employee_company_name is null;

--I want to update company name='L&T' whoever employee salary more than 26000 and less than 35000;
update employee set employee_company_name = 'L&T' where employee_salary>26000 and employee_salary<35000;

select * from employee where employee_salary>26000 and employee_salary<35000;

update employee set employee_company_name = 'HSBC' where employee_salary>26000 and employee_salary<35000;

commit;

select * from employee where employee_salary = 28000; --R1022

select * from employee where employee_salary != 28000;

------------------------------------
--between operator : it is used to when we are going to companre based on some rang of values in the table.
select employee_id, employee_name, employee_dept, employee_joining_date, employee_salary  from employee;

--I want to get the employee data, salary rang between  30000 and 70000;
select employee_id, employee_name, employee_dept, employee_joining_date, employee_salary from employee where employee_salary between 30000 and 70000;

--I want to get the employee data, salary rang between  01-Jan-22 and 70000;

select employee_id, employee_joining_date from employee where employee_joining_date = '01-AUG-22';

select * from employee where employee_joining_date = '01-AUG-22';

--delete command : it is use to delete table or recods from the existing table.
create table m1(empId number(5), empName varchar2(25));
insert into m1(empID, empName) values(2, 'Hari');
insert into m1 values(4, 'Madhavi');

select * from m1;

delete from m1; --all records can be deleted with this commands.

drop table m1;  --this commands is used to delete the table.

commit;

---------------------
--I want to delete the records from the table based on employee id=S3443
delete from <table_name> where <column_name> = <value>;   --syntax

delete from employee where employee_id='S3443';

select * from employee where employee_id='S3443';

commit;

select * from employee where employee_id='R2452' and employee_email='ram@gmail.com';

delete from employee where employee_id='R2452' and employee_email='ram@gmail.com';

commit;

---------------------------------
--between operator
--I want to get the employee data, salary rang between  30000 and 70000;
select employee_id, employee_name, employee_dept, employee_joining_date, employee_salary from employee where employee_salary between 30000 and 70000;

--****************************order by 
--I want to get the employee data, salary rang between 30000 and 70000 in ascending order; asceding order is 1,2,3,4,.....10 or A,B,C,D,....Z
select employee_id, employee_name, employee_dept, employee_joining_date, employee_salary 
  from employee 
  where employee_salary 
  between 30000 and 70000
  order by employee_salary asc;
  
--I want to get the employee data, salary rang between 30000 and 70000 in ascending order; descending order is 10,9,8,7....0 or Z,Y,X,....A
select employee_id, employee_name, employee_dept, employee_joining_date, employee_salary 
  from employee 
  where employee_salary 
  between 30000 and 70000
  order by employee_salary desc;

--I want to get the employee data whoever salary more than 50000 and joining date diplaying in ascending orders.
select * from employee where employee_salary >50000 order by employee_joining_date asc;

select employee_id, employee_name, employee_dept, employee_joining_date, employee_salary from employee where employee_salary >50000 order by employee_joining_date asc;

select * from employee where employee_joining_date between '01-Jan-21' and '31-Jul-22';

select employee_id, employee_name, employee_dept, employee_joining_date, employee_salary 
  from employee 
  where employee_joining_date 
  between '01-Jan-21' and '05-Aug-22'
  order by employee_joining_date asc;
  
commit;

----------------------------------------------------------------------
--12-Nov--22
insert into employee(
  employee_id, 
  employee_name,
  employee_salary, 
  employee_gender,
  employee_joining_date,
  employee_mobile, 
  employee_email,
  employee_company_name,
  employee_location)
values('U2345', 'Umesh', 27000.10, 'M', SYSDATE, '+99876543210', 'umesh@hcl.com', 'HCL', 'Chennai');

insert into employee(
  employee_id, 
  employee_name,
  employee_salary, 
  employee_gender,
  employee_joining_date,
  employee_mobile, 
  employee_email,
  employee_company_name,
  employee_location)
values('P2345', 'Paramesh', 37005.10, 'M', '10-Jan-2020', '+99876543333', 'paramesh@hcl.com', 'HCL', 'Chennai');

insert into employee(
  employee_id, 
  employee_name,
  employee_salary, 
  employee_gender,
  employee_joining_date,
  employee_mobile, 
  employee_email,
  employee_company_name,
  employee_location)
values('S1234', 'Sravani', 17050.10, 'F', '10-Jan-2020', '+98983543333', 'sravani@hcl.com', 'HCL', 'Hyderabad');


select * from employee;

select * from employee where employee_company_name='HCL';

--in
select * from employee where employee_company_name='HCL' and employee_location in ('Hyderabad', 'Chennai');

--DISTINCT command need to use to avoid the dublicate values.
--I want to get the only company name from the employee table.
select DISTINCT employee_company_name from employee;

--I want to get the employee records whoever working in IBM and TCS.
select * from employee where employee_company_name in ('IBM', 'TCS');

--I want to get the employee records whoever working in 'Infosys', 'HCL', 'IBM'
select * from employee where employee_company_name in ('Infosys', 'HCL', 'IBM');

--I want to get the employee records whoever working in 'Infosys', 'HCL', 'IBM' and sarlary is more than 50000.
select * from employee where employee_company_name in ('Infosys', 'HCL', 'IBM') and employee_salary > 50000;

--I want see the data based on below 3 conditions
--1. employee company name = 'Infosys', 'HCL', 'IBM'  
--2. sarlary is more than 45000  
--3. I want see the employee data based on salary in ascending order.
select * from employee where employee_company_name in('Infosys', 'HCL', 'IBM') and employee_salary >45000 order by employee_salary asc;

--I want see the data based on below 3 conditions
--1. employee company name = 'HSBC', 'TCS', 'HCL'  
--2. sarlary is between than 45000  and 75000
--3. I want see the employee data based on joining in descending order.
select * from employee where employee_company_name in ('HSBC', 'TCS', 'HCL') and employee_salary between 45000 and 75000 order by employee_joining_date desc;

commit;

--or 
select * from employee where employee_company_name='BirlaSoft' or employee_company_name='TCS';

select * from employee where employee_company_name='HCL' or employee_company_name='TCS';

select * from employee where employee_salary>=55000 or employee_salary='110000';

--display the employee data in descending order
select * from employee order by employee_salary desc;

--display the employee data in ascending order
select * from employee order by employee_salary asc;

--I want to get the employee data whoever employee department is null
select employee_id, employee_name, employee_dept, employee_joining_date, employee_salary 
  from employee
  where employee_dept is null;


--update the employee department is Cleark for employee id = ('U2345', 'B3424', 'J3456');
update employee set employee_dept='Cleark' where employee_id in ('U2345','B3424', 'J3456');

select * from employee where employee_dept='Cleark';-- and employee_id in ('U2345','B3424', 'J3456');

--update the employee department is Admin for employee id = ('P2345', 'A3425','S1234')
update employee set employee_dept='Admin' where employee_id in ('P2345', 'A3425','S1234');

select * from employee where employee_dept='Admin';

commit;

--like Operator
--1.like Operator is used when we want to check some comparisions based on some patterns.
--2.patterns like alphabets, digits, wildcard chars.
--3.where column name like pattern.
--4.where column name not like pattern
--***what is wildcard chars.
  --wildcard chars are two types
    --1.%   -> it is used to replace 0 or many chars
    --2._   -> it is used to replace exactly 1 char

--examples of like operator
select employee_id, employee_name, employee_dept, employee_company_name from employee;

--I want to get the employee data based employee name start with R;
select employee_id, employee_name, employee_dept, employee_company_name from employee where employee_name like 'R%';

select employee_id, employee_name, employee_dept, employee_company_name from employee where employee_name like 'V%';

select employee_id, employee_name, employee_dept, employee_company_name from employee where employee_name like 'A%l';

select employee_id, employee_name, employee_dept, employee_company_name from employee where employee_name like '%r%';

--I want to get the employee data based on below conditions
--1.employee name contain 'r' charector
--2.employee company name = 'HCL', 'Tech Mahendra'
select employee_id, employee_name, employee_dept, employee_company_name 
  from employee 
  where employee_name like '%r%' 
  and employee_company_name in ('HCL', 'Tech Mahendra');
  

--_ like operator
select employee_id, employee_name, employee_dept, employee_company_name 
  from employee where employee_name like '_a%';
  
select employee_id, employee_name, employee_dept, employee_company_name 
  from employee where employee_name like '_a_';
  
select employee_id, employee_name, employee_dept, employee_company_name 
  from employee where employee_name like '_a';
  
select employee_id, employee_name, employee_dept, employee_company_name 
  from employee where employee_name like '%a_';
  
--get the employee data based joining date is only in Jan month
select * from employee where employee_joining_date like '%JAN%';

--get the employee data based joining date is only in Jan month and 20 year
select * from employee where employee_joining_date like '%JAN-20';

--get the employee data based joining date is only in 10th day
select * from employee where employee_joining_date like '10%';

select * from employee where employee_joining_date like '%22';

select * from employee where employee_company_name in ('HCL', 'IBM');

update employee set employee_email='chandra@ibm.com' where employee_id='C2443';

update employee set employee_email='jyothis@ibm.com' where employee_id='J3456';

--V1234, V7780
update employee set employee_email='vikram11@techmahendra.com' where employee_id='V7780';

update employee set employee_email='ram@techmahendra.com' where employee_id='V1234';

select employee_email from employee;

--get the employee data based employee emailid but email id ending with ibm.com
select * from employee where employee_email like '%ibm.com';

--get the employee data based employee emailid but email id ending with hcl.com
select * from employee where employee_email like '%hcl.com';

--get the employee data based employee emailid but email id ending with techmahendra.com
select * from employee where employee_email like '%techmahendra.com';

commit;

-----------------------------------------------------------------------
--16-Nov-22
--alias commands
--It is used for chane the heading nmaes only.
--alias means another name or alternative name
--we can use alias names in two places like below
  --1.column alias name
  --2.table alias name
  
--syntax for the alias command of the table
select * from <table_name> <alias_name>;

select * from employee emp;     --examples

--syntax for the alias command of the column
select <column_name> as <alias_name> from <table_name>; 

select employee_salary as empSalary from employee;


--examles 
select * from employee;

--get the employee annuval salary
select employee_id, employee_name, employee_dept, employee_salary, employee_salary*12 as annuval_salary from employee emp;

--increase the 5000rs salary for each employee and get the annuval salary also
select employee_id, employee_name, employee_dept, 
       employee_salary as old_emp_salary, 
       employee_salary+5000 as updated_emp_salary, 
       (employee_salary+5000)*12 as annuval_salary   
  from employee emp;

commit;

---------------------------------------------------------------------
--17-Nov-22
--pending tasks
  --1.flashback
  --2.drop
  --3.truncate
  --4.primary key
  --5.foregin key
  --6.joins
  --7.timestamp and time format

--interview queastion and answers
--diff b/w  delete and truncate and drop
--diff b/w date and timestamp

desc employee;

-----------------------------------------------
--22-Nov-22
--20%
--(percentage/100)*salary   --formala
--(20/100)*25000.09 -->0.2*25000.09 

--increase the 20% salary for the all employee and check the annuval salary details.
select  employee_id, employee_name, employee_dept, 
        employee_salary as old_emp_salary,
        employee_salary*0.2 as increased_one_month_emp_salary,
        (employee_salary*0.2)+employee_salary as updated_monthly_emp_salary,
        employee_salary*12 as old_annuval_emp_salary,
        ((employee_salary*0.2)+employee_salary)*12 as updated_annuval_emp_salary
from employee emp;      


select distinct employee_dept from employee;

--increase the employee salary based on below conditions
--1.Admin = 20%
--2.Developer = 30%
--3.Tech Leader = 40%
--4.Marketing = 15%
--5.HR Deparment = 25%
--6.Cleark = 15% 

--old_employee_salray, updated_percentage_salary, updated_monthly_salary, old_annuval_emp_salary, updated_annuval_emp_salary

commit;



















