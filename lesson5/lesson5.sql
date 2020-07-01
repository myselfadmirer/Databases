/* �������� ������ */
create database SHOP;

use SHOP;

drop table if exists CATALOGS;

create table CATALOGS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT '�������� �������', unique UNIQUE_NAME(NAME(10)) ) COMMENT = '������� ��������-��������';

insert
    into
    CATALOGS
values (null, '����������'),
(null, '����������� �����'),
(null, '����������'),
(null, '������� �����'),
(null, '����������� ������');

drop table if exists USERS;

create table USERS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT '��� ����������', BIRTHDAY_AT DATE COMMENT '���� ��������', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = '����������';

insert
    into
    USERS (NAME, BIRTHDAY_AT)
values ('��������', '1990-10-05'),
('�������', '1984-11-12'),
('���������', '1985-05-20'),
('������', '1988-02-14'),
('����', '1998-01-12'),
('�����', '1992-08-29');

drop table if exists PRODUCTS;

create table PRODUCTS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT '��������', DESCRIPTION TEXT COMMENT '��������', PRICE DECIMAL (11, 2) COMMENT '����', CATALOG_ID INT unsigned, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_CATALOG_ID (CATALOG_ID) ) COMMENT = '�������� �������';

insert
    into
    PRODUCTS (NAME, DESCRIPTION, PRICE, CATALOG_ID)
values ('INTEL CORE I3-8100', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� INTEL.', 7890.00, 1),
('INTEL CORE I5-7400', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� INTEL.', 12700.00, 1),
('AMD FX-8320E', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� AMD.', 4780.00, 1),
('AMD FX-8320', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� AMD.', 7120.00, 1),
('ASUS ROG MAXIMUS X HERO', '����������� ����� ASUS ROG MAXIMUS X HERO, Z370, SOCKET 1151-V2, DDR4, ATX', 19310.00, 2),
('GIGABYTE H310M S2H', '����������� ����� GIGABYTE H310M S2H, H310, SOCKET 1151-V2, DDR4, MATX', 4790.00, 2),
('MSI B250M GAMING PRO', '����������� ����� MSI B250M GAMING PRO, B250, SOCKET 1151, DDR4, MATX', 5060.00, 2);

drop table if exists ORDERS;

create table ORDERS ( ID SERIAL primary key, USER_ID INT unsigned, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_USER_ID(USER_ID) ) COMMENT = '������';

drop table if exists ORDERS_PRODUCTS;

create table ORDERS_PRODUCTS ( ID SERIAL primary key, ORDER_ID INT unsigned, PRODUCT_ID INT unsigned, TOTAL INT unsigned default 1 COMMENT '���������� ���������� �������� �������', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = '������ ������';

drop table if exists DISCOUNTS;

create table DISCOUNTS ( ID SERIAL primary key, USER_ID INT unsigned, PRODUCT_ID INT unsigned, DISCOUNT FLOAT unsigned COMMENT '�������� ������ �� 0.0 �� 1.0', STARTED_AT DATETIME, FINISHED_AT DATETIME, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_USER_ID(USER_ID), key INDEX_OF_PRODUCT_ID(PRODUCT_ID) ) COMMENT = '������';

drop table if exists STOREHOUSES;

create table STOREHOUSES ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT '��������', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = '������';

drop table if exists STOREHOUSES_PRODUCTS;

create table STOREHOUSES_PRODUCTS ( ID SERIAL primary key, STOREHOUSE_ID INT unsigned, PRODUCT_ID INT unsigned, VALUE INT unsigned COMMENT '����� �������� ������� �� ������', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = '������ �� ������';

/* �� */
/* ����������, ����������, ���������� � ����������Ż */
/* 1. ����� � ������� USERS ���� CREATED_AT � UPDATED_AT ��������� ��������������. ��������� �� �������� ����� � ��������. */
/* ���� ��� �������� ������ */
update
    USERS
set
    CREATED_AT = NOW(),
    UPDATED_AT = NOW();

/* ���� ������ ��������� �������� �� ���������� */
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

/* 2. ������� USERS ���� �������� ��������������. ������ CREATED_AT � UPDATED_AT ���� ������ ����� VARCHAR, 
 * � � ��� ������ ����� ���������� �������� � ������� 20.10.2017 8:10. 
 * ���������� ������������� ���� � ���� DATETIME, �������� ���Ĩ���� ����� ��������. */
/* ��� ��� ��� ������ ���������� ��� ��� ����� ��� DATETIME, ������� ��� ������� �� VARCHAR �� ������� CREATED_AT */
desc USERS;

alter table USERS modify column CREATED_AT VARCHAR(255);

select
    *
from
    USERS;

/* �������� ������ � ������� 20.10.2017 8:10 */
update
    USERS
set
    CREATED_AT = DATE_FORMAT( CREATED_AT, '%D.%M.%Y %H:%I' );

/* ��� ��� ��� ������ ������, �� �������� �� � ������� ���� � ������� ������� STR_TO_DATE, ����� ���� ����� ������� ��� DATETIME */
update
    USERS
set
    CREATED_AT = STR_TO_DATE( CREATED_AT, '%D.%M.%Y %H:%I' );

alter table USERS modify column CREATED_AT DATETIME;

/* 3. � ������� ��������� ������� STOREHOUSES_PRODUCTS � ���� VALUE ����� ����������� ����� ������ �����: 0, ���� ����� ���������� � ���� ����,
 * ���� �� ������ ������� ������. ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� VALUE.
 * ������ ������� ������ ������ ���������� � �����, ����� ���� �������. */
/* ��� ��� ������� ���������� ������, �������� �� ���������� ���������� */
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

/* ���������� ���������� � 2 �����: ������� ������� ��������, ����� - ��������� */
select
    *
from
    STOREHOUSES_PRODUCTS
order by
    VALUE = 0,
    VALUE;

/* 4. (�� �������) �� ������� USERS ���������� ������� �������������, ���������� � ������� � ���. 
 * ������ ������ � ���� ������ ���������� �������� (MAY, AUGUST) */
-- SELECT NAME, DATE_FORMAT(BIRTHDAY_AT, '%M') FROM USERS; - �������� ���������� ������
 /* ������� �� ����� �������� (���, ������) */
select
    *
from
    USERS
where
    DATE_FORMAT(BIRTHDAY_AT, '%M') in ('MAY', 'AUGUST');

/* 5. (�� �������) �� ������� CATALOGS ����������� ������ ��� ������ �������. 
 * SELECT * FROM CATALOGS WHERE ID IN (5, 1, 2); ������������ ������ � �������, �������� � ������ IN. */
select
    *
from
    CATALOGS
where
    ID in (5, 1, 2)
order by
    FIELD(ID, 5, 1, 2);

/* ���������� �����ջ */
/* 1. ����������� ������� ������� ������������� � ������� USERS. */
/* ���������� ���� �������� ������������� ��� �������� */
select
    NAME,
    DATE_FORMAT(BIRTHDAY_AT, '%Y')
from
    USERS;

/* �������� ���������� �������� ���� */
select
    DATE_FORMAT(NOW(), '%Y');

/* ���������� �������� ������������� */
select
    NAME,
    (year(NOW()) - DATE_FORMAT(BIRTHDAY_AT, '%Y')) as BIRTHDAY_AT
from
    USERS;

/* ������� �������� �������� */
select
    AVG((year(NOW()) - DATE_FORMAT(BIRTHDAY_AT, '%Y'))) as AV_AGE
from
    USERS;

/* 2. ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. ������� ������, 
 * ��� ���������� ��� ������ �������� ����, � �� ���� ��������. */
select
    *
from
    USERS;

/* ������� ������������� � ������ ���� ������� (����� ���������� ��� ������ ���� */
select
    COUNT(*),
    DATE_FORMAT(DATE_FORMAT(BIRTHDAY_AT, '2020-%M-%D') , '%W') as WEEK_DAY
from
    USERS
group by
    WEEK_DAY;

/* ������� ������������� � �������������� ������ �������� ���� */
select
    COUNT(*),
    DATE_FORMAT(DATE_FORMAT(BIRTHDAY_AT, CONCAT(year(NOW()), '-%M-%D')) , '%W') as WEEK_DAY
from
    USERS
group by
    WEEK_DAY;

/*3. (�� �������) ����������� ������������ ����� � ������� �������.  */
/* ���������� ������������ �������� � ������� ID ������� USERS */
select
    FLOOR(exp(SUM(ln(ID)))) as MULT
from
    USERS;