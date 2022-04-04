use moviee;
create table actor(
act_id int primary key,
act_name varchar(10),
act_gender varchar(2));

create table director(
dir_id int primary key,
dir_name varchar(10),
dir_phone varchar(15));

create table movie(
mov_id int primary key,
mov_title varchar(10),
mov_year year,
mov_lang varchar(10),
dir_id int,
foreign key(dir_id) references director(dir_id));

create table movie_cast(
act_id int,
mov_id int,
role varchar(10),
foreign key(act_id) references actor(act_id),
foreign key(mov_id) references movie(mov_id));

create table rating(
mov_id int,
rev_stars int,
foreign key(mov_id) references movie(mov_id));
