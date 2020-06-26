/* Правки */

USE vk;

/* users */
SELECT * FROM users limit 10;
select * from users where created_at > updated_at;
update users set updated_at = now() where created_at > updated_at;

/* profiles */
SELECT * FROM profiles limit 10;
select * from profiles where created_at > updated_at;
update profiles set updated_at = now() where created_at > updated_at;

/* messages */
SELECT * FROM messages;
select * from messages where from_user_id = to_user_id;
update messages set from_user_id = floor(1 + rand() * 100);

/* media_types */
SELECT * FROM media_types;
insert into media_types (name) values ('photo');

/* media */
SELECT * FROM media;
update media set user_id = floor(1 + rand() * 100);
update media set size = floor(1000 + rand() * 1000) where size < 100000;
create temporary table extensions (name varchar(10));
insert into extensions values ('.jpeg'), ('.avi'), ('.mkv'), ('.gif'), ('.mp3');
select * from extensions;
update media set filename = concat(
'https://dropbox.com.vk/',
filename,
(select name from extensions order by rand() limit 1)
);
update media set media_type_id  = (select id from media_types order by rand() limit 1);

-- {'owner':'Username'}
update media set metadata = concat('{"owner":"', (select concat(first_name, ' ', last_name) from users where id = user_id),'"}');
alter table media modify column metadata json;
desc media;

/* friendship_statuses */
SELECT * FROM friendship_statuses;
truncate friendship_statuses;
insert into friendship_statuses (name) values ('confirmed'), ('requested'), ('rejected');

/* friendship */
SELECT * FROM friendship;
desc friendship;
alter table friendship drop column requested_at;
update friendship set 
user_id = floor(1 + rand() * 100),
friend_id = floor(1 + rand() * 100);
update friendship set status_id = floor(1 + rand() * 3); 
update friendship set confirmed_at = now() where created_at > confirmed_at;

/* communities */
SELECT * FROM communities;
truncate communities;
insert into communities (name) values ('Group'), ('party'), ('etc'), ('friends'), ('trucks'), ('puppy'), ('yammy'), ('bubbles'), ('firststep'),
('blackswan'), ('happypeople'), ('jam');

/* communities_users */
SELECT * FROM communities_users;
update communities_users set 
community_id = floor(1 + rand() * 12), user_id = floor(1 + rand() * 100);
desc communities_users;


/* пост */

CREATE TABLE content (
id serial PRIMARY KEY COMMENT "Идентификатор строки", 
user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
name VARCHAR(100) NOT NULL COMMENT "заголовок",
media int unsigned not NULL COMMENT "медиафайл",
text_data longtext NOT NULL COMMENT "текст",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки");
select * from content;
desc content;
insert into content (user_id, name, media, text_data) values (
(select id from users order by rand() limit 1),
'My day',
(select id from media order by rand() limit 1),
'I had good day! I met my friends!'
);
insert into content (user_id, name, media, text_data) values (
(select id from users order by rand() limit 1),
'Help the dog!',
(select id from media order by rand() limit 1),
'This is a little puppy. He needs help!'
);
insert into content (user_id, name, media, text_data) values (
(select id from users order by rand() limit 1),
'Dinner with my family',
(select id from media order by rand() limit 1),
'Love them a lot!'
);



/* лайки */
CREATE table likes (content_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пост",
user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, поставившего +", 
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания");
select* from likes;
insert into likes (content_id, user_id) values (
(select id from content order by rand() limit 1),
(select id from users order by rand() limit 1)
);
select * from likes where content_id = 3;