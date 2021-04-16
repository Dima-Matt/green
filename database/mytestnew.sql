-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 16 2021 г., 16:42
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mytest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int NOT NULL,
  `name` varchar(11) NOT NULL,
  `surname` varchar(11) NOT NULL,
  `profession` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `surname`, `profession`, `email`, `phone`) VALUES
(1, 'Иван', 'Иванов', 'слесарь', 'eeee@gggcom', '5555599'),
(2, 'Иван', 'Иванов', 'слесарь', 'eeee@gggcom', '5555599'),
(3, 'Иван', 'Фёдоров', 'техник', 'eeee@ggg.com', '5556633'),
(8, 'Олег', 'Фёдоров', 'разработчик', 'sardukar9548@outlook.com', '336-99-99'),
(9, 'Олег', 'Фёдоров', 'разработчик', 'sardukar9548@outlook.com', '336-99-99'),
(10, 'Дима', 'Иванов', 'прачка', 'eeee@gggcom', '44555555'),
(11, 'jonn', 'Петров', 'слесарь', 'eeee@gggcom', '58555555'),
(12, 'Иван', 'Фёдоров', 'слесарь', 'sardukar9548@outlook.com', '55555555'),
(13, 'jonn', 'maxwell', 'слесарь', 'sardukar9548@outlook.com', '8613930'),
(14, 'Иван', 'Грибов', 'прачка', 'eeee@gggcom', '2552222');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` int NOT NULL,
  `date` date NOT NULL,
  `active` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `text`, `news_id`, `date`, `active`) VALUES
(3, 'ggggg', 'dfgdgfdfgdgf', 1, '2020-11-15', 0),
(4, 'm,vnm,vmn', 'n,nm,m ,m ', 1, '2020-11-16', 0),
(5, 'Иван', 'yj,jmgdh,fhj', 1, '2021-03-15', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `main`
--

INSERT INTO `main` (`id`, `title`, `text`) VALUES
(1, 'ЗДЕСЬ МОЖЕТ БЫТЬ ЧТО УГОДНО', 'Универсальный шаблон HTML5, который с легкостью можно подстроить под любые требования. Он имеет чистый дизайн, адаптивную структуру и приятный внешний вид. Шаблон полностью бесплатный и его можно скачать.');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `preview_text` text NOT NULL,
  `detail_text` text NOT NULL,
  `date` datetime NOT NULL,
  `category_id` int NOT NULL,
  `image` varchar(20) DEFAULT NULL,
  `comment_cnt` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `preview_text`, `detail_text`, `date`, `category_id`, `image`, `comment_cnt`) VALUES
(1, '12-ядерный Ryzen 9 5900X сможет работать на ', 'Это непроверенная информация, но выглядит она вполне правдоподобно\r\nДо анонса новых процессоров AMD осталось всего 10 дней. Уже 8 октября компания ', 'Это непроверенная информация, но выглядит она вполне правдоподобно\r\nДо анонса новых процессоров AMD осталось всего 10 дней. Уже 8 октября компания анонсирует настольные CPU Ryzen 5000. Да, согласно всем последним слухам и утечкам, AMD наконец-то выровняет свои линейки по названиям, так что настольных Ryzen 4000 попросту не будет.\r\n\r\n', '2020-09-23 00:00:00', 1, 'one.png', 1),
(2, 'Зафиксирован гравитационно-волновой след от ', '21 мая 2019 года детекторы гравитационных волн LIGO, расположенные в США, и Virgo, расположенный в Италии, зарегистрировали сигнал от очередного слияния пары черных ', '21 мая 2019 года детекторы гравитационных волн LIGO, расположенные в США, и Virgo, расположенный в Италии, зарегистрировали сигнал от очередного слияния пары черных дыр. Уже после первичной обработки данных стало понятно, что это слияние сильно \r\n Уже после первичной обработки данных стало понятно, что это слияние сильно  \r\n\r\n', '2020-09-23 15:00:00', 2, 'eight.jpg', 0),
(3, 'В джемах, киселях и косметических масках ', 'Варенье из крыжовника называют царским. И не зря. Чтобы приготовить деликатес, придется потрудиться: у каждой ягодки удалить хвостик и ', 'Варенье из крыжовника называют царским. И не зря. Чтобы приготовить деликатес, придется потрудиться: у каждой ягодки удалить хвостик и плодоножку, булавкой извлечь косточки и сварить в заранее подготовленном сиропе из вишневых листьев. Если вы не \r\n\r\n', '2020-10-08 00:00:00', 3, 'six.jpg', 0),
(4, 'Microsoft расследует утечку исходных данных Windows', 'Исходный код операционной системы Windows XP просочился в Сеть. Данные в виде торрента быстро разошлись по Интернету.', 'Исходный код операционной системы Windows XP просочился в Сеть. Данные в виде торрента быстро разошлись по Интернету.\r\nИсходники IT-гиганта не впервые попадают в свободный доступ. Несколько лет назад в сети оказался гигабайт данных, связанных с Windows 10.', '2020-10-01 00:00:00', 4, 'zero.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `response`
--

CREATE TABLE `response` (
  `id` int NOT NULL,
  `name` varchar(22) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `response`
--

INSERT INTO `response` (`id`, `name`, `text`, `date`) VALUES
(1, 'Иван', 'вот это да, братцы!\r\n                ', '2021-03-15'),
(2, 'Игорь', 'отвратительно!!!!\r\n                ', '2021-03-15'),
(3, 'Дима', 'Сойдет\r\n                ', '2021-03-17'),
(4, 'Игорь', '\r\n                очень хорошо', '2021-03-17'),
(5, 'Игорь', '\r\n            hhhhhhhh    ', '2021-03-21'),
(6, 'Игорьyy', '\r\n            yyyyy    ', '2021-03-21'),
(7, 'Игорь', '\r\n          what a wonderful day!\r\n      ', '2021-03-23'),
(8, 'Дима', '\r\n      control          ', '2021-04-16'),
(9, 'Игорь', '\r\n       ggggg!         ', '2021-04-16'),
(10, 'Иван', '\r\n     pop-fashion           ', '2021-04-16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news` ADD FULLTEXT KEY `full_text` (`preview_text`,`detail_text`);
ALTER TABLE `news` ADD FULLTEXT KEY `n_detail` (`detail_text`);

--
-- Индексы таблицы `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `main`
--
ALTER TABLE `main`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `response`
--
ALTER TABLE `response`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
