# Установка mysql и openssh не отображена, так как пришлось перезапустить терминал.
# Работа с виртуальной машиной

tamara@tamara-VirtualBox:~$ sudo apt install openssh-server
# Чтение списков пакетов… Готово
# Построение дерева зависимостей
# Чтение информации о состоянии… Готово
# Уже установлен пакет openssh-server самой новой версии (1:8.2p1-4).
# Обновлено 0 пакетов, установлено 0 новых пакетов, для удаления отмечено 0 пакетов, и 0 пакетов не обновлено.
tamara@tamara-VirtualBox:~$ mysql -V
# mysql  Ver 8.0.20-0ubuntu0.20.04.1 for Linux on x86_64 ((Ubuntu))
tamara@tamara-VirtualBox:~$ sudo systemctl status mysql
# ● mysql.service - MySQL Community Server
#      Loaded: loaded (/lib/systemd/system/mysql.service; enabled; vendor preset:>
#      Active: active (running) since Mon 2020-06-15 14:53:12 MSK; 8min ago
#     Process: 673 ExecStartPre=/usr/share/mysql/mysql-systemd-start pre (code=ex>
#    Main PID: 780 (mysqld)
#      Status: "Server is operational"
#       Tasks: 38 (limit: 2190)
#      Memory: 327.1M
#      CGroup: /system.slice/mysql.service
#              └─780 /usr/sbin/mysqld

# июн 15 14:52:59 tamara-VirtualBox systemd[1]: Starting MySQL Community Server...
# июн 15 14:53:12 tamara-VirtualBox systemd[1]: Started MySQL Community Server.

tamara@tamara-VirtualBox:~$ sudo mysql
# Welcome to the MySQL monitor.  Commands end with ; or \g.
# # Your MySQL connection id is 8
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
# 4 rows in set (0.12 sec)

mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';FLUSH PRIVILEGES;
# Query OK, 0 rows affected (0.10 sec)

# Query OK, 0 rows affected (0.01 sec)

mysql> EXIT
# Bye
tamara@tamara-VirtualBox:~$ mysql -u root -p
# Enter password:
# Welcome to the MySQL monitor.  Commands end with ; or \g.
# Your MySQL connection id is 9
# Server version: 8.0.20-0ubuntu0.20.04.1 (Ubuntu)

# Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

# Oracle is a registered trademark of Oracle Corporation and/or its
# affiliates. Other names may be trademarks of their respective
# owners.

# Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> EXIT
# Bye
tamara@tamara-VirtualBox:~$ pwd
# /home/tamara

# Подключение к виртуальнорй машине с локальной.
# Подключалась с другого ПК, мой ноут не потянул виртуальную убунту, поставила на большом ПК, а потом
# подключилась с ноута к виртуальной убунте большого ПК.
# Для меня это целое приключение. Все получилось. 

C:\Users\NELYUBINA>ssh tamara@192.168.____

# Текст удален
# Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
# applicable law.

tamara@tamara-VirtualBox:~$ pwd
# /home/tamara
tamara@tamara-VirtualBox:~$ ls -a
 # .               .cache      .mysql_history              .vboxclient-display-svga-x11.pid   Загрузки        Шаблоны
 # ..              .config     .profile                    .vboxclient-draganddrop.pid        Изображения
 # .bash_history   Databases   snap                        .vboxclient-seamless.pid           Музыка
 # .bash_logout    .gnupg      .sudo_as_admin_successful   Видео                              Общедоступные
 # .bashrc         .local      .vboxclient-clipboard.pid   Документы                         'Рабочий стол'

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
# 4 rows in set (0.47 sec)

mysql> EXIT
# Bye