/* likes - Таблица лайков */

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY key comment 'Идентификатор действия',
  user_id INT UNSIGNED NOT null comment 'Идентификатор автора',
  target_id INT UNSIGNED NOT null comment 'Контент',
  target_type_id INT UNSIGNED NOT null comment 'Тип контента',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP comment 'Время создания'
);

select * from likes;

/* target_types - Таблица типов лайков */

DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY key comment 'Идентификатор типа',
  name VARCHAR(255) NOT NULL unique comment 'Наименование',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP comment 'Время создания'
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');
  
  select * from target_types;

  /* Заполнение таблицы лайки */
  
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    (1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

SELECT * FROM likes LIMIT 10;

/* posts - Создадим таблицу постов (заполнена на filldb) */

drop table if exists posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY key comment 'Идентификатор контента',
  user_id INT UNSIGNED NOT null comment 'Идентификатор автора',
  community_id INT unsigned default null comment 'Идентификатор группы',
  head VARCHAR(255) comment 'Заголовок',
  body TEXT NOT null comment 'Основной текст',
  media_id INT unsigned comment 'Медиа',
  is_public BOOLEAN DEFAULT true comment 'Флаг публичности',
  is_archived BOOLEAN DEFAULT false comment 'Флаг архивации',
  views_counter INT UNSIGNED DEFAULT 0 comment 'Количество просмотров',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP comment 'Время создания',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment 'Отредактирован'
);

select * from posts;


/* Foreign keys */

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

select * from profiles;
desc profiles;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

select * from messages;
desc messages;

ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);

select * from media;
desc media;

ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id);
ALTER TABLE friendship
ADD CONSTRAINT friendship_status_id_fk 
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);

select * from friendship;
desc friendship;

ALTER TABLE communities_users 
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id);

select * from communities_users;
desc communities_users;

ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id);

select * from posts;
desc posts;

ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT likes_target_id_fk_users 
    FOREIGN KEY (target_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_id_fk_media
    FOREIGN KEY (target_id) REFERENCES media(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);

ALTER TABLE likes
  ADD CONSTRAINT likes_target_id_fk_posts
    FOREIGN KEY (target_id) REFERENCES posts(id)
      ON DELETE cascade;

select * from likes;
desc likes;


/* Определить кто больше поставил лайков (всего) - мужчины или женщины? */

select if ((select gender from profiles where user_id in (select user_id from likes) 
group by gender order by count(gender) desc limit 1)='f', 
'женщины', 
'мужчины') as 'Получили больше всего лайков';

-- select gender from profiles where user_id in (select user_id from likes) 
-- group by gender order by count(gender) desc limit 1;


/* Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей). */

select concat('10 самых молодых пользователей получили ', 
(select count(*) as total from likes where user_id in (select user_id from (
select user_id, (year(now()) - year(birthday)) as age from profiles where user_id in (select user_id from likes) order by age limit 10) as young)), 
' лайков') as total; 

-- select count(*) as total from likes where user_id in (select user_id from (
-- select user_id, (year(now()) - year(birthday)) as age from profiles where user_id in (select user_id from likes) order by age limit 10) as young);

/* Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
(критерии активности необходимо определить самостоятельно) */
-- не ставили лайки и не писали посты

select user_id as '10 самых неактивных' from profiles where user_id not in (select user_id from likes) and user_id not in (select user_id from posts) limit 10; 
