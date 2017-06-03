-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 03 2017 г., 18:07
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii4`
--

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('MD', 'Moldova', 9000000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1494661279),
('m170502_174328_create_test_table', 1494661300),
('m170513_072752_create_user_table', 1494661300),
('m170517_153522_create_news_table', 1495037785);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `flag` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `text`, `img`, `date`, `flag`) VALUES
(1, 'Первая новость', 'Какой-то текст первой новости, Какой-то текст первой новости, Какой-то текст первой новости, Какой-то текст первой новости, Какой-то текст первой новости, Какой-то текст первой новости, Какой-то текст первой новости, Какой-то текст первой новости.', '1.jpg', '2017-05-18', 0),
(2, 'Вторая новость', 'Какой-то текст второй новости, Какой-то текст второй новости, Какой-то текст второй новости, Какой-то текст второй новости, Какой-то текст второй новости, Какой-то текст второй новости, Какой-то текст второй новости, Какой-то текст второй новости, Какой-то текст второй новости, ', '2.jpg', '2017-05-11', 0),
(3, 'Третья новость', 'Какой-то текст третьей новости, Какой-то текст третьей новости, Какой-то текст третьей новости, Какой-то текст третьей новости, Какой-то текст третьей новости, Какой-то текст третьей новости, Какой-то текст третьей новости, Какой-то текст третьей новости, Какой-то текст третьей новости, Какой-то текст третьей новости,', '3.jpg', '2017-05-06', 0),
(4, 'Четвертая новость', 'Какой-то текст четвертой новости, Какой-то текст четвертой новости, Какой-то текст четвертой новости, Какой-то текст четвертой новости, Какой-то текст четвертой новости, Какой-то текст четвертой новости, Какой-то текст четвертой новости, Какой-то текст четвертой новости, ', '4.jpg', '2017-05-13', 0),
(5, 'Пятая новость', 'Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, Текст пятой новости, ', '5.jpg', '2017-05-11', 0),
(6, 'Шестая новость', 'Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, Какой-то текст шестой новости, ', '6.jpg', '2017-05-30', 0),
(7, 'Седьмая новость', 'Какой-то текст седьмой новости, Какой-то текст седьмой новости, Какой-то текст седьмой новости, Какой-то текст седьмой новости, Какой-то текст седьмой новости, Какой-то текст седьмой новости, Какой-то текст седьмой новости, Какой-то текст седьмой новости,  ', '7.jpg', '2017-05-06', 0),
(8, 'Восьмая новость', 'Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, Какой-то текст восьмой новости, ', '8.jpg', '2017-05-31', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `pass`, `first_name`, `last_name`) VALUES
(1, 'anastasia', '827ccb0eea8a706c4c34a16891f84e7b', 'anastasia', 'tikhonova');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
