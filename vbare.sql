-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 07 2023 г., 19:34
-- Версия сервера: 5.7.33-log
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vbare`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cockteils`
--

CREATE TABLE `cockteils` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alco` varchar(50) NOT NULL,
  `quantity_alco` int(11) NOT NULL,
  `juice` varchar(50) NOT NULL,
  `quantity_juice` int(11) NOT NULL,
  `sirop` varchar(50) NOT NULL,
  `quantity_sirop` int(11) NOT NULL,
  `additionally` text NOT NULL,
  `quantity_add` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cockteils`
--

INSERT INTO `cockteils` (`id`, `name`, `alco`, `quantity_alco`, `juice`, `quantity_juice`, `sirop`, `quantity_sirop`, `additionally`, `quantity_add`, `grade`, `img`) VALUES
(1, 'Джин тоник', 'Джин', 50, 'Тоник', 150, '', 0, 'Лайм', 20, 1, 'icon_1629735247-Джин_тоник.jpg'),
(2, 'Дайкири', 'Ром', 50, 'Лаймовый', 30, 'Сахар', 30, '', 0, 2, 'icon_1629712406-Дайкири.jpg'),
(3, 'Текила Санрайз', 'Текила', 50, 'Апельсиновый сок', 150, 'Гренадин', 10, 'Апельсин', 30, 2, 'icon_1629735150-Текила_санрайз.jpg'),
(4, 'Куба Либре', 'Ром', 50, 'Кола', 140, 'Лаймовый сок', 10, 'Лайм', 20, 2, 'icon_1629717664-Куба_либре.jpg'),
(5, 'Отвертка', 'Водка', 50, 'Апельсиновый сок', 150, '', 0, 'Апельсин', 30, 3, 'icon_1629735771-Отвертка.jpg'),
(6, 'Мартини Тоник', 'Вермут', 100, 'Тоник', 100, '', 0, 'Лайм', 60, 4, 'icon_1556309672-Martini_Tonic-HiRes.jpg'),
(7, 'Виски кола', 'Виски', 50, 'Кола', 150, '', 0, '', 0, 4, 'icon_1557247687-Whiskey-Cola__highres1.jpg'),
(8, 'Водка тоник', 'Водка', 50, 'Тоник', 135, 'Лимонный сок', 15, 'Лимон', 40, 1, 'icon_1557241771-Vodka-and-Tonic__highres.jpg'),
(9, 'Мимоза', 'Просекко', 90, 'Апельсиновый сок', 90, '', 0, '', 0, 4, 'icon_1629726619-Мимоза.jpg'),
(10, 'Гарибальди', 'Красный биттер', 50, 'Апельсиновый сок', 150, '', 0, 'Апельсиновая цедра', 1, 3, 'icon_1556007932-Garibaldi__highres.jpg'),
(11, 'Кайпиринья', 'Кашаса', 50, '', 0, 'Сахарный', 10, 'Лайм', 40, 3, 'icon_1629713566-Кайпиринья.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `cocktail_id` int(11) NOT NULL,
  `recipe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `recipe`
--

INSERT INTO `recipe` (`id`, `cocktail_id`, `recipe`) VALUES
(1, 1, 'Наполни хайбол кубиками льда доверху\r\nНалей джин 50 мл\r\nДолей тоник доверху и аккуратно размешай коктейльной ложкой\r\nУкрась кружками лайма'),
(2, 2, 'Налей в шейкер лаймовый сок 30 мл, сахарный сироп 15 мл и белый ром 60 мл\r\nНаполни шейкер кубиками льда и взбей\r\nПерелей через стрейнер в охлажденное шампанское блюдце'),
(3, 3, 'Наполни хайбол кубиками льда доверху\r\nНалей гренадин 10 мл и серебряную текилу 50 мл\r\nДолей апельсиновый сок доверху и аккуратно размешай коктейльной ложкой\r\nУкрась кружком апельсина'),
(4, 4, 'Наполни хайбол кубиками льда доверху\r\nНалей лаймовый сок 10 мл и золотой ром 50 мл\r\nДолей колу доверху и аккуратно размешай коктейльной ложкой\r\nУкрась кружками лайма'),
(5, 5, 'Наполни коллинз кубиками льда доверху\r\nНалей водку 50 мл\r\nДолей апельсиновый сок доверху и аккуратно размешай коктейльной ложкой\r\nУкрась долькой апельсина'),
(6, 6, 'Наполни бокал для вина льдом\r\nВыжми в бокал сок дольки лайма и налей белый вермут 100 мл\r\nДолей тоник доверху и аккуратно размешай коктейльной ложкой\r\nУкрась кружками лайма'),
(7, 7, 'Наполни хайбол кубиками льда доверху\r\nНалей американский виски 50 мл\r\nДолей колу доверху и аккуратно размешай коктейльной ложкой'),
(8, 8, 'Наполни хайбол кубиками льда доверху\r\nНалей лимонный сок 15 мл и водку 50 мл\r\nДолей тоник доверху и аккуратно размешай коктейльной ложкой\r\nУкрась долькой лимона'),
(9, 9, 'Налей в охлажденный бокал флюте апельсиновый сок 90 мл\r\nДолей просекко доверху и аккуратно размешай коктейльной ложкой'),
(10, 10, 'Наполни хайбол кубиками льда доверху\r\nНалей красный биттер 50 мл\r\nДолей апельсиновый сок доверху и аккуратно размешай коктейльной ложкой\r\nУкрась апельсиновой цедрой'),
(11, 11, 'Положи в рокс порезанную на кубики половинку лайма и подави мадлером\r\nНалей сахарный сироп 10 мл и кашасу 50 мл\r\nНаполни рокс дробленым льдом и размешай коктейльной ложкой\r\nДосыпь немного дробленого льда');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'log', 'pass'),
(2, 'log', 'pass\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `user_comment`
--

CREATE TABLE `user_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cockteil_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cockteils`
--
ALTER TABLE `cockteils`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cockteils`
--
ALTER TABLE `cockteils`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
