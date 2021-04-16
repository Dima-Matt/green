-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 15 2021 г., 22:16
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
-- База данных: `test1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int NOT NULL,
  `title_small` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_big` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_small` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_big` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `title_small`, `title_big`, `text_small`, `text_big`) VALUES
(1, 'Все о нашей компании', 'Чего мы хотим', 'CHAR(size)	Строки фиксированной длиной (могут содержать буквы, цифры и специальные символы). Фиксированный размер указан в скобках. Можно записать до 255 символов\r\nVARCHAR(size)	Может хранить не более 255 символов.\r\nTINYTEXT	Может хранить не более 255 символов.\r\nTEXT	Может хранить не более 65 535 символов.\r\nBLOB	Может хранить не более 65 535 символов.\r\nMEDIUMTEXT	Может хранить не более 16 777 215 символов.\r\nMEDIUMBLOB	Может хранить не более 16 777 215 символов.\r\nLONGTEXT	Может хранить не более 4 294 967 295 символов.\r\nLONGBLOB	Может хранить не более 4 294 967 295 символов.\r\nENUM(x,y,z,etc.)	Позволяет вводить список допустимых значений. Можно ввести до 65535 значений в SQL Тип данных ENUM список. Если при вставке значения не будет присутствовать в списке ENUM, то мы получим пустое значение.\r\nВвести возможные значения можно в таком формате: ENUM ( \'X\', \'Y\', \'Z\')\r\nSET	SQL Тип данных SET напоминает ENUM за исключением того, что SET может содержать до 64 значений.', 'Типы данных Oracle\r\nТипы данных Oracle разделяются на следующие группы:\r\n\r\nСНAR – фиксированные текстовые строки до 2000 байт. Значение типа CHAR дополняется до указанной длины пробелами.\r\nVARCHAR 2 — текстовые строки переменной длины до 4000 байт.\r\nNUMBER — числовые данные.\r\nDECIMAL — числовые данные\r\nDATE — используется для хранения дат.\r\nRAW — используется для хранения двоичных данных до 2000 байт.\r\nLONG — используется для хранения текстовых данных длиной до 2 ГБ\r\nLONG RAW — используется для хранения двоичных данных до 2 ГБ\r\nROWID — используется для хранения идентификаторов ROWID базы данных Oracle в специальном формате (адреса строк таблицы).\r\nBLOB — сохраняется до 4 ГБ двоичных данных. Данные этого типа хранятся вне таблицы, а в таблице Oracle находятся лишь указатели на объекты\r\nCLOB, NCLOB — сохраняется до 4 ГБ текстовых данных. NCLOB – это тип данных NLS большой фиксированной длины (NLS означает National Language Set – набор для национальных языков – и используется для работы в Oracle на языках, отличных от английского. В английском для хранения одного символа нужен 1 байт, а в некоторых языках мира с наборами больших символов (японском, китайском, корейском), языках, где текст читается справа налево (арабский, иврит) для хранения одного символа требуется несколько байт). Данные этого типа хранятся вне таблицы, а в таблице находятся лишь указатели на объекты.\r\nBFILE — сохраняется до 4 ГБ неструктурированных данных, причем в файлах операционной системы (внешние файлы).\r\nANSI SQL стандарт распознает только текст и число, в то время как большинство коммерческих программ используют другие специальные типы, такие как DATЕ и TIME — фактически почти стандартные типы. Некоторые пакеты также поддерживают такие типы, как, например, MONEY и BINARY. Типы данных, распознаваемые с помощью ANSI, состоят из строк символов и различных типов чисел, которые могут классифицироваться как точные числа и приблизительные числа.');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Технологии'),
(2, 'Наука'),
(3, 'Медицина'),
(4, 'Интернет');

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
(7, 'Игорь', '\r\n          what a wonderful day!\r\n      ', '2021-03-23');

-- --------------------------------------------------------

--
-- Структура таблицы `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`) VALUES
(1, 'kikiki@mail.ru'),
(2, 'ggggg44@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `support`
--

CREATE TABLE `support` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bigtext` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `support`
--

INSERT INTO `support` (`id`, `title`, `text`, `bigtext`) VALUES
(1, 'One', 'Микаэла Амбарцумяна назначили и.о. директора Службы нацбезопасности 8 октября. Его предшественник проработал на этой должности четыре месяца. Новым главой Службы станет замдиректора Армен Абазян\r\n\r\n', ''),
(2, 'Two', 'В нем говорится, что Амбарцумян освобождается от должности «по предложению премьер-министра».\r\n\r\n', ''),
(3, 'Two', 'В конце октября в Нагорном Карабахе сообщали о близости азербайджанских войск к Шуши. Тогда президент непризнанной республики Араик Арутюнян уточнял, что военные Азербайджана находятся максимум в пяти километрах от города.\r\n\r\n', ''),
(4, 'Four', 'Подробнее на РБК:\r\nhttps://www.rbc.ru/politics/08/11/2020/5fa7f3579a79475e3e6041e3?from=from_main_4', ''),
(17, 'One', 'Микаэла Амбарцумяна назначили и.о. директора Службы нацбезопасности 8 октября. Его предшественник проработал на этой должности четыре месяца. Новым главой Службы станет замдиректора Армен Абазян\r\n\r\n', ''),
(18, 'Two', 'В нем говорится, что Амбарцумян освобождается от должности «по предложению премьер-министра».\r\n\r\n', ''),
(19, 'Two', 'В конце октября в Нагорном Карабахе сообщали о близости азербайджанских войск к Шуши. Тогда президент непризнанной республики Араик Арутюнян уточнял, что военные Азербайджана находятся максимум в пяти километрах от города.\r\n\r\n', ''),
(20, 'Four', 'Подробнее на РБК:\r\nhttps://www.rbc.ru/politics/08/11/2020/5fa7f3579a79475e3e6041e3?from=from_main_4', ''),
(21, 'One', 'Микаэла Амбарцумяна назначили и.о. директора Службы нацбезопасности 8 октября. Его предшественник проработал на этой должности четыре месяца. Новым главой Службы станет замдиректора Армен Абазян\r\n\r\n', ''),
(22, 'Two', 'В нем говорится, что Амбарцумян освобождается от должности «по предложению премьер-министра».\r\n\r\n', ''),
(23, 'Two', 'В конце октября в Нагорном Карабахе сообщали о близости азербайджанских войск к Шуши. Тогда президент непризнанной республики Араик Арутюнян уточнял, что военные Азербайджана находятся максимум в пяти километрах от города.\r\n\r\n', ''),
(24, 'Four', 'Подробнее на РБК:\r\nhttps://www.rbc.ru/politics/08/11/2020/5fa7f3579a79475e3e6041e3?from=from_main_4', ''),
(25, 'One', 'Микаэла Амбарцумяна назначили и.о. директора Службы нацбезопасности 8 октября. Его предшественник проработал на этой должности четыре месяца. Новым главой Службы станет замдиректора Армен Абазян\r\n\r\n', ''),
(26, 'Two', 'В нем говорится, что Амбарцумян освобождается от должности «по предложению премьер-министра».\r\n\r\n', ''),
(27, 'Two', 'В конце октября в Нагорном Карабахе сообщали о близости азербайджанских войск к Шуши. Тогда президент непризнанной республики Араик Арутюнян уточнял, что военные Азербайджана находятся максимум в пяти километрах от города.\r\n\r\n', ''),
(28, 'Four', 'Подробнее на РБК:\r\nhttps://www.rbc.ru/politics/08/11/2020/5fa7f3579a79475e3e6041e3?from=from_main_4', ''),
(29, 'One', 'После начала вакцинации от COVID-19 в США наблюдается резкий спрос на бронирование путешествий. Люди нередко покупают поездки уже после первой прививки, а среди популярных направлений такие малолюдные места, как Антарктида\r\n\r\n', 'После начала вакцинации от COVID-19 в США наблюдается резкий спрос на бронирование путешествий. Люди нередко покупают поездки уже после первой прививки, а среди популярных направлений такие малолюдные места, как Антарктида\r\nПосле того как стал доступен первый раунд вакцинации, число запросов выросло на четверть, сообщила президент компании Tafari Travel Лия Смит. По ее словам, люди, получившие первый компонент вакцины, готовы планировать поездки сразу на два года, а в некоторых письмах встречаются запросы даже на четыре путешествия.\r\n\r\nЛюди, которые до пандемии путешествовали по пять-семь раз в год и для кого путешествия были образом жизни, собираются не внуков навестить, а совершают «праздничные поездки», пояснила в беседе с агентством партнер премиальной консалтинговой компании в сфере туризма Local Foreigner Брук Лейвери.\r\n\r\n'),
(30, 'Two', 'первый компонент вакцины, готовы планировать поездки сразу на два года, а в некоторых письмах встречаются запросы даже на четыре путешествия.', 'После того как стал доступен первый раунд вакцинации, число запросов выросло на четверть, сообщила президент компании Tafari Travel Лия Смит. По ее словам, люди, получившие первый компонент вакцины, готовы планировать поездки сразу на два года, а в некоторых письмах встречаются запросы даже на четыре путешествия.\r\n\r\nЛюди, которые до пандемии путешествовали по пять-семь раз в год и для кого путешествия были образом жизни, собираются не внуков навестить, а совершают «праздничные поездки», пояснила в беседе с агентством партнер премиальной консалтинговой компании в сфере туризма Local Foreigner Брук Лейвери.\r\n\r\nПодробнее на РБК:\r\nhttps://www.rbc.ru/society/07/03/2021/6044f0f99a7947bb51cde2ad?from=from_main_5');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `tags`, `news_id`) VALUES
(1, '1', 1),
(2, '1', 1),
(3, '11', 1),
(4, '12', 2),
(6, '4444', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `support`
--
ALTER TABLE `support`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
