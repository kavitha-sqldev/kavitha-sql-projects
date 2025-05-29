--Employee table
CREATE TABLE  emp (
	 empid   int  IDENTITY(10001,1)  Primary Key,
	 name   varchar (20),
	 doj   date,
	 desg   varchar (20),
	 dept   varchar (20),
	 addr   varchar (20),
	 ph   varchar (15),
	 bsal   decimal(10, 2)  );

--Attendence Table
CREATE TABLE  attn (
	 empid   int,
	 attn_dt   date,
	 status   varchar (1),
        primary key (empid,attn_dt)
 foreign key (empid) references emp(empid)  );

--Allowance Table
CREATE TABLE  allowan (
	 empid   int,
	 allow_type   varchar (3),
	 amount   decimal(7, 2),
	 primary key (empid,allow_type),
	 foreign key (empid) references emp(empid)   );

--Deductions
CREATE TABLE  dedn (
	 empid   int,
	 ded_type   varchar (15),
	 d_ed_amt   decimal(7, 2),
	 Primary Key (empid,ded_type)
	foreign key (empid) references emp(empid)    );

--Department table
CREATE TABLE  dept (
	 deptid   int,
	 dept_na   varchar (20)               );

--Employee Salary table
CREATE TABLE  empsal 
(
	 empid   int,
	 bsal   decimal(10, 2),
	 allow_amt   decimal(9, 2),
	 ded_amt   decimal(9, 2),
	 netsal   decimal(9, 2), 
        foreign key (empid) references emp(empid) );

