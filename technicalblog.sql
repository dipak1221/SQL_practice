create database technicalblog;
use technicalblog;
select database();
create table user(id int(20) primary key auto_increment,
name varchar(200) not null,email varchar(20) not null,password varchar(20) not null,
gender varchar(10) not null, about varchar(200) not null default 'Hey ! I am using technical blog' ,
rdate timestamp  default current_timestamp);

show create table user;
alter table user modify email varchar(200);
select * from user;
truncate table user;
alter table user add column profile varchar(100) default ('default.jpg');
alter table user auto_increment=1;
alter table user modify profile varchar(100) default("default.png");
insert into user(name,email,password,gender) value("roshni12","hh3422h@gmail.com","male","female");
alter table user   auto_increment = 1;

show tables;


select * from user;
select name, gender,count(gender) from user group by(gender) having count(gender)>=2 ;