-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-07-26 04:41:50
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_asg03`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(255) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `temp_identifier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `lid`, `lpw`, `kanri_flg`, `life_flg`, `email`, `temp_identifier`) VALUES
(1, 'test1', '$2y$10$WTyN2q/6vENTODEBvc3fSOaXQYMUkzugEeW7b8jq8m/7CVXpZ2YlO', 1, 0, 'user_1@example.com', 'tes_$2y$1'),
(2, 'test2', '$2y$10$aVqYAsfUg4vBDRrN5OY05Owfn24J7YS2ibmzF4AlxMkD2VrTnpTPW', 0, 0, 'user_2@example.com', 'tes_$2y$1'),
(3, 'test3', '$2y$10$x84lQz2Ch6/vomCTUnRzoOw52QnbBslIg6LX3IvJ3fxRIa1zvHb0m', 0, 0, 'user_3@example.com', 'tes_$2y$1'),
(9, 'test9', '$2y$10$f5csTD6HmkqpAv5bYnpYE.OJHOWWxjM5mmzkrUc/1gen1HsKprukK', 0, 0, 'user_9@example.com', 'tes_$2y$1'),
(10, 'test10', '$2y$10$XZJSD2tgSCUHMIDel92w8.kzi1J6ZIaOwllO/pQqsyB0LQhgHvrx.', 0, 0, 'user_10@example.com', 'tes_$2y$1'),
(11, 'test11', '$2y$10$K6vBPlmnKP2tPXXqqw2/cezynlcKNpD0OXUorlupwFLlFAplLwpIO', 0, 0, 'user_11@example.com', 'tes_$2y$1'),
(12, 'test12', '$2y$10$c2vsGc4JNL4mnwawkKux7uzyjQRNcmtP2eiCUdDvG7E4gNinoJ9v6', 0, 0, 'user_12@example.com', 'tes_$2y$1'),
(13, 'test13', '$2y$10$LcwjTiO3aPQtQLdVRdkvneso41vQdHh7U9kLLsDZJr0NLbb6k6A06', 0, 0, 'user_13@example.com', 'tes_$2y$1'),
(14, 'test15', '$2y$10$se88OzXatPDQLTHsJbGNiOHLIYqWz3/X29wicj9sxfE1flDKjHm9m', 0, 0, 'user_14@example.com', 'tes_$2y$1'),
(15, 'test16', '$2y$10$0dSilTABKmnCpKhKxQC2g.UxbcPsCOas8MqEi1oEK1inI.GdnGHdO', 0, 0, 'user_15@example.com', 'tes_$2y$1'),
(16, 'test17', '$2y$10$gYVvoJF1.zkUkmPFHRIv8eeJYrT22.k6xgZDkSQvmx3RhfKDN3T5q', 0, 0, 'user_16@example.com', 'tes_$2y$1'),
(17, 'test18', '$2y$10$ehd6RZzFKiAKX.Jnv3mVKOzym5XzZCwwuN1cjA3RyIatxDRwwzZJS', 0, 0, 'user_17@example.com', 'tes_$2y$1'),
(18, 'test19', '$2y$10$h1EkWepj7uo4BzpLAE1ZEumbMI1JuQWsKmWdTbbVLkRU./6B6wACq', 0, 0, 'user_18@example.com', 'tes_$2y$1'),
(19, 'test20', '$2y$10$KqPQD1GFS/Lex/5iFdmbCeFB4gfDEc.jkaIu.2L2Xj2L8K/yqth8C', 0, 0, 'user_19@example.com', 'tes_$2y$1'),
(20, 'test21', '$2y$10$LAzQMg9.OseN5dRn1TIauO20ohH5nR106gJTCxWV5M034o/cUbdHS', 0, 0, 'user_20@example.com', 'tes_$2y$1');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
