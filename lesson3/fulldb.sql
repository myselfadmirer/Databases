#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'expedita', '1971-08-10 18:43:17', '1985-05-29 02:46:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'asperiores', '1983-07-24 14:02:45', '1996-11-09 09:21:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'quis', '1986-11-24 08:07:19', '2016-01-11 10:56:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'eius', '1975-12-20 07:42:49', '1980-08-13 08:22:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'nisi', '1989-08-02 00:24:24', '1971-07-04 00:20:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'ut', '1984-05-26 18:46:57', '1997-11-25 19:18:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'consequatur', '1994-12-09 20:03:54', '1975-05-12 03:31:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'corporis', '1999-02-02 06:56:26', '2006-02-23 11:16:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'vero', '2010-02-09 14:07:57', '1991-05-19 16:20:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'voluptatum', '1973-08-31 02:12:23', '1989-09-05 23:13:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'et', '2004-06-03 14:06:01', '2004-04-22 20:24:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'ipsum', '2017-09-01 22:57:19', '2001-01-21 06:06:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'quaerat', '1980-08-06 04:47:38', '1988-02-02 09:04:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'at', '1987-10-10 17:31:18', '1986-02-16 17:46:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'mollitia', '1998-11-17 11:27:09', '2003-10-28 16:01:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'officia', '1990-08-05 04:00:56', '2007-07-12 00:17:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'enim', '1995-05-03 17:14:09', '2016-02-03 09:01:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'molestias', '1999-05-05 00:31:27', '1985-02-28 01:00:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'eveniet', '2004-03-25 07:10:38', '2010-01-04 07:44:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'voluptas', '2015-04-03 04:43:23', '2017-05-02 17:57:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'nam', '1977-12-08 10:40:39', '2002-06-04 15:37:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'rem', '2018-06-14 14:04:26', '1982-11-08 19:18:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'neque', '2007-10-04 05:13:15', '1996-10-06 16:14:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'perferendis', '2005-06-08 11:44:49', '2010-01-11 09:38:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'dolor', '1994-12-23 18:16:55', '1995-06-16 00:32:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'delectus', '1992-03-16 01:33:34', '2006-05-12 13:41:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'vitae', '1997-11-01 22:21:35', '1976-03-22 20:29:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'aut', '1989-02-02 13:01:11', '1997-03-30 05:51:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'ratione', '1984-06-26 12:04:12', '2019-06-27 17:15:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'laboriosam', '1972-06-18 00:10:39', '2019-09-13 00:59:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'qui', '1987-02-12 13:37:36', '2007-05-04 17:05:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'quasi', '1983-03-02 02:24:46', '1988-12-06 17:00:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'laudantium', '1987-02-08 23:20:28', '1999-11-07 15:50:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'provident', '2019-05-05 12:43:15', '1994-09-30 21:51:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'assumenda', '1973-12-24 18:38:56', '2003-05-31 09:31:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'rerum', '1996-07-21 18:37:00', '2012-04-07 17:40:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'illum', '2006-06-03 21:53:03', '1977-02-06 04:41:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'ab', '1973-11-12 22:52:45', '1982-07-11 15:00:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'iste', '1998-12-08 18:02:01', '2000-05-02 00:00:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'nihil', '1970-03-14 22:28:05', '1979-03-13 09:54:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'beatae', '1973-03-19 22:45:36', '1977-03-01 22:41:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'dolorem', '2005-03-29 13:40:55', '1987-07-13 09:54:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'magni', '1989-08-21 08:28:22', '1973-08-03 18:01:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'voluptatem', '1973-02-15 14:59:44', '2002-05-05 17:54:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'est', '2010-09-12 10:24:01', '2002-03-18 21:01:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'tempora', '2009-06-20 17:41:19', '1980-04-23 17:34:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'incidunt', '2015-09-28 12:20:00', '1973-09-27 17:35:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'unde', '1990-04-12 09:52:54', '2011-06-04 01:05:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'amet', '1979-02-21 13:47:03', '1991-04-23 15:14:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'eos', '1974-05-23 10:46:02', '1992-11-20 07:35:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'numquam', '2003-06-23 23:57:33', '1997-04-02 23:44:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'vel', '1983-10-26 13:04:38', '1974-05-13 11:56:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'autem', '1985-04-17 21:46:15', '2003-12-19 06:36:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'blanditiis', '2009-11-23 18:28:13', '1980-12-18 13:56:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'harum', '2014-08-23 07:48:12', '1986-05-08 04:15:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'quisquam', '2014-10-02 03:27:59', '1998-06-25 20:53:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'veniam', '2015-04-19 22:55:00', '1991-03-23 15:12:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'quia', '2010-04-30 12:45:04', '1996-12-19 01:49:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'temporibus', '2000-11-02 20:10:32', '1988-03-17 08:08:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'sed', '1974-04-27 02:31:35', '1995-08-14 12:26:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'illo', '2003-12-31 00:56:34', '1995-03-25 13:09:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'ullam', '1989-06-25 14:25:54', '1970-08-29 14:51:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'suscipit', '2013-07-08 00:18:57', '1999-09-04 15:29:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'omnis', '1999-04-05 03:23:17', '1995-01-27 05:40:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'labore', '1987-09-24 08:09:36', '2011-04-01 03:13:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'esse', '1989-01-15 14:46:00', '1994-04-01 09:53:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'quibusdam', '2020-03-31 00:13:08', '1986-03-04 06:16:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'ducimus', '1972-10-14 06:37:44', '1991-05-26 16:26:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'id', '1996-08-01 02:26:41', '2003-08-04 01:32:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'nesciunt', '1990-07-24 00:58:46', '2006-07-08 21:32:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'quas', '1994-04-17 15:55:16', '1991-03-14 03:42:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'sint', '2007-12-08 23:45:41', '1995-07-31 18:35:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'quo', '1976-09-14 03:45:01', '2013-09-29 13:50:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'aperiam', '1987-03-03 00:38:59', '1978-12-17 07:38:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'maxime', '2008-05-26 19:01:58', '2001-05-31 21:05:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'debitis', '1973-12-22 02:34:12', '2014-04-08 22:27:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'itaque', '1988-10-18 08:06:08', '1986-06-08 13:49:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'distinctio', '1999-07-17 06:30:08', '2006-04-18 23:59:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'ea', '2008-06-02 12:53:13', '1991-08-15 00:12:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'repellat', '1988-11-12 19:26:56', '1999-08-03 01:23:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'commodi', '1996-02-15 09:56:35', '1985-07-10 01:44:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'accusantium', '1980-04-06 14:07:33', '2019-08-07 12:12:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'sunt', '1993-05-09 13:34:45', '1998-03-11 11:58:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'explicabo', '1975-01-05 09:35:06', '2010-08-02 14:20:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'atque', '2006-12-07 01:18:02', '2016-06-06 23:20:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'non', '1980-07-29 12:15:43', '1982-11-07 00:24:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'consectetur', '1997-03-18 17:42:43', '1970-01-21 13:41:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'magnam', '2019-08-23 09:40:27', '2017-06-04 16:30:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'voluptate', '1992-11-16 11:36:07', '1987-05-27 20:42:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'necessitatibus', '2009-03-02 20:31:43', '1971-12-31 21:13:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'cumque', '2019-06-27 18:26:09', '1994-03-09 07:15:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'minima', '2016-06-26 15:10:40', '2009-11-12 08:16:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'facilis', '2008-09-27 23:02:39', '1997-02-20 11:31:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'sequi', '1972-06-25 07:59:01', '2018-11-21 19:37:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'reprehenderit', '1978-06-29 10:47:52', '2003-01-19 20:45:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'odit', '1980-08-28 10:00:58', '1977-05-26 14:00:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'dolores', '2015-02-03 10:15:12', '2001-04-13 18:06:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'deserunt', '2003-02-23 19:35:34', '1977-12-25 06:49:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'corrupti', '2001-06-12 14:29:34', '1970-07-26 08:42:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'voluptates', '2016-01-19 16:32:13', '2015-03-22 06:49:59');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2002-09-30 21:11:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1990-03-28 05:11:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1987-10-08 17:05:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1999-02-10 00:13:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '1977-01-30 00:44:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2011-07-12 18:21:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1984-04-12 03:06:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2019-07-04 20:22:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1979-03-12 02:38:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1972-03-17 19:27:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '1995-04-21 03:32:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '1982-06-17 15:11:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '1994-04-17 15:19:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2018-08-27 01:45:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2011-05-04 22:36:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1996-05-29 19:56:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2000-05-21 03:20:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1983-03-12 01:29:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2010-04-27 01:38:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2004-06-28 08:31:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '1985-03-29 23:15:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '1973-07-13 15:55:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '1985-09-06 14:44:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '2004-09-09 00:50:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1997-11-08 13:05:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2014-04-14 19:13:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2013-01-10 13:14:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '2013-12-01 22:45:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '1982-04-19 03:05:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '1996-02-04 07:40:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '1971-04-18 05:40:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '1995-01-23 18:42:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '1987-05-20 13:24:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '1970-08-21 11:07:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '1994-11-28 16:09:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '2010-03-07 01:19:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '1992-03-10 15:33:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '1977-10-24 03:53:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2003-05-25 19:08:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '1995-07-28 16:29:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2010-12-07 02:39:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '1998-08-09 10:01:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '1991-05-18 02:48:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '1985-02-10 11:59:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '2011-12-08 05:50:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2009-01-09 13:40:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '1989-08-08 14:40:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '1987-09-06 02:39:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '1991-10-24 13:38:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '2018-06-25 15:35:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '1974-05-27 04:23:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '1992-04-14 04:36:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '2018-01-17 04:29:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '2002-02-25 11:58:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '2011-10-13 20:17:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '1990-02-17 23:53:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '1990-11-16 08:43:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '2020-02-18 21:06:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '1996-09-05 17:39:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1973-05-19 03:36:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '1977-07-11 13:52:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '2015-08-08 08:23:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '2006-04-28 10:56:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '1992-10-30 10:21:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '1979-05-01 14:42:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '1988-06-11 06:52:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '1988-07-04 16:20:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2017-12-08 01:50:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '1988-04-06 08:57:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '2012-06-07 00:31:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '2004-11-08 22:14:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '1992-08-20 09:13:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '1976-10-19 08:27:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '1970-04-27 13:50:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '1997-12-30 09:11:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '2002-12-11 01:09:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '2013-05-13 07:49:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2008-08-20 10:18:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '1971-05-25 12:24:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '2001-03-31 04:26:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1977-01-09 08:23:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '1978-11-21 07:11:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '2006-11-10 10:05:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '1975-11-02 11:29:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '1996-08-26 21:39:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '2017-02-10 17:29:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '1982-10-16 11:09:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '2016-12-21 03:05:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '1982-11-16 05:15:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1997-04-29 04:07:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '1973-04-17 18:14:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1991-11-29 00:37:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '1973-05-20 00:49:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1986-09-27 02:43:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '1973-08-25 12:41:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '2012-07-09 18:41:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '2015-11-03 13:52:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '2009-10-19 19:12:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '1983-09-14 04:02:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '2001-10-19 12:16:54');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 101, '2015-07-09 07:14:01', '1971-07-11 13:48:46', '2019-09-19 15:28:02', '2011-02-04 03:05:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 103, '2000-02-22 09:34:54', '1976-12-07 15:58:46', '1999-11-17 13:36:02', '1985-11-05 05:01:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 101, '1976-07-16 08:44:50', '1983-05-07 14:37:48', '1999-04-17 01:36:46', '2009-08-02 17:43:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 103, '1974-07-18 11:44:42', '1993-08-14 21:47:38', '2014-12-02 22:36:44', '1999-01-08 19:52:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 101, '1989-12-09 08:36:35', '1974-07-20 11:42:51', '1988-01-07 06:31:47', '1997-06-28 19:52:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 103, '1986-09-21 08:56:37', '2005-05-13 17:06:45', '1986-07-13 18:39:20', '1999-05-22 07:21:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 101, '2004-08-07 22:57:03', '1987-07-22 05:08:59', '1982-04-15 17:09:12', '1974-12-07 14:12:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 103, '1997-10-06 16:51:38', '2017-07-09 13:04:13', '2000-07-08 22:16:33', '2003-06-26 01:59:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 101, '1997-03-29 23:34:28', '2006-03-13 08:34:32', '1972-11-18 03:46:30', '1987-02-17 06:32:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 103, '2017-08-05 09:53:38', '2007-07-14 08:52:15', '2019-01-28 09:17:16', '1970-09-26 15:05:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 101, '2015-06-19 13:15:37', '2019-09-01 02:06:14', '2011-02-08 23:58:10', '1992-09-29 21:53:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 103, '2018-03-21 13:14:53', '2015-12-30 08:35:31', '1979-01-31 13:34:56', '2003-01-22 15:00:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 101, '1990-02-18 10:34:11', '2003-05-16 23:31:38', '1970-01-23 09:02:01', '1986-10-09 02:02:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 103, '1978-12-11 05:43:17', '1991-02-06 11:46:59', '1982-02-01 21:01:49', '1978-09-21 19:21:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 101, '2004-08-30 23:25:36', '1976-01-31 10:01:26', '1989-09-28 02:00:46', '2007-10-05 18:01:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 103, '2016-04-21 18:55:03', '2000-10-28 23:29:56', '2011-05-18 01:14:20', '1978-12-26 17:59:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 101, '1994-11-16 12:51:20', '2007-06-30 13:27:29', '1971-09-18 11:33:49', '1974-04-23 09:20:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 103, '2003-04-18 15:43:39', '1982-11-05 21:32:33', '1974-09-10 01:43:57', '2010-09-05 19:56:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 101, '1980-07-19 21:29:00', '1997-06-24 22:35:41', '2015-07-31 09:52:43', '1996-11-04 00:19:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 103, '2012-06-24 13:35:02', '2019-01-06 19:11:59', '1991-04-16 00:56:21', '1977-04-08 12:58:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 101, '1972-10-22 16:26:09', '1970-05-24 20:30:19', '1973-01-06 06:24:04', '2018-06-30 08:21:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 103, '1996-09-04 15:35:41', '1990-05-01 12:31:05', '1985-05-09 13:45:54', '2006-11-16 07:17:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 101, '1973-05-03 01:21:18', '2004-07-08 18:47:53', '1991-11-06 04:26:21', '1991-06-21 01:44:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 103, '1998-08-24 02:37:57', '1975-11-01 17:55:16', '2001-01-12 16:08:56', '1975-11-18 04:17:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 101, '2006-09-09 09:42:49', '1996-05-28 06:15:00', '2001-07-03 18:28:59', '2006-06-07 18:49:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 103, '1979-04-04 18:52:06', '2009-12-22 02:36:09', '2009-06-27 19:09:02', '1993-05-20 05:59:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 101, '2016-01-09 10:38:23', '2019-12-22 21:05:45', '1980-03-16 05:12:23', '1982-02-09 01:45:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 103, '2016-12-15 06:23:33', '2016-06-01 11:31:31', '1973-07-20 03:44:10', '1979-07-28 12:57:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 101, '1987-11-10 07:04:19', '2012-09-04 04:28:25', '1982-05-08 13:28:04', '2002-08-30 15:15:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 103, '1977-04-26 14:26:04', '1997-02-16 02:23:24', '1991-05-14 17:49:03', '1989-12-31 02:52:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 101, '1986-05-11 01:02:42', '2006-02-20 10:27:13', '1993-04-05 01:18:36', '2003-02-03 20:06:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 103, '1986-11-15 05:00:24', '1984-03-16 07:40:18', '2018-03-23 08:26:06', '2001-11-14 18:14:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 101, '1998-01-05 19:34:49', '1977-11-08 19:38:29', '2008-09-13 20:40:28', '1985-10-25 09:49:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 103, '2001-01-08 05:30:36', '1976-01-18 09:08:17', '2016-01-29 06:09:04', '2015-01-12 01:11:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 101, '2010-08-17 05:28:31', '1979-05-09 15:03:59', '1970-10-19 04:26:37', '1979-12-21 20:46:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 103, '2001-02-19 20:41:57', '1974-09-20 19:13:14', '2018-08-17 05:55:54', '1997-08-03 04:11:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 101, '1978-04-22 16:36:06', '1974-10-05 20:34:52', '1986-02-23 06:52:19', '1992-01-30 21:46:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 103, '1978-11-20 14:52:58', '2014-09-20 02:02:31', '1984-11-26 21:10:41', '1992-10-20 21:27:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 101, '2000-09-18 07:23:56', '2017-08-15 13:12:58', '1993-11-16 16:34:26', '1990-12-26 18:13:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 103, '1992-02-01 01:21:34', '2020-05-30 13:43:08', '2010-03-17 23:43:34', '2000-11-04 02:53:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 101, '1984-05-28 23:19:10', '2006-01-12 19:40:03', '1977-10-02 04:20:45', '1985-01-05 17:17:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 103, '1980-02-08 13:20:30', '2005-05-31 18:58:36', '2003-10-01 00:38:04', '1980-02-01 09:34:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 101, '2012-01-26 17:44:57', '1989-12-06 06:32:21', '1990-04-21 12:35:26', '2010-09-11 22:08:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 103, '1989-03-28 14:46:39', '1994-03-15 07:56:36', '1980-08-06 22:54:53', '2014-07-08 18:53:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 101, '1976-03-17 19:28:43', '2017-06-12 14:50:19', '1992-10-22 04:23:44', '2012-12-03 00:26:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 103, '1989-11-27 16:03:53', '2002-10-08 10:12:01', '2001-03-28 14:47:35', '1971-10-19 14:26:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 101, '2009-09-27 14:43:26', '1971-10-23 16:47:49', '1980-02-01 09:47:49', '1980-08-30 08:35:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 103, '1992-07-06 03:15:11', '1999-10-07 19:07:40', '1989-08-23 03:56:39', '1988-11-16 15:40:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 101, '2004-09-10 11:00:45', '2010-01-15 07:02:58', '1987-01-12 08:27:21', '1996-04-20 08:47:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 103, '2008-11-25 12:41:36', '1989-07-03 08:47:21', '1975-12-18 02:21:28', '2011-11-28 19:08:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 101, '2012-02-13 23:26:12', '2002-02-04 22:21:56', '1994-05-17 00:45:34', '2001-02-01 13:48:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 103, '1989-06-20 16:51:16', '2006-11-20 19:00:14', '1996-02-27 07:24:09', '2018-11-27 13:05:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 101, '2020-05-18 00:41:49', '2017-09-05 01:09:37', '2003-09-01 13:54:39', '1988-06-19 11:31:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 103, '1998-03-08 01:34:23', '2011-03-29 08:12:47', '1976-07-24 03:47:33', '2005-12-24 15:56:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 101, '1999-06-12 16:34:36', '2008-03-20 04:50:40', '1988-08-21 00:10:49', '1980-07-24 22:02:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 103, '1984-10-13 20:47:11', '2009-09-13 06:04:37', '1975-12-26 22:09:32', '2000-05-20 04:48:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 101, '2010-01-01 11:15:02', '1998-02-01 00:23:18', '1977-02-15 15:58:03', '2008-08-25 02:42:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 103, '1998-12-27 20:51:20', '1989-06-04 03:03:26', '2000-11-29 01:27:31', '1995-01-26 03:31:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 101, '1975-08-29 03:16:56', '1993-05-09 00:42:28', '1980-08-14 10:30:56', '1980-12-12 07:03:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 103, '1974-09-09 10:28:04', '1974-05-04 13:51:09', '1981-12-12 08:34:51', '2010-04-20 14:20:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 101, '1986-03-12 15:14:44', '1985-01-18 23:10:41', '1976-01-24 21:34:02', '1987-08-21 03:41:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 103, '1984-07-04 23:35:14', '1983-10-11 23:00:39', '2012-12-16 16:02:54', '2016-02-08 08:48:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 101, '1972-11-08 11:34:53', '1999-10-06 11:29:53', '1972-11-30 09:13:49', '1997-09-18 16:47:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 103, '1984-03-22 20:29:51', '1980-05-20 21:48:43', '1995-02-28 02:57:01', '1980-07-22 20:12:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 101, '1974-08-10 13:44:43', '1974-04-11 17:51:24', '1985-04-24 02:59:58', '1971-01-29 04:05:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 103, '1981-03-05 07:41:09', '1986-07-22 16:30:08', '2012-01-07 22:52:07', '1999-12-17 22:40:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 101, '1972-09-19 11:47:11', '1988-04-11 12:03:32', '2008-01-17 19:00:39', '2004-03-09 00:24:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 103, '1998-01-18 23:17:08', '1997-03-31 01:50:50', '1975-06-20 00:25:14', '2008-09-30 21:34:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 101, '1979-10-24 17:24:47', '2010-09-26 12:35:34', '1991-07-10 03:56:21', '1977-02-10 16:18:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 103, '2002-12-08 18:30:27', '2005-07-19 11:57:53', '2011-06-11 21:25:25', '1971-01-15 23:56:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 101, '2003-05-02 05:57:43', '1995-04-22 11:15:08', '2002-10-12 00:17:44', '1995-01-04 10:24:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 103, '1985-03-22 05:32:27', '1980-07-10 03:54:40', '1970-10-02 23:02:28', '2019-08-27 20:01:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 101, '1973-12-09 01:53:10', '1991-09-19 13:32:52', '1980-12-25 01:52:02', '1992-02-11 21:56:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 103, '2018-11-02 13:32:18', '1972-09-15 22:04:04', '2000-03-04 03:17:12', '2013-10-27 21:29:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 101, '1989-01-16 00:36:15', '2003-02-23 00:39:24', '2002-09-29 21:46:46', '2009-11-28 23:15:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 103, '1987-05-01 10:02:22', '2000-04-07 02:09:44', '1986-05-21 05:10:02', '1976-02-13 08:53:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 101, '2004-06-15 11:25:18', '2017-01-31 00:01:21', '1991-05-27 07:59:55', '2015-11-15 10:17:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 103, '2004-05-29 05:03:09', '1978-04-06 14:13:04', '2011-04-07 13:13:27', '2007-11-23 03:55:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 101, '1995-03-04 04:00:08', '2013-09-30 11:39:18', '2016-06-08 08:21:27', '2019-03-14 13:37:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 103, '2001-01-03 06:48:15', '1970-09-23 01:57:57', '2000-08-06 09:50:38', '2018-07-09 22:12:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 101, '1989-12-03 15:25:39', '1986-11-09 00:21:24', '2018-12-08 00:25:53', '1970-06-21 02:30:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 103, '2002-06-12 23:33:36', '2018-01-27 04:06:36', '2009-05-10 19:29:32', '2003-12-22 15:09:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 101, '2017-02-15 23:17:25', '2005-05-17 15:59:00', '2014-01-01 00:14:14', '1995-11-29 08:16:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 103, '1986-05-24 06:53:43', '1971-07-30 14:49:29', '2006-03-05 14:40:00', '2010-05-12 05:53:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 101, '1970-05-06 06:28:44', '1999-02-08 00:51:28', '1997-04-29 04:40:56', '2011-07-28 13:58:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 103, '2009-04-19 07:39:53', '2001-12-28 05:22:26', '2015-07-06 21:16:14', '1971-11-13 09:28:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 101, '2016-11-17 07:44:05', '1998-10-21 00:15:27', '1987-03-02 17:49:35', '1993-09-27 06:19:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 103, '1983-09-19 14:52:41', '2019-04-30 05:42:21', '2013-07-02 14:30:54', '1980-11-01 04:11:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 101, '1994-09-10 02:12:44', '2015-05-13 05:59:01', '1987-03-06 17:59:29', '2008-08-29 18:03:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 103, '1980-06-24 17:57:21', '1989-01-02 02:40:50', '1971-01-25 23:05:30', '1979-07-11 15:38:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 101, '1973-11-01 03:27:37', '2016-03-03 23:01:42', '2006-12-16 03:52:22', '2015-01-24 03:53:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 103, '1985-03-04 15:14:24', '1996-06-07 04:45:27', '1991-03-19 03:33:09', '1995-09-26 16:13:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 101, '1979-12-20 10:08:17', '1997-09-30 21:54:58', '1988-10-10 20:19:43', '1974-09-12 22:28:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 103, '1997-12-02 08:46:45', '1990-07-09 15:09:19', '1979-04-06 03:48:08', '1979-03-10 13:38:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 101, '1974-08-13 13:44:46', '1988-01-21 20:20:37', '1998-10-26 03:47:05', '1995-05-05 21:26:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 103, '1997-12-04 03:03:06', '1970-12-31 14:21:30', '1971-06-09 15:36:11', '1977-10-23 14:20:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 101, '1972-12-15 03:38:46', '2012-08-12 14:26:12', '1973-09-12 20:18:59', '2002-01-15 11:27:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 103, '2006-11-26 17:14:34', '1983-06-26 10:32:27', '2004-02-25 16:44:37', '1973-09-24 18:08:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 101, '2003-12-08 19:44:10', '1977-03-24 06:50:33', '2013-09-26 18:37:47', '2018-07-01 19:19:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 103, '1977-02-22 21:33:33', '1995-10-29 02:35:15', '1976-10-28 06:01:12', '2019-06-02 21:41:19');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, 'friends', '1974-08-13 06:17:09', '1982-12-04 17:09:58');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (103, 'requested', '2012-09-04 15:56:50', '1983-01-30 03:07:55');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'ea', 47, NULL, 101, '2015-08-09 05:52:14', '2015-04-27 05:33:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'debitis', 491, NULL, 102, '1980-12-16 13:50:39', '1985-02-04 21:34:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'quisquam', 630471594, NULL, 101, '2002-04-05 00:00:05', '1990-09-15 04:21:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'eos', 31206461, NULL, 102, '1975-05-24 18:05:27', '2007-06-08 11:31:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'hic', 2729, NULL, 101, '2002-09-24 23:52:38', '1994-11-02 20:16:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'dolorem', 298021139, NULL, 102, '1986-12-02 19:46:31', '2003-04-05 13:15:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'facere', 0, NULL, 101, '1975-03-10 19:47:04', '1980-01-11 20:26:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'at', 2409518, NULL, 102, '2007-07-23 13:42:52', '1999-03-06 17:09:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'dolores', 393720128, NULL, 101, '1995-07-20 20:37:55', '2004-11-11 13:55:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'aut', 3348, NULL, 102, '1998-09-15 01:23:21', '1978-06-11 02:56:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'distinctio', 61655, NULL, 101, '1994-11-03 01:20:06', '2005-11-08 02:08:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'aut', 640, NULL, 102, '2015-08-07 10:30:13', '1991-01-01 18:14:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'quas', 428262951, NULL, 101, '2007-03-05 14:35:47', '1983-10-28 16:07:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'quos', 961310, NULL, 102, '2001-10-09 22:04:44', '1978-04-18 15:16:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'consequatur', 69044322, NULL, 101, '1974-03-02 06:55:07', '2018-10-24 19:14:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'rem', 574949, NULL, 102, '1996-01-24 11:44:11', '1974-06-01 07:39:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'nam', 5632610, NULL, 101, '1990-01-12 03:07:31', '1971-01-27 19:55:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'quasi', 26279728, NULL, 102, '1985-06-14 23:26:55', '1975-06-25 06:54:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'reprehenderit', 2965, NULL, 101, '2005-03-05 15:13:40', '1992-09-10 16:33:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'eveniet', 22592, NULL, 102, '1991-01-27 09:27:53', '2012-07-08 04:25:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'ipsum', 958093422, NULL, 101, '1985-04-15 16:20:20', '1971-01-25 12:14:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'est', 2620018, NULL, 102, '2019-10-08 01:35:06', '1983-12-17 09:51:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'at', 4584869, NULL, 101, '1976-03-10 07:41:56', '2008-05-14 21:10:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'suscipit', 0, NULL, 102, '2002-01-10 03:39:13', '1975-04-09 09:58:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'ut', 95204, NULL, 101, '1980-01-27 09:38:25', '2000-07-26 05:01:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'amet', 564475142, NULL, 102, '1971-09-29 09:05:22', '2012-01-24 05:44:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'fugit', 112257, NULL, 101, '2017-01-14 10:42:38', '1979-11-07 01:49:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'consequatur', 8, NULL, 102, '2013-05-19 21:16:37', '1981-07-02 14:58:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'ut', 7, NULL, 101, '1973-05-21 23:35:09', '2005-12-25 22:55:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'tenetur', 0, NULL, 102, '1987-10-14 17:14:27', '1988-09-13 04:21:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'explicabo', 4948482, NULL, 101, '1998-05-24 23:19:34', '1987-03-22 08:28:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'quo', 127, NULL, 102, '1973-12-23 19:22:17', '1980-03-18 19:00:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'alias', 17, NULL, 101, '1995-08-29 16:12:28', '2002-11-01 23:49:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'dolorum', 2164, NULL, 102, '2013-12-02 20:30:08', '1992-04-30 03:51:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'nobis', 283, NULL, 101, '1994-07-07 14:43:05', '2017-01-04 17:51:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'et', 15053, NULL, 102, '1974-04-08 14:40:04', '1994-03-02 01:57:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'eos', 677, NULL, 101, '2020-05-31 14:37:05', '1980-02-02 22:40:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'non', 995, NULL, 102, '1998-07-07 21:07:06', '2019-11-28 07:59:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'qui', 2203780, NULL, 101, '2002-08-16 06:48:08', '2005-12-30 07:20:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'vel', 0, NULL, 102, '1986-11-30 20:34:27', '2000-05-14 05:52:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'fugiat', 568792, NULL, 101, '1997-05-09 00:40:58', '1986-06-02 13:12:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'quisquam', 0, NULL, 102, '2017-07-23 19:57:05', '1980-05-26 09:16:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'fugit', 4, NULL, 101, '1980-07-02 01:34:35', '1991-01-19 12:20:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'quia', 6194779, NULL, 102, '1989-10-03 01:55:21', '1984-05-01 09:05:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'esse', 68228, NULL, 101, '1975-04-15 15:37:44', '1994-05-30 07:26:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'temporibus', 15, NULL, 102, '1997-09-27 22:37:02', '1970-04-16 12:58:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'quam', 598, NULL, 101, '1989-04-28 13:28:25', '1995-07-21 19:44:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'voluptatem', 419243312, NULL, 102, '1983-03-14 07:37:21', '2003-10-06 03:05:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'ex', 15, NULL, 101, '1980-10-15 21:24:15', '1996-08-12 16:42:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'vel', 811478686, NULL, 102, '2011-06-23 12:22:19', '1996-09-13 15:35:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'sunt', 0, NULL, 101, '2018-03-22 19:35:39', '1994-09-04 14:32:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'sequi', 44983, NULL, 102, '1974-09-26 07:36:42', '1977-06-22 18:58:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'et', 3, NULL, 101, '2010-05-15 08:59:15', '1994-01-16 11:36:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'quasi', 2069211, NULL, 102, '1993-07-18 14:09:21', '2004-04-25 03:31:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'perferendis', 824961, NULL, 101, '1975-08-11 15:10:11', '2001-10-03 22:57:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'rem', 71114433, NULL, 102, '1982-07-03 22:47:13', '1996-06-14 13:15:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'dolorum', 0, NULL, 101, '1996-05-04 04:33:20', '2001-02-14 00:42:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'voluptas', 16, NULL, 102, '1998-11-04 11:21:16', '1997-12-19 16:02:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'facilis', 750465, NULL, 101, '1981-07-02 02:57:59', '1983-12-15 11:13:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'beatae', 832676908, NULL, 102, '1980-07-06 11:33:16', '1972-01-04 03:09:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'est', 956, NULL, 101, '1990-10-25 19:32:26', '2008-03-25 16:26:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'ut', 9, NULL, 102, '1991-09-19 00:59:25', '2017-06-10 19:02:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'culpa', 507507, NULL, 101, '1975-11-03 07:30:02', '2016-06-30 15:06:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'dicta', 96560980, NULL, 102, '2011-01-13 19:39:56', '1983-01-19 05:21:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'animi', 0, NULL, 101, '2010-02-17 03:49:27', '2019-09-27 12:14:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'et', 0, NULL, 102, '2018-08-16 09:03:54', '1983-08-28 09:11:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'aspernatur', 390408, NULL, 101, '2004-08-03 11:07:47', '2007-11-01 10:53:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'perspiciatis', 125613560, NULL, 102, '1977-06-01 08:33:46', '1995-06-25 05:41:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'dolorem', 485, NULL, 101, '1990-10-23 05:46:57', '1970-02-18 04:13:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'labore', 0, NULL, 102, '1979-02-25 08:01:26', '2008-06-15 03:56:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'repudiandae', 32, NULL, 101, '1994-11-03 13:02:36', '2009-07-14 05:15:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'asperiores', 9397453, NULL, 102, '1980-02-02 16:16:03', '1982-06-19 05:19:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'consequatur', 596375189, NULL, 101, '2015-03-29 02:12:38', '1972-07-31 12:57:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'ut', 58, NULL, 102, '2008-06-09 05:58:32', '1999-08-17 14:41:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'eveniet', 2358, NULL, 101, '2011-01-02 20:00:20', '1974-08-01 06:46:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'incidunt', 655648453, NULL, 102, '1993-11-11 10:04:58', '1970-04-19 14:41:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'sequi', 729557, NULL, 101, '1980-04-13 10:43:06', '1997-05-08 20:38:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'accusamus', 88, NULL, 102, '2001-11-29 07:34:50', '1982-03-23 14:00:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'ea', 5, NULL, 101, '1988-10-07 05:29:10', '1987-09-29 18:16:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'ut', 5, NULL, 102, '1987-09-21 21:27:24', '1981-07-26 05:38:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'natus', 740155, NULL, 101, '2004-12-21 02:20:45', '2007-10-10 00:16:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'non', 0, NULL, 102, '1977-02-03 17:09:32', '1972-03-31 14:31:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'odit', 520, NULL, 101, '1992-01-24 09:33:06', '2002-12-27 15:49:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'omnis', 0, NULL, 102, '1991-05-28 18:06:18', '1970-05-11 16:47:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'laborum', 42782, NULL, 101, '1972-11-14 22:30:39', '1974-03-24 08:59:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'aut', 5473307, NULL, 102, '1983-06-04 22:52:20', '1980-08-28 15:17:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'dolor', 91824, NULL, 101, '2011-02-17 06:19:21', '2011-08-25 09:55:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'distinctio', 8, NULL, 102, '1974-11-22 01:45:29', '1989-06-07 00:27:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'sint', 669304, NULL, 101, '1995-11-02 17:19:06', '2016-01-11 19:07:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'facere', 4, NULL, 102, '1973-12-22 03:58:36', '1989-02-13 17:01:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'harum', 9856, NULL, 101, '1998-06-27 07:31:14', '2004-09-02 06:20:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'ut', 934462458, NULL, 102, '2017-05-15 08:16:47', '1995-04-24 21:22:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'quia', 9, NULL, 101, '2008-02-28 04:24:34', '2009-07-12 11:47:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'rerum', 104, NULL, 102, '2001-01-27 01:42:09', '1986-09-04 22:24:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'aut', 393930, NULL, 101, '2002-12-04 16:03:53', '2006-01-29 08:40:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'assumenda', 3170411, NULL, 102, '1996-02-01 08:05:25', '2006-07-21 18:59:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'velit', 0, NULL, 101, '1998-09-19 14:26:18', '1987-04-27 20:03:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'sunt', 172933, NULL, 102, '1972-12-31 15:50:31', '2002-09-11 18:17:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'rerum', 6180, NULL, 101, '1984-11-01 06:28:33', '1976-10-23 17:28:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'repudiandae', 27560, NULL, 102, '2001-10-20 17:38:43', '1993-03-13 21:37:35');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, 'video', '2009-12-20 08:54:19', '2016-10-14 07:56:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (102, 'audio', '1980-05-26 18:27:51', '1990-11-25 22:27:10');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 5, 'Unde maiores vitae dolorem dolores.', 1, 1, '1982-06-10 00:25:16', '1990-10-12 08:06:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 12, 'Nostrum iusto qui asperiores.', 1, 0, '2018-09-24 20:21:35', '1983-07-18 23:23:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 69, 'Sapiente qui vitae sapiente dolor qui dolorem.', 0, 0, '1973-12-15 14:36:30', '2014-02-27 22:32:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 81, 'Aut aut quia repellat natus consequatur debitis eligendi.', 0, 1, '1984-01-12 19:24:42', '1987-12-20 10:57:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 8, 'Rerum similique ut unde qui.', 1, 1, '2019-05-28 01:50:20', '1972-12-02 12:34:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 99, 'Et dolorum ad consequatur tenetur eos minima et.', 1, 1, '2012-11-21 07:06:43', '1970-10-31 20:23:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 36, 'Sed magni alias rem unde rerum accusantium.', 1, 0, '1997-08-26 23:29:41', '1984-04-22 20:18:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 90, 'Ullam voluptas et voluptas soluta accusamus velit.', 1, 1, '2003-08-27 06:12:54', '2010-07-29 05:56:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 64, 'Facilis voluptatem sunt molestiae rerum adipisci libero.', 0, 0, '2005-01-13 23:35:13', '1995-04-30 03:54:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 76, 'Iusto libero nostrum dignissimos corrupti laboriosam id et sed.', 1, 0, '2014-07-29 05:05:46', '1993-07-18 09:45:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 92, 'Perferendis dolorem debitis perferendis necessitatibus incidunt ab eum adipisci.', 0, 0, '2005-01-08 21:15:54', '1981-05-08 18:32:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 92, 'Aut impedit delectus expedita ut rem non a officiis.', 1, 1, '1982-10-28 11:46:16', '1996-01-06 07:44:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 85, 'Possimus nulla sint molestias nesciunt officia perferendis.', 0, 1, '1979-08-22 07:17:30', '2018-10-11 02:22:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 41, 'Aut odio rerum corrupti perferendis et sed.', 1, 1, '1984-04-19 18:30:52', '1998-01-30 15:46:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 57, 'Maxime dolorum voluptas quia ad ipsum deserunt id qui.', 0, 1, '2006-06-30 04:14:56', '1972-09-27 13:24:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 80, 'Odio sed doloremque dolore tenetur officia error sunt.', 1, 0, '2017-01-16 04:42:28', '2002-02-27 08:55:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 9, 'Tempore officiis magnam quibusdam eaque.', 1, 0, '1999-03-10 14:36:26', '1978-01-07 07:55:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 55, 'Odit voluptas quasi doloribus non quia quod at iste.', 0, 1, '2018-10-19 17:34:04', '1970-10-30 17:44:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 31, 'Enim est maiores cum ut.', 1, 1, '1988-08-05 21:36:02', '2008-02-10 02:12:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 97, 'Nihil eos at voluptates molestiae sit architecto sed quis.', 1, 0, '2017-06-13 21:30:08', '1999-11-19 01:08:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 59, 'Quo dolores soluta dolor et nam.', 0, 1, '1980-04-18 08:58:56', '2008-02-08 15:18:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 14, 'Natus quas animi iure in dolore consectetur.', 1, 0, '2011-01-03 20:20:38', '1974-12-13 16:25:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 8, 'Libero quae sint laboriosam qui non aspernatur eum.', 1, 1, '2010-03-28 23:20:00', '1980-09-18 15:03:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 90, 'Laboriosam iste laboriosam qui magni veniam aperiam.', 0, 1, '2007-11-18 16:24:30', '2012-06-04 12:45:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 73, 'Itaque porro voluptas ut quam autem.', 0, 1, '1987-01-24 07:23:46', '1995-02-25 17:47:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 69, 'Earum quia quaerat nihil praesentium in aperiam.', 0, 0, '2014-07-18 04:57:38', '2001-05-25 17:23:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 6, 'Et vitae est aut nulla qui.', 0, 1, '2006-01-08 01:10:43', '2018-08-21 23:07:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 13, 'Soluta velit ducimus sint quia.', 1, 1, '1980-07-15 10:14:16', '2014-02-10 17:20:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 69, 'Amet laboriosam nihil sunt repudiandae.', 1, 1, '2000-02-20 21:54:28', '1980-12-16 02:29:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 35, 'Provident omnis aperiam eligendi fuga nam dolorum molestias.', 1, 0, '1990-10-22 23:14:08', '1973-06-08 18:25:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 30, 'Rerum consequuntur ad iure quis.', 1, 1, '2010-11-16 18:49:45', '2007-04-05 23:16:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 73, 'Ad architecto maxime magni fugit facilis.', 1, 0, '1987-12-14 01:09:46', '2017-04-21 05:18:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 46, 'Iste quibusdam perferendis perferendis quae sint temporibus natus.', 1, 1, '2009-02-08 19:25:41', '2005-08-26 19:50:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 98, 'Ipsam asperiores sit inventore eveniet.', 0, 1, '1981-06-21 14:24:14', '2003-07-20 06:31:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 53, 'Est aut ipsa et ut sed.', 1, 1, '1971-10-17 04:37:13', '1995-07-31 14:50:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 54, 'Atque debitis dicta ipsa ducimus.', 1, 1, '2003-01-23 16:03:11', '2012-08-15 20:15:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 97, 'Voluptas beatae ipsam nesciunt molestiae quaerat repudiandae sed et.', 0, 1, '2016-12-04 09:20:54', '1979-08-23 10:17:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 89, 'Iusto est qui inventore iure dolores vitae.', 1, 0, '2018-02-23 06:05:13', '1971-04-21 03:51:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 44, 'Dicta sed ea nihil vel.', 1, 1, '1996-06-21 06:07:55', '1976-01-15 11:20:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 61, 'Nam recusandae iure voluptatem.', 1, 1, '2007-06-15 21:27:45', '1984-08-12 01:07:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 64, 'Occaecati est eius incidunt nemo maiores eos.', 1, 0, '1980-07-15 18:24:49', '1987-12-28 18:23:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 35, 'Praesentium hic laudantium est recusandae nemo explicabo architecto.', 0, 0, '1980-09-02 14:52:08', '2007-09-20 14:29:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 53, 'Voluptatem sapiente iusto qui sit cupiditate iusto quod.', 0, 0, '2003-06-26 00:03:13', '2007-03-24 20:18:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 48, 'Dolores et magnam debitis sit et voluptatum qui.', 0, 1, '1984-07-07 13:16:10', '1977-06-10 04:45:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 75, 'Exercitationem est eum non quo adipisci.', 0, 1, '1991-12-27 14:59:19', '1973-06-23 20:08:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 9, 'Consequatur vitae neque perferendis accusantium explicabo ipsum.', 0, 0, '1983-09-11 23:06:03', '1999-08-19 11:08:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 27, 'Recusandae in ipsum doloribus sed consectetur et.', 0, 0, '1981-05-30 13:51:50', '1974-01-16 12:01:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 83, 'Omnis maxime sit eum laborum expedita reprehenderit consequuntur odio.', 0, 0, '1985-07-07 12:29:21', '2000-03-03 00:39:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 63, 'Reprehenderit molestiae expedita aut a voluptas saepe delectus.', 0, 0, '1986-08-23 21:51:04', '2014-05-21 21:30:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 58, 'Sint ut quas fugit et.', 1, 0, '2015-03-02 17:22:54', '1976-09-16 18:51:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 80, 'Velit quia quia officia.', 0, 0, '1976-03-05 02:10:57', '2010-02-13 15:25:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 22, 'Ut ipsa cupiditate enim.', 1, 1, '1998-02-24 11:04:25', '1988-03-17 11:05:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 71, 'Numquam labore et suscipit aut.', 0, 0, '1982-03-06 16:20:56', '1995-06-17 17:29:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 87, 'Eaque doloremque veniam maxime numquam enim ipsam.', 1, 1, '2001-09-20 08:35:53', '2013-04-15 02:46:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 11, 'Non aliquam inventore aliquid veniam molestiae placeat recusandae.', 0, 1, '2002-04-24 16:49:19', '2009-05-05 07:31:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 43, 'Ea qui voluptates ipsum animi.', 1, 0, '2020-05-11 08:25:46', '2009-02-21 07:50:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 56, 'Ea consectetur in omnis optio animi ex eveniet.', 0, 1, '1971-07-22 18:02:17', '2015-04-04 19:28:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 17, 'Ut autem quos aut qui aut reprehenderit.', 0, 0, '2004-10-12 15:41:14', '2005-04-15 07:18:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 56, 'Architecto modi officiis et quos doloremque.', 0, 1, '1988-07-31 10:46:25', '2019-12-26 15:24:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 24, 'Qui aperiam tenetur qui amet minima quis magnam.', 1, 0, '1987-09-03 02:17:37', '1976-10-23 01:02:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 51, 'Alias ex corrupti aliquam ea consequatur odio tempora.', 0, 1, '1988-10-14 09:57:46', '1996-06-24 09:32:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 85, 'Dolor quis nostrum tenetur quia.', 1, 0, '1973-06-09 12:51:13', '2020-04-20 07:02:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 97, 'Omnis aspernatur ipsa quod non iure nobis.', 0, 1, '2011-08-30 18:56:54', '1994-06-16 17:48:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 96, 'Quidem voluptates voluptas eos ut dolores.', 1, 0, '1976-01-28 19:41:05', '1973-08-14 14:16:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 83, 'Voluptas sint earum corrupti rerum quam ea.', 0, 0, '1973-12-07 22:15:50', '1990-06-24 10:24:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 50, 'Autem beatae eveniet omnis voluptatem doloribus et eligendi.', 0, 1, '1988-08-08 06:22:04', '2014-09-26 07:21:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 49, 'Itaque aperiam nobis quis sit quo dolore et.', 1, 1, '1973-07-09 10:54:03', '1996-04-07 05:17:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 79, 'Blanditiis nesciunt aut neque inventore ipsam magnam.', 0, 0, '1991-12-15 15:41:45', '1972-02-08 00:01:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 38, 'Et odit perspiciatis incidunt animi nam consequatur et.', 1, 0, '2019-01-17 17:34:37', '2007-06-28 14:13:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 92, 'Quod amet voluptates dignissimos consectetur cupiditate modi fugit.', 1, 1, '1984-04-30 12:13:16', '2007-09-17 15:10:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 39, 'Nostrum distinctio voluptatibus nostrum saepe.', 0, 0, '1988-06-15 07:31:48', '2010-06-17 14:16:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 2, 'Occaecati eos aspernatur repudiandae iure deserunt hic et.', 1, 0, '1979-03-25 16:45:41', '1981-09-15 07:16:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 26, 'Aut a dicta distinctio eligendi.', 1, 0, '2008-04-01 09:17:44', '2010-04-01 22:51:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 92, 'Et laboriosam et repudiandae dolorum.', 0, 0, '1978-02-08 04:04:08', '1984-10-21 06:45:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 49, 'Maiores voluptas ratione autem ea nesciunt ea.', 0, 1, '2011-08-02 18:21:15', '2009-08-25 14:29:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 1, 'Omnis asperiores numquam quisquam id sapiente.', 1, 1, '2010-05-21 04:18:16', '1982-08-31 04:58:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 100, 'Sed velit voluptates quasi quod.', 0, 1, '2013-09-22 01:31:03', '1996-07-23 03:57:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 76, 'Quae dolore quidem id dolorem esse omnis molestiae.', 1, 1, '2008-10-29 18:53:33', '1989-04-04 00:06:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 83, 'Incidunt esse eveniet ipsa doloribus.', 1, 0, '1983-09-20 13:24:33', '2012-12-12 10:53:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 63, 'Dolores est repellendus minus est et atque et a.', 1, 0, '1998-12-04 01:16:56', '2001-03-15 13:40:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 33, 'Minima quia magni provident dicta.', 0, 1, '1988-11-26 18:22:17', '1978-03-27 17:12:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 63, 'Omnis ullam non ipsa doloremque laborum.', 0, 1, '2014-01-05 12:18:17', '1971-04-21 03:11:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 84, 'A et doloremque magnam labore.', 0, 0, '2000-02-10 00:50:12', '2019-12-28 19:01:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 3, 'Ut laudantium molestiae minima.', 0, 1, '1996-08-02 18:14:18', '2013-06-27 01:04:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 50, 'Ab architecto tempore quas sit qui esse ut distinctio.', 0, 1, '1980-04-13 07:27:31', '1994-04-26 02:58:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 95, 'Quia omnis consequatur iure repudiandae ullam sint.', 0, 0, '1992-09-20 01:43:59', '2000-02-17 01:38:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 46, 'Expedita ab ratione tempore at rem.', 0, 0, '1982-07-01 19:32:00', '1986-02-04 18:46:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 6, 'Ipsum ducimus nulla aut autem ut consequuntur sed.', 0, 1, '1995-06-16 09:27:53', '1977-04-08 21:07:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 11, 'Perferendis consequatur quam repudiandae sed tempore.', 1, 1, '1995-06-16 02:14:38', '1999-01-29 18:48:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 1, 'Aut accusantium vel voluptas sit.', 1, 0, '1993-07-05 16:54:02', '2019-09-02 10:06:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 29, 'Aliquam doloribus numquam facilis asperiores eaque.', 1, 1, '1991-08-11 15:42:22', '2013-09-08 04:06:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 61, 'Voluptatem sit optio officia ut dignissimos commodi.', 0, 1, '1994-06-24 04:14:00', '1984-03-26 07:29:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 85, 'Modi repudiandae maxime amet omnis et.', 1, 1, '2016-12-03 03:55:14', '2006-09-19 09:44:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 26, 'Ut atque sit dolore culpa asperiores sequi aliquam.', 0, 0, '1979-03-10 14:52:07', '1973-09-20 12:06:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 57, 'Atque fugit a impedit veritatis.', 0, 0, '2005-11-02 16:37:24', '1998-10-05 05:38:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 67, 'At occaecati odit sint a expedita.', 1, 0, '1996-02-09 13:31:27', '1993-01-13 20:32:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 75, 'Aut vel similique unde nesciunt accusantium quam impedit.', 0, 1, '1990-07-02 21:32:28', '1996-06-12 22:53:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 5, 'Commodi est quia ea exercitationem sint unde.', 0, 1, '1975-01-04 19:41:17', '1985-10-19 00:03:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 46, 'Qui a sunt molestiae odit quisquam nostrum.', 0, 1, '2003-10-23 16:30:10', '2016-08-01 22:09:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 13, 'Dolorum omnis ipsum nemo non explicabo corrupti voluptatem.', 1, 0, '2005-03-05 03:39:50', '1980-04-27 07:39:23');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'f', '1990-11-10', 20, 'East Kaylah', 'Azerbaijan', '1994-11-08 11:36:34', '1992-12-24 19:59:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'f', '1993-04-09', 4, 'Lake Abagailview', 'South Africa', '1984-02-07 23:06:22', '1983-07-20 09:12:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'f', '2004-06-07', 96, 'South Natalia', 'Finland', '2014-04-25 18:55:48', '2001-10-19 12:59:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'f', '1994-09-19', 10, 'Catharineville', 'Morocco', '2008-06-14 01:20:31', '2019-11-09 05:59:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '2019-08-19', 66, 'West Brandi', 'Nigeria', '1994-11-18 12:17:54', '1979-07-11 13:04:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '2007-09-12', 30, 'South Anya', 'Comoros', '1980-09-08 14:30:17', '2003-07-19 14:17:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'f', '2015-08-24', 76, 'North Eldon', 'Turks and Caicos Islands', '1983-08-04 05:00:44', '1986-11-21 15:44:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '1991-12-20', 78, 'Nehamouth', 'Bangladesh', '1981-02-03 04:57:16', '1974-12-23 00:14:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'f', '2018-12-12', 42, 'West Retha', 'Afghanistan', '2016-07-18 01:20:09', '1997-09-08 16:45:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1985-02-03', 100, 'North Demetrisborough', 'Morocco', '1990-07-21 17:08:15', '1988-08-24 14:27:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'f', '1994-07-24', 14, 'North Telly', 'Congo', '2016-07-29 16:49:21', '2016-01-17 19:32:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1974-11-13', 14, 'Lake Ofeliafurt', 'Mozambique', '2006-05-27 13:48:24', '2011-12-07 06:53:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '1984-03-03', 64, 'South Naomifort', 'Singapore', '1990-09-10 00:08:54', '1987-03-22 05:07:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '1995-11-30', 59, 'South Hettie', 'Guatemala', '2004-12-24 07:01:19', '1979-12-18 10:35:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'm', '2007-06-24', 27, 'North Griffinbury', 'Singapore', '2001-09-04 22:44:28', '1988-04-04 12:53:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '1978-04-28', 35, 'Americaborough', 'Nepal', '2008-04-04 05:56:59', '1975-01-06 01:38:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '2000-09-27', 98, 'Marcellusside', 'Egypt', '2011-03-20 18:35:06', '1996-11-04 23:31:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'f', '1971-08-07', 71, 'Williamsonton', 'Sao Tome and Principe', '1974-12-16 06:41:12', '1972-04-12 03:18:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'm', '1991-10-10', 30, 'North Theoberg', 'Estonia', '2013-05-27 05:09:05', '1985-08-05 08:31:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'm', '1996-11-16', 46, 'Trompfort', 'Armenia', '1987-09-24 18:16:05', '1975-02-05 11:29:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'm', '1978-04-04', 5, 'Melissaport', 'Senegal', '1990-12-03 09:18:15', '1995-11-12 05:57:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '1998-06-06', 86, 'North Zita', 'Bouvet Island (Bouvetoya)', '1983-09-06 09:04:32', '1977-05-18 12:41:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '1988-06-02', 44, 'Casperport', 'Bolivia', '1979-01-21 20:41:49', '2019-12-12 10:29:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'f', '2020-04-01', 43, 'Cedrickfort', 'Germany', '2016-02-01 16:55:22', '1970-03-03 09:27:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'm', '1994-04-09', 96, 'Port Cody', 'Falkland Islands (Malvinas)', '1989-12-17 11:41:48', '1990-07-27 10:18:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'm', '2011-08-23', 71, 'Rosemarieview', 'Sweden', '2002-01-18 17:46:45', '1984-04-20 09:23:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'f', '1970-04-16', 7, 'Ruthburgh', 'Liberia', '1987-12-15 02:34:56', '1981-01-29 13:57:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '1980-07-13', 25, 'South Dulceton', 'Solomon Islands', '1979-07-12 03:24:29', '2004-05-30 15:16:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '1977-07-30', 1, 'Mazieburgh', 'United States Virgin Islands', '2019-01-19 04:07:43', '2016-02-04 01:54:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '2009-09-23', 67, 'Karenville', 'Bolivia', '2004-08-20 14:30:40', '1977-09-28 11:07:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1980-02-21', 29, 'Lake Verdiebury', 'Jamaica', '2014-11-05 02:37:09', '1981-02-02 01:17:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '1988-02-01', 66, 'Abelardoview', 'Bouvet Island (Bouvetoya)', '2006-05-11 17:33:55', '1976-08-15 03:20:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'm', '2003-08-11', 88, 'Lake Adelaport', 'Papua New Guinea', '1991-10-01 22:44:07', '1991-01-20 08:17:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '2016-11-01', 86, 'Port Carletontown', 'Bulgaria', '2006-10-06 14:57:23', '2009-10-08 02:13:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'f', '1996-02-01', 14, 'New Therese', 'Cote d\'Ivoire', '1996-08-06 07:08:51', '1999-04-14 17:24:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'm', '1974-06-17', 56, 'South Gwenport', 'Norway', '1978-06-15 17:47:04', '1991-04-05 03:16:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'f', '2018-04-25', 38, 'Liamouth', 'Slovakia (Slovak Republic)', '1990-01-15 17:06:04', '1980-04-02 21:05:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'm', '1972-10-19', 51, 'Lake Destiny', 'Liechtenstein', '2016-10-04 18:37:20', '2007-12-28 07:58:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'f', '1986-07-17', 95, 'Erickview', 'Sweden', '2015-05-31 06:02:46', '2006-10-13 19:40:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '1972-10-28', 56, 'South Yessenia', 'United Arab Emirates', '1994-02-09 16:59:18', '1974-07-19 23:48:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'm', '1986-12-26', 34, 'North Janickton', 'Comoros', '1997-11-13 05:23:47', '1993-07-26 05:26:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '1981-03-25', 81, 'South Mableberg', 'Burundi', '2006-04-28 07:47:06', '1987-06-09 08:03:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'f', '1981-05-04', 67, 'North Rocio', 'Guinea-Bissau', '1992-09-23 06:00:27', '1983-12-20 20:41:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'f', '2000-08-14', 75, 'Mullerbury', 'Saint Martin', '2013-02-28 20:47:57', '1975-10-16 19:33:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '2019-02-09', 99, 'South Helgaville', 'Namibia', '1995-12-24 07:23:59', '1984-12-15 01:38:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '2007-03-28', 55, 'Lake Giuseppemouth', 'Switzerland', '1997-06-22 16:30:33', '1980-03-12 21:54:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1977-12-26', 77, 'New Barry', 'Zimbabwe', '1980-10-20 05:29:07', '1997-01-21 18:51:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'm', '1992-08-01', 71, 'Lonieville', 'Costa Rica', '2010-05-08 17:44:39', '1988-01-23 19:57:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1998-08-07', 26, 'Langworthberg', 'Saint Pierre and Miquelon', '1980-09-30 10:02:28', '2014-10-24 00:25:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'f', '2019-09-08', 17, 'East Winifredstad', 'Kuwait', '1991-11-26 11:39:24', '2018-12-19 13:22:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'm', '1970-07-22', 14, 'Lindton', 'Panama', '1988-09-18 13:20:27', '2015-04-06 07:50:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'f', '2001-05-15', 20, 'East Theresia', 'Wallis and Futuna', '1978-05-07 14:49:19', '1973-10-19 12:41:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'f', '2001-01-05', 68, 'Layneton', 'Austria', '2006-12-15 08:43:56', '1983-11-20 05:49:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'f', '2005-10-29', 72, 'Port Leanna', 'Malawi', '1996-08-26 12:29:31', '1976-07-02 17:49:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '1984-06-27', 55, 'Lake Samview', 'Zambia', '1991-12-31 23:24:46', '1990-10-23 17:08:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '1995-02-13', 70, 'West Emeraldfort', 'Greenland', '2011-08-18 22:09:02', '1977-02-26 12:54:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '1978-12-27', 15, 'Dollybury', 'Thailand', '1999-02-13 22:49:06', '1975-08-09 04:25:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'm', '2019-08-31', 69, 'South Kristinport', 'Mexico', '2004-05-02 07:19:19', '1973-12-04 16:05:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '1972-04-05', 29, 'South Ferminview', 'Gibraltar', '1996-11-03 07:21:31', '1996-11-26 22:54:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '1989-10-04', 26, 'Port Vernerstad', 'Nauru', '2014-10-14 07:28:52', '2013-12-07 19:26:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '1970-04-10', 100, 'South Leilafort', 'Antigua and Barbuda', '1996-04-18 17:19:37', '1979-04-02 10:24:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '1983-11-01', 100, 'Vandervortmouth', 'Dominican Republic', '1970-01-20 05:26:35', '1993-11-27 08:13:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'f', '2007-10-04', 17, 'West Kale', 'Swaziland', '2018-05-11 13:29:01', '1970-02-14 01:36:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'm', '1970-12-14', 9, 'Beahanfurt', 'Guadeloupe', '1978-02-10 00:20:52', '2015-10-25 10:16:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'm', '1976-03-15', 54, 'Amandatown', 'Isle of Man', '2009-08-25 09:55:46', '1995-03-24 03:13:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'f', '1981-06-04', 55, 'Zboncakmouth', 'Georgia', '1995-07-24 18:06:51', '1982-05-19 22:08:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '1996-05-29', 75, 'Bradtkeside', 'Yemen', '1974-02-19 06:30:13', '1989-02-25 19:45:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'f', '2017-07-02', 53, 'West Marielleton', 'Taiwan', '2005-08-12 18:28:36', '1993-07-08 02:24:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '2002-08-19', 1, 'East Clay', 'Saint Helena', '1988-10-22 10:59:45', '2013-12-24 18:40:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'f', '1976-12-04', 21, 'Pourosville', 'Belize', '1973-12-15 12:51:12', '2003-05-04 18:15:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '1996-10-24', 98, 'West Dominique', 'Japan', '1985-03-08 08:14:56', '1983-10-22 13:24:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'm', '2018-04-15', 75, 'North Antonioburgh', 'Puerto Rico', '1981-11-22 20:25:05', '2013-10-23 15:15:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'f', '2005-03-22', 64, 'South Lauryn', 'Taiwan', '1975-03-07 20:02:38', '1971-11-22 13:41:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'f', '2012-12-13', 58, 'Goldenfort', 'Dominican Republic', '2019-06-17 15:31:46', '1999-07-25 13:22:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'f', '1976-02-11', 80, 'Lake Enaville', 'Somalia', '1975-10-30 11:49:17', '2012-10-11 15:51:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '1982-06-27', 80, 'New Asha', 'Ukraine', '1983-07-15 00:33:49', '1973-06-23 23:03:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'f', '2007-01-26', 42, 'North Adolphmouth', 'Korea', '1974-09-02 05:11:07', '1989-08-19 00:30:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'f', '1996-08-14', 4, 'Minnieville', 'Liechtenstein', '1990-12-11 23:38:56', '1982-06-17 02:28:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'f', '2004-06-26', 85, 'Wizabury', 'Saint Pierre and Miquelon', '1974-05-02 13:05:45', '2015-05-18 15:07:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'm', '1997-10-05', 7, 'Rachaelland', 'Zimbabwe', '2012-08-13 11:34:10', '1980-06-13 16:52:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'f', '1995-07-08', 87, 'Jonatanside', 'Italy', '1987-06-09 23:12:08', '2008-12-07 02:58:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '2009-03-30', 59, 'South Adanbury', 'El Salvador', '1980-08-20 11:21:13', '2010-10-15 09:12:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '2013-06-29', 36, 'Jennieport', 'Grenada', '1996-01-30 17:02:03', '1981-03-01 11:08:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'f', '1974-06-11', 58, 'Port Lydia', 'Cote d\'Ivoire', '2003-11-20 12:30:31', '2010-06-28 20:20:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'm', '1979-08-19', 29, 'Aliyahfort', 'Sierra Leone', '1987-04-11 14:01:11', '1986-11-07 02:51:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '1982-07-31', 12, 'Lake Stanton', 'Cuba', '2016-02-22 23:24:13', '1987-12-13 09:13:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '2001-03-15', 21, 'Andersonview', 'Congo', '1980-09-08 18:27:19', '1975-03-05 06:37:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'f', '1999-02-28', 65, 'West Imaniside', 'Chad', '1974-07-09 06:34:51', '2006-03-25 12:40:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '1985-05-07', 26, 'Liaville', 'El Salvador', '2017-10-17 23:09:56', '2002-06-29 20:28:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'm', '1999-11-08', 81, 'New Siennaside', 'Palestinian Territory', '2003-03-12 05:20:55', '1973-02-14 23:47:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '1994-12-14', 32, 'East Maryjane', 'Finland', '2001-03-02 04:58:41', '1983-10-29 12:15:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'f', '1982-03-10', 100, 'Nealside', 'Tunisia', '2004-01-22 15:25:03', '1992-12-30 14:34:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'f', '2007-01-28', 38, 'South Frankmouth', 'Sudan', '2000-10-20 08:18:14', '1990-12-03 13:42:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '1993-04-21', 26, 'Kaileyland', 'Saint Martin', '2020-02-24 18:37:04', '1998-01-28 03:27:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '1978-10-02', 65, 'Predovicfurt', 'Japan', '2005-02-14 17:09:33', '2006-04-07 05:25:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'm', '1974-07-11', 73, 'Jazmynburgh', 'Ethiopia', '1980-10-12 03:55:27', '2020-06-01 02:25:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'f', '1993-04-14', 69, 'West Reneside', 'Italy', '1979-03-17 06:20:11', '1992-04-21 14:53:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '2001-10-07', 93, 'Port Britney', 'Qatar', '2017-04-17 05:45:43', '1992-12-21 04:56:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '2019-02-19', 34, 'West Michaelburgh', 'Syrian Arab Republic', '2017-10-12 10:06:01', '2016-08-01 02:21:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'f', '2000-02-14', 43, 'Hayesville', 'Somalia', '1999-01-03 07:43:02', '1995-09-30 10:17:28');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Kaycee', 'Weimann', 'bogisich.lisette@example.org', '+67(3)3239649922', '1977-05-12 04:43:54', '1990-06-28 19:26:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Maxwell', 'Weimann', 'tito.cruickshank@example.com', '237.711.0959x30142', '2003-08-25 17:21:17', '2010-11-25 01:01:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Emilia', 'Reichert', 'kiehn.wilmer@example.com', '1-484-168-7884', '1971-08-15 22:07:51', '2014-08-04 22:24:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Pat', 'Gleason', 'nader.lucienne@example.net', '1-477-331-7765x141', '2001-02-19 10:39:44', '1987-03-27 05:58:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Leonora', 'Wiza', 'nitzsche.steve@example.net', '1-375-931-0149x74159', '1988-11-06 23:19:21', '1987-09-13 02:06:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Keeley', 'Walter', 'fernser@example.org', '411-957-1082', '1979-04-17 11:34:01', '2003-02-21 13:17:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Melvin', 'Howe', 'ernser.amanda@example.net', '1-999-626-6522x64597', '1979-11-17 06:23:03', '2019-11-19 04:29:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Hubert', 'Wolf', 'orrin77@example.net', '727-448-4632x16770', '1987-02-02 23:11:03', '1992-11-10 04:41:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Macey', 'Brakus', 'schultz.lottie@example.net', '(756)702-0108', '1993-09-11 17:41:28', '1988-08-28 15:55:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Sharon', 'Willms', 'haleigh98@example.net', '+99(8)5892151251', '1983-06-30 08:50:05', '1990-06-10 09:13:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Colin', 'Fadel', 'jamal.cronin@example.net', '063-896-4585', '1979-01-21 07:26:33', '2002-12-01 04:37:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Felicity', 'Wiza', 'kitty.olson@example.net', '(028)446-4968x85274', '1970-05-06 08:42:41', '2018-09-28 11:47:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Rosanna', 'Bahringer', 'mayert.chyna@example.com', '+17(8)0300322254', '2006-05-14 17:01:55', '2011-10-19 07:43:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Margarete', 'Roob', 'jwest@example.net', '575-500-2775x5655', '1976-03-11 04:40:22', '2013-12-19 23:31:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Myriam', 'Littel', 'tzieme@example.com', '02585499143', '1977-12-11 11:48:04', '2006-06-08 02:52:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Lionel', 'Legros', 'elegros@example.net', '825-325-8923x75818', '2003-10-31 23:16:14', '1980-09-25 08:20:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Kira', 'Smitham', 'matt.hilpert@example.org', '01826453599', '2006-05-26 16:24:35', '1996-01-20 08:25:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Joshua', 'Cummerata', 'ecronin@example.net', '080.936.3721x507', '2017-06-13 18:31:10', '1977-05-21 11:53:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Max', 'Schneider', 'gia.ratke@example.com', '1-467-927-1349x694', '2003-03-29 00:13:53', '1996-05-02 18:25:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Jeanne', 'Labadie', 'felton.kirlin@example.com', '397-397-1720x5431', '1976-09-20 15:16:31', '2009-07-15 08:48:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Grady', 'Veum', 'trystan00@example.org', '831-638-8358x97624', '2014-03-16 03:44:29', '2010-08-13 22:18:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Baylee', 'Goodwin', 'jennings37@example.org', '+34(4)2337931552', '1996-12-17 04:41:52', '2010-05-16 16:18:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Roslyn', 'Dickens', 'naomi.heathcote@example.com', '1-029-575-2451', '2005-01-30 13:57:50', '2005-01-12 03:28:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Martine', 'Rippin', 'etha49@example.org', '(146)109-2170x419', '1973-11-07 08:01:58', '2003-11-01 08:22:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Monte', 'Gulgowski', 'zfisher@example.net', '1-484-918-8446', '2012-02-05 14:59:35', '2003-03-20 20:33:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Ladarius', 'Morissette', 'zoila.frami@example.net', '00146298418', '1987-01-15 03:47:58', '1974-04-21 11:07:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Jerrod', 'Corwin', 'skiles.hans@example.com', '04487361711', '1979-11-30 18:17:38', '1982-05-10 11:07:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Lottie', 'Champlin', 'thurman.klein@example.net', '349.322.7922x884', '1998-02-15 09:08:43', '2009-09-13 14:16:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Kyleigh', 'Wunsch', 'ashly71@example.com', '348.255.2687x978', '1996-05-06 03:14:49', '2016-09-21 09:55:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Birdie', 'Hudson', 'rhane@example.net', '1-809-687-3795', '1990-01-03 18:25:03', '1986-02-28 05:09:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Sage', 'Pfannerstill', 'ymoore@example.net', '606-879-9901x314', '1995-02-12 18:45:16', '1975-08-09 22:10:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Zelda', 'Parisian', 'schuster.jake@example.net', '01426403107', '1974-04-03 05:09:29', '2010-01-12 18:31:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Mattie', 'Boehm', 'eduardo.hessel@example.com', '00925050829', '2004-10-30 17:48:51', '1981-06-11 14:46:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Karson', 'Steuber', 'kacie58@example.net', '1-616-308-1730', '2004-04-11 21:33:55', '2015-12-24 01:54:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Silas', 'Littel', 'bertrand.jaskolski@example.net', '+81(6)4585521599', '2019-03-12 06:38:59', '2000-01-22 12:49:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Laisha', 'Larkin', 'storphy@example.org', '803-222-3555x0336', '2001-02-09 02:14:14', '1976-11-06 09:53:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Sydnie', 'Johns', 'schumm.jaycee@example.net', '670.962.1566', '1988-11-04 16:40:24', '1992-09-02 00:08:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Alexandrine', 'McClure', 'auer.avery@example.net', '(247)448-1420x41162', '1994-10-26 20:50:32', '1994-04-13 04:46:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Philip', 'Dach', 'maribel68@example.com', '1-479-395-9334x471', '2010-06-17 11:30:54', '1975-06-07 21:56:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Wilton', 'Torp', 'adah.jast@example.com', '(498)049-0095', '1974-01-31 00:48:21', '2003-08-22 15:17:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Sheridan', 'Green', 'schiller.ericka@example.net', '1-094-774-4128', '2006-03-01 16:55:36', '1988-10-13 18:29:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Kamron', 'Krajcik', 'minnie54@example.org', '01685495010', '1983-02-02 05:08:39', '1982-05-08 08:49:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Zoe', 'Toy', 'iheller@example.org', '629.181.9214', '2016-11-28 19:46:17', '2016-03-03 12:18:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Ralph', 'Schinner', 'orn.leatha@example.net', '+82(0)8381274107', '1998-08-03 18:37:24', '1991-05-07 20:59:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Malinda', 'Boyer', 'evalyn.spencer@example.com', '598.250.4063x7932', '2014-08-17 11:22:16', '1975-02-20 20:19:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Freda', 'Jast', 'alexandro88@example.org', '042.706.5713', '1992-01-12 04:32:29', '1993-06-15 12:11:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Leanne', 'Waelchi', 'qlemke@example.net', '1-985-229-7112x03576', '2006-05-20 01:17:53', '2009-12-13 00:32:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Jaylan', 'Anderson', 'zmueller@example.com', '815-179-2496', '1971-01-10 07:07:25', '1983-09-13 20:49:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Kattie', 'Welch', 'brycen29@example.org', '1-245-257-4054x8727', '1979-02-15 06:45:45', '2009-05-13 01:47:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Dashawn', 'Tremblay', 'lnikolaus@example.com', '565-062-9529x2702', '2008-10-21 12:20:13', '1986-07-29 08:32:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Godfrey', 'Hamill', 'ocorwin@example.net', '07010200322', '2017-11-23 18:06:47', '2012-12-29 10:49:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Citlalli', 'Schamberger', 'monserrate.kohler@example.net', '340.680.6392', '2003-04-13 10:13:36', '1996-03-16 23:47:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Katharina', 'Hamill', 'skris@example.org', '(185)726-1338', '1973-03-06 01:44:32', '2006-07-28 10:05:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Garnet', 'Mertz', 'hmacejkovic@example.org', '925-800-4987x887', '1970-06-19 22:59:15', '1999-04-29 09:58:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Jameson', 'Stokes', 'ireilly@example.com', '369.761.7246x637', '1981-04-23 19:59:27', '1998-01-12 01:59:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Valentin', 'Kessler', 'domingo.gerhold@example.net', '399.176.4105x197', '2010-08-23 19:37:10', '2004-04-04 14:35:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Eveline', 'Mitchell', 'wmosciski@example.org', '130-175-8723', '1994-06-20 11:44:59', '2018-07-18 05:46:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Ima', 'Ebert', 'larson.alene@example.org', '1-756-731-9902', '1998-07-31 12:05:43', '1977-11-10 02:02:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Michaela', 'Bode', 'garfield.stanton@example.com', '500-159-6306x5058', '2019-02-12 04:22:42', '1980-01-24 07:58:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Elisha', 'Strosin', 'lamont70@example.net', '312.013.5865', '2017-10-19 01:14:58', '2000-02-21 00:51:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Lynn', 'Koelpin', 'mwaelchi@example.org', '821.535.9606x500', '2002-01-30 11:09:03', '2002-07-27 01:50:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Vivian', 'Witting', 'zabshire@example.com', '(544)916-7027x3701', '1985-01-06 10:41:33', '2002-01-01 14:56:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Eriberto', 'Schiller', 'cathy51@example.net', '198-372-2063x734', '2018-03-04 18:19:42', '2003-04-04 10:05:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Xander', 'Rohan', 'jennyfer12@example.org', '(502)523-0119x978', '1996-04-10 15:56:16', '1996-09-10 22:34:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Jovan', 'Gutmann', 'mcormier@example.net', '+52(8)7659167093', '1973-11-15 22:40:21', '2000-09-15 02:52:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Martina', 'Goyette', 'collins.braden@example.org', '(129)922-6915', '1984-02-11 12:43:41', '1980-05-28 05:51:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Carmelo', 'Abbott', 'kharvey@example.net', '+15(0)8962282809', '2006-05-07 22:41:59', '2015-05-06 01:15:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Rosamond', 'Armstrong', 'annette73@example.net', '705.862.9702x319', '2011-01-11 13:49:02', '1972-11-06 06:30:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Esta', 'Roberts', 'prohaska.rahsaan@example.org', '505-288-8750x3566', '1983-10-09 23:05:36', '2009-02-03 12:14:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Garth', 'Lemke', 'shaun52@example.net', '455.061.5814', '2016-01-10 09:51:26', '1972-03-30 23:48:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Elbert', 'Hickle', 'abraham.rippin@example.org', '225-832-2877x5850', '2017-09-30 23:52:53', '1992-01-09 11:15:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Gussie', 'Hudson', 'khyatt@example.net', '(204)812-2461x5021', '1972-07-06 10:18:56', '2003-09-15 00:38:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Mina', 'Hoppe', 'xbrown@example.com', '517.095.4710', '2008-08-07 10:31:09', '1970-12-08 20:22:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Daphnee', 'Quitzon', 'salvador.ortiz@example.com', '1-096-946-7119x657', '1972-11-16 14:39:50', '2008-08-20 18:26:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Damion', 'Jones', 'abner55@example.com', '1-025-682-0173x303', '1983-08-15 00:08:29', '1989-01-25 03:56:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Marguerite', 'Hintz', 'dorcas.mcdermott@example.com', '1-740-335-4955x4083', '1997-04-07 01:31:13', '2004-05-27 16:51:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Darius', 'Funk', 'willie.smith@example.net', '709-290-3246', '1972-07-28 21:21:03', '1988-11-03 11:29:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Jake', 'Schinner', 'ivy92@example.net', '02302959425', '2020-03-09 18:28:17', '2003-01-18 07:17:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Emerson', 'Turcotte', 'ferry.destin@example.net', '366.449.2663', '2010-11-14 22:27:08', '1974-10-24 20:12:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Otha', 'King', 'jessika24@example.com', '814-213-0565', '2018-07-04 01:35:46', '1972-05-06 10:41:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Maegan', 'Marvin', 'kovacek.william@example.net', '1-371-470-9686x19588', '2008-04-29 08:47:15', '2016-01-16 23:29:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Arvilla', 'Kerluke', 'cecelia.mertz@example.org', '(566)448-8122x00595', '1986-04-06 00:05:27', '2013-09-15 23:51:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Kaylie', 'Mann', 'qlowe@example.com', '1-955-245-6883x7065', '2006-10-25 23:56:25', '1983-07-20 17:04:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Charles', 'Wiza', 'mosciski.halie@example.net', '358.885.9674x701', '2010-10-28 06:16:18', '2008-02-14 09:28:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Dahlia', 'O\'Hara', 'lowe.sabryna@example.com', '684-659-9875', '1982-06-30 10:21:58', '1985-09-07 23:55:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Bernita', 'Goodwin', 'will.liliana@example.org', '08702666355', '1983-04-03 06:51:37', '1989-10-10 14:25:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Larue', 'Greenholt', 'nedra71@example.net', '+46(2)1416558229', '1971-12-10 12:08:48', '2017-01-25 08:18:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Braulio', 'Kunde', 'haley51@example.org', '(970)185-3533x57464', '1970-12-01 01:01:41', '1992-01-19 03:46:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Alta', 'Batz', 'konopelski.lenore@example.com', '1-602-448-5430x122', '1991-06-08 20:55:07', '2019-01-17 16:23:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Rashad', 'Gleichner', 'xdooley@example.org', '+74(3)8084614905', '1986-10-27 00:29:01', '1982-01-13 12:22:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Olaf', 'Kuhn', 'christy83@example.com', '(549)924-7711x009', '1995-08-20 21:49:48', '2011-03-26 20:23:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Estelle', 'Ryan', 'mcclure.brad@example.org', '671.361.2238x427', '2019-10-03 08:55:20', '1984-09-10 13:57:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Jude', 'Heaney', 'liza70@example.org', '1-218-786-0140', '1976-05-27 03:44:04', '1989-02-17 14:44:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Adella', 'Schumm', 'senger.brayan@example.net', '819-852-4148x7059', '1979-09-25 19:07:47', '1984-07-18 20:51:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Vince', 'Cummings', 'addie.o\'hara@example.net', '01461559584', '1997-01-21 14:23:18', '1982-03-04 18:46:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Judah', 'Crona', 'rwyman@example.net', '968-731-2105x6586', '2013-03-17 04:27:03', '1988-04-10 20:19:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Stuart', 'Schoen', 'hanna95@example.com', '1-278-372-7233x0208', '1995-04-16 20:47:56', '2009-05-02 07:21:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Dejuan', 'West', 'vrogahn@example.com', '1-134-353-6982x04086', '1979-02-09 03:47:29', '2018-10-23 21:23:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Cindy', 'Barton', 'retha33@example.com', '05772114463', '2015-04-27 03:08:05', '1980-09-10 16:02:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Hilton', 'Zulauf', 'larson.eldred@example.net', '(150)309-1764', '2000-11-01 04:44:45', '1988-05-09 20:24:30');


