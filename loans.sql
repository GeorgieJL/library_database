use library;

-- loan table

create table LoanID
(LoanID int primary key auto_increment,
UserID int not null,
foreign key (UserID) references Person(PersonID),
BookID int null,
foreign key (BookID) references book_list(reference_number),
DateOut date,
DateDue date,
ReturnDate date null);



insert into LoanID (UserID, BookID, DateOut, DateDue)
values (2, 3, cast(now() as date), cast(date_add(now(), interval 2 week) as date));


select (cast(date_add(now(), interval 2 week) as date));

select * from loanid;





insert into LoanID(UserID, BookID)
values (7, 2);

-- shows all books currently on loan
select PersonID, person.FirstName as "First Name", person.LastName as "Last Name", book_list.Title, LoanID.DateOut, LoanID.DateDue, LoanID.ReturnDate
from person
inner join LoanID
on person.PersonID = LoanID.UserID
inner join book_list
on book_list.reference_number = LoanID.BookID
where person.PersonID = 7;


select * from loanid;

select * from book_list;


-- call date_due2();

-- DELIMITER //
-- CREATE procedure date_due2()
-- BEGIN
-- 	select now() + 14;
-- END //
-- DELIMITER ;
