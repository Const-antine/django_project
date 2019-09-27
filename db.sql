-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Час створення: Вер 27 2019 р., 01:18
-- Версія сервера: 10.3.18-MariaDB
-- Версія PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `c0nst_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `content_type_id`, `codename`, `name`) VALUES
(1, 1, 'add_logentry', 'Can add log entry'),
(2, 1, 'change_logentry', 'Can change log entry'),
(3, 1, 'delete_logentry', 'Can delete log entry'),
(4, 1, 'view_logentry', 'Can view log entry'),
(5, 2, 'add_permission', 'Can add permission'),
(6, 2, 'change_permission', 'Can change permission'),
(7, 2, 'delete_permission', 'Can delete permission'),
(8, 2, 'view_permission', 'Can view permission'),
(9, 3, 'add_group', 'Can add group'),
(10, 3, 'change_group', 'Can change group'),
(11, 3, 'delete_group', 'Can delete group'),
(12, 3, 'view_group', 'Can view group'),
(13, 4, 'add_user', 'Can add user'),
(14, 4, 'change_user', 'Can change user'),
(15, 4, 'delete_user', 'Can delete user'),
(16, 4, 'view_user', 'Can view user'),
(17, 5, 'add_contenttype', 'Can add content type'),
(18, 5, 'change_contenttype', 'Can change content type'),
(19, 5, 'delete_contenttype', 'Can delete content type'),
(20, 5, 'view_contenttype', 'Can view content type'),
(21, 6, 'add_session', 'Can add session'),
(22, 6, 'change_session', 'Can change session'),
(23, 6, 'delete_session', 'Can delete session'),
(24, 6, 'view_session', 'Can view session'),
(25, 7, 'add_article', 'Can add article'),
(26, 7, 'change_article', 'Can change article'),
(27, 7, 'delete_article', 'Can delete article'),
(28, 7, 'view_article', 'Can view article'),
(29, 8, 'add_author', 'Can add author'),
(30, 8, 'change_author', 'Can change author'),
(31, 8, 'delete_author', 'Can delete author'),
(32, 8, 'view_author', 'Can view author'),
(33, 9, 'add_comments', 'Can add comments'),
(34, 9, 'change_comments', 'Can change comments'),
(35, 9, 'delete_comments', 'Can delete comments'),
(36, 9, 'view_comments', 'Can view comments');

-- --------------------------------------------------------

--
-- Структура таблиці `auth_user`
--

CREATE TABLE `auth_user` (
  `id` tinyint(4) NOT NULL,
  `password` varchar(78) DEFAULT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(8) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL,
  `email` varchar(17) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` datetime(6) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `email`, `is_staff`, `is_active`, `date_joined`, `last_name`) VALUES
(1, 'pbkdf2_sha256$150000$0NWTLIOhDqnA$uddr/Ku0fR76V7nCp/9thHWxrwnvbU3RzbXTrCFRFJw=', '2019-09-25 00:00:00.000000', 1, 'dettlaff', '', 'gorok97@gmail.com', 1, 1, '2019-08-25 00:00:00.000000', ''),
(2, 'pbkdf2_sha256$150000$XIXI0Ej2lUJA$DLuO0sVkj0s33lJvxJWQzENz8H+hRQ6i2bEfBpyamuY=', '2019-09-17 00:00:00.000000', 0, 'geralt', '', '', 0, 1, '2019-09-17 00:00:00.000000', ''),
(3, 'pbkdf2_sha256$150000$ctMZEjG7v5lZ$BJJT6D78fa8a0ecy60EKJ0N+JwGY6E+P8u9D9OSoLUk=', '2019-09-17 00:00:00.000000', 0, 'luthick', '', '', 0, 1, '2019-09-17 00:00:00.000000', ''),
(4, 'pbkdf2_sha256$150000$xKdBVDYV44Jh$vVVRxSfHTJQ3Wv3WkABz7areYiCmq9gL+UJy8G2GOUs=', NULL, 0, 'Constant', '', '', 0, 1, '2019-09-26 00:00:00.000000', ''),
(5, 'pbkdf2_sha256$150000$LOoe0WimqOjZ$BvQdesbRD7nFJ9xiHC4qZbGtMXb3+jllXplzdZEJhag=', NULL, 0, 'Anothero', '', '', 0, 1, '2019-09-26 00:00:00.000000', '');

-- --------------------------------------------------------

--
-- Структура таблиці `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `blog_article`
--

CREATE TABLE `blog_article` (
  `id` tinyint(4) NOT NULL,
  `title` varchar(15) DEFAULT NULL,
  `description` varchar(27) DEFAULT NULL,
  `author_id` tinyint(4) DEFAULT NULL,
  `public_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `blog_article`
--

INSERT INTO `blog_article` (`id`, `title`, `description`, `author_id`, `public_date`) VALUES
(1, 'TestTest', 'I will test the incrementat', 1, '0000-00-00 00:00:00.000000'),
(2, 'Just anothe art', 'This article SHOULD be crea', 2, '0000-00-00 00:00:00.000000'),
(3, 'Soap', 'In this article, I will tel', 3, '2019-09-26 00:00:00.000000');

-- --------------------------------------------------------

--
-- Структура таблиці `blog_author`
--

CREATE TABLE `blog_author` (
  `id` tinyint(4) NOT NULL,
  `biography` varchar(10) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `blog_author`
--

INSERT INTO `blog_author` (`id`, `biography`, `user_id`) VALUES
(1, 'жил да был', 1),
(2, 'The best a', 4),
(3, 'The best a', 2),
(4, 'Just anoth', 5);

-- --------------------------------------------------------

--
-- Структура таблиці `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` tinyint(4) NOT NULL,
  `public_date` datetime(6) DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  `author_id` tinyint(4) DEFAULT NULL,
  `blog_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `public_date`, `content`, `author_id`, `blog_id`) VALUES
(1, '2019-08-25 00:00:00.000000', 'дичь', 1, 1),
(2, '2019-08-25 00:00:00.000000', 'крутая дичь', 1, 1),
(3, '2019-09-05 00:00:00.000000', 'I\'ll be back', 1, 1),
(4, '2019-09-05 00:00:00.000000', 'This comment from smartphone', 1, 1),
(5, '2019-09-26 00:00:00.000000', 'This is not useful at all.\r\n\r\nI paid a lot of money for this subscription.\r\n\r\nThis article is boring!\r\n\r\nGive my money back', 4, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `action_time` datetime(6) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(15) DEFAULT NULL,
  `change_message` varchar(15) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `change_message`, `content_type_id`, `user_id`, `action_flag`) VALUES
(1, '2019-08-25 00:00:00.000000', 1, 'dettlaff', '[{\"added\": {}}]', 8, 1, 1),
(2, '2019-08-25 00:00:00.000000', 1, 'что начинается', '[{\"added\": {}}]', 7, 1, 1),
(3, '2019-08-25 00:00:00.000000', 1, 'дичь', '[{\"added\": {}}]', 9, 1, 1),
(4, '2019-08-25 00:00:00.000000', 2, 'крутая дичь', '[{\"added\": {}}]', 9, 1, 1),
(5, '2019-08-29 00:00:00.000000', 2, 'be or not to be', '[{\"added\": {}}]', 7, 1, 1),
(NULL, '2019-09-25 00:00:00.000000', 0, 'Will check the ', '[{\"added\": {}}]', 7, 1, 1),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 0, 'dubl2', '[{\"added\": {}}]', 7, 1, 1),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 2, 'be or not to be', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-25 00:00:00.000000', 0, 'Const', '[{\"added\": {}}]', 4, 1, 1),
(NULL, '2019-09-25 00:00:00.000000', 0, 'lox', '[{\"added\": {}}]', 4, 1, 1),
(NULL, '2019-09-25 00:00:00.000000', 0, 'TestTest', '[{\"added\": {}}]', 7, 1, 1),
(NULL, '2019-09-25 00:00:00.000000', 0, 'TestTest', '[{\"added\": {}}]', 7, 1, 1),
(NULL, '2019-09-25 00:00:00.000000', 0, 'TestTest', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 4, 'Constantine', '[{\"added\": {}}]', 4, 1, 1),
(NULL, '2019-09-26 00:00:00.000000', 2, 'Constant', '[{\"added\": {}}]', 8, 1, 1),
(NULL, '2019-09-26 00:00:00.000000', 2, 'Just anothe art', '[{\"added\": {}}]', 7, 1, 1),
(NULL, '2019-09-26 00:00:00.000000', 3, 'geralt', '[{\"added\": {}}]', 8, 1, 1),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"added\": {}}]', 7, 1, 1),
(NULL, '2019-09-26 00:00:00.000000', 5, 'Anotherone', '[{\"added\": {}}]', 4, 1, 1),
(NULL, '2019-09-26 00:00:00.000000', 4, 'Anothero', '[{\"added\": {}}]', 8, 1, 1),
(NULL, '2019-09-26 00:00:00.000000', 5, 'This is not use', '[{\"added\": {}}]', 9, 1, 1),
(NULL, '2019-09-26 00:00:00.000000', 5, 'This is not use', '[{\"changed\": {\"', 9, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2),
(NULL, '2019-09-26 00:00:00.000000', 3, 'Soap', '[{\"changed\": {\"', 7, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blog', 'article'),
(8, 'blog', 'author'),
(9, 'blog', 'comments'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблиці `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-08-24 00:00:00.000000'),
(2, 'auth', '0001_initial', '2019-08-24 00:00:00.000000'),
(3, 'admin', '0001_initial', '2019-08-24 00:00:00.000000'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-08-24 00:00:00.000000'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-08-24 00:00:00.000000'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-08-24 00:00:00.000000'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-08-24 00:00:00.000000'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-08-24 00:00:00.000000'),
(9, 'auth', '0004_alter_user_username_opts', '2019-08-24 00:00:00.000000'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-08-24 00:00:00.000000'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-08-24 00:00:00.000000'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-08-24 00:00:00.000000'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-08-24 00:00:00.000000'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-08-24 00:00:00.000000'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-08-24 00:00:00.000000'),
(16, 'auth', '0011_update_proxy_permissions', '2019-08-24 00:00:00.000000'),
(17, 'sessions', '0001_initial', '2019-08-24 00:00:00.000000'),
(18, 'blog', '0001_initial', '2019-08-24 00:00:00.000000'),
(19, 'blog', '0002_auto_20190825_0013', '2019-08-24 00:00:00.000000');

-- --------------------------------------------------------

--
-- Структура таблиці `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(252) DEFAULT NULL,
  `expire_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7mp42cl9k9ah8r1bbqxclx5c4p2dwjo2', 'MDZkYWZkZDYzYjg5NGJiNmE0OTgwZThjY2E0ZGRiMzNkNTYzZWMxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYzc0NjI3OTU5NjY2MjRhZjYzNDRhNGQzZjcwMjQ1NWEzY2QxZGNkIn0=', '2019-09-19 00:00:00.000000'),
('3cluvntwm7368kwatd8fmx96y4kdgqaf', 'MDZkYWZkZDYzYjg5NGJiNmE0OTgwZThjY2E0ZGRiMzNkNTYzZWMxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYzc0NjI3OTU5NjY2MjRhZjYzNDRhNGQzZjcwMjQ1NWEzY2QxZGNkIn0=', '2019-10-09 00:00:00.000000'),
('qqff5b9y2y8umnca7rjfiy5poqlc9wcq', 'MDZkYWZkZDYzYjg5NGJiNmE0OTgwZThjY2E0ZGRiMzNkNTYzZWMxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYzc0NjI3OTU5NjY2MjRhZjYzNDRhNGQzZjcwMjQ1NWEzY2QxZGNkIn0=', '2019-10-09 00:00:00.000000');

-- --------------------------------------------------------

--
-- Структура таблиці `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('django_migrations', 19),
('django_admin_log', 5),
('django_content_type', 9),
('auth_permission', 36),
('auth_user', 3),
('auth_group', 0),
('blog_article', 2),
('blog_author', 1),
('blog_comments', 4);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `blog_author`
--
ALTER TABLE `blog_author`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `blog_author`
--
ALTER TABLE `blog_author`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
