use library;

-- genres table

create table genres
(
GenreName varchar(50) unique,
GenreID int not null auto_increment primary key 
);

insert into genres(GenreName)
values (
('Contemporary fiction'),
('Literary fiction'),
('Magical realism'),
('Graphic novel'),
('Short story'),
('Young adult'),
('Fiction Children’s'),
('Memoir and autobiography'),
('Biography'),
('Food and drink'),
('Art and photography'),
('Self-help'),
('History'),
('Travel'),
('True crime'),
('Humour'),
('Essays'),
('Guide/how-to'),
('Religion and spirituality'),
('Humanities and social sciences'),
('Parenting and families'),
('Science and technology'),
('Non-fiction children’s');