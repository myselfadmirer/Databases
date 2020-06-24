tamara@tamara-VirtualBox:~$ mysql vk < vk_DB_tables.sql
tamara@tamara-VirtualBox:~$ mysql

mysql> SHOW DATABASES;
# +--------------------+
# | Database           |
# +--------------------+
# | information_schema |
# | mysql              |
# | new_mysql          |
# | performance_schema |
# | sample             |
# | sys                |
# | vk                 |
# +--------------------+
# 7 rows in set (0.00 sec)

mysql> USE vk;
# Reading table information for completion of table and column names
# You can turn off this feature to get a quicker startup with -A

# Database changed
mysql> SHOW TABLES FROM vk;
# +---------------------+
# | Tables_in_vk        |
# +---------------------+
# | communities         |
# | communities_users   |
# | friendship          |
# | friendship_statuses |
# | media               |
# | media_types         |
# | messages            |
# | profiles            |
# | users               |
# +---------------------+
# 9 rows in set (0.01 sec)

mysql> SELECT * FROM users;
# +-----+-------------+--------------+--------------------------------+----------------------+---------------------+---------------------+
# | id  | first_name  | last_name    | email                          | phone                | created_at          | updated_at          |
# +-----+-------------+--------------+--------------------------------+----------------------+---------------------+---------------------+
# |   1 | Kaycee      | Weimann      | bogisich.lisette@example.org   | +67(3)3239649922     | 1977-05-12 04:43:54 | 1990-06-28 19:26:21 |
# |   2 | Maxwell     | Weimann      | tito.cruickshank@example.com   | 237.711.0959x30142   | 2003-08-25 17:21:17 | 2010-11-25 01:01:57 |
# |   3 | Emilia      | Reichert     | kiehn.wilmer@example.com       | 1-484-168-7884       | 1971-08-15 22:07:51 | 2014-08-04 22:24:14 |
# |   4 | Pat         | Gleason      | nader.lucienne@example.net     | 1-477-331-7765x141   | 2001-02-19 10:39:44 | 1987-03-27 05:58:38 |
# |   5 | Leonora     | Wiza         | nitzsche.steve@example.net     | 1-375-931-0149x74159 | 1988-11-06 23:19:21 | 1987-09-13 02:06:02 |
# |   6 | Keeley      | Walter       | fernser@example.org            | 411-957-1082         | 1979-04-17 11:34:01 | 2003-02-21 13:17:22 |
# |   7 | Melvin      | Howe         | ernser.amanda@example.net      | 1-999-626-6522x64597 | 1979-11-17 06:23:03 | 2019-11-19 04:29:33 |
# |   8 | Hubert      | Wolf         | orrin77@example.net            | 727-448-4632x16770   | 1987-02-02 23:11:03 | 1992-11-10 04:41:01 |
# |   9 | Macey       | Brakus       | schultz.lottie@example.net     | (756)702-0108        | 1993-09-11 17:41:28 | 1988-08-28 15:55:52 |
# |  10 | Sharon      | Willms       | haleigh98@example.net          | +99(8)5892151251     | 1983-06-30 08:50:05 | 1990-06-10 09:13:22 |
# |  11 | Colin       | Fadel        | jamal.cronin@example.net       | 063-896-4585         | 1979-01-21 07:26:33 | 2002-12-01 04:37:20 |
# |  12 | Felicity    | Wiza         | kitty.olson@example.net        | (028)446-4968x85274  | 1970-05-06 08:42:41 | 2018-09-28 11:47:55 |
# |  13 | Rosanna     | Bahringer    | mayert.chyna@example.com       | +17(8)0300322254     | 2006-05-14 17:01:55 | 2011-10-19 07:43:26 |
# |  14 | Margarete   | Roob         | jwest@example.net              | 575-500-2775x5655    | 1976-03-11 04:40:22 | 2013-12-19 23:31:23 |
# |  15 | Myriam      | Littel       | tzieme@example.com             | 02585499143          | 1977-12-11 11:48:04 | 2006-06-08 02:52:53 |
# |  16 | Lionel      | Legros       | elegros@example.net            | 825-325-8923x75818   | 2003-10-31 23:16:14 | 1980-09-25 08:20:06 |
# |  17 | Kira        | Smitham      | matt.hilpert@example.org       | 01826453599          | 2006-05-26 16:24:35 | 1996-01-20 08:25:00 |
# |  18 | Joshua      | Cummerata    | ecronin@example.net            | 080.936.3721x507     | 2017-06-13 18:31:10 | 1977-05-21 11:53:35 |
# |  19 | Max         | Schneider    | gia.ratke@example.com          | 1-467-927-1349x694   | 2003-03-29 00:13:53 | 1996-05-02 18:25:26 |
# |  20 | Jeanne      | Labadie      | felton.kirlin@example.com      | 397-397-1720x5431    | 1976-09-20 15:16:31 | 2009-07-15 08:48:07 |
# |  21 | Grady       | Veum         | trystan00@example.org          | 831-638-8358x97624   | 2014-03-16 03:44:29 | 2010-08-13 22:18:44 |
# |  22 | Baylee      | Goodwin      | jennings37@example.org         | +34(4)2337931552     | 1996-12-17 04:41:52 | 2010-05-16 16:18:54 |
# |  23 | Roslyn      | Dickens      | naomi.heathcote@example.com    | 1-029-575-2451       | 2005-01-30 13:57:50 | 2005-01-12 03:28:10 |
# |  24 | Martine     | Rippin       | etha49@example.org             | (146)109-2170x419    | 1973-11-07 08:01:58 | 2003-11-01 08:22:57 |
# |  25 | Monte       | Gulgowski    | zfisher@example.net            | 1-484-918-8446       | 2012-02-05 14:59:35 | 2003-03-20 20:33:35 |
# |  26 | Ladarius    | Morissette   | zoila.frami@example.net        | 00146298418          | 1987-01-15 03:47:58 | 1974-04-21 11:07:25 |
# |  27 | Jerrod      | Corwin       | skiles.hans@example.com        | 04487361711          | 1979-11-30 18:17:38 | 1982-05-10 11:07:41 |
# |  28 | Lottie      | Champlin     | thurman.klein@example.net      | 349.322.7922x884     | 1998-02-15 09:08:43 | 2009-09-13 14:16:26 |
# |  29 | Kyleigh     | Wunsch       | ashly71@example.com            | 348.255.2687x978     | 1996-05-06 03:14:49 | 2016-09-21 09:55:04 |
# |  30 | Birdie      | Hudson       | rhane@example.net              | 1-809-687-3795       | 1990-01-03 18:25:03 | 1986-02-28 05:09:02 |
# |  31 | Sage        | Pfannerstill | ymoore@example.net             | 606-879-9901x314     | 1995-02-12 18:45:16 | 1975-08-09 22:10:13 |
# |  32 | Zelda       | Parisian     | schuster.jake@example.net      | 01426403107          | 1974-04-03 05:09:29 | 2010-01-12 18:31:40 |
# |  33 | Mattie      | Boehm        | eduardo.hessel@example.com     | 00925050829          | 2004-10-30 17:48:51 | 1981-06-11 14:46:15 |
# |  34 | Karson      | Steuber      | kacie58@example.net            | 1-616-308-1730       | 2004-04-11 21:33:55 | 2015-12-24 01:54:59 |
# |  35 | Silas       | Littel       | bertrand.jaskolski@example.net | +81(6)4585521599     | 2019-03-12 06:38:59 | 2000-01-22 12:49:27 |
# |  36 | Laisha      | Larkin       | storphy@example.org            | 803-222-3555x0336    | 2001-02-09 02:14:14 | 1976-11-06 09:53:44 |
# |  37 | Sydnie      | Johns        | schumm.jaycee@example.net      | 670.962.1566         | 1988-11-04 16:40:24 | 1992-09-02 00:08:15 |
# |  38 | Alexandrine | McClure      | auer.avery@example.net         | (247)448-1420x41162  | 1994-10-26 20:50:32 | 1994-04-13 04:46:27 |
# |  39 | Philip      | Dach         | maribel68@example.com          | 1-479-395-9334x471   | 2010-06-17 11:30:54 | 1975-06-07 21:56:09 |
# |  40 | Wilton      | Torp         | adah.jast@example.com          | (498)049-0095        | 1974-01-31 00:48:21 | 2003-08-22 15:17:40 |
# |  41 | Sheridan    | Green        | schiller.ericka@example.net    | 1-094-774-4128       | 2006-03-01 16:55:36 | 1988-10-13 18:29:51 |
# |  42 | Kamron      | Krajcik      | minnie54@example.org           | 01685495010          | 1983-02-02 05:08:39 | 1982-05-08 08:49:57 |
# |  43 | Zoe         | Toy          | iheller@example.org            | 629.181.9214         | 2016-11-28 19:46:17 | 2016-03-03 12:18:17 |
# |  44 | Ralph       | Schinner     | orn.leatha@example.net         | +82(0)8381274107     | 1998-08-03 18:37:24 | 1991-05-07 20:59:37 |
# |  45 | Malinda     | Boyer        | evalyn.spencer@example.com     | 598.250.4063x7932    | 2014-08-17 11:22:16 | 1975-02-20 20:19:44 |
# |  46 | Freda       | Jast         | alexandro88@example.org        | 042.706.5713         | 1992-01-12 04:32:29 | 1993-06-15 12:11:52 |
# |  47 | Leanne      | Waelchi      | qlemke@example.net             | 1-985-229-7112x03576 | 2006-05-20 01:17:53 | 2009-12-13 00:32:25 |
# |  48 | Jaylan      | Anderson     | zmueller@example.com           | 815-179-2496         | 1971-01-10 07:07:25 | 1983-09-13 20:49:29 |
# |  49 | Kattie      | Welch        | brycen29@example.org           | 1-245-257-4054x8727  | 1979-02-15 06:45:45 | 2009-05-13 01:47:55 |
# |  50 | Dashawn     | Tremblay     | lnikolaus@example.com          | 565-062-9529x2702    | 2008-10-21 12:20:13 | 1986-07-29 08:32:32 |
# |  51 | Godfrey     | Hamill       | ocorwin@example.net            | 07010200322          | 2017-11-23 18:06:47 | 2012-12-29 10:49:52 |
# |  52 | Citlalli    | Schamberger  | monserrate.kohler@example.net  | 340.680.6392         | 2003-04-13 10:13:36 | 1996-03-16 23:47:15 |
# |  53 | Katharina   | Hamill       | skris@example.org              | (185)726-1338        | 1973-03-06 01:44:32 | 2006-07-28 10:05:53 |
# |  54 | Garnet      | Mertz        | hmacejkovic@example.org        | 925-800-4987x887     | 1970-06-19 22:59:15 | 1999-04-29 09:58:14 |
# |  55 | Jameson     | Stokes       | ireilly@example.com            | 369.761.7246x637     | 1981-04-23 19:59:27 | 1998-01-12 01:59:00 |
# |  56 | Valentin    | Kessler      | domingo.gerhold@example.net    | 399.176.4105x197     | 2010-08-23 19:37:10 | 2004-04-04 14:35:04 |
# |  57 | Eveline     | Mitchell     | wmosciski@example.org          | 130-175-8723         | 1994-06-20 11:44:59 | 2018-07-18 05:46:39 |
# |  58 | Ima         | Ebert        | larson.alene@example.org       | 1-756-731-9902       | 1998-07-31 12:05:43 | 1977-11-10 02:02:51 |
# |  59 | Michaela    | Bode         | garfield.stanton@example.com   | 500-159-6306x5058    | 2019-02-12 04:22:42 | 1980-01-24 07:58:29 |
# |  60 | Elisha      | Strosin      | lamont70@example.net           | 312.013.5865         | 2017-10-19 01:14:58 | 2000-02-21 00:51:12 |
# |  61 | Lynn        | Koelpin      | mwaelchi@example.org           | 821.535.9606x500     | 2002-01-30 11:09:03 | 2002-07-27 01:50:24 |
# |  62 | Vivian      | Witting      | zabshire@example.com           | (544)916-7027x3701   | 1985-01-06 10:41:33 | 2002-01-01 14:56:26 |
# |  63 | Eriberto    | Schiller     | cathy51@example.net            | 198-372-2063x734     | 2018-03-04 18:19:42 | 2003-04-04 10:05:49 |
# |  64 | Xander      | Rohan        | jennyfer12@example.org         | (502)523-0119x978    | 1996-04-10 15:56:16 | 1996-09-10 22:34:29 |
# |  65 | Jovan       | Gutmann      | mcormier@example.net           | +52(8)7659167093     | 1973-11-15 22:40:21 | 2000-09-15 02:52:04 |
# |  66 | Martina     | Goyette      | collins.braden@example.org     | (129)922-6915        | 1984-02-11 12:43:41 | 1980-05-28 05:51:19 |
# |  67 | Carmelo     | Abbott       | kharvey@example.net            | +15(0)8962282809     | 2006-05-07 22:41:59 | 2015-05-06 01:15:48 |
# |  68 | Rosamond    | Armstrong    | annette73@example.net          | 705.862.9702x319     | 2011-01-11 13:49:02 | 1972-11-06 06:30:03 |
# |  69 | Esta        | Roberts      | prohaska.rahsaan@example.org   | 505-288-8750x3566    | 1983-10-09 23:05:36 | 2009-02-03 12:14:32 |
# |  70 | Garth       | Lemke        | shaun52@example.net            | 455.061.5814         | 2016-01-10 09:51:26 | 1972-03-30 23:48:33 |
# |  71 | Elbert      | Hickle       | abraham.rippin@example.org     | 225-832-2877x5850    | 2017-09-30 23:52:53 | 1992-01-09 11:15:43 |
# |  72 | Gussie      | Hudson       | khyatt@example.net             | (204)812-2461x5021   | 1972-07-06 10:18:56 | 2003-09-15 00:38:26 |
# |  73 | Mina        | Hoppe        | xbrown@example.com             | 517.095.4710         | 2008-08-07 10:31:09 | 1970-12-08 20:22:23 |
# |  74 | Daphnee     | Quitzon      | salvador.ortiz@example.com     | 1-096-946-7119x657   | 1972-11-16 14:39:50 | 2008-08-20 18:26:21 |
# |  75 | Damion      | Jones        | abner55@example.com            | 1-025-682-0173x303   | 1983-08-15 00:08:29 | 1989-01-25 03:56:01 |
# |  76 | Marguerite  | Hintz        | dorcas.mcdermott@example.com   | 1-740-335-4955x4083  | 1997-04-07 01:31:13 | 2004-05-27 16:51:08 |
# |  77 | Darius      | Funk         | willie.smith@example.net       | 709-290-3246         | 1972-07-28 21:21:03 | 1988-11-03 11:29:29 |
# |  78 | Jake        | Schinner     | ivy92@example.net              | 02302959425          | 2020-03-09 18:28:17 | 2003-01-18 07:17:11 |
# |  79 | Emerson     | Turcotte     | ferry.destin@example.net       | 366.449.2663         | 2010-11-14 22:27:08 | 1974-10-24 20:12:48 |
# |  80 | Otha        | King         | jessika24@example.com          | 814-213-0565         | 2018-07-04 01:35:46 | 1972-05-06 10:41:52 |
# |  81 | Maegan      | Marvin       | kovacek.william@example.net    | 1-371-470-9686x19588 | 2008-04-29 08:47:15 | 2016-01-16 23:29:11 |
# |  82 | Arvilla     | Kerluke      | cecelia.mertz@example.org      | (566)448-8122x00595  | 1986-04-06 00:05:27 | 2013-09-15 23:51:11 |
# |  83 | Kaylie      | Mann         | qlowe@example.com              | 1-955-245-6883x7065  | 2006-10-25 23:56:25 | 1983-07-20 17:04:07 |
# |  84 | Charles     | Wiza         | mosciski.halie@example.net     | 358.885.9674x701     | 2010-10-28 06:16:18 | 2008-02-14 09:28:16 |
# |  85 | Dahlia      | O'Hara       | lowe.sabryna@example.com       | 684-659-9875         | 1982-06-30 10:21:58 | 1985-09-07 23:55:56 |
# |  86 | Bernita     | Goodwin      | will.liliana@example.org       | 08702666355          | 1983-04-03 06:51:37 | 1989-10-10 14:25:44 |
# |  87 | Larue       | Greenholt    | nedra71@example.net            | +46(2)1416558229     | 1971-12-10 12:08:48 | 2017-01-25 08:18:19 |
# |  88 | Braulio     | Kunde        | haley51@example.org            | (970)185-3533x57464  | 1970-12-01 01:01:41 | 1992-01-19 03:46:37 |
# |  89 | Alta        | Batz         | konopelski.lenore@example.com  | 1-602-448-5430x122   | 1991-06-08 20:55:07 | 2019-01-17 16:23:35 |
# |  90 | Rashad      | Gleichner    | xdooley@example.org            | +74(3)8084614905     | 1986-10-27 00:29:01 | 1982-01-13 12:22:10 |
# |  91 | Olaf        | Kuhn         | christy83@example.com          | (549)924-7711x009    | 1995-08-20 21:49:48 | 2011-03-26 20:23:53 |
# |  92 | Estelle     | Ryan         | mcclure.brad@example.org       | 671.361.2238x427     | 2019-10-03 08:55:20 | 1984-09-10 13:57:43 |
# |  93 | Jude        | Heaney       | liza70@example.org             | 1-218-786-0140       | 1976-05-27 03:44:04 | 1989-02-17 14:44:59 |
# |  94 | Adella      | Schumm       | senger.brayan@example.net      | 819-852-4148x7059    | 1979-09-25 19:07:47 | 1984-07-18 20:51:29 |
# |  95 | Vince       | Cummings     | addie.o'hara@example.net       | 01461559584          | 1997-01-21 14:23:18 | 1982-03-04 18:46:33 |
# |  96 | Judah       | Crona        | rwyman@example.net             | 968-731-2105x6586    | 2013-03-17 04:27:03 | 1988-04-10 20:19:23 |
# |  97 | Stuart      | Schoen       | hanna95@example.com            | 1-278-372-7233x0208  | 1995-04-16 20:47:56 | 2009-05-02 07:21:27 |
# |  98 | Dejuan      | West         | vrogahn@example.com            | 1-134-353-6982x04086 | 1979-02-09 03:47:29 | 2018-10-23 21:23:10 |
# |  99 | Cindy       | Barton       | retha33@example.com            | 05772114463          | 2015-04-27 03:08:05 | 1980-09-10 16:02:13 |
# | 100 | Hilton      | Zulauf       | larson.eldred@example.net      | (150)309-1764        | 2000-11-01 04:44:45 | 1988-05-09 20:24:30 |
# +-----+-------------+--------------+--------------------------------+----------------------+---------------------+---------------------+
# 100 rows in set (0.00 sec)