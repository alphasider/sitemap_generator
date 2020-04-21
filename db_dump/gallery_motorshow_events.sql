-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 20 2020 г., 07:48
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
-- Структура таблицы `gallery_motorshow_events`
--

CREATE TABLE `gallery_motorshow_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL COMMENT 'Место',
  `year` year(4) DEFAULT NULL COMMENT 'Год',
  `period` varchar(50) NOT NULL COMMENT 'Дата проведения',
  `link_news` varchar(50) NOT NULL COMMENT 'Ссылка на новости'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Галереи: Автосалоны: События';

--
-- Дамп данных таблицы `gallery_motorshow_events`
--

INSERT INTO `gallery_motorshow_events` (`id`, `place_id`, `year`, `period`, `link_news`) VALUES
(1, 1, 2015, 'с 5 по 15 марта', ''),
(2, 4, 2015, 'с 17 по 27 сентября', ''),
(3, 5, 2016, 'с 11 по 24 января', ''),
(4, 6, 2015, 'с 28 октября по 11 ноября', ''),
(5, 2, 2015, 'с 1 по 12 апреля', ''),
(6, 3, 2015, 'с 20 по 29 апреля', ''),
(7, 6, 2016, '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gallery_motorshow_events`
--
ALTER TABLE `gallery_motorshow_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gallery_motorshow_events_gallery_motorshow_places` (`place_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gallery_motorshow_events`
--
ALTER TABLE `gallery_motorshow_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `gallery_motorshow_events`
--
ALTER TABLE `gallery_motorshow_events`
  ADD CONSTRAINT `FK_gallery_motorshow_events_gallery_motorshow_places` FOREIGN KEY (`place_id`) REFERENCES `gallery_motorshow_places` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
