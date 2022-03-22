use library;

-- methods practise
call due_date()

-- creating stored procedure to show all employee details
DELIMITER //
CREATE PROCEDURE GetAllEmployees()
BEGIN
SELECT * FROM employeedetails
    inner join person
    on person.PersonID = EmployeeID
    inner join Address
    on Person.Address = Address.AdressID
    Order by LastName;
END //
DELIMITER ;

-- stored procedured that shows all employee information, should only be given to Administrator or manager
call GetAllEmployees();

-- creating stored procedure that takes in Employee/PersonID as parameter, shows employee's full personal details
DELIMITER //
CREATE PROCEDURE GetEmployeeDetails(
	IN id_input int
)
BEGIN
	SELECT *
    From EmployeeDetails
	inner join person
    on person.PersonID = EmployeeID
    inner join Address
    on Person.Address = Address.AdressID
    where id_input = EmployeeID;
END //
DELIMITER ;
	
-- shows employee details for person with EmployeeID 2, should only be given to user with same employee ID or manager
call GetEmployeeDetails(2);


DELIMITER //
CREATE PROCEDURE GetBankDetails(
in id_input int
)
BEGIN
	select EmployeeID, FirstName, LastName, SortCode, BankAccountNo
    from EmployeeDetails
    inner join person
    on EmployeeID = PersonID
    where id_input = EmployeeID;
END //
DELIMITER ;
    
-- stored procedure for finance manager
CALL GetBankDetails(5);
    
 -- creating stored procedure for showing user what books they have on loan
 DELIMITER //
 Create procedure GetBooksOnLoan(
 in id_input int
 )
 BEGIN
	select PersonID, person.FirstName as "First Name", 
    person.LastName as "Last Name", book_list.Title, 
    LoanID.DateOut, LoanID.DateDue, LoanID.ReturnDate,
    authors.FirstName, authors.LastName
	from person
	inner join LoanID
	on person.PersonID = LoanID.UserID
	inner join book_list
	on book_list.reference_number = LoanID.BookID
    inner join authors
    on book_list.reference_number = authors.AuthorID
	where id_input = person.PersonID;
 END //
DELIMITER ;

-- calling stored procedure
call GetBooksOnLoan(7);

-- stored procedure to update email address for user
DELIMITER //
Create procedure change_email(in person_id int, new_email varchar(40))
BEGIN
update person
set Email = new_email
where PersonID = person_id;
END //
DELIMITER ;

call library.change_email(1, "homersimpson@springfield.com");




-- stored procedure to create new user in person table
DELIMITER //
create procedure createNewUser(in first_name varchar(40), last_name varchar(40), 
gender enum('M', 'F', 'O', 'Q'), contact_number int, dateofbirth date, email varchar(40))
BEGIN
insert into person(FirstName, LastName, Gender, ContactNumber, DateofBirth, Email)
values (first_name, last_name, gender, contact_number, dateofbirth, email);
END //
DELIMITER ;

use library;
call library.createNewUser("Ron", "Weasley", "M", 01233563, 19920102, "ronweasley@hogwarts.co.uk");
select * from person;




select date_add(now(), interval 2 week);



DELIMITER //
CREATE procedure due_date()
BEGIN
	select date_add(now(), interval 2 week);
END //
DELIMITER 

