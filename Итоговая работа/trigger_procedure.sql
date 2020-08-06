-- Процедура заполнения таблицы characteristics

-- Триггер добавления новой позиции в каталоге. Служит для того, чтобы всегда знать, какие данные еще не заполнены

delimiter /
drop trigger if exists insert_values /
create trigger insert_values after insert on aviapro_catalog
for each row
begin
    insert into data_to_fill (id) values (new.id);
end 
delimiter ;

-- Триггер для изменения булевого значения в столбцах characteristics и specifications при заполнении данных в соответствующих позициях
-- по id из каталога

delimiter /
drop trigger if exists insert_into_characteristics /
create trigger insert_into_characteristics after insert on `characteristics` 
for each row
begin
    update data_to_fill set `characteristics` = true where id = new.id;
end 
delimiter ;

delimiter /
drop trigger if exists insert_into_specifications /
create trigger insert_into_characteristicinsert_into_specificationss after insert on specifications
for each row
begin
    update data_to_fill set specifications = true where id = new.id;
end 
delimiter ;

-- Процедура заполнения оставшихся полей таблицы characteristics

delimiter /
drop procedure if exists insert_data_to_characteristics /
create procedure insert_data_to_characteristics (cat_id int, s int, m int, d int)
begin
  declare exit handler for sqlexception select 'Данные для id уже существуют. Вставка не выполнена';
  insert into`characteristics` values (cat_id, cat_id, s, m, d);
end 
delimiter ;

-- Процедура заполнения оставшихся полей таблицы specifications

delimiter /
drop procedure if exists insert_data_to_specifications /
create procedure insert_data_to_specifications (cat_id int, a_type int, s_type int, e_type int, engine varchar(20), m_type int, d_type int, f_type int)
begin
  declare exit handler for sqlexception select 'Данные для id уже существуют. Вставка не выполнена';
  insert into specifications values (cat_id, cat_id, a_type, s_type, e_type, engine, m_type, d_type, f_type);
end 
delimiter ;

-- Проверка
-- 
-- insert into aviapro_catalog (aircraft_name, nickname, NATO_reporting_name,company_id, first_flight) values 
--   ('Ту-160', 'Белый лебедь', 'Blackjack', 1, 1981);
-- select * from data_to_fill;
-- call insert_data_to_characteristics(101, 2000, 267600, 13200);
-- call insert_data_to_specifications(101, 4, 2, 3, 'НК-32', 1, 1, 1);