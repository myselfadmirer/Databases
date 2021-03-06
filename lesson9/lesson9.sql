-- Практическое задание по теме “Транзакции, переменные, представления”
-- 
-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. 
-- Используйте транзакции.
-- 
start transaction;
insert into sample.users select * from shop.users where shop.users.id = 1;
delete from shop.users where id = 1;
commit;
-- 
-- 
-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.
-- 
create view `position` as
  select p.name, c.name as `catalog`
    from products as p
    left join catalogs as c
      on c.id = p.catalog_id;

select * from `position`;
-- 
-- 3. по желанию) Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', 
-- '2016-08-04', '2018-08-16' и 2018-08-17. 
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, 
-- если она отсутствует.
-- 
drop table if exists my_dates;
create table my_dates(
created_at datetime not null);

insert into my_dates values ('2018-08-01'), ('2016-08-04'), ('2018-08-16'), ('2018-08-17');
select * from my_dates;


-- 
-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, 
-- оставляя только 5 самых свежих записей.
-- 
-- 
-- 
-- Практическое задание по теме “Администрирование MySQL” (эта тема изучается по вашему желанию)
-- 
-- 1. Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.
-- 2. (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.
-- 
-- 
-- 
-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- 
-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
-- 
drop function if exists hello;
delimiter //
create function hello() 
returns varchar(255) no sql
begin
    declare hello varchar(255);
    declare c_time time;
    set c_time = date_format(now(), '%H:%i:%s');
    if (c_time between time('06:00') and time('11:59:59')) then
      select 'Доброе утро!' into hello;
    end if ;
    if (c_time between time('12:00') and time('17:59:59')) then
      select 'Добрый день!' into hello;
    end if ;
    if (c_time between time('18:00') and time('23:59:59')) then
      select 'Добрый вечер!' into hello;
    end if ;
    if (c_time between time('00:00') and time('05:59:59')) then
      select 'Доброй ночи!' into hello;
    end if ;
return hello;
end
delimiter ;

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

-- Триггер для вставки позиции в каталог
drop trigger if exists insert_products;
delimiter //
create trigger insert_products before insert on products
for each row
begin
    if new.name is null and new.description is null then 
      signal sqlstate '45000' set message_text = 'insertion canceled. name and description of a product both can\'t be null' ;
    end if;
end
-- Триггер для обновления позиции в каталоге
drop trigger if exists update_products //
create trigger update_products before update on products
for each row
begin
    if new.name is null and new.description is null then 
      signal sqlstate '45000' set message_text = 'update canceled. name and description of a product both can\'t be null' ;
    end if;
end
delimiter ;

-- select * from products;
-- desc products;
-- insert into products (name, description, price, catalog_id) values (null, 'Неопределенный продукт', 6000, 2);
-- insert into products (name, description, price, catalog_id) values ('AMD', null, 6000, 2) ;
-- insert into products (name, description, price, catalog_id) values (null, null, 6000, 2) ;
-- update products set name = null, description = null where id = 1;

-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется последовательность, 
-- в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55.

