show databases;
use test;
show tables;

create table users
(
    username varchar(50)  not null primary key,
    password varchar(100) not null,
    enabled  boolean      not null
);


create table authorities
(
    username  varchar(50) not null,
    authority varchar(50) not null,
    constraint fk_authorities_users foreign key (username) references users (username)
);


insert into users(username,password,enabled) values( 'admin', '$2a$10$/iq5fVzCYESGNPVj9v2I4uJv5jSr. 5omTQSmBE4LuM6tF0p3YmRkq' ,true);
insert into authorities(username,authority) values( 'admin', 'ROLE_ADMIN');