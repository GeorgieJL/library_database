use library;

-- person table and data

create table Person
(PersonID int not null primary key auto_increment,
FirstName varchar (40) not null,
LastName varchar (40) not null,
Gender enum ('M', 'F', 'O', 'T', 'Q', 'N') not null,
ContactNumber int null,
DateofBirth date null,
Email varchar(40) null,
Address int null,
foreign key (Address) references Address(AdressID));

insert into person (FirstName, LastName, Email, ContactNumber, Gender, DateofBirth, Address)
values
('Marge', 'Simpson', 'margesimpson@yahoo.com', 102555123, "F", 19780506, 1),
('Lisa', 'Simpson', 'lisasimpson@springfieldelem.com', 102555123, "F", 19890708, 1),
('Bart', 'Simpson','cowabunga@yahoo.com', 102555147, "M", 19860213, 1),
('Milhouse', 'Van Houten', 'mvanhouten@springfieldelem.com', 102555643, "M", 19870807, 2),
('Paul', 'McCartney', 'paul@thebeatles.co.uk', 175389612, "M", 19761208, 4),
('Brigitte', 'Macron', 'bmacron@elysee.fr', 1324156875, "F", 19490624, 3),
('Bruce', 'Wayne', 'Iambatman@gotham.com',138365298, "M", 19760214, 5),
('Steve', 'Rogers', 'CapAmerica@yahoo.com', 176598247, "M", 19110102, 6),
('Peggy', 'Carter','PeggyC@gmail.com', 176598247, "F", 19120803, 6);

select * from person;

-- showing users and their addresses

select * from Address;

select FirstName, LastName, DateofBirth, House_Flat_No, Line_1, City, Postcode
from person
inner join Address
on Address.AdressID = person.Address;
