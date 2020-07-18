1. Определить кто больше поставил лайков (всего) - мужчины или женщины?

select
count(l.user_id) as total_likes,
p.gender
from likes as l
join profiles as p
on l.user_id = p.user_id
group by gender
order by total_likes desc
limit 1;


2. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

-- Не разобралась, как суммировать вычисляемый столбец сразу в одном запросе.
-- Построила два:
-- С вложенным запросом:

select sum(total) as total_youngest from (
select p.user_id, p.birthday, l.target_id, count(l.target_id) as total 
  from profiles as p
    left join likes as l
      on l.target_id = p.user_id 
        and l.target_type_id = 2
  group by p.user_id 
  order by p.birthday desc
  limit 10) as timer;


-- И второй вариант нашла с созданием представления:

create view total as
select  
count(l.target_id) as likes
  from profiles as p
    left join likes as l
      on l.target_id = p.user_id
        and l.target_type_id = 2
  group by p.user_id
  order by p.birthday desc
  limit 10;

select sum(likes) as total_likes from total;

-- SELECT SUM(likes_total) FROM  
--   (SELECT 
--     (SELECT COUNT(*) FROM likes WHERE target_id = profiles.user_id AND target_type_id = 2) AS likes_total  
--     FROM profiles 
--     ORDER BY birthday 
--     DESC LIMIT 10) AS user_likes
-- ;  
-- SELECT profiles.user_id, profiles.birthday,
--     (SELECT COUNT(*) FROM likes WHERE target_id = profiles.user_id AND target_type_id = 2) AS likes_total  
--     FROM profiles 
--     ORDER BY birthday 
--     DESC LIMIT 10
-- ;

3. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
(критерии активности необходимо определить самостоятельно).

select concat(u.first_name, ' ', u.last_name),
(count(distinct l.user_id) + count(distinct m.user_id ) + count(distinct msg.from_user_id)) as activity 
  from users as u
    left join likes as l
      on u.id = l.user_id 
    left join media as m
      on u.id = m.user_id
    left join messages as msg
      on u.id = msg.from_user_id
  group by u.id
  order by activity
  limit 10;