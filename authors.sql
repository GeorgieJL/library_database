use library;

-- authors table

create table authors

(AuthorID int primary key auto_increment,
FirstName varchar(30) null,
LastName varchar(30) not null);


insert into authors(FirstName, LastName)
values ("J.K.", "Rowling"), ("Candice", "Carty-Williams"), ("Stephen", "King"), ("Mary", "Shelley"), ("Jane", "Austen"), ("John", "Green"), ("Agatha", "Christie"), ("Charles", "Dickens");

insert into AuthorID (FirstName, LastName)
value 
('Jennifer', 'Niven'),
('Haruki', 'Murakami'),
('Stephen',	'Hawking'),
('George', 'Orwell'),
('J.L.C', 'Grimm'),
('W.C.', 'Grimm'),
('James', 'Hawes'),
('Mark', 'Solms'),
('Carlo', 'Rovelli'),
('Thomas', 'Erikson'),
('Dan', 'Brown');


use library;
select * from authors;