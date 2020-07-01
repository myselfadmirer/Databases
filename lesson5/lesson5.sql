/* Создание таблиц */

create database shop;
use shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = 'Скидки';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Склады';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';



/* ДЗ */

/* «Операторы, фильтрация, сортировка и ограничение» */
/* 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем. */

/* если все значения пустые */
update users set created_at = now(), updated_at = now();

/* если только некоторые значения не определены */
update users set created_at = now() where created_at is null;
update users set updated_at = now() where updated_at is null;

/* 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR, 
 * и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 * Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения. */

/* Так как тип данных изначально уже был задан как datetime, изменим его сначала на varchar на примере created_at */

desc users;
alter table users modify column created_at varchar(255);
select * from users;

/* Приводим данные к формату 20.10.2017 8:10 */

update users set created_at = DATE_FORMAT( created_at, '%d.%m.%Y %H:%i' );

/* Так как это сейчас строка, то приведем ее к формату даты с помощью функции str_to_date, после чего модно вернуть тип datetime */
update users set created_at = str_to_date( created_at, '%d.%m.%Y %H:%i' );
alter table users modify column created_at datetime;


/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля,
 * если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
 * Однако нулевые запасы должны выводиться в конце, после всех записей. */

/* Так как таблица изначально пустая, заполним ее случайными значениями */

insert into storehouses_products (storehouse_id , product_id , value ) values 
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 50)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 30)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 100)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 50)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 80)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 50)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 20));

select * from storehouses_products;

/* Производим сортировку в 2 этапа: сначала нулевые значения, затем - остальные */

select * from storehouses_products order by value = 0, value;


/* 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
 * Месяцы заданы в виде списка английских названий (may, august) */

-- SELECT name, date_format(birthday_at, '%M') FROM users; - проверка извлечения месяца

/* Выборка по датам рождения (май, август) */

SELECT * FROM users WHERE date_format(birthday_at, '%M') IN ('may', 'august');

/* 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
 * SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN. */

SELECT * FROM catalogs WHERE id IN (5, 1, 2) order by field(id, 5, 1, 2);

/* «Агрегация данных» */

/* 1. Подсчитайте средний возраст пользователей в таблице users. */

/* Извлечение года рождения пользователей для проверки */

select name, date_format(birthday_at, '%Y') from users;

/* Проверка извлечения текущего года */

select date_format(now(), '%Y'); 

/* Вычисление возраста пользователей */

select name, (year(now()) - date_format(birthday_at, '%Y')) as birthday_at from users;

/* Подсчет среднего возраста */

select avg((year(now()) - date_format(birthday_at, '%Y'))) as av_age from users;

/* 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, 
 * что необходимы дни недели текущего года, а не года рождения. */

select * from users;

/* Подсчет пользователей с вводом года вручную (можно подсчитать для любого года */

select count(*), date_format(date_format(birthday_at, '2020-%m-%d') , '%W') as week_day from users GROUP by week_day;

/* Подсчет пользователей с автоматическим вводом текущего года */

select count(*), date_format(date_format(birthday_at, concat(year(now()), '-%m-%d')) , '%W') as week_day from users GROUP by week_day;

/*3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.  */

/* Подсчитаем произведение значений в столбце id таблицы users */

SELECT floor(exp(sum(ln(id)))) as mult FROM users;