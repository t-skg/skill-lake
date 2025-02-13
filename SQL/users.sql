-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-07-26 04:42:12
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
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'user_1@example.com', '$2y$10$WTyN2q/6vENTODEBvc3fSOaXQYMUkzugEeW7b8jq8m/7CVXpZ2YlO', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(2, 'user_2@example.com', '$2y$10$aVqYAsfUg4vBDRrN5OY05Owfn24J7YS2ibmzF4AlxMkD2VrTnpTPW', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(3, 'user_3@example.com', '$2y$10$x84lQz2Ch6/vomCTUnRzoOw52QnbBslIg6LX3IvJ3fxRIa1zvHb0m', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(4, 'user_9@example.com', '$2y$10$f5csTD6HmkqpAv5bYnpYE.OJHOWWxjM5mmzkrUc/1gen1HsKprukK', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(5, 'user_10@example.com', '$2y$10$XZJSD2tgSCUHMIDel92w8.kzi1J6ZIaOwllO/pQqsyB0LQhgHvrx.', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(6, 'user_11@example.com', '$2y$10$K6vBPlmnKP2tPXXqqw2/cezynlcKNpD0OXUorlupwFLlFAplLwpIO', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(7, 'user_12@example.com', '$2y$10$c2vsGc4JNL4mnwawkKux7uzyjQRNcmtP2eiCUdDvG7E4gNinoJ9v6', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(8, 'user_13@example.com', '$2y$10$LcwjTiO3aPQtQLdVRdkvneso41vQdHh7U9kLLsDZJr0NLbb6k6A06', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(9, 'user_14@example.com', '$2y$10$se88OzXatPDQLTHsJbGNiOHLIYqWz3/X29wicj9sxfE1flDKjHm9m', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(10, 'user_15@example.com', '$2y$10$0dSilTABKmnCpKhKxQC2g.UxbcPsCOas8MqEi1oEK1inI.GdnGHdO', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(11, 'user_16@example.com', '$2y$10$gYVvoJF1.zkUkmPFHRIv8eeJYrT22.k6xgZDkSQvmx3RhfKDN3T5q', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(12, 'user_17@example.com', '$2y$10$ehd6RZzFKiAKX.Jnv3mVKOzym5XzZCwwuN1cjA3RyIatxDRwwzZJS', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(13, 'user_18@example.com', '$2y$10$h1EkWepj7uo4BzpLAE1ZEumbMI1JuQWsKmWdTbbVLkRU./6B6wACq', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(14, 'user_19@example.com', '$2y$10$KqPQD1GFS/Lex/5iFdmbCeFB4gfDEc.jkaIu.2L2Xj2L8K/yqth8C', '2024-07-26 01:53:41', '2024-07-26 01:53:41'),
(15, 'user_20@example.com', '$2y$10$LAzQMg9.OseN5dRn1TIauO20ohH5nR106gJTCxWV5M034o/cUbdHS', '2024-07-26 01:53:41', '2024-07-26 01:53:41');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
