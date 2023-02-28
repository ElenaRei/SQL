use fe37_38;
 create table users(
 user_id integer primary key auto_increment,
 username varchar(60) not null,
 email varchar(128) not null,
 datetime datetime not null,
 password_hash varchar(60) not null,
 is_blocked tinyint not null
 );
 
 create table videos(
 video_id integer primary key auto_increment,
 title varchar(60) not null,
 descr varchar(255) not null,
 datetime datetime not null,
 duration_secs integer not null,
 user_id int, foreign key (user_id) references users (user_id)
 );

 create table reactions(
 reactions_id integer primary key auto_increment,
 video_id int, foreign key (video_id) references videos(video_id),
 user_id int, foreign key (user_id) references users (user_id),
 datetime datetime not null,
 type varchar(10) not null
 );
 
create table comments(
 comments_id integer primary key auto_increment,
 user_id int, foreign key (user_id) references users (user_id),
 datetime datetime not null,
 video_id int, foreign key (video_id) references videos(video_id),
 text varchar(255) not null
 );

select * from users;
select * from streams;
select * from donations;

