drop table if exists user;
drop table if exists workout;

create table user
(
athleteID integer,
username NVARCHAR2(35),
firstName NVARCHAR2(20)
lastName NVARCHar2(20),
Class NVARCHAR2(3),
password NVARCHAR2(20)
);
alter table user add primary key (username);


create table workout
(
workoutID integer,
Name NVARCHAR2(35),
workoutDesc NVARCHAR2(100),
meters integer,
lift bit,
avgRate integer,
athleteID integer
);

alter table workout add primary key (workoutID, athleteID);

alter table workout add foreign key (athleteID) references User;