-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

-- 1) Дата рождения
create index profiles_birthday_idx on profiles(birthday);

-- 2) Страна
create index profiles_country_idx on profiles(country);

-- 3) Медиа (наименование и время создания)
create index media_filename_createtd_at_idx on media(filename, created_at);

-- 4) Сортировка друзей по дате добавления
create index friendship_confirmed_at_idx on friendship(confirmed_at);

-- 5) Посты по дате добавления
create index posts_created_at_idx on posts(created_at);
-- drop index posts_created_at_idx on posts;

-- 6) Посты по популярности
create index posts_views_counter_idx on posts(views_counter);

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы !
-- среднее количество пользователей в группах !
-- самый молодой пользователь в группе !
-- самый старший пользователь в группе !
-- общее количество пользователей в группе !
-- всего пользователей в системе !
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT c.name,
count(cu.user_id) over() / first_value(c.id) over(order by c.id desc) as average,
first_value(concat(u.first_name, ' ', u.last_name)) over(partition by cu.community_id order by p.birthday desc) as youngest_user,
max(p.birthday) over w as birthday_youngest,
first_value(concat(u.first_name, ' ', u.last_name)) over(partition by cu.community_id order by p.birthday) as oldest_user,
min(p.birthday) over w as birthday_oldest,
count(cu.user_id) over w as per_group,
first_value(u.id) over(order by u.id desc) as total,
count(cu.user_id) over w / first_value(u.id) over(order by u.id desc) * 100 as `%%`
    FROM communities as c
    left join communities_users as cu
      ON cu.community_id = c.id
    left join users as u
      on u.id = cu.user_id
    left join profiles as p
      on cu.user_id = p.user_id 
        WINDOW w AS (PARTITION BY cu.community_id);

-- Запросы для проверки значений:

-- Дни рождения
-- select c.community_id, p.user_id, p.birthday
-- from communities_users as c
-- join profiles as p
-- on p.user_id = c.user_id 
-- order by c.community_id, p.birthday desc;
-- 
-- Количество пользователей в группе
-- select count(distinct user_id) from communities_users group by community_id;
-- 
-- Среднее количество пользователей
-- SELECT DISTINCT c.name,
-- (select sum(total) from (select count(distinct user_id) as total from communities_users group by community_id) as total_users) / 
-- (select sum(comm_number) from (select count(distinct id) as comm_number from communities group by id) as num_of_group) as average_number
--     FROM (communities_users as cu
--       JOIN communities c
--         ON cu.community_id = c.id);
-- 
-- Имена и user_id
-- select u.id, concat(u.first_name, ' ', u.last_name) as name, p.birthday
-- from users as u
-- join profiles as p
-- on u.id = p.user_id
-- order by u.first_name;

-- select * from communities;
-- select * from communities_users;

-- Пыталась сделать свои функции для испоьзования. Оставила на памать
-- delimiter //
-- drop function if exists total_users//
-- create function total_users()
-- returns bigint deterministic
-- begin
--     declare total bigint;
--     select count(distinct users.id) into total from users;
-- return total;
-- end
-- delimiter ;
-- 
-- delimiter //
-- drop function if exists total_communities//
-- create function total_communities()
-- returns bigint deterministic
-- begin
--     declare total bigint;
--     select count(distinct communities.id) into total from communities;
-- return total;
-- end
-- delimiter ;

-- 3. (по желанию) Задание на денормализацию
-- Разобраться как построен и работает следующий запрос:
-- Найти 10 пользователей, которые проявляют наименьшую активность
-- в использовании социальной сети.

-- select * from likes;
-- select * from messages;
-- select * from media;
-- select * from users;
-- SELECT users.id,
-- COUNT(DISTINCT messages.id) +
-- COUNT(DISTINCT likes.id) +
-- COUNT(DISTINCT media.id) AS activity
-- FROM users
-- LEFT JOIN messages
-- ON users.id = messages.from_user_id
-- LEFT JOIN likes
-- ON users.id = likes.user_id
-- LEFT JOIN media
-- ON users.id = media.user_id
-- GROUP BY users.id
-- ORDER BY activity
-- LIMIT 10;

select distinct user_id, count(*) from media group by user_id order by user_id;
select id, user_id from media order by user_id;

Создать дополнительно таблицы, состоящие из 2 столбцов, отсортированных по user_id: id и user_id (для media) и id и from_user_id (для messages) и id, user_id (для likes), 
которые будут содержать выборку без массивных данных. Далее достаточно свернуть таблицы по user_id, чтобы получить количество полей активности, далее просуммировать значения
по всем типам активностей. Для users.id можно отдельно сделать столбец с id, по которому будем иметь все id пользователей в системе. Так как для данного запроса другие данные
из таблицы не нужны, достатчно знать перечень id пользователей. Для того, чтобы данные в дублирующих таблицах были актуальными, можно добавить в БД триггеры, по которым 
при добавлении в основную таблицу БД выделенные данные будут записываться и в дубли.
