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
insert into company(comp_id, comp_name, comp_email) VALUES (10, 'Jyothis', 'jyothis@gmail.com');

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
values('R2452', 'Ram', 25000.09, 'M', SYSDATE, '+9024422423', 'ram@gmail.com', null, 'Hyderabad');


select * from employee;

insert into employee(
  employee_id, 
  employee_name,
  employee_gender,
  employee_mobile, 
  employee_email)
values('V1234', 'Vikram', 'M','+9024422423', 'ram@gmail.com');

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









