use library;

-- book list

create table book_list 
(
reference_number int not null primary key auto_increment,
Title varchar(50) null,
ISBN varchar(50) null,
GenreID int null,
Author int null,
foreign key (Author) references authors(AuthorID),
foreign key (GenreID) references genres(GenreID)
);

insert into book_list(Title, ISBN, GenreID, Author)
values ("Queenie", "ttwgeh2", 8, 2),
("IT", "GTE234", 2, 3),
("Frankenstein", "gdhh5", 2, 4),
("Pride and Prejudice", "dfgg23", 5, 5),
("The Fault in our Stars", "gff4j5", 7, 6),
("Murder on the Orient Express", "wdjj5", 3, 7),
("A tale of two cities", "wu74efh", 6, 8);

-- looks up book based on reference number

select reference_number, Title, Author, GenreID
from book_list
where reference_number = 1232;

select * from book_list;