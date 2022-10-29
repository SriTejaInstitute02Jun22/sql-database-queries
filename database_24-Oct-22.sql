--database	-	24-Oct-22
--oracle software uninstallation process
https://www.youtube.com/watch?v=pk-E-QxWe38

--sqlplus username and passwords
username : system
password : system

--my user details
username : sriteja
password : sriteja

--basics 	-	24-Oct-22
1.Analysis
2.Design
3.development
4.testing
5.implementation
6.maintanence.


--what is sql
SQL is stands for Structured Query Language.
It is used to communicate with oracle server.

--
Oracle server manages two components
1.Database.
2.Instance.

--database
Database created in Hardisk, it is permanant memory.
--instace
Instance created in RAM, it is temparary memory.

--note
if we can insert some data then it is first goto into instace after that it can save into Hardisk.


--oracle queries
1.sql		- normal sql queries
2.pl/sql	- advanced sql queries

--to communicate with dabase need to flow below step.
--conncet to dabase.
 first connect to database or DBA(Database Administrator(System/Manager)) and giving user name and password.

--how to create the users/account/schema in database?
create user <user_name> identified by <password>;	--syntax
create user sriteja identified by sriteja;			--example

--how to give the permissions to that users?  
grant connect, resource to <user_name>;				--syntax
grant connect, resource to sriteja;					--example

--note
connect 	-> to connect the db.
resource 	-> to create objects like tables.
DBA 		-> all permissions given.

--note
User is created but it is not having any permissions to connect the database to work with database.
so we need to use GRANT commnad to give the permission to that user.


--******oracle sub languages
1.DDL	- Data Defination Language.
2.DML	- Data Manipulation Language.
3.DQL	- Data Query Language.
4.TCL	- Transaction Control Language.
5.DCL	- Data Control Language.

--DDL
DDL is set of commands to perform oprations on the database.
	--commands
	1.create	--	it is used to create the data 
	2.alter		--	The ALTER command adds, deletes, or modifies columns in a table.
				--	The ALTER command also adds and deletes various constraints in a table.
	3.drop		--	The DROP statement is used to drop an existing table in a database.
	4.truncate	--	The TRUNCATE command deletes the data inside a table, but not the table itself.
	5.rename	--	to rename the data about table name or column names in the database.
	
	--note: from orcle 10g is introduced below two more additionalfeatures
	6.flashback
				--Flashback Query allows users to see the view of past data, If in case some data or table is being deleted by the user, then the flashback query provides us an opportunity to view that data again and perform manipulations over it.
				--In flashback queries we have an concept of flash area, in flash area we store the deleted data which can be viewed if needed in future.
				--To use the feature of flashback query, our server must be configured according to automatic undo management.If our system supports the traditional approach of rollback then we can not perform flashback query on such systems.
				--We can enable the flashback query using the package DBMS_FLASHBACK. This package enables us to view the data in past by specifying the System change number or the exact time in the past.
	7.purge
	
--DML
DML is set of commands to manipulating or changing the data into database.
	--commands
	1.insert	--The INSERT INTO statement is used to insert new records in a table.
	2.update	--The UPDATE statement is used to modify the existing records in a table.
	3.delete	--The DELETE statement is used to delete existing records in a table.
	--note: from oracle 9i is instroduced below two more additionalfeatures
	4.merge
	5.insert all--The Oracle INSERT ALL statement is used to insert multiple rows with a single INSERT statement. 
				-- You can insert the rows into one table or multiple tables by using only one SQL command.
	
--DQL
DQL is used to retrive the data.
	--commands
	1.select	-- select commands is used to retrive/get the data from the tables.
	
--TCL
TCL is used to set of commands to control the database transactions(DML operations).
	--commands
	1.commit	-- commit commands is used to save/commit the data.
	2.rollback	-- rollback is used to revert our changes.
	3.savepoint --

--DCL
DCL is used for set of commands to control the data b/w users of Oracle.
	--commands
	1.grant		-- it is used to give the permissions to the users.
	2.revoke   	-- it is used to cancle the permissions to the users.
	
--what is diff b/w drop, delete and truncate?.
--what is diff b/w update and alter?.


--26-Oct-22
--Oracle 	- it is software
--SQL 		- it is a language
--sqlplus	- it is a tool, it can use to connect to the server.

--what is Schema?
--It is used to connect to oracle server. It is called users.
--A user is called schema in oracle db and objects are created by users. Those object are called Schema objects.


--what is Oracle life cycle?
->Oracle
	-> Database
		-> users(schema)
			-> tables
			
--default DB's
Database	--
	--DBA
	sys/manager			--it is having all permissions to access the data.
	system/manager		--it is having all permissions to access the data.
	
	--User DB
	HR/HR				--it is having less permissions to access the data.
	SCOTT/TIGER			--it is having less permissions to access the data.
	
--how to connect the sqlplus?
--To connect to oracle server first open the sqlplus and enter following details.
username : system
password : system

-------------------------------------
--note:- once the user is created but user does't having any permission so to provide the permission to that user we need to use grant command.
create user <user_name> identified by <password>;	--syntax
create user sriteja identified by sriteja;			--example


--how to change the oracle password using user and DBA?
--both user and DBA(Database Administrator)
1.step
connect as DBA(system/manager) --system/manager -> username/password
2.step	-- this step need to change existing password.
password 
	changng password for username
	old password:
	new password:
	re type new password:
	
--note: if you forgot any password then DBA only can create the new password.
alter user <user_name> identified by <new_password>;	--syntax
alter user sriteja identified by teja;					--example

--note: if you want to crate or delete any user then DBA can create/delete(drop) the particurla user.
drop user <user_name> [CASCADE];						--syntax	--note: it is optional , it is not complasary.
drop user sriteja;										--example


--*******************Data Types in Oracle.*********************************
--what are data types available in oracle.?
1.char
2.varchar2 		--note: varchar and varchar2
3.nchar
4.number(p)
5.number(p,s)
6.date
7.timestamp
8.timestamp with time zone
9.lobs
10.blob/bfile.

--diff b/w alter and update.

1.char datatype.
--this datatype is allows only charector data types upto 2000 charactors.It is recommended for fixed length columns.
	ENAME char(20);		--examples
	
2.varchar2 datatype
--It is allows string type data upto 4000.
	NAME varchar2(20);	--examples
	
3.nchar datatype
--N is national
--it allows unicode charactors.
--ASCIT ==>256 -> a-z, A-Z, 0-9 , special char
--unicode  ==> 655

4.number(p) datatype
--p it can accepting only numbers
--it can allows numaric data upto 38 digits.
	empno number(4);	--examples
	
5.number(p,s) datatype
--p it is precision -> total number of count.
--s is nothing but after . how many valus are comming that count it can take ->
	salary number(6,2); 	--5000.51, 
	salary number(7,2); 	--10000.30
	salary number(8,3);		--30000.423
	
6.date datatype
--it can allows date and time but time is optional.if the time is not entered then oracle store 12:00am.
--date default data format is DD-MON-YY in Oracle (or) DD-MON-YYYY

	hiredate			date
	--------			-------------
	27-Oct-22			27-Oct-22 8:33AM
	
7.timestamp datatype
--it is allows date , time and millisections also can take.
	T timestamp 
	27-Oct-22 8:37:20.1234
	
	
--how to create the table in oracle database.
--syntax
create table <table_name> (column_name datatype (size), 
						   column_name datatype (size),
						   column_name datatype (size));

--example
create table company (company_id number(10), 
					  company_name varchar2(20), 
					  company_email varchar2(20),
					  company_mobile varchar2(20),
					  company_address varchar2(20),
					  company_location varchar2(20),
					  company_turnover varchar2(20));
   

desc <table_name>	--syntax
desc company;		--example  

--syntax : to insert the data into the table.
insert into <table_name> values(comp_id_value,comp_name_value, comp_email_value, column_mobile_value,column_address_value,column_location);

--example
insert into company VALUES (9, 'SriTeja', 'sriteja@gmail.com', '+918801826101', 'Kokkanti Cross', 'A.P');
insert into company VALUES (2, 'Hari', 'hari@gmail.com', '+91889333', 'Cross', 'A.P');
insert into company VALUES (3, 'Teja', 'teja@gmail.com', '+918333', 'Hyderabad', 'T.S');

--syntax: to insert few column details in the table.
insert into <table_name> (comp_id_key, comp_name_key, comp_email_key) values(comp_id_value,comp_name_value, comp_email_value);

--example
insert into company(comp_id, comp_name, comp_email) VALUES (10, 'Jyothis', 'jyothis@gmail.com');


--get the data the form that table.
select * from company;


select * from company where comp_email='sriteja@gmail.com' and column_mobile='+918801826101';

select * from company where comp_email='teja@gmail.com' and column_mobile='+918333' and comp_id=3;

select * from company where comp_email='hari@gmail.com';
--------------------------------------end

--how to delete the column from existing table?
--The DROP COLUMN command is used to delete a column in an existing table.
ALTER TABLE <table_name> DROP COLUMN <column_name>;
ALTER TABLE company DROP COLUMN Email;

--how to add the column from existing table?
--The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
--The ALTER TABLE statement is also used to add and drop various constraints on an existing table.
ALTER TABLE <table_name> ADD <column_name> datatype;
ALTER TABLE company ADD Email varchar(255);


--alter command uses in oracle.
--The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
--The ALTER TABLE statement is also used to add and drop various constraints on an existing table.
--how to add a column in a table?
ALTER TABLE <table_name> ADD <column_name> datatype;
ALTER TABLE Customers ADD Email varchar(255);

--how to delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):
ALTER TABLE <table_name> DROP COLUMN <column_name>;
ALTER TABLE Customers DROP COLUMN Email;

--ALTER TABLE - ALTER/MODIFY COLUMN
--how to change the data type of a column in a table
ALTER TABLE <table_name> ALTER COLUMN <column_name> datatype;
ALTER TABLE <table_name> MODIFY COLUMN <column_name> datatype;
ALTER TABLE <table_name> MODIFY <column_name> datatype;

--InDtTm DATETIME DEFAULT CURRENT_TIMESTAMP

--how to rename the column name from the existing table.
ALTER TABLE <table_name> RENAME COLUMN <old_column_name> TO <new_column_name>;		--syntax
ALTER TABLE company RENAME COLUMN column_mobile TO comp_mobile;						--example

--how to rename the table name from the existing table.
ALTER TABLE <table_name> RENAME TO <new_table_name>;		--syntax
ALTER TABLE company RENAME TO companydetails;				--example

--how to delete the existing table 
DROP TABLE <table_name>;                  --syntax
DROP TABLE company;                       --example   


--29-Oct-22
1.Step
	connect to sqlplus.
		username 
		password
2.Step
	create the new users.
3.Step
	give the permission to that users.
4.Step
	connect to that user.
		username 
		password
5.Step
	create the table.
6.Step
	insert the data into that table.
7.Step
	get the data from that table.

--data types
Gender CHAR(6)

--data and time datatypes in sql
--SQL Server comes with the following data types for storing a date or a date/time value in the database:
DATE 			- format YYYY-MM-DD
DATETIME 		- format: YYYY-MM-DD HH:MI:SS
SMALLDATETIME 	- format: YYYY-MM-DD HH:MI:SS
TIMESTAMP 		- format: a unique number

--****how to get the total table name from the user.
select * from tab;

--****what is default dummy table in oracl.
dual is the dummy table provided by orcle. it is used for non database tables.

--inserting nulls
1.a null means blank or empty
2.it is not equal to space or 0
3.it are inserted when values are absent.
4.null can be inserted into two ways.
	1.explicit	--something is done by user.
	2.implicit  --something is done by oracle.
	--note : vachar2 it can take like null
	--		 char or date column can take empty like ' '