-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 07 2018 г., 10:11
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `homeworks_gurgen`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Art'),
(2, 'Sport'),
(3, 'Government'),
(4, 'Environmental\r\n'),
(5, 'Politics'),
(6, 'Weather'),
(7, 'Universe');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_of_creating` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `image_path`, `category_id`, `date_of_creating`) VALUES
(1, 'news 1', 'aaaaa aaaaaaaaaaaa aqqq', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test.jpg', 1, '0000-00-00'),
(2, 'title 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesett', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test.jpg', 1, '0000-00-00'),
(23, 'bjsbcjsbjc', 'wdwkd', 'dwjdbnkwn ', '96 (3).jpg ', 6, '2018-08-02'),
(24, 'news conserning iuniverse', 'The Universe is all of space and time[a] and their contents,[10] including planets,', 'The Universe is all of space and time[a] and their contents,[10] including planets, stars, galaxies, and all other forms of matter and energy. While the spatial size of the entire Universe is still unknown,[3] it is possible to measure the observable universe.\r\n\r\nT ', '96 (3).jpg ', 7, '2018-08-02'),
(25, 'There are many', 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '5.jpg ', 1, '2018-08-02'),
(26, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '5.jpg ', 4, '2018-08-02'),
(27, 'Does ugliness have aesthetic value?', 'Hence, beautiful wallpapers can also come in many different', 'Can the ugliness have aesthetic value? And above all, how to define beauty? What aesthetic pleasure is he different from any other pleasure? What is the nature of aesthetic pleasure? Is a beautiful property of things? All these questions have no universally accepted response. Hence, beautiful wallpapers can also come in many different ', '13.jpg ', 1, '2018-08-02'),
(29, 'In pto demonstrate t', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English.In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English.In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English. ', '11.jpg ', 6, '2018-08-02'),
(30, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'to demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate t\r\nContrary to', 'to demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate t ', '10.jpg ', 3, '2018-08-02'),
(31, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'wdnjndwjk', 'wjdiqwkd ', '3.jpg ', 1, '2018-08-02'),
(32, 'there are a lot of environmental issues', 'Our Mother Earth is currently facing lot of environmental concerns. The environmental problems like global warming, acid rain, air pollution, urban', 'Our Mother Earth is currently facing lot of environmental concerns. The environmental problems like global warming, acid rain, air pollution, urban sprawl, waste disposal, ozone layer depletion, water pollution, climate change and many more affect every human, animal and nation on this planet. Over the last few decades, the exploitation of our planet and degradation of our environment have  gone up at an alarming rate. As our actions have been not in favor of protecting this planet, we have seen natural disasters striking us more often in the form of flash floods, tsunamis and cyclones. ', '1.jpg ', 4, '2018-08-02'),
(47, 'wqjdnjqwnd', 'wndkwndnwdn', 'wdbjwbdjw ', '1533226833.jpg ', 1, '2018-08-02'),
(48, 'nuture', 'content from clients can often be a frustrating process), and is used in place o', 'content from clients can often be a frustrating process), and is used in place of meaningful content during the design phase.With roots in classical Latin literature, lorem ipsum has ', '1533226940.jpg ', 6, '2018-08-02'),
(49, 'again test', 'about something', 'just testing ', '1533228447.jpg ', 1, '2018-08-02'),
(51, 'Contrary to popular belief, L', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years', 'vContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years ', '1533228912.jpg ', 6, '2018-08-02'),
(52, 'jnwjnjnwdfjnwjd', 'djndnkq', 'dnqjkdnqndk ', '1533230014.jpg ', 4, '2018-08-02'),
(53, 'fyjgjhjh', 'jbjknknmkk', 'vfgjbnknlki ', '1533501945.jpg ', 5, '2018-08-05'),
(54, 'vjvjbjbj', 'hikml;jij', 'bjbn.knklhlh ', '1533510420.com-logo.svg.png ', 5, '2018-08-06'),
(55, 'Ð¶Ñ…Ð±Ð±Ðº', 'Ñ…ÐºÑƒÐ³Ñ…Ñ†Ñ„ÑŒÑ', 'Ñ…Ð¶Ñ…Ð³Ñ†Ñ„ÑŒÑ…ÑŒÑ† ', '1533511250.jpg ', 5, '2018-08-06'),
(56, 'vbjbjb,jbb', 'cgm n,bkhkh', 'kjbjjhlihlihuh ', '1533511393.com-logo.svg.png ', 5, '2018-08-06');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_category_id_news` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
