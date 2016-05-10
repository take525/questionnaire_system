-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016 年 5 朁E10 日 09:27
-- サーバのバージョン： 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `questionnaire_system`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `evaluations`
--

CREATE TABLE IF NOT EXISTS `evaluations` (
  `id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `age_group` int(5) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `value` int(5) unsigned NOT NULL,
  `impressions` text NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `evaluations`
--

INSERT INTO `evaluations` (`id`, `product_id`, `age_group`, `gender`, `value`, `impressions`, `create_time`) VALUES
(1, 1, 2, 1, 5, 'よかったです', '2016-05-01 21:41:20'),
(2, 3, 1, 0, 3, 'まあまあ', '2016-05-01 23:28:12'),
(4, 1, 4, 1, 2, 'aaa', '2016-05-02 00:43:10'),
(5, 1, 4, 0, 3, 'wwwww', '2016-05-02 05:14:26'),
(6, 2, 4, 1, 3, 'cccccccc', '2016-05-05 09:02:24');

-- --------------------------------------------------------

--
-- テーブルの構造 `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `members`
--

INSERT INTO `members` (`id`, `product_id`, `name`) VALUES
(1, 1, '佐藤太郎'),
(2, 1, '田中太郎'),
(3, 2, '斎藤太郎'),
(4, 3, '石垣太郎'),
(5, 1, '岩本太郎');

-- --------------------------------------------------------

--
-- テーブルの構造 `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `overview` text NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `products`
--

INSERT INTO `products` (`id`, `product_name`, `overview`, `img`, `create_time`) VALUES
(1, 'イラスト', '夜景を書きました。色使いに意識して尚且つ建物もらしさを意識して描いてみました。コンセプトは「明け方」ということなので、雰囲気作りに苦労はしましたが、うまく表現出来たと思います。', 'img/480_800', '2016-04-27 06:21:29'),
(2, 'コミック', 'ここを頑張りました', NULL, '2016-04-27 06:23:16'),
(3, 'ゲーム', '作りました', NULL, '2016-05-01 23:24:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `questionnaire`
--

CREATE TABLE IF NOT EXISTS `questionnaire` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `questionnaire_answer`
--

CREATE TABLE IF NOT EXISTS `questionnaire_answer` (
  `id` int(11) NOT NULL,
  `questionnaire_id` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `user_genre` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `questionnaire_year`
--

CREATE TABLE IF NOT EXISTS `questionnaire_year` (
  `id` int(11) NOT NULL,
  `questionnaire_id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `respondents`
--

CREATE TABLE IF NOT EXISTS `respondents` (
  `id` int(11) NOT NULL,
  `respondent` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire_answer`
--
ALTER TABLE `questionnaire_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire_year`
--
ALTER TABLE `questionnaire_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respondents`
--
ALTER TABLE `respondents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questionnaire_answer`
--
ALTER TABLE `questionnaire_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questionnaire_year`
--
ALTER TABLE `questionnaire_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `respondents`
--
ALTER TABLE `respondents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
