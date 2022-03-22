use library;

-- employee details

create table EmployeeDetails
  (EmployeeID int not null,
  foreign key (EmployeeID) references Person(PersonID),
  JobTitle varchar (20) not null,
  Pay int not null,
  TaxCode varchar (5) not null,
  SortCode int unique not null,
  BankAccountNo int unique not null);
  
insert into EmployeeDetails (EmployeeID, JobTitle, Pay, TaxCode, SortCode, BankAccountNo)
values (5, 'Librarian', '25000', '10L', '213282', '16692468'),
(10,'Technician', '30000', '10L', '739204', '97434187'),
(8, 'Administrator', '28000', '12W', '209765', '60421359'),
(9, 'Librarian', '25000', '13S', '812390', '88412955');


select * from employeedetails;

select * from person;

-- Shows employee details
select JobTitle, Pay, TaxCode, SortCode, BankAccountNo, FirstName, LastName, DateofBirth, EmployeeID
from EmployeeDetails
inner join person
on person.personID = EmployeeDetails.EmployeeID;

-- Updates employee details
update EmployeeDetails
set Pay = 50000
where EmployeeID = 4;

-- Shows employee details for EmployeeID 4
select *
from EmployeeDetails 
inner join person
on person.PersonID = EmployeeID

where EmployeeID = 4;


