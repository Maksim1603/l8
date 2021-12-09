-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 09 2021 г., 10:43
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `account_pokypcy`
--

CREATE TABLE `account_pokypcy` (
  `id_p` int(11) NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `balans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `account_pokypcy`
--

INSERT INTO `account_pokypcy` (`id_p`, `login`, `password`, `balans`) VALUES
(1, '16516', '56165', 51153),
(4, '1651', '5659', 7867),
(5, '498496', '49949', 49489),
(6, '1165', '15615', 4694918),
(7, '8426', '2919', 0),
(8, 'dbod', '165', 941);

-- --------------------------------------------------------

--
-- Структура таблицы `account_prodavcy`
--

CREATE TABLE `account_prodavcy` (
  `id_pr` int(11) NOT NULL,
  `login` text NOT NULL,
  `nayavniy_tovar` varchar(50) NOT NULL,
  `reiting` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `account_prodavcy`
--

INSERT INTO `account_prodavcy` (`id_pr`, `login`, `nayavniy_tovar`, `reiting`) VALUES
(8, 'hothortho', 'rmjrokjmro', 4599),
(9, 'yjlpykjpo', 'kpsonkpdoj', 225),
(10, 'tmrnmrokn', 'nmrtomn', 775);

-- --------------------------------------------------------

--
-- Структура таблицы `reester`
--

CREATE TABLE `reester` (
  `id` int(11) NOT NULL,
  `id_pok` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `reester`
--

INSERT INTO `reester` (`id`, `id_pok`, `id_prod`) VALUES
(8, 7, 9),
(9, 6, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account_pokypcy`
--
ALTER TABLE `account_pokypcy`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_p` (`id_p`);

--
-- Индексы таблицы `account_prodavcy`
--
ALTER TABLE `account_prodavcy`
  ADD PRIMARY KEY (`id_pr`),
  ADD KEY `id_prodavcy` (`id_pr`);

--
-- Индексы таблицы `reester`
--
ALTER TABLE `reester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pok` (`id_pok`),
  ADD KEY `id_prod` (`id_prod`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `account_pokypcy`
--
ALTER TABLE `account_pokypcy`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `account_prodavcy`
--
ALTER TABLE `account_prodavcy`
  MODIFY `id_pr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `reester`
--
ALTER TABLE `reester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `reester`
--
ALTER TABLE `reester`
  ADD CONSTRAINT `reester_ibfk_1` FOREIGN KEY (`id_pok`) REFERENCES `account_pokypcy` (`id_p`),
  ADD CONSTRAINT `reester_ibfk_2` FOREIGN KEY (`id_prod`) REFERENCES `account_prodavcy` (`id_pr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
