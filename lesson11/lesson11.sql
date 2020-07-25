-- Практическое задание по теме “Оптимизация запросов”

-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, 
-- название таблицы, идентификатор первичного ключа и содержимое поля name.

-- Создаем таблицу logs
drop table if exists logs;
create table logs (table_primary_key bigint not null,
table_name varchar(255) not null comment 'Название таблицы', 
name varchar(255) not null comment 'Имя пользователя, наименование каталога, продукта',
created_at timestamp default current_timestamp not null) comment = 'Лог' engine=Archive;

desc logs;

-- Создаем триггеры для добавления записей после вставки данных
delimiter //
-- В таблицу users
drop trigger if exists log_for_users//
create trigger log_for_users after insert on users
for each row
begin
    insert into logs (table_primary_key, table_name, name) values (new.id, 'users', new.name);
end//
-- В таблицу products
drop trigger if exists log_for_products//
create trigger log_for_products after insert on products
for each row
begin
    insert into logs (table_primary_key, table_name, name) values (new.id, 'products', new.name);
end//
-- В таблицу catalogs
drop trigger if exists log_for_catalogs//
create trigger log_for_catalogs after insert on catalogs
for each row
begin
    insert into logs (table_primary_key, table_name, name) values (new.id, 'catalogs', new.name);
end//
delimiter ;

-- Проверяем
select * from users;
select * from products;
select * from catalogs;
insert into users(name, birthday_at) values ('Екатерина', '1990-10-05');
insert into products(name, description, price, catalog_id) values ('Intel Core i5-9000', 'Процессор', 6000, 1);
insert into catalogs(name) values ('Системы охлаждения');

select * from logs;

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

-- Создаем тестовую таблицу для вставки. Использую таблицу shop.profiles

drop table if exists profiles;
create table profiles (
id serial primary key,
name varchar(50) unique not null comment 'Имя пользователя cистемы',
pass varchar(15) unique not null comment 'Пароль пользователя для первого входа в систему');

desc profiles;
select count(*) from profiles;
select * from profiles;

-- Создаем хранимую процедуру (применяю ее, так как до этого делала только функции)

drop procedure if exists million_insertion;
delimiter /
create procedure million_insertion()
begin
    declare num int default 1;
while num <= 1000000 do
    insert into shop.profiles(name, pass) values (
        concat('user', num), concat('Qwerty', num));
    set num = num + 1;
end while;
end
delimiter ;

-- Дождалась вставки только 36 тысяч значений))
call million_insertion(); 

-- Практическое задание по теме “NoSQL”

-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
