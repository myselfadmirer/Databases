# 1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.

tamara@tamara-VirtualBox:~$ cat > .my.cnf
# [client]
# user=root
# password=

# Client используется, чтобы дать доступ и mysqldump.

# 2. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

tamara@tamara-VirtualBox:~$ mysql -u root -p
# Enter password:
# Welcome to the MySQL monitor.  Commands end with ; or \g.
# Your MySQL connection id is 10
# Server version: 8.0.20-0ubuntu0.20.04.1 (Ubuntu)

# Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

# Oracle is a registered trademark of Oracle Corporation and/or its
# affiliates. Other names may be trademarks of their respective
# owners.

# Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
# +--------------------+
# | Database           |
# +--------------------+
# | information_schema |
# | mysql              |
# | performance_schema |
# | sys                |
# +--------------------+
# 4 rows in set (1.42 sec)

mysql> CREATE DATABASE IF NOT EXISTS example;
# Query OK, 1 row affected (0.81 sec)

mysql> SHOW DATABASES;
# +--------------------+
# | Database           |
# +--------------------+
# | example            |
# | information_schema |
# | mysql              |
# | performance_schema |
# | sys                |
# +--------------------+
# 5 rows in set (0.00 sec)

mysql> DROP DATABASE IF EXISTS example;
# Query OK, 0 rows affected (0.90 sec)

mysql> SHOW DATABASES;
# +--------------------+
# | Database           |
# +--------------------+
# | information_schema |
# | mysql              |
# | performance_schema |
# | sys                |
# +--------------------+
# 4 rows in set (0.01 sec)

mysql> CREATE DATABASE example;
# Query OK, 1 row affected (0.18 sec)

mysql> SHOW DATABASES;
# +--------------------+
# | Database           |
# +--------------------+
# | example            |
# | information_schema |
# | mysql              |
# | performance_schema |
# | sys                |
# +--------------------+
# 5 rows in set (0.00 sec)

mysql> SHOW TABLES FROM example;
# Empty set (0.01 sec)

mysql> USE example;
# Database changed
mysql> DROP TABLE IF EXISTS users;
# Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> CREATE TABLE users (
#     -> name CHAR(10) DEFAULT "None",
#     -> id INT UNSIGNED
#     -> );
# Query OK, 0 rows affected (0.12 sec)

mysql> SHOW TABLES FROM example;
# +-------------------+
# | Tables_in_example |
# +-------------------+
# | users             |
# +-------------------+
# 1 row in set (0.00 sec)

mysql> DESC users;
# +-------+--------------+------+-----+---------+-------+
# | Field | Type         | Null | Key | Default | Extra |
# +-------+--------------+------+-----+---------+-------+
# | name  | char(10)     | YES  |     | None    |       |
# | id    | int unsigned | YES  |     | NULL    |       |
# +-------+--------------+------+-----+---------+-------+
# 2 rows in set (0.04 sec)

mysql> exit
# Bye

# 3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

tamara@tamara-VirtualBox:~$ mysqldump example > example.sql
tamara@tamara-VirtualBox:~$ cat example.sql
# -- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
# --
# -- Host: localhost    Database: example
# -- ------------------------------------------------------
# -- Server version       8.0.20-0ubuntu0.20.04.1

# /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
# /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
# /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
# /*!50503 SET NAMES utf8mb4 */;
# /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
# /*!40103 SET TIME_ZONE='+00:00' */;
# /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
# /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
# /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# --
# -- Table structure for table `users`
# --

# DROP TABLE IF EXISTS `users`;
# /*!40101 SET @saved_cs_client     = @@character_set_client */;
# /*!50503 SET character_set_client = utf8mb4 */;
# CREATE TABLE `users` (
#   `name` char(10) DEFAULT 'None',
#   `id` int unsigned DEFAULT NULL
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
# /*!40101 SET character_set_client = @saved_cs_client */;

# --
# -- Dumping data for table `users`
# --

# LOCK TABLES `users` WRITE;
# /*!40000 ALTER TABLE `users` DISABLE KEYS */;
# /*!40000 ALTER TABLE `users` ENABLE KEYS */;
# UNLOCK TABLES;
# /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

# /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
# /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
# /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
# /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
# /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
# /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
# /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

# -- Dump completed on 2020-06-17  1:44:33

tamara@tamara-VirtualBox:~$ mysql

mysql> CREATE DATABASE sample;
# Query OK, 1 row affected (0.04 sec)

mysql> exit
# Bye
tamara@tamara-VirtualBox:~$ mysql sample < example.sql
tamara@tamara-VirtualBox:~$ mysql

mysql> SHOW TABLES FROM sample;
# +------------------+
# | Tables_in_sample |
# +------------------+
# | users            |
# +------------------+
# 1 row in set (0.01 sec)


# 4. (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. 
# Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.


mysql> CREATE DATABASE new_mysql;
# Query OK, 1 row affected (0.01 sec)

mysql> exit
# Bye

tamara@tamara-VirtualBox:~$ mysqldump mysql help_keyword --where="true limit 100" > mysql.sql

# Только почему-то не вышло выгрузить дамп в новую БД...
tamara@tamara-VirtualBox:~$ mysql new_mysql < mysql.sql
# ERROR 3723 (HY000) at line 25: The table 'help_keyword' may not be created in the reserved tablespace 'mysql'.
