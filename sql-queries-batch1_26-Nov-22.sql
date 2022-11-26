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

select comp.company_name, comp.company_id, comp.company_email, comp.company_mobile, 
       adds.area as company_area, adds.city_name as company_city_name, adds.pincode as company_pincode, adds.country as company_country
from company comp, address adds 
where comp.company_name = adds.company_name;

select comp.company_name, comp.company_id, comp.company_email, comp.company_mobile, 
       adds.area, adds.city_name, adds.pincode, adds.country
from company comp, address adds 
where comp.company_name = adds.company_name;

commit;








