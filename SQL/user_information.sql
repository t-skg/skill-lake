-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-07-26 04:41:37
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
-- テーブルの構造 `user_information`
--

CREATE TABLE `user_information` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` enum('男性','女性') NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `prefecture` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `building_name` varchar(100) DEFAULT NULL,
  `occupation` varchar(50) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `temp_identifier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- テーブルのデータのダンプ `user_information`
--

INSERT INTO `user_information` (`id`, `lastname`, `firstname`, `birthdate`, `gender`, `phone_number`, `email`, `postal_code`, `prefecture`, `city`, `street_address`, `building_name`, `occupation`, `nationality`, `temp_identifier`) VALUES
(1, '佐藤', '太郎', '1985-07-15', '男性', '090-1234-5678', 'taro.sato@example.com', '100-0001', '東京都', '千代田区', '千代田1-1-1', 'チヨダビル101', '会社員', '日本', NULL),
(2, '鈴木', '花子', '1990-12-03', '女性', '080-2345-6789', 'hanako.suzuki@example.com', '530-0001', '大阪府', '大阪市北区', '梅田2-2-2', 'うめだタワー202', '教師', '日本', NULL),
(3, '田中', '一郎', '1978-03-20', '男性', '070-3456-7890', 'ichiro.tanaka@example.com', '460-0008', '愛知県', '名古屋市中区', '栄3-3-3', NULL, '医師', '日本', NULL),
(4, '山本', '美咲', '1995-09-08', '女性', '090-4567-8901', 'misaki.yamamoto@example.com', '810-0001', '福岡県', '福岡市中央区', '天神4-4-4', '天神プラザ303', 'デザイナー', '日本', NULL),
(5, '伊藤', '健太', '1982-11-30', '男性', '080-5678-9012', 'kenta.ito@example.com', '980-0021', '宮城県', '仙台市青葉区', '中央5-5-5', NULL, 'エンジニア', '日本', NULL),
(6, '渡辺', '麗子', '1988-06-25', '女性', '070-6789-0123', 'reiko.watanabe@example.com', '220-0004', '神奈川県', '横浜市西区', '北幸6-6-6', 'ヨコハマビル404', '公務員', '日本', NULL),
(7, '小林', '誠', '1975-01-10', '男性', '090-7890-1234', 'makoto.kobayashi@example.com', '060-0001', '北海道', '札幌市中央区', '北一条西7-7-7', NULL, '経営者', '日本', NULL),
(8, '加藤', '由美', '1992-04-18', '女性', '080-8901-2345', 'yumi.kato@example.com', '650-0001', '兵庫県', '神戸市中央区', '加納町8-8-8', '神戸ハイツ505', '看護師', '日本', NULL),
(9, '吉田', '拓也', '1980-08-05', '男性', '070-9012-3456', 'takuya.yoshida@example.com', '900-0001', '沖縄県', '那覇市', '久茂地9-9-9', 'なはビル606', '会社役員', '日本', NULL),
(10, '松本', 'エミリー', '1998-02-14', '女性', '090-0123-4567', 'emily.matsumoto@example.com', '150-0001', '東京都', '渋谷区', '神宮前10-10-10', NULL, '学生', '日本', NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
