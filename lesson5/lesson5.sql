/* СОЗДАНИЕ ТАБЛИЦ */
create database SHOP;

use SHOP;

drop table if exists CATALOGS;

create table CATALOGS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT 'НАЗВАНИЕ РАЗДЕЛА', unique UNIQUE_NAME(NAME(10)) ) COMMENT = 'РАЗДЕЛЫ ИНТЕРНЕТ-МАГАЗИНА';

insert
    into
    CATALOGS
values (null, 'ПРОЦЕССОРЫ'),
(null, 'МАТЕРИНСКИЕ ПЛАТЫ'),
(null, 'ВИДЕОКАРТЫ'),
(null, 'ЖЕСТКИЕ ДИСКИ'),
(null, 'ОПЕРАТИВНАЯ ПАМЯТЬ');

drop table if exists USERS;

create table USERS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT 'ИМЯ ПОКУПАТЕЛЯ', BIRTHDAY_AT DATE COMMENT 'ДАТА РОЖДЕНИЯ', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = 'ПОКУПАТЕЛИ';

insert
    into
    USERS (NAME, BIRTHDAY_AT)
values ('ГЕННАДИЙ', '1990-10-05'),
('НАТАЛЬЯ', '1984-11-12'),
('АЛЕКСАНДР', '1985-05-20'),
('СЕРГЕЙ', '1988-02-14'),
('ИВАН', '1998-01-12'),
('МАРИЯ', '1992-08-29');

drop table if exists PRODUCTS;

create table PRODUCTS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT 'НАЗВАНИЕ', DESCRIPTION TEXT COMMENT 'ОПИСАНИЕ', PRICE DECIMAL (11, 2) COMMENT 'ЦЕНА', CATALOG_ID INT unsigned, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_CATALOG_ID (CATALOG_ID) ) COMMENT = 'ТОВАРНЫЕ ПОЗИЦИИ';

insert
    into
    PRODUCTS (NAME, DESCRIPTION, PRICE, CATALOG_ID)
values ('INTEL CORE I3-8100', 'ПРОЦЕССОР ДЛЯ НАСТОЛЬНЫХ ПЕРСОНАЛЬНЫХ КОМПЬЮТЕРОВ, ОСНОВАННЫХ НА ПЛАТФОРМЕ INTEL.', 7890.00, 1),
('INTEL CORE I5-7400', 'ПРОЦЕССОР ДЛЯ НАСТОЛЬНЫХ ПЕРСОНАЛЬНЫХ КОМПЬЮТЕРОВ, ОСНОВАННЫХ НА ПЛАТФОРМЕ INTEL.', 12700.00, 1),
('AMD FX-8320E', 'ПРОЦЕССОР ДЛЯ НАСТОЛЬНЫХ ПЕРСОНАЛЬНЫХ КОМПЬЮТЕРОВ, ОСНОВАННЫХ НА ПЛАТФОРМЕ AMD.', 4780.00, 1),
('AMD FX-8320', 'ПРОЦЕССОР ДЛЯ НАСТОЛЬНЫХ ПЕРСОНАЛЬНЫХ КОМПЬЮТЕРОВ, ОСНОВАННЫХ НА ПЛАТФОРМЕ AMD.', 7120.00, 1),
('ASUS ROG MAXIMUS X HERO', 'МАТЕРИНСКАЯ ПЛАТА ASUS ROG MAXIMUS X HERO, Z370, SOCKET 1151-V2, DDR4, ATX', 19310.00, 2),
('GIGABYTE H310M S2H', 'МАТЕРИНСКАЯ ПЛАТА GIGABYTE H310M S2H, H310, SOCKET 1151-V2, DDR4, MATX', 4790.00, 2),
('MSI B250M GAMING PRO', 'МАТЕРИНСКАЯ ПЛАТА MSI B250M GAMING PRO, B250, SOCKET 1151, DDR4, MATX', 5060.00, 2);

drop table if exists ORDERS;

create table ORDERS ( ID SERIAL primary key, USER_ID INT unsigned, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_USER_ID(USER_ID) ) COMMENT = 'ЗАКАЗЫ';

drop table if exists ORDERS_PRODUCTS;

create table ORDERS_PRODUCTS ( ID SERIAL primary key, ORDER_ID INT unsigned, PRODUCT_ID INT unsigned, TOTAL INT unsigned default 1 COMMENT 'КОЛИЧЕСТВО ЗАКАЗАННЫХ ТОВАРНЫХ ПОЗИЦИЙ', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = 'СОСТАВ ЗАКАЗА';

drop table if exists DISCOUNTS;

create table DISCOUNTS ( ID SERIAL primary key, USER_ID INT unsigned, PRODUCT_ID INT unsigned, DISCOUNT FLOAT unsigned COMMENT 'ВЕЛИЧИНА СКИДКИ ОТ 0.0 ДО 1.0', STARTED_AT DATETIME, FINISHED_AT DATETIME, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_USER_ID(USER_ID), key INDEX_OF_PRODUCT_ID(PRODUCT_ID) ) COMMENT = 'СКИДКИ';

drop table if exists STOREHOUSES;

create table STOREHOUSES ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT 'НАЗВАНИЕ', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = 'СКЛАДЫ';

drop table if exists STOREHOUSES_PRODUCTS;

create table STOREHOUSES_PRODUCTS ( ID SERIAL primary key, STOREHOUSE_ID INT unsigned, PRODUCT_ID INT unsigned, VALUE INT unsigned COMMENT 'ЗАПАС ТОВАРНОЙ ПОЗИЦИИ НА СКЛАДЕ', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = 'ЗАПАСЫ НА СКЛАДЕ';

/* ДЗ */
/* «ОПЕРАТОРЫ, ФИЛЬТРАЦИЯ, СОРТИРОВКА И ОГРАНИЧЕНИЕ» */
/* 1. ПУСТЬ В ТАБЛИЦЕ USERS ПОЛЯ CREATED_AT И UPDATED_AT ОКАЗАЛИСЬ НЕЗАПОЛНЕННЫМИ. ЗАПОЛНИТЕ ИХ ТЕКУЩИМИ ДАТОЙ И ВРЕМЕНЕМ. */
/* ЕСЛИ ВСЕ ЗНАЧЕНИЯ ПУСТЫЕ */
update
    USERS
set
    CREATED_AT = NOW(),
    UPDATED_AT = NOW();

/* ЕСЛИ ТОЛЬКО НЕКОТОРЫЕ ЗНАЧЕНИЯ НЕ ОПРЕДЕЛЕНЫ */
update
    USERS
set
    CREATED_AT = NOW()
where
    CREATED_AT is null;

update
    USERS
set
    UPDATED_AT = NOW()
where
    UPDATED_AT is null;

/* 2. ТАБЛИЦА USERS БЫЛА НЕУДАЧНО СПРОЕКТИРОВАНА. ЗАПИСИ CREATED_AT И UPDATED_AT БЫЛИ ЗАДАНЫ ТИПОМ VARCHAR, 
 * И В НИХ ДОЛГОЕ ВРЕМЯ ПОМЕЩАЛИСЬ ЗНАЧЕНИЯ В ФОРМАТЕ 20.10.2017 8:10. 
 * НЕОБХОДИМО ПРЕОБРАЗОВАТЬ ПОЛЯ К ТИПУ DATETIME, СОХРАНИВ ВВЕДЁННЫЕ РАНЕЕ ЗНАЧЕНИЯ. */
/* ТАК КАК ТИП ДАННЫХ ИЗНАЧАЛЬНО УЖЕ БЫЛ ЗАДАН КАК DATETIME, ИЗМЕНИМ ЕГО СНАЧАЛА НА VARCHAR НА ПРИМЕРЕ CREATED_AT */
desc USERS;

alter table USERS modify column CREATED_AT VARCHAR(255);

select
    *
from
    USERS;

/* ПРИВОДИМ ДАННЫЕ К ФОРМАТУ 20.10.2017 8:10 */
update
    USERS
set
    CREATED_AT = DATE_FORMAT( CREATED_AT, '%d.%m.%Y %h:%i' );

/* ТАК КАК ЭТО СЕЙЧАС СТРОКА, ТО ПРИВЕДЕМ ЕЕ К ФОРМАТУ ДАТЫ С ПОМОЩЬЮ ФУНКЦИИ STR_TO_DATE, ПОСЛЕ ЧЕГО МОДНО ВЕРНУТЬ ТИП DATETIME */
update
    USERS
set
    CREATED_AT = STR_TO_DATE( CREATED_AT, '%d.%m.%Y %h:%i' );

alter table USERS modify column CREATED_AT DATETIME;

/* 3. В ТАБЛИЦЕ СКЛАДСКИХ ЗАПАСОВ STOREHOUSES_PRODUCTS В ПОЛЕ VALUE МОГУТ ВСТРЕЧАТЬСЯ САМЫЕ РАЗНЫЕ ЦИФРЫ: 0, ЕСЛИ ТОВАР ЗАКОНЧИЛСЯ И ВЫШЕ НУЛЯ,
 * ЕСЛИ НА СКЛАДЕ ИМЕЮТСЯ ЗАПАСЫ. НЕОБХОДИМО ОТСОРТИРОВАТЬ ЗАПИСИ ТАКИМ ОБРАЗОМ, ЧТОБЫ ОНИ ВЫВОДИЛИСЬ В ПОРЯДКЕ УВЕЛИЧЕНИЯ ЗНАЧЕНИЯ VALUE.
 * ОДНАКО НУЛЕВЫЕ ЗАПАСЫ ДОЛЖНЫ ВЫВОДИТЬСЯ В КОНЦЕ, ПОСЛЕ ВСЕХ ЗАПИСЕЙ. */
/* ТАК КАК ТАБЛИЦА ИЗНАЧАЛЬНО ПУСТАЯ, ЗАПОЛНИМ ЕЕ СЛУЧАЙНЫМИ ЗНАЧЕНИЯМИ */
insert
    into
    STOREHOUSES_PRODUCTS (STOREHOUSE_ID , PRODUCT_ID , VALUE )
values (FLOOR(1 + RAND() * 5), (
select
    ID
from
    PRODUCTS
order by
    RAND()
limit 1), FLOOR(RAND() * 50)),
(FLOOR(1 + RAND() * 5), (
select
    ID
from
    PRODUCTS
order by
    RAND()
limit 1), FLOOR(RAND() * 30)),
(FLOOR(1 + RAND() * 5), (
select
    ID
from
    PRODUCTS
order by
    RAND()
limit 1), FLOOR(RAND() * 100)),
(FLOOR(1 + RAND() * 5), (
select
    ID
from
    PRODUCTS
order by
    RAND()
limit 1), FLOOR(RAND() * 50)),
(FLOOR(1 + RAND() * 5), (
select
    ID
from
    PRODUCTS
order by
    RAND()
limit 1), FLOOR(RAND() * 80)),
(FLOOR(1 + RAND() * 5), (
select
    ID
from
    PRODUCTS
order by
    RAND()
limit 1), FLOOR(RAND() * 50)),
(FLOOR(1 + RAND() * 5), (
select
    ID
from
    PRODUCTS
order by
    RAND()
limit 1), FLOOR(RAND() * 20));

select
    *
from
    STOREHOUSES_PRODUCTS;

/* ПРОИЗВОДИМ СОРТИРОВКУ В 2 ЭТАПА: СНАЧАЛА НУЛЕВЫЕ ЗНАЧЕНИЯ, ЗАТЕМ - ОСТАЛЬНЫЕ */
select
    *
from
    STOREHOUSES_PRODUCTS
order by
    VALUE = 0,
    VALUE;

/* 4. (ПО ЖЕЛАНИЮ) ИЗ ТАБЛИЦЫ USERS НЕОБХОДИМО ИЗВЛЕЧЬ ПОЛЬЗОВАТЕЛЕЙ, РОДИВШИХСЯ В АВГУСТЕ И МАЕ. 
 * МЕСЯЦЫ ЗАДАНЫ В ВИДЕ СПИСКА АНГЛИЙСКИХ НАЗВАНИЙ (MAY, AUGUST) */
-- SELECT NAME, DATE_FORMAT(BIRTHDAY_AT, '%M') FROM USERS; - ПРОВЕРКА ИЗВЛЕЧЕНИЯ МЕСЯЦА
 /* ВЫБОРКА ПО ДАТАМ РОЖДЕНИЯ (МАЙ, АВГУСТ) */
select
    *
from
    USERS
where
    DATE_FORMAT(BIRTHDAY_AT, '%M') in ('MAY', 'AUGUST');

/* 5. (ПО ЖЕЛАНИЮ) ИЗ ТАБЛИЦЫ CATALOGS ИЗВЛЕКАЮТСЯ ЗАПИСИ ПРИ ПОМОЩИ ЗАПРОСА. 
 * SELECT * FROM CATALOGS WHERE ID IN (5, 1, 2); ОТСОРТИРУЙТЕ ЗАПИСИ В ПОРЯДКЕ, ЗАДАННОМ В СПИСКЕ IN. */
select
    *
from
    CATALOGS
where
    ID in (5, 1, 2)
order by
    FIELD(ID, 5, 1, 2);

/* «АГРЕГАЦИЯ ДАННЫХ» */
/* 1. ПОДСЧИТАЙТЕ СРЕДНИЙ ВОЗРАСТ ПОЛЬЗОВАТЕЛЕЙ В ТАБЛИЦЕ USERS. */
/* ИЗВЛЕЧЕНИЕ ГОДА РОЖДЕНИЯ ПОЛЬЗОВАТЕЛЕЙ ДЛЯ ПРОВЕРКИ */
select
    NAME,
    DATE_FORMAT(BIRTHDAY_AT, '%Y')
from
    USERS;

/* ПРОВЕРКА ИЗВЛЕЧЕНИЯ ТЕКУЩЕГО ГОДА */
select
    DATE_FORMAT(NOW(), '%Y');

/* ВЫЧИСЛЕНИЕ ВОЗРАСТА ПОЛЬЗОВАТЕЛЕЙ */
select
    NAME,
    (year(NOW()) - DATE_FORMAT(BIRTHDAY_AT, '%Y')) as BIRTHDAY_AT
from
    USERS;

/* ПОДСЧЕТ СРЕДНЕГО ВОЗРАСТА */
select
    AVG((year(NOW()) - DATE_FORMAT(BIRTHDAY_AT, '%Y'))) as AV_AGE
from
    USERS;

/* 2. ПОДСЧИТАЙТЕ КОЛИЧЕСТВО ДНЕЙ РОЖДЕНИЯ, КОТОРЫЕ ПРИХОДЯТСЯ НА КАЖДЫЙ ИЗ ДНЕЙ НЕДЕЛИ. СЛЕДУЕТ УЧЕСТЬ, 
 * ЧТО НЕОБХОДИМЫ ДНИ НЕДЕЛИ ТЕКУЩЕГО ГОДА, А НЕ ГОДА РОЖДЕНИЯ. */
select
    *
from
    USERS;

/* ПОДСЧЕТ ПОЛЬЗОВАТЕЛЕЙ С ВВОДОМ ГОДА ВРУЧНУЮ (МОЖНО ПОДСЧИТАТЬ ДЛЯ ЛЮБОГО ГОДА */
select
    COUNT(*),
    DATE_FORMAT(DATE_FORMAT(BIRTHDAY_AT, '2020-%m-%d') , '%W') as WEEK_DAY
from
    USERS
group by
    WEEK_DAY;

/* ПОДСЧЕТ ПОЛЬЗОВАТЕЛЕЙ С АВТОМАТИЧЕСКИМ ВВОДОМ ТЕКУЩЕГО ГОДА */
select
    COUNT(*),
    DATE_FORMAT(DATE_FORMAT(BIRTHDAY_AT, CONCAT(year(NOW()), '-%m-%d')) , '%W') as WEEK_DAY
from
    USERS
group by
    WEEK_DAY;

/*3. (ПО ЖЕЛАНИЮ) ПОДСЧИТАЙТЕ ПРОИЗВЕДЕНИЕ ЧИСЕЛ В СТОЛБЦЕ ТАБЛИЦЫ.  */
/* ПОДСЧИТАЕМ ПРОИЗВЕДЕНИЕ ЗНАЧЕНИЙ В СТОЛБЦЕ ID ТАБЛИЦЫ USERS */
select
    FLOOR(exp(SUM(ln(ID)))) as MULT
from
    USERS;