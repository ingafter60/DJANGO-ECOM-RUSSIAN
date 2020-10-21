
E:\Devtools\laragon\www
λ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2
Server version: 5.7.24 MySQL Community Server (GPL)

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE tangowithdjango2;
Query OK, 1 row affected (0.04 sec)

mysql> USE tangowithdjango2;
Database changed
mysql> show tables;
+----------------------------+
| Tables_in_tangowithdjango2 |
+----------------------------+
| auth_group                 |
| auth_group_permissions     |
| auth_permission            |
| auth_user                  |
| auth_user_groups           |
| auth_user_user_permissions |
| django_admin_log           |
| django_content_type        |
| django_migrations          |
| django_session             |
+----------------------------+
10 rows in set (0.00 sec)

mysql> show tables;
+----------------------------+
| Tables_in_tangowithdjango2 |
+----------------------------+
| auth_group                 |
| auth_group_permissions     |
| auth_permission            |
| auth_user                  |
| auth_user_groups           |
| auth_user_user_permissions |
| django_admin_log           |
| django_content_type        |
| django_migrations          |
| django_session             |
| rango_category             |
| rango_page                 |
+----------------------------+
12 rows in set (0.00 sec)

mysql> desc rango_category;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | int(11)      | NO   | PRI | NULL    | auto_increment |
| name  | varchar(128) | NO   | UNI | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
2 rows in set (0.03 sec)

mysql> desc rango_page;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | int(11)      | NO   | PRI | NULL    | auto_increment |
| title       | varchar(128) | NO   |     | NULL    |                |
| url         | varchar(200) | NO   |     | NULL    |                |
| views       | int(11)      | NO   |     | NULL    |                |
| category_id | int(11)      | NO   | MUL | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> use russian_django_ecommerce;
No connection. Trying to reconnect...
Connection id:    123
Current database: *** NONE ***

Database changed
mysql> show tables;
+------------------------------------+
| Tables_in_russian_django_ecommerce |
+------------------------------------+
| auth_group                         |
| auth_group_permissions             |
| auth_permission                    |
| auth_user                          |
| auth_user_groups                   |
| auth_user_user_permissions         |
| django_admin_log                   |
| django_content_type                |
| django_migrations                  |
| django_session                     |
| home_setting                       |
| product_category                   |
| product_images                     |
| product_product                    |
+------------------------------------+
14 rows in set (0.02 sec)

mysql> show tables;
+------------------------------------+
| Tables_in_russian_django_ecommerce |
+------------------------------------+
| auth_group                         |
| auth_group_permissions             |
| auth_permission                    |
| auth_user                          |
| auth_user_groups                   |
| auth_user_user_permissions         |
| django_admin_log                   |
| django_content_type                |
| django_migrations                  |
| django_session                     |
| home_contactmessage                |
| home_setting                       |
| product_category                   |
| product_images                     |
| product_product                    |
+------------------------------------+
15 rows in set (0.00 sec)

mysql> desc home_contactmessage;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int(11)      | NO   | PRI | NULL    | auto_increment |
| name      | varchar(20)  | NO   |     | NULL    |                |
| email     | varchar(50)  | NO   |     | NULL    |                |
| subject   | varchar(50)  | NO   |     | NULL    |                |
| message   | longtext     | NO   |     | NULL    |                |
| status    | varchar(10)  | NO   |     | NULL    |                |
| ip        | varchar(20)  | NO   |     | NULL    |                |
| note      | varchar(100) | NO   |     | NULL    |                |
| create_at | datetime(6)  | NO   |     | NULL    |                |
| update_at | datetime(6)  | NO   |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
10 rows in set (0.06 sec)

mysql> show tables;
+------------------------------------+
| Tables_in_russian_django_ecommerce |
+------------------------------------+
| auth_group                         |
| auth_group_permissions             |
| auth_permission                    |
| auth_user                          |
| auth_user_groups                   |
| auth_user_user_permissions         |
| django_admin_log                   |
| django_content_type                |
| django_migrations                  |
| django_session                     |
| home_contactmessage                |
| home_setting                       |
| product_category                   |
| product_images                     |
| product_product                    |
+------------------------------------+
15 rows in set (0.02 sec)

mysql> desc home_contactmessage;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int(11)      | NO   | PRI | NULL    | auto_increment |
| name      | varchar(20)  | NO   |     | NULL    |                |
| email     | varchar(50)  | NO   |     | NULL    |                |
| subject   | varchar(50)  | NO   |     | NULL    |                |
| message   | longtext     | NO   |     | NULL    |                |
| status    | varchar(10)  | NO   |     | NULL    |                |
| ip        | varchar(20)  | NO   |     | NULL    |                |
| note      | varchar(100) | NO   |     | NULL    |                |
| create_at | datetime(6)  | NO   |     | NULL    |                |
| update_at | datetime(6)  | NO   |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
10 rows in set (0.04 sec)

mysql> select * from home_contactmessage;
+----+----------+--------------------+-------------+---------+--------+-----------+------+----------------------------+----------------------------+
| id | name     | email              | subject     | message | status | ip        | note | create_at                  | update_at                  |
+----+----------+--------------------+-------------+---------+--------+-----------+------+----------------------------+----------------------------+
|  1 | Testname | TestUser@email.com | Subjecttest | tetea   | New    | 127.0.0.1 |      | 2020-10-20 17:57:35.987723 | 2020-10-20 17:57:35.987723 |
|  2 | Testname | TestUser@email.com | Subjecttest | tetea   | New    | 127.0.0.1 |      | 2020-10-20 17:58:48.529048 | 2020-10-20 17:58:48.529048 |
+----+----------+--------------------+-------------+---------+--------+-----------+------+----------------------------+----------------------------+
2 rows in set (0.04 sec)

mysql> show tables;
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    232
Current database: russian_django_ecommerce

+------------------------------------+
| Tables_in_russian_django_ecommerce |
+------------------------------------+
| auth_group                         |
| auth_group_permissions             |
| auth_permission                    |
| auth_user                          |
| auth_user_groups                   |
| auth_user_user_permissions         |
| django_admin_log                   |
| django_content_type                |
| django_migrations                  |
| django_session                     |
| home_contactmessage                |
| home_setting                       |
| product_category                   |
| product_images                     |
| product_product                    |
+------------------------------------+
15 rows in set (0.20 sec)

mysql> desc product_category;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | int(11)      | NO   | PRI | NULL    | auto_increment |
| title       | varchar(30)  | NO   |     | NULL    |                |
| keywords    | varchar(255) | NO   |     | NULL    |                |
| description | varchar(255) | NO   |     | NULL    |                |
| image       | varchar(100) | NO   |     | NULL    |                |
| status      | varchar(10)  | NO   |     | NULL    |                |
| slug        | varchar(50)  | NO   | MUL | NULL    |                |
| create_at   | datetime(6)  | NO   |     | NULL    |                |
| update_at   | datetime(6)  | NO   |     | NULL    |                |
| parent_id   | int(11)      | YES  | MUL | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
10 rows in set (0.09 sec)

mysql> desc product_category;
+-------------+------------------+------+-----+---------+----------------+
| Field       | Type             | Null | Key | Default | Extra          |
+-------------+------------------+------+-----+---------+----------------+
| id          | int(11)          | NO   | PRI | NULL    | auto_increment |
| title       | varchar(30)      | NO   |     | NULL    |                |
| keywords    | varchar(255)     | NO   |     | NULL    |                |
| description | varchar(255)     | NO   |     | NULL    |                |
| image       | varchar(100)     | NO   |     | NULL    |                |
| status      | varchar(10)      | NO   |     | NULL    |                |
| slug        | varchar(50)      | NO   | MUL | NULL    |                |
| create_at   | datetime(6)      | NO   |     | NULL    |                |
| update_at   | datetime(6)      | NO   |     | NULL    |                |
| parent_id   | int(11)          | YES  | MUL | NULL    |                |
| level       | int(10) unsigned | NO   |     | NULL    |                |
| lft         | int(10) unsigned | NO   |     | NULL    |                |
| rght        | int(10) unsigned | NO   |     | NULL    |                |
| tree_id     | int(10) unsigned | NO   | MUL | NULL    |                |
+-------------+------------------+------+-----+---------+----------------+
14 rows in set (0.00 sec)

mysql> select * from product_category;
+----+-------------+-------------+--------------------------------+-----------------------------------------+--------+-------------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
| id | title       | keywords    | description                    | image                                   | status | slug        | create_at                  | update_at                  | parent_id | level | lft | rght | tree_id |
+----+-------------+-------------+--------------------------------+-----------------------------------------+--------+-------------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
|  1 | computers   | computers   | All computers related products | images/desktop_X8vSZRv.jpg              | True   | computers   | 2020-10-16 04:00:41.316297 | 2020-10-16 04:00:41.316297 |      NULL |     0 |   0 |    0 |       0 |
|  2 | desktop     | desktop     | new desktop                    | images/desktop1.jfif                    | True   | desktop     | 2020-10-16 04:02:01.889927 | 2020-10-16 04:02:01.889927 |         1 |     0 |   0 |    0 |       0 |
|  3 | hp laptop   | laptop      | laptop                         | images/hp_laptop_naFZBaj.jpg            | True   | hp-laptop   | 2020-10-16 04:02:55.840513 | 2020-10-16 04:02:55.840513 |         1 |     0 |   0 |    0 |       0 |
|  6 | electronics | electronics | electronics                    | images/electronic-equip-mob_KQ5WgAJ.jpg | True   | electronics | 2020-10-16 04:06:08.149871 | 2020-10-16 04:06:08.149871 |      NULL |     0 |   0 |    0 |       0 |
|  7 | vc chips    | chips       | chips                          | images/chips_3p3HKbE.jpg                | True   | chips       | 2020-10-16 04:06:46.207594 | 2020-10-16 04:06:46.207594 |         6 |     0 |   0 |    0 |       0 |
+----+-------------+-------------+--------------------------------+-----------------------------------------+--------+-------------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
5 rows in set (0.00 sec)

mysql> select * from product_category;
+----+-------------+-------------+--------------------------------+-----------------------------------------+--------+-------------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
| id | title       | keywords    | description                    | image                                   | status | slug        | create_at                  | update_at                  | parent_id | level | lft | rght | tree_id |
+----+-------------+-------------+--------------------------------+-----------------------------------------+--------+-------------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
|  1 | computers   | computers   | All computers related products | images/desktop_X8vSZRv.jpg              | True   | computers   | 2020-10-16 04:00:41.316297 | 2020-10-16 04:00:41.316297 |      NULL |     0 |   0 |    0 |       0 |
|  2 | desktop     | desktop     | new desktop                    | images/desktop1.jfif                    | True   | desktop     | 2020-10-16 04:02:01.889927 | 2020-10-16 04:02:01.889927 |         1 |     0 |   0 |    0 |       0 |
|  3 | hp laptop   | laptop      | laptop                         | images/hp_laptop_naFZBaj.jpg            | True   | hp-laptop   | 2020-10-16 04:02:55.840513 | 2020-10-16 04:02:55.840513 |         1 |     0 |   0 |    0 |       0 |
|  6 | electronics | electronics | electronics                    | images/electronic-equip-mob_KQ5WgAJ.jpg | True   | electronics | 2020-10-16 04:06:08.149871 | 2020-10-16 04:06:08.149871 |      NULL |     0 |   0 |    0 |       0 |
|  7 | vc chips    | chips       | chips                          | images/chips_3p3HKbE.jpg                | True   | chips       | 2020-10-16 04:06:46.207594 | 2020-10-16 04:06:46.207594 |         6 |     0 |   0 |    0 |       0 |
|  8 | Komputer    | Komputer    | Komputer                       | images/Acer_C27_NQ8UdNb.jpg             | True   | Komputer    | 2020-10-21 10:38:23.028099 | 2020-10-21 10:38:23.028099 |      NULL |     0 |   1 |    2 |       1 |
+----+-------------+-------------+--------------------------------+-----------------------------------------+--------+-------------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
6 rows in set (0.01 sec)

mysql> select * from product_category;
+----+-----------+-----------+-------------+-----------------------------+--------+-----------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
| id | title     | keywords  | description | image                       | status | slug      | create_at                  | update_at                  | parent_id | level | lft | rght | tree_id |
+----+-----------+-----------+-------------+-----------------------------+--------+-----------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
|  8 | computers | computers | computers   | images/Acer_C27_NQ8UdNb.jpg | True   | computers | 2020-10-21 10:38:23.028099 | 2020-10-21 14:23:39.686862 |      NULL |     0 |   1 |    2 |       1 |
+----+-----------+-----------+-------------+-----------------------------+--------+-----------+----------------------------+----------------------------+-----------+-------+-----+------+---------+
1 row in set (0.00 sec)