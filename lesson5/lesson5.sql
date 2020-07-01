/* янгдюмхе рюакхж */
create database SHOP;

use SHOP;

drop table if exists CATALOGS;

create table CATALOGS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT 'мюгбюмхе пюгдекю', unique UNIQUE_NAME(NAME(10)) ) COMMENT = 'пюгдекш хмрепмер-люцюгхмю';

insert
    into
    CATALOGS
values (null, 'опнжеяянпш'),
(null, 'люрепхмяйхе окюрш'),
(null, 'бхденйюпрш'),
(null, 'феярйхе дхяйх'),
(null, 'ноепюрхбмюъ оюлърэ');

drop table if exists USERS;

create table USERS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT 'хлъ онйсоюрекъ', BIRTHDAY_AT DATE COMMENT 'дюрю пнфдемхъ', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = 'онйсоюрекх';

insert
    into
    USERS (NAME, BIRTHDAY_AT)
values ('цеммюдхи', '1990-10-05'),
('мюрюкэъ', '1984-11-12'),
('юкейяюмдп', '1985-05-20'),
('яепцеи', '1988-02-14'),
('хбюм', '1998-01-12'),
('люпхъ', '1992-08-29');

drop table if exists PRODUCTS;

create table PRODUCTS ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT 'мюгбюмхе', DESCRIPTION TEXT COMMENT 'нохяюмхе', PRICE DECIMAL (11, 2) COMMENT 'жемю', CATALOG_ID INT unsigned, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_CATALOG_ID (CATALOG_ID) ) COMMENT = 'рнбюпмше онгхжхх';

insert
    into
    PRODUCTS (NAME, DESCRIPTION, PRICE, CATALOG_ID)
values ('INTEL CORE I3-8100', 'опнжеяянп дкъ мюярнкэмшу оепянмюкэмшу йнлоэчрепнб, нямнбюммшу мю окюртнпле INTEL.', 7890.00, 1),
('INTEL CORE I5-7400', 'опнжеяянп дкъ мюярнкэмшу оепянмюкэмшу йнлоэчрепнб, нямнбюммшу мю окюртнпле INTEL.', 12700.00, 1),
('AMD FX-8320E', 'опнжеяянп дкъ мюярнкэмшу оепянмюкэмшу йнлоэчрепнб, нямнбюммшу мю окюртнпле AMD.', 4780.00, 1),
('AMD FX-8320', 'опнжеяянп дкъ мюярнкэмшу оепянмюкэмшу йнлоэчрепнб, нямнбюммшу мю окюртнпле AMD.', 7120.00, 1),
('ASUS ROG MAXIMUS X HERO', 'люрепхмяйюъ окюрю ASUS ROG MAXIMUS X HERO, Z370, SOCKET 1151-V2, DDR4, ATX', 19310.00, 2),
('GIGABYTE H310M S2H', 'люрепхмяйюъ окюрю GIGABYTE H310M S2H, H310, SOCKET 1151-V2, DDR4, MATX', 4790.00, 2),
('MSI B250M GAMING PRO', 'люрепхмяйюъ окюрю MSI B250M GAMING PRO, B250, SOCKET 1151, DDR4, MATX', 5060.00, 2);

drop table if exists ORDERS;

create table ORDERS ( ID SERIAL primary key, USER_ID INT unsigned, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_USER_ID(USER_ID) ) COMMENT = 'гюйюгш';

drop table if exists ORDERS_PRODUCTS;

create table ORDERS_PRODUCTS ( ID SERIAL primary key, ORDER_ID INT unsigned, PRODUCT_ID INT unsigned, TOTAL INT unsigned default 1 COMMENT 'йнкхвеярбн гюйюгюммшу рнбюпмшу онгхжхи', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = 'янярюб гюйюгю';

drop table if exists DISCOUNTS;

create table DISCOUNTS ( ID SERIAL primary key, USER_ID INT unsigned, PRODUCT_ID INT unsigned, DISCOUNT FLOAT unsigned COMMENT 'бекхвхмю яйхдйх нр 0.0 дн 1.0', STARTED_AT DATETIME, FINISHED_AT DATETIME, CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP, key INDEX_OF_USER_ID(USER_ID), key INDEX_OF_PRODUCT_ID(PRODUCT_ID) ) COMMENT = 'яйхдйх';

drop table if exists STOREHOUSES;

create table STOREHOUSES ( ID SERIAL primary key, NAME VARCHAR(255) COMMENT 'мюгбюмхе', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = 'яйкюдш';

drop table if exists STOREHOUSES_PRODUCTS;

create table STOREHOUSES_PRODUCTS ( ID SERIAL primary key, STOREHOUSE_ID INT unsigned, PRODUCT_ID INT unsigned, VALUE INT unsigned COMMENT 'гюоюя рнбюпмни онгхжхх мю яйкюде', CREATED_AT DATETIME default CURRENT_TIMESTAMP, UPDATED_AT DATETIME default CURRENT_TIMESTAMP on
update
    CURRENT_TIMESTAMP ) COMMENT = 'гюоюяш мю яйкюде';

/* дг */
/* ╚ноепюрнпш, тхкэрпюжхъ, янпрхпнбйю х нцпюмхвемхе╩ */
/* 1. осярэ б рюакхже USERS онкъ CREATED_AT х UPDATED_AT нйюгюкхяэ мегюонкмеммшлх. гюонкмхре ху рейсыхлх дюрни х бпелемел. */
/* еякх бяе гмювемхъ осярше */
update
    USERS
set
    CREATED_AT = NOW(),
    UPDATED_AT = NOW();

/* еякх рнкэйн мейнрнпше гмювемхъ ме нопедекемш */
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

/* 2. рюакхжю USERS ашкю месдювмн яопнейрхпнбюмю. гюохях CREATED_AT х UPDATED_AT ашкх гюдюмш рхонл VARCHAR, 
 * х б мху днкцне бпелъ онлеыюкхяэ гмювемхъ б тнплюре 20.10.2017 8:10. 
 * менаундхлн опенапюгнбюрэ онкъ й рхос DATETIME, янупюмхб ббед╗ммше пюмее гмювемхъ. */
/* рюй йюй рхо дюммшу хгмювюкэмн сфе ашк гюдюм йюй DATETIME, хглемхл ецн ямювюкю мю VARCHAR мю опхлепе CREATED_AT */
desc USERS;

alter table USERS modify column CREATED_AT VARCHAR(255);

select
    *
from
    USERS;

/* опхбндхл дюммше й тнплюрс 20.10.2017 8:10 */
update
    USERS
set
    CREATED_AT = DATE_FORMAT( CREATED_AT, '%D.%M.%Y %H:%I' );

/* рюй йюй щрн яеивюя ярпнйю, рн опхбедел ее й тнплюрс дюрш я онлныэч тсмйжхх STR_TO_DATE, оняке вецн лндмн бепмсрэ рхо DATETIME */
update
    USERS
set
    CREATED_AT = STR_TO_DATE( CREATED_AT, '%D.%M.%Y %H:%I' );

alter table USERS modify column CREATED_AT DATETIME;

/* 3. б рюакхже яйкюдяйху гюоюянб STOREHOUSES_PRODUCTS б онке VALUE лнцср бярпевюрэяъ яюлше пюгмше жхтпш: 0, еякх рнбюп гюйнмвхкяъ х бшье мскъ,
 * еякх мю яйкюде хлечряъ гюоюяш. менаундхлн нрянпрхпнбюрэ гюохях рюйхл напюгнл, врнаш нмх бшбндхкхяэ б онпъдйе сбекхвемхъ гмювемхъ VALUE.
 * ндмюйн мскебше гюоюяш днкфмш бшбндхрэяъ б йнмже, оняке бяеу гюохяеи. */
/* рюй йюй рюакхжю хгмювюкэмн осярюъ, гюонкмхл ее яксвюимшлх гмювемхълх */
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

/* опнхгбндхл янпрхпнбйс б 2 щрюою: ямювюкю мскебше гмювемхъ, гюрел - нярюкэмше */
select
    *
from
    STOREHOUSES_PRODUCTS
order by
    VALUE = 0,
    VALUE;

/* 4. (он фекюмхч) хг рюакхжш USERS менаундхлн хгбкевэ онкэгнбюрекеи, пндхбьхуяъ б юбцсяре х люе. 
 * леяъжш гюдюмш б бхде яохяйю юмцкхияйху мюгбюмхи (MAY, AUGUST) */
-- SELECT NAME, DATE_FORMAT(BIRTHDAY_AT, '%M') FROM USERS; - опнбепйю хгбкевемхъ леяъжю
 /* бшанпйю он дюрюл пнфдемхъ (люи, юбцсяр) */
select
    *
from
    USERS
where
    DATE_FORMAT(BIRTHDAY_AT, '%M') in ('MAY', 'AUGUST');

/* 5. (он фекюмхч) хг рюакхжш CATALOGS хгбкейючряъ гюохях опх онлных гюопняю. 
 * SELECT * FROM CATALOGS WHERE ID IN (5, 1, 2); нрянпрхпсире гюохях б онпъдйе, гюдюммнл б яохяйе IN. */
select
    *
from
    CATALOGS
where
    ID in (5, 1, 2)
order by
    FIELD(ID, 5, 1, 2);

/* ╚юцпецюжхъ дюммшу╩ */
/* 1. ондявхрюире япедмхи бнгпюяр онкэгнбюрекеи б рюакхже USERS. */
/* хгбкевемхе цндю пнфдемхъ онкэгнбюрекеи дкъ опнбепйх */
select
    NAME,
    DATE_FORMAT(BIRTHDAY_AT, '%Y')
from
    USERS;

/* опнбепйю хгбкевемхъ рейсыецн цндю */
select
    DATE_FORMAT(NOW(), '%Y');

/* бшвхякемхе бнгпюярю онкэгнбюрекеи */
select
    NAME,
    (year(NOW()) - DATE_FORMAT(BIRTHDAY_AT, '%Y')) as BIRTHDAY_AT
from
    USERS;

/* ондявер япедмецн бнгпюярю */
select
    AVG((year(NOW()) - DATE_FORMAT(BIRTHDAY_AT, '%Y'))) as AV_AGE
from
    USERS;

/* 2. ондявхрюире йнкхвеярбн дмеи пнфдемхъ, йнрнпше опхундъряъ мю йюфдши хг дмеи медекх. якедсер свеярэ, 
 * врн менаундхлш дмх медекх рейсыецн цндю, ю ме цндю пнфдемхъ. */
select
    *
from
    USERS;

/* ондявер онкэгнбюрекеи я ббнднл цндю бпсвмсч (лнфмн ондявхрюрэ дкъ кчанцн цндю */
select
    COUNT(*),
    DATE_FORMAT(DATE_FORMAT(BIRTHDAY_AT, '2020-%M-%D') , '%W') as WEEK_DAY
from
    USERS
group by
    WEEK_DAY;

/* ондявер онкэгнбюрекеи я юбрнлюрхвеяйхл ббнднл рейсыецн цндю */
select
    COUNT(*),
    DATE_FORMAT(DATE_FORMAT(BIRTHDAY_AT, CONCAT(year(NOW()), '-%M-%D')) , '%W') as WEEK_DAY
from
    USERS
group by
    WEEK_DAY;

/*3. (он фекюмхч) ондявхрюире опнхгбедемхе вхяек б ярнкаже рюакхжш.  */
/* ондявхрюел опнхгбедемхе гмювемхи б ярнкаже ID рюакхжш USERS */
select
    FLOOR(exp(SUM(ln(ID)))) as MULT
from
    USERS;