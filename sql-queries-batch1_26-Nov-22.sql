--26-Nov-22
--creating the new address table with primary key and foreign key
--primary key and  foreign key creation into new table
--primary key (pk_column_name), foreign key (fk_column_name) references parent_tablename_table_name(pk_column_name_from_parenttable);  --syntax

--creating the new address table with primary key and foreign key
create table address(
  door_number varchar2(25) not null,
  street_name varchar2(25) not null,
  area varchar2(25) not null,
  landmark varchar2(25),
  city_name varchar2(25) not null,
  pincode number(25) not null,  --primary key
  district_name varchar2(25) not null,
  state varchar2(25) not null,
  country varchar2(25) not null,
  company_name varchar2(250) not null,
  employee_id varchar2(250) not null,
  primary key (pincode),    --primary key
  foreign key (company_name) references company(company_name),  --relation ship with company table
  foreign key (employee_id) references employee(employee_id)   --relation ship with employee table
);

commit;

--new records inserting into address table
insert into address values('10-20', 'ap colony', 'ameerpeta', 'near to HK hospatal', 'hyderabad', 500089, 'R.P', 'TS', 'India', 'Capgemini', 'S1234');

insert into address values('2/20', 'ZP Colony', 'Ameerpeta', 'Near to SBI Bank', 'Hyderabad', 500189, 'K.S', 'TS', 'India', 'HCL', 'P3244');
insert into address values('2/10-20', 'Manikonda', 'Manikonda', 'Near to Gachiboly', 'Bangalore', 500011, 'P.R', 'KA', 'India', 'Infosys', 'R1022');
insert into address values('520', 'JKAP Colony', 'Narayanguda', 'Near to AP Nagar', 'Bangalore', 100278, 'R.T', 'KA', 'India', 'Capgemini', 'J3456');
insert into address values('240', 'Balaji Colony', 'Secundrabad', 'Near to Janki Hotal', 'Pune', 400109, 'S.R', 'MH', 'India', 'HCL', 'A3425');
insert into address values('1-1/15', 'Jai Jawan Colony', 'Yerawada', 'Near to Malkajgiry', 'Chennai', 300089, 'U.R', 'TN', 'India', 'TCS', 'V7780');
insert into address values('10-20/5', 'Ghandi Nagar', 'KP', 'Near to AP Bank', 'Pune', 400049, 'R.R', 'MH', 'India', 'Accenture', 'P2345');
insert into address values('2-2-1/4', 'GRP Nagar', 'Madhapur', 'Near to HK hospatal', 'Hyderabad', 511089, 'R.R', 'TS', 'India', 'Capgemini', 'U2345');

select * from address;

commit;

------------------------------------------------

select * from company where company_name='IBM';

--get the address details based on company name from company and address
select comp.company_name, comp.company_id, comp.company_email, comp.company_mobile, 
       adds.area as company_area, adds.city_name as company_city_name, adds.pincode as company_pincode, adds.country as company_country
from company comp, address adds 
where comp.company_name = adds.company_name;

select comp.company_name, comp.company_id, comp.company_email, comp.company_mobile, 
       adds.area, adds.city_name, adds.pincode, adds.country
from company comp, address adds 
where comp.company_name = adds.company_name;

--get the address details and company details based on company name from company and address
select * from company comp , address adds where comp.company_name = adds.company_name;

--get the address details and company details based on company name from company and address
--company name is 'HCL'
select * from company comp , address adds where comp.company_name = 'HCL' and comp.company_name = adds.company_name;

--company name is 'Capgemini'
select * from company comp , address adds where comp.company_name = 'Capgemini' and comp.company_name = adds.company_name;

--company name is 'TCS'
select comp.company_name, comp.company_id, comp.company_email, comp.company_mobile, 
       adds.area, adds.city_name, adds.pincode, adds.country
from company comp, address adds 
where comp.company_name = 'TCS' and comp.company_name = adds.company_name;

commit;

--01-Dec-22
--get the data from company and employee and address based on company name
--how many employee are working in HCL
--company name = HCL
--get the all employee details with address from the HCL company.
select * from company comp, employee emp, address adds 
  where comp.company_name =  'HCL' 
  and comp.company_name = emp.company_name          --get the data from company and employee table.
  and emp.employee_id = adds.employee_id;           --get the data from employee and address table.
  
  
select comp.company_name, comp.company_id, comp.company_location,
       emp.employee_id, emp.employee_dept, emp.company_name,
       adds.employee_id, adds.company_name, adds.city_name, adds.pincode,adds.state
from company comp, employee emp, address adds 
  where comp.company_name =  'HCL' 
  and comp.company_name = emp.company_name          --get the data from company and employee table.
  and emp.employee_id = adds.employee_id;           --get the data from employee and address table.
  
  
  
select comp.company_name, comp.company_id, comp.company_location,
       emp.employee_id, emp.employee_dept, emp.company_name
  from company comp, employee emp
  where comp.company_name =  'HCL' 
  and comp.company_name = emp.company_name;          --get the data from company and employee table.
  
  
select comp.company_name, comp.company_id, comp.company_location,
       emp.employee_id, emp.employee_dept, emp.company_name
  from company comp, employee emp
  where comp.company_name =  'HCL' 
  and comp.company_name = emp.company_name;          --get the data from company and employee table.
  
  
select comp.company_name, comp.company_id, comp.company_location,
       emp.employee_id, emp.employee_dept, emp.company_name,
       adds.employee_id, adds.company_name, adds.city_name, adds.pincode,adds.state
  from company comp, employee emp, address adds 
  where comp.company_name =  'HCL' 
  and comp.company_name = emp.company_name          --get the data from company and employee table.
  and emp.employee_id = adds.employee_id;           --get the data from employee and address table.
 
select * from address where employee_id  in ('S1234', 'P3244', 'U2345', 'P2345', 'A3454', 'R9098', 'N2454', 'V2444');

commit;

select * from company comp, employee emp, address adds 
  where comp.company_name =  'HCL' 
  and comp.company_name = emp.company_name          --get the data from company and employee table.
  and emp.employee_id = adds.employee_id;           --get the data from employee and address table.
  
  
--
--Different Types of SQL JOINs
--Here are the different types of the JOINs in SQL:
--(INNER) JOIN: Returns records that have matching values in both tables
--LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
--RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
--FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


--get the from company and employee tables based on company name
select * from company comp inner join employee emp on comp.company_name = emp.company_name;

select * 
  from company comp 
  inner join employee emp on comp.company_name = emp.company_name
  where comp.company_name='IBM';
  
--inner join  
select comp.company_name, comp.company_email, comp.company_mobile,
        emp.employee_name, emp.employee_id, emp.employee_mobile, comp.company_name, emp.employee_dept
  from company comp 
  inner join employee emp on comp.company_name = emp.company_name
  where comp.company_name='HSBC';
  
--left join
select comp.company_name, comp.company_email, comp.company_mobile,
        emp.employee_name, emp.employee_id, emp.employee_mobile, comp.company_name, emp.employee_dept
  from company comp 
  left join employee emp on comp.company_name = emp.company_name;
  
--righ join  
select comp.company_name,  emp.employee_name,comp.company_name,comp.company_email, comp.company_mobile,
        emp.employee_id, emp.employee_mobile,  emp.employee_dept, emp.employee_id
  from company comp 
  right join employee emp on comp.company_name = emp.company_name;

--full join  
select comp.company_name,  emp.employee_name,comp.company_name,comp.company_email, comp.company_mobile,
        emp.employee_id, emp.employee_mobile,  emp.employee_dept, emp.employee_id
  from company comp 
  full join employee emp on comp.company_name = emp.company_name;
  
--right join
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID; 
  

commit;

-----------------
--truncate
--A truncate SQL statement is used to remove all rows (complete data) from a table.
--It is similar to the DELETE statement with no WHERE clause.
--create the school table
create table school(
  school_id number(25),
  school_name varchar2(25),
  school_location varchar2(25),
  school_email varchar2(50),
  school_mobile_num number(15)
);

--insert the records into school table
insert into  school values(23, 'MPP', 'Nallacheruvu', 'mpp@gmail.com', 83897422);
insert into  school values(45, 'ZPP', 'KK Palli', 'zpp@gmail.com', 78334343);
insert into  school values(67, 'SCC', 'Cross', 'scc@gmail.com', 833434422);
insert into  school values(89, 'OPP', 'Kadiri', 'opp@gmail.com', 74734343);
insert into  school values(65, 'RRR', 'LaxmiPuram', 'rrr@gmail.com', 98843433);

--delete the records based on school id
delete from school where school_id=89;

commit;

--to find the table description
desc school;

select * from school;

--delete the all records from table using truncate
--table structor cann't delete when we are using the truncate.
truncate table <table_name>;      -- syntax
truncate table school;            --examples

select * from school;

desc school;

--drop the school table using drop command
drop table school;

desc school;

select * from school;

---------------------
desc school;

delete from school;   -- we can use the where clause

desc school;

commit;

--default table in the sql databse is 'dual';

--pending tapics
--1.flashback
--2.rollback
--3.time stamp and date format
----------------------------------------------------01-Dec-22----------ending





