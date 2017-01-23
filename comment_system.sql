-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 23 2017 г., 18:19
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `comment_system`
--

-- --------------------------------------------------------

--
-- Структура таблицы `child_comments`
--

CREATE TABLE `child_comments` (
  `id` int(11) NOT NULL,
  `user` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `par_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `child_comments`
--

INSERT INTO `child_comments` (`id`, `user`, `text`, `date`, `par_code`) VALUES
(0, 'Kamran', 'this is a replay', '2017-01-23 19:50:54', 'gZboKT'),
(0, 'Kamran', 'some more replay hiii!', '2017-01-23 19:58:07', 'gZboKT');

-- --------------------------------------------------------

--
-- Структура таблицы `parent_comments`
--

CREATE TABLE `parent_comments` (
  `id` int(11) NOT NULL,
  `user` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `parent_comments`
--

INSERT INTO `parent_comments` (`id`, `user`, `text`, `date`, `code`) VALUES
(0, 'Kamran', 'Hello guys!', '2017-01-23 19:49:14', 'gZboKT'),
(0, 'Kamran', 'This is a test comment', '2017-01-23 19:49:21', 'iwxNdr'),
(0, 'Kamran', '', '2017-01-23 20:21:37', 'FlGNBe'),
(0, 'Kamran', '', '2017-01-23 20:21:46', '5E3f4W');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `content_exerp` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author`, `content_exerp`, `content`) VALUES
(0, 'Kamran', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?'),
(1, 'Yakub', 'Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit ', 'Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit \r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?');

-- --------------------------------------------------------

--
-- Структура таблицы `spam_comments`
--

CREATE TABLE `spam_comments` (
  `id` int(11) NOT NULL,
  `user` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `code` varchar(10) NOT NULL,
  `par_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `spam_comments`
--

INSERT INTO `spam_comments` (`id`, `user`, `text`, `date`, `code`, `par_code`) VALUES
(0, 'Kamran', 'Some really ass bad fuck words dude!', '2017-01-23 19:55:34', 'nSXf2C', ''),
(0, 'Kamran', 'Some really ass bad fuck words dude!', '2017-01-23 22:28:54', 'uaqGed', ''),
(0, 'Kamran', 'So I am here to type some badass shit words motherfucker', '2017-01-23 22:49:31', 'pUlqsw', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
