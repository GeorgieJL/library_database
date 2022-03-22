use library;

-- Address table

create table Address
(AdressID int auto_increment primary key,
House_Flat_No int null,
Line_1 varchar(50) null,
City varchar(50) null,
Postcode varchar(20) null);

insert into Address(House_Flat_No, Line_1, City, Postcode)
values (742, "Evergreen Terrace", "Springfield", "S1 7YU"),
(316, "Pikeland Avenue",	"Springfield",	"S1 89Q"),
(55, "Rue du Faubourg",	"Paris","75008"),
(61, "Penny Lane",	"Liverpool",	"L21 WEP"),
(1007, "Mountain Drive",	"Gotham",	"G66 1RX"),
(569, "Leaman Place", "Brooklyn",	"BB12 6DG");


select FirstName, LastName, DateofBirth, House_Flat_No, Line_1, City, Postcode
from person
inner join Address
on Address.AdressID = person.Address;