-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 20 2020 г., 07:52
-- Версия сервера: 5.7.27-0ubuntu0.16.04.1-log
-- Версия PHP: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Структура таблицы `gallery_motorshow_places`
--

CREATE TABLE `gallery_motorshow_places` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL COMMENT 'Название',
  `url` varchar(100) DEFAULT NULL COMMENT 'URL'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Галереи автосалонов - Места';

--
-- Дамп данных таблицы `gallery_motorshow_places`
--

INSERT INTO `gallery_motorshow_places` (`id`, `title`, `url`) VALUES
(1, 'Женева', 'geneva'),
(2, 'Нью-Йорк', 'new_york'),
(3, 'Шанхай', 'shanghai'),
(4, 'Франкфурт', 'frankfurt'),
(5, 'Детроит', 'detroit'),
(6, 'Токио', 'tokyo');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gallery_motorshow_places`
--
ALTER TABLE `gallery_motorshow_places`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gallery_motorshow_places`
--
ALTER TABLE `gallery_motorshow_places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
