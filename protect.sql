-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 15 2017 г., 10:51
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.4.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `protect`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Csv`
--

CREATE TABLE IF NOT EXISTS `Csv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` text NOT NULL,
  `project` text NOT NULL,
  `workers` text NOT NULL,
  `duration` int(11) NOT NULL,
  `time` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- Дамп данных таблицы `Csv`
--

INSERT INTO `Csv` (`id`, `activity`, `project`, `workers`, `duration`, `time`) VALUES
(3, 'проверка ПР по рбаку', 'hotcrm', 'k0ndaa', 1, '2:51pm March 3rd – 2:51pm March 3rd\r\n'),
(4, 'проверка ПР по рбаку', 'hotcrm', 'k0ndaa', 54, '1:58pm March 3rd – 2:51pm March 3rd\r\n'),
(5, 'чиним миграции', 'hotcrm', 'k0ndaa', 6, '5:20pm March 2nd – 5:26pm March 2nd\r\n'),
(6, 'чиним миграции', 'hotcrm', 'k0ndaa', 28, '4:52pm March 2nd – 5:20pm March 2nd\r\n'),
(7, 'чиним миграции', 'hotcrm', 'k0ndaa', 32, '4:20pm March 2nd – 4:52pm March 2nd\r\n'),
(8, 'автодеплой', 'hotcrm', 'k0ndaa', 27, '3:52pm March 2nd – 4:20pm March 2nd\r\n'),
(9, 'автодеплой', 'hotcrm', 'k0ndaa', 23, '3:29pm March 2nd – 3:52pm March 2nd\r\n'),
(10, 'автодеплой', 'hotcrm', 'k0ndaa', 39, '2:50pm March 2nd – 3:29pm March 2nd\r\n'),
(11, 'автодеплой', 'hotcrm', 'k0ndaa', 15, '2:10pm March 2nd – 2:25pm March 2nd\r\n'),
(12, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '1:40pm March 2nd – 2:10pm March 2nd\r\n'),
(13, 'автодеплой', 'hotcrm', 'k0ndaa', 9, '12:37pm March 2nd – 12:46pm March 2nd\r\n'),
(14, 'автодеплой', 'hotcrm', 'k0ndaa', 33, '12:03pm March 2nd – 12:37pm March 2nd\r\n'),
(15, 'автодеплой', 'hotcrm', 'k0ndaa', 38, '11:25am March 2nd – 12:03pm March 2nd\r\n'),
(16, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '10:55am March 2nd – 11:25am March 2nd\r\n'),
(17, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '10:25am March 2nd – 10:55am March 2nd\r\n'),
(18, 'автодеплой', 'hotcrm', 'k0ndaa', 5, '4:39pm March 1st – 4:44pm March 1st\r\n'),
(19, 'автодеплой', 'hotcrm', 'k0ndaa', 22, '4:16pm March 1st – 4:39pm March 1st\r\n'),
(20, 'баг пустіх полей', 'hotcrm', 'k0ndaa', 8, '4:08pm March 1st – 4:16pm March 1st\r\n'),
(21, 'баг пустіх полей', 'hotcrm', 'k0ndaa', 23, '3:46pm March 1st – 4:08pm March 1st\r\n'),
(22, 'автодеплой', 'hotcrm', 'k0ndaa', 1, '3:46pm March 1st – 3:46pm March 1st\r\n'),
(23, 'автодеплой', 'hotcrm', 'k0ndaa', 42, '3:04pm March 1st – 3:46pm March 1st\r\n'),
(24, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '2:34pm March 1st – 3:04pm March 1st\r\n'),
(25, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '2:04pm March 1st – 2:34pm March 1st\r\n'),
(26, 'доработка карточки', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(27, 'Перегруз', 'hotcrm', 'k0ndaa', 148, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(28, 'доработка карточки', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(29, 'Перегруз', 'hotcrm', 'k0ndaa', 148, '1:28pm March 1st – 1:56pm March 1st'),
(30, 'проверка ПР по рбаку', 'hotcrm', 'k0ndaa', 1, '2:51pm March 3rd – 2:51pm March 3rd\r\n'),
(31, 'проверка ПР по рбаку', 'hotcrm', 'k0ndaa', 54, '1:58pm March 3rd – 2:51pm March 3rd\r\n'),
(32, 'чиним миграции', 'hotcrm', 'k0ndaa', 6, '5:20pm March 2nd – 5:26pm March 2nd\r\n'),
(33, 'чиним миграции', 'hotcrm', 'k0ndaa', 28, '4:52pm March 2nd – 5:20pm March 2nd\r\n'),
(34, 'чиним миграции', 'hotcrm', 'k0ndaa', 32, '4:20pm March 2nd – 4:52pm March 2nd\r\n'),
(35, 'автодеплой', 'hotcrm', 'k0ndaa', 27, '3:52pm March 2nd – 4:20pm March 2nd\r\n'),
(36, 'автодеплой', 'hotcrm', 'k0ndaa', 23, '3:29pm March 2nd – 3:52pm March 2nd\r\n'),
(37, 'автодеплой', 'hotcrm', 'k0ndaa', 39, '2:50pm March 2nd – 3:29pm March 2nd\r\n'),
(38, 'автодеплой', 'hotcrm', 'k0ndaa', 15, '2:10pm March 2nd – 2:25pm March 2nd\r\n'),
(39, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '1:40pm March 2nd – 2:10pm March 2nd\r\n'),
(40, 'автодеплой', 'hotcrm', 'k0ndaa', 9, '12:37pm March 2nd – 12:46pm March 2nd\r\n'),
(41, 'автодеплой', 'hotcrm', 'k0ndaa', 33, '12:03pm March 2nd – 12:37pm March 2nd\r\n'),
(42, 'автодеплой', 'hotcrm', 'k0ndaa', 38, '11:25am March 2nd – 12:03pm March 2nd\r\n'),
(43, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '10:55am March 2nd – 11:25am March 2nd\r\n'),
(44, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '10:25am March 2nd – 10:55am March 2nd\r\n'),
(45, 'автодеплой', 'hotcrm', 'k0ndaa', 5, '4:39pm March 1st – 4:44pm March 1st\r\n'),
(46, 'автодеплой', 'hotcrm', 'k0ndaa', 22, '4:16pm March 1st – 4:39pm March 1st\r\n'),
(47, 'баг пустіх полей', 'hotcrm', 'k0ndaa', 8, '4:08pm March 1st – 4:16pm March 1st\r\n'),
(48, 'баг пустіх полей', 'hotcrm', 'k0ndaa', 23, '3:46pm March 1st – 4:08pm March 1st\r\n'),
(49, 'автодеплой', 'hotcrm', 'k0ndaa', 1, '3:46pm March 1st – 3:46pm March 1st\r\n'),
(50, 'автодеплой', 'hotcrm', 'k0ndaa', 42, '3:04pm March 1st – 3:46pm March 1st\r\n'),
(51, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '2:34pm March 1st – 3:04pm March 1st\r\n'),
(52, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '2:04pm March 1st – 2:34pm March 1st\r\n'),
(53, 'доработка карточки', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(54, 'Перегруз', 'hotcrm', 'k0ndaa', 148, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(55, 'доработка карточки', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(56, 'Перегруз', 'hotcrm', 'k0ndaa', 148, '1:28pm March 1st – 1:56pm March 1st'),
(57, 'проверка ПР по рбаку', 'hotcrm', 'k0ndaa', 1, '2:51pm March 3rd – 2:51pm March 3rd\r\n'),
(58, 'проверка ПР по рбаку', 'hotcrm', 'k0ndaa', 54, '1:58pm March 3rd – 2:51pm March 3rd\r\n'),
(59, 'чиним миграции', 'hotcrm', 'k0ndaa', 6, '5:20pm March 2nd – 5:26pm March 2nd\r\n'),
(60, 'чиним миграции', 'hotcrm', 'k0ndaa', 28, '4:52pm March 2nd – 5:20pm March 2nd\r\n'),
(61, 'чиним миграции', 'hotcrm', 'k0ndaa', 32, '4:20pm March 2nd – 4:52pm March 2nd\r\n'),
(62, 'автодеплой', 'hotcrm', 'k0ndaa', 27, '3:52pm March 2nd – 4:20pm March 2nd\r\n'),
(63, 'автодеплой', 'hotcrm', 'k0ndaa', 23, '3:29pm March 2nd – 3:52pm March 2nd\r\n'),
(64, 'автодеплой', 'hotcrm', 'k0ndaa', 39, '2:50pm March 2nd – 3:29pm March 2nd\r\n'),
(65, 'автодеплой', 'hotcrm', 'k0ndaa', 15, '2:10pm March 2nd – 2:25pm March 2nd\r\n'),
(66, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '1:40pm March 2nd – 2:10pm March 2nd\r\n'),
(67, 'автодеплой', 'hotcrm', 'k0ndaa', 9, '12:37pm March 2nd – 12:46pm March 2nd\r\n'),
(68, 'автодеплой', 'hotcrm', 'k0ndaa', 33, '12:03pm March 2nd – 12:37pm March 2nd\r\n'),
(69, 'автодеплой', 'hotcrm', 'k0ndaa', 38, '11:25am March 2nd – 12:03pm March 2nd\r\n'),
(70, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '10:55am March 2nd – 11:25am March 2nd\r\n'),
(71, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '10:25am March 2nd – 10:55am March 2nd\r\n'),
(72, 'автодеплой', 'hotcrm', 'k0ndaa', 5, '4:39pm March 1st – 4:44pm March 1st\r\n'),
(73, 'автодеплой', 'hotcrm', 'k0ndaa', 22, '4:16pm March 1st – 4:39pm March 1st\r\n'),
(74, 'баг пустіх полей', 'hotcrm', 'k0ndaa', 8, '4:08pm March 1st – 4:16pm March 1st\r\n'),
(75, 'баг пустіх полей', 'hotcrm', 'k0ndaa', 23, '3:46pm March 1st – 4:08pm March 1st\r\n'),
(76, 'автодеплой', 'hotcrm', 'k0ndaa', 1, '3:46pm March 1st – 3:46pm March 1st\r\n'),
(77, 'автодеплой', 'hotcrm', 'k0ndaa', 42, '3:04pm March 1st – 3:46pm March 1st\r\n'),
(78, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '2:34pm March 1st – 3:04pm March 1st\r\n'),
(79, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '2:04pm March 1st – 2:34pm March 1st\r\n'),
(80, 'доработка карточки', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(81, 'Перегруз', 'hotcrm', 'k0ndaa', 148, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(82, 'доработка карточки', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(83, 'Перегруз', 'hotcrm', 'k0ndaa', 148, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(84, 'Ион', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st'),
(85, 'проверка ПР по рбаку', 'hotcrm', 'k0ndaa', 1, '2:51pm March 3rd – 2:51pm March 3rd\r\n'),
(86, 'проверка ПР по рбаку', 'hotcrm', 'k0ndaa', 54, '1:58pm March 3rd – 2:51pm March 3rd\r\n'),
(87, 'чиним миграции', 'hotcrm', 'k0ndaa', 6, '5:20pm March 2nd – 5:26pm March 2nd\r\n'),
(88, 'чиним миграции', 'hotcrm', 'k0ndaa', 28, '4:52pm March 2nd – 5:20pm March 2nd\r\n'),
(89, 'чиним миграции', 'hotcrm', 'k0ndaa', 32, '4:20pm March 2nd – 4:52pm March 2nd\r\n'),
(90, 'автодеплой', 'hotcrm', 'k0ndaa', 27, '3:52pm March 2nd – 4:20pm March 2nd\r\n'),
(91, 'автодеплой', 'hotcrm', 'k0ndaa', 23, '3:29pm March 2nd – 3:52pm March 2nd\r\n'),
(92, 'автодеплой', 'hotcrm', 'k0ndaa', 39, '2:50pm March 2nd – 3:29pm March 2nd\r\n'),
(93, 'автодеплой', 'hotcrm', 'k0ndaa', 15, '2:10pm March 2nd – 2:25pm March 2nd\r\n'),
(94, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '1:40pm March 2nd – 2:10pm March 2nd\r\n'),
(95, 'автодеплой', 'hotcrm', 'k0ndaa', 9, '12:37pm March 2nd – 12:46pm March 2nd\r\n'),
(96, 'автодеплой', 'hotcrm', 'k0ndaa', 33, '12:03pm March 2nd – 12:37pm March 2nd\r\n'),
(97, 'автодеплой', 'hotcrm', 'k0ndaa', 38, '11:25am March 2nd – 12:03pm March 2nd\r\n'),
(98, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '10:55am March 2nd – 11:25am March 2nd\r\n'),
(99, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '10:25am March 2nd – 10:55am March 2nd\r\n'),
(100, 'автодеплой', 'hotcrm', 'k0ndaa', 5, '4:39pm March 1st – 4:44pm March 1st\r\n'),
(101, 'автодеплой', 'hotcrm', 'k0ndaa', 22, '4:16pm March 1st – 4:39pm March 1st\r\n'),
(102, 'баг пустіх полей', 'hotcrm', 'k0ndaa', 8, '4:08pm March 1st – 4:16pm March 1st\r\n'),
(103, 'баг пустіх полей', 'hotcrm', 'k0ndaa', 23, '3:46pm March 1st – 4:08pm March 1st\r\n'),
(104, 'автодеплой', 'hotcrm', 'k0ndaa', 1, '3:46pm March 1st – 3:46pm March 1st\r\n'),
(105, 'автодеплой', 'hotcrm', 'k0ndaa', 42, '3:04pm March 1st – 3:46pm March 1st\r\n'),
(106, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '2:34pm March 1st – 3:04pm March 1st\r\n'),
(107, 'автодеплой', 'hotcrm', 'k0ndaa', 30, '2:04pm March 1st – 2:34pm March 1st\r\n'),
(108, 'доработка карточки', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(109, 'Перегруз', 'hotcrm', 'k0ndaa', 148, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(110, 'доработка карточки', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(111, 'Перегруз', 'hotcrm', 'k0ndaa', 148, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(112, 'Ион', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(113, '#Ион', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st\r\n'),
(114, '#Ион1', 'hotcrm', 'k0ndaa', 28, '1:28pm March 1st – 1:56pm March 1st');

-- --------------------------------------------------------

--
-- Структура таблицы `myfiles`
--

CREATE TABLE IF NOT EXISTS `myfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `date` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `lim` text NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `myfiles`
--

INSERT INTO `myfiles` (`id`, `url`, `date`, `user_id`, `name`, `lim`, `action`) VALUES
(2, '2d4b019b7af4ab4c7a16baa635bfd99f-3befe7175a8316677fab239b76034c542c20a0e9', '2017.05.07 05:39', 25, 'Anubis', '30', 27),
(3, '3fdaf0528ffafae8e2aa6d6e4871e2c9-20cea2de553cbb8df32782c3bc60fd983e27285a', '2017.05.11 05:13', 25, 'Anubis', '57', 27),
(4, 'e8fcb9e7a8526eeb4eba9162bf671901-1d7263023339f90ac6b23de2dda9ed54e8bb9af3', '2017.05.11 05:01', 25, 'Anubis', '85', 28),
(5, 'c89ebbdbca31dc81bd1fece8d0708db1-8e1939bfb6595b42b7304ee0b19d0790fa2bfb54', '2017.05.11 05:05', 25, 'Anubis', '115', 30);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` text NOT NULL,
  `mail` text NOT NULL,
  `pass` text NOT NULL,
  `date_reg` text NOT NULL,
  `status` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `image` text NOT NULL,
  `strana` text NOT NULL,
  `maney` int(11) NOT NULL,
  `rang` int(11) NOT NULL,
  `date_visits` text NOT NULL,
  `wmr` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `nik`, `mail`, `pass`, `date_reg`, `status`, `active`, `image`, `strana`, `maney`, `rang`, `date_visits`, `wmr`) VALUES
(25, 'Anubis', 'milionpmr@mail.ru', 'f888f5a18221dacead72d66824cd85f6f92e2b30', '2017.04.30', 2, 51537, '-', '0', 0, 0, '2017.04.30', '2324234324234'),
(27, 'adawda', 'adawdad@mail.ru', '13e6dd03884a07476b4ef6b45ce2d9435a9c2163', '2017.05.02', 2, 51537, '-', '0', 0, 0, '2017.05.02', '23974');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
