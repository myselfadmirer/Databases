/* �������� ������ */

create database shop;
use shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '�������� �������',
  UNIQUE unique_name(name(10))
) COMMENT = '������� ��������-��������';

INSERT INTO catalogs VALUES
  (NULL, '����������'),
  (NULL, '����������� �����'),
  (NULL, '����������'),
  (NULL, '������� �����'),
  (NULL, '����������� ������');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at) VALUES
  ('��������', '1990-10-05'),
  ('�������', '1984-11-12'),
  ('���������', '1985-05-20'),
  ('������', '1988-02-14'),
  ('����', '1998-01-12'),
  ('�����', '1992-08-29');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��������',
  description TEXT COMMENT '��������',
  price DECIMAL (11,2) COMMENT '����',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = '�������� �������';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� Intel.', 7890.00, 1),
  ('Intel Core i5-7400', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� Intel.', 12700.00, 1),
  ('AMD FX-8320E', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� AMD.', 4780.00, 1),
  ('AMD FX-8320', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', '����������� ����� ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', '����������� ����� Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', '����������� ����� MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = '������';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT '���������� ���������� �������� �������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ ������';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT '�������� ������ �� 0.0 �� 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = '������';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT '����� �������� ������� �� ������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ �� ������';



/* �� */

/* ����������, ����������, ���������� � ����������� */
/* 1. ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������. */

/* ���� ��� �������� ������ */
update users set created_at = now(), updated_at = now();

/* ���� ������ ��������� �������� �� ���������� */
update users set created_at = now() where created_at is null;
update users set updated_at = now() where updated_at is null;

/* 2. ������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR, 
 * � � ��� ������ ����� ���������� �������� � ������� 20.10.2017 8:10. 
 * ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������. */

/* ��� ��� ��� ������ ���������� ��� ��� ����� ��� datetime, ������� ��� ������� �� varchar �� ������� created_at */

desc users;
alter table users modify column created_at varchar(255);
select * from users;

/* �������� ������ � ������� 20.10.2017 8:10 */

update users set created_at = DATE_FORMAT( created_at, '%d.%m.%Y %H:%i' );

/* ��� ��� ��� ������ ������, �� �������� �� � ������� ���� � ������� ������� str_to_date, ����� ���� ����� ������� ��� datetime */
update users set created_at = str_to_date( created_at, '%d.%m.%Y %H:%i' );
alter table users modify column created_at datetime;


/* 3. � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 0, ���� ����� ���������� � ���� ����,
 * ���� �� ������ ������� ������. ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value.
 * ������ ������� ������ ������ ���������� � �����, ����� ���� �������. */

/* ��� ��� ������� ���������� ������, �������� �� ���������� ���������� */

insert into storehouses_products (storehouse_id , product_id , value ) values 
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 50)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 30)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 100)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 50)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 80)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 50)),
(floor(1 + rand() * 5), (select id from products order by rand() limit 1), floor(rand() * 20));

select * from storehouses_products;

/* ���������� ���������� � 2 �����: ������� ������� ��������, ����� - ��������� */

select * from storehouses_products order by value = 0, value;


/* 4. (�� �������) �� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
 * ������ ������ � ���� ������ ���������� �������� (may, august) */

-- SELECT name, date_format(birthday_at, '%M') FROM users; - �������� ���������� ������

/* ������� �� ����� �������� (���, ������) */

SELECT * FROM users WHERE date_format(birthday_at, '%M') IN ('may', 'august');

/* 5. (�� �������) �� ������� catalogs ����������� ������ ��� ������ �������. 
 * SELECT * FROM catalogs WHERE id IN (5, 1, 2); ������������ ������ � �������, �������� � ������ IN. */

SELECT * FROM catalogs WHERE id IN (5, 1, 2) order by field(id, 5, 1, 2);

/* ���������� ������� */

/* 1. ����������� ������� ������� ������������� � ������� users. */

/* ���������� ���� �������� ������������� ��� �������� */

select name, date_format(birthday_at, '%Y') from users;

/* �������� ���������� �������� ���� */

select date_format(now(), '%Y'); 

/* ���������� �������� ������������� */

select name, (year(now()) - date_format(birthday_at, '%Y')) as birthday_at from users;

/* ������� �������� �������� */

select avg((year(now()) - date_format(birthday_at, '%Y'))) as av_age from users;

/* 2. ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. ������� ������, 
 * ��� ���������� ��� ������ �������� ����, � �� ���� ��������. */

select * from users;

/* ������� ������������� � ������ ���� ������� (����� ���������� ��� ������ ���� */

select count(*), date_format(date_format(birthday_at, '2020-%m-%d') , '%W') as week_day from users GROUP by week_day;

/* ������� ������������� � �������������� ������ �������� ���� */

select count(*), date_format(date_format(birthday_at, concat(year(now()), '-%m-%d')) , '%W') as week_day from users GROUP by week_day;

/*3. (�� �������) ����������� ������������ ����� � ������� �������.  */

/* ���������� ������������ �������� � ������� id ������� users */

SELECT floor(exp(sum(ln(id)))) as mult FROM users;