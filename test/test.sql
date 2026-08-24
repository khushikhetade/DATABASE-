create database CompanyDB ;
use CompanyDB;
create table Employee (
 EmpID int primary key ,
 Emp_name text(50) not null ,
 Department text(30) ,
 Salary decimal ,
 Date_Of_Joining date
 );

 create table Departments (
 Dept_ID int  primary key 
 );
 
 ALTER TABLE Employee 
 ADD Dept_ID int ;
 
ALTER TABLE Employee 
ADD CONSTRAINT fk_Employee_Department
foreign key(Dept_ID)
references Departments (Dept_ID);
 
 alter table Employee
 add Email text(100) ;
 
 alter table Employee 
 modify Email varchar(100) ;
 
 alter table Employee
 drop Email ;
 
 alter table Employee
 add constraint  unique (Salary) ;

 alter table Employee 
 modify Department varchar(50);
 

 alter table Employee
 rename column Emp_name to fullname ;
 

alter table Employee 
rename to staff ;

alter table Employee 
add constraint unique(Email);


alter table Employee
add constraint check_salary check (Salary>0) ;



alter table staff 
add constraint unique(Email);


truncate staff;
 
alter table Employee
drop Department ; 




select * from  Employee ;


insert into staff ( EmpId , Emp_name , Salary , Date_Of_Joining )
values (101 , 'Khushi Khetade' , 6700.8 , '2025-10-21' ),
       (102 , 'Ankit Shende'  , 8200.1 , '2026-06-25' ),
       (103 , 'Kanak Gour'    , 6600.88, '2022-03-12' ),
       (104 , 'Anurag Gupta'  , 55010.2, '2021-07-25' ),
       (105 , 'Satya Bisen'   , 6700.20, '2023-02-28' );
select * from staff ;

update staff 


delete from staff
where EmpID = 105 ; 

DELETE FROM staff 
WHERE Date_Of_Joining = '2025-10-21';


update staff
set salary = 55000
 where EmpID =  105 ;
 

update 