-- Тема “Сложные запросы”
--   
-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

-- Проверяем на соответствие таблицы users, orders.
select * from users;
desc users;
desc orders;
select * from orders;
-- Заменяем тип данных user_id из orders на bigint как у id в users
alter table orders modify column user_id bigint unsigned;
-- Добавляем значение внешнего ключа (для практики)
alter table orders
  add constraint orders_user_id_fk
    foreign key (user_id) references users(id)
      on delete set null;

-- insert into orders (user_id) values (floor(1 + rand() * 6));
-- Запрашиваем данные
select
    count(*) as num_orders,
    u.id,
    u.name
from
    orders as o
join users as u on
    u.id = o.user_id
group by
    id;

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

-- Проверяем на соответствие таблицы products, catalogs.
select * from products;
desc products;
select * from catalogs;
desc catalogs;
-- Заменяем тип данных catalog_id из products на bigint как у id в catalogs
alter table products modify column catalog_id bigint unsigned;
-- Добавляем значение внешнего ключа (для практики)
alter table products 
  add constraint products_catalog_id_fk
    foreign key (catalog_id) references catalogs(id)
      on delete restrict
      on update cascade;

-- Запрашиваем данные
select
    p.name as product,
    c.name as `catalog`
from
    products as p
join catalogs as c on
    p.catalog_id = c.id;

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.

-- drop table if exists cities;
-- Создаем таблицу flights
create table if not exists flights(
  id int unsigned not null auto_increment primary key,
  `from` varchar(255),
  `to` varchar(255));
select * from flights;
insert into flights(`from`, `to`) values
  ('Moscow', 'Omsk'),
  ('Novgorod', 'Kazan'),
  ('Irkutsk', 'Moscow'),
  ('Omsk', 'Irkutsk'),
  ('Moscow', 'Kazan');

-- Создаем таблицу cities
create table if not exists cities(
  label varchar(255),
  name varchar(255));
select * from cities;
insert into cities(label, name) values
  ('Moscow', 'Москва'),
  ('Irkutsk', 'Иpкутск'),
  ('Novgorod', 'Новгород'),
  ('Kazan', 'Казань'),
  ('Omsk', 'Омск');

-- Формируем запрос
-- С помощью вложенных запросов
select id,
(select name from cities where `from` = label) as `from`,
(select name from cities where `to` = label) as `to`
from flights;

-- С помощью join
select f.id,
c.name as `from`,
c1.name as `to` 
from flights as f
left join cities as c
on f.`from` = c.label
left join cities as c1
on f.`to` = c1.label;
