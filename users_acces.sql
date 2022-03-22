use library;

CREATE USER 'library_user'@'host' IDENTIFIED WITH authentication_plugin BY 'password1';

use library;
CREATE ROLE "librarian";

create role "accountant";

create role "library_user"@"localhost" identified by "password2";

create user "library_user"@localhost identified by "pass1";
grant select on library.person

-- grant, then home page, new connections, sign in as user 

grant execute on library.createNewwUser to "lib"