-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 12 月 22 日 14:00
-- 伺服器版本： 8.0.24
-- PHP 版本： 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `pos_raybii_com`
--

-- --------------------------------------------------------

--
-- 資料表結構 `goods`
--

CREATE TABLE `goods` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `specification` int NOT NULL,
  `money` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `goods`
--

INSERT INTO `goods` (`id`, `name`, `type`, `specification`, `money`) VALUES
(1, '鴨頭小份', 'duck', 1, 40),
(2, '鴨頭大份', 'duck', 3, 100),
(3, '鴨心', 'duck', 1, 30),
(4, '鴨翅', 'duck', 1, 25),
(5, '鴨肝', 'duck', 1, 10),
(6, '鴨舌', 'duck', 1, 10),
(7, '鴨腸', 'duck', 1, 30),
(8, '腱頭', 'duck', 3, 20),
(9, '鴨腱', 'duck', 1, 30),
(10, '鴨肉', 'duck', 1, 150),
(11, '鴨腿', 'duck', 1, 80),
(12, '豬耳朵', 'pork', 1, 35),
(13, '豬頭皮', 'pork', 1, 30),
(14, '菊花肉', 'pork', 1, 40),
(15, '豬心', 'pork', 1, 30),
(16, '豬大腸', 'pork', 1, 40),
(17, '脆腸', 'pork', 1, 40),
(18, '蹄膀', 'pork', 1, 100),
(19, '豬舌', 'pork', 1, 35),
(20, '雞腿', 'chicken', 1, 80),
(21, '雞腳大份', 'chicken', 15, 50),
(22, '雞腳中份', 'chicken', 5, 20),
(23, '雞腳小份', 'chicken', 1, 5),
(24, '雞翅小份', 'chicken', 1, 20),
(25, '雞翅大份', 'chicken', 6, 100),
(26, '雞屁股', 'chicken', 1, 30),
(27, '雞腱', 'chicken', 1, 5),
(28, '烏梅汁小杯', 'drink', 1, 25),
(29, '烏梅汁中杯', 'drink', 1, 35),
(30, '烏梅汁大杯', 'drink', 1, 50),
(31, '百頁', 'others', 1, 20),
(32, '黑輪片', 'others', 1, 20),
(33, '小甜不辣', 'others', 1, 10),
(34, '中甜不辣', 'others', 1, 15),
(35, '豆丁', 'others', 1, 20),
(36, '海帶', 'others', 1, 20),
(37, '鳥蛋', 'others', 6, 20),
(38, '貢丸', 'others', 2, 15),
(39, '德腸', 'others', 1, 25),
(40, '芋條', 'others', 1, 20),
(41, '魚蛋', 'others', 4, 30),
(42, '豆皮', 'others', 1, 20),
(43, '米血', 'others', 1, 20);

-- --------------------------------------------------------

--
-- 資料表結構 `order_goods`
--

CREATE TABLE `order_goods` (
  `id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `specification` int DEFAULT NULL,
  `money` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `order_goods`
--

INSERT INTO `order_goods` (`id`, `name`, `specification`, `money`, `amount`, `order_id`) VALUES
(14, '豬心', 1, 30, 1, '2021112293024'),
(15, '雞腳中份', 5, 20, 1, '2021112293024'),
(16, '小甜不辣', 1, 10, 1, '2021112293024'),
(17, '海帶', 1, 20, 1, '2021112293024'),
(18, '豆皮', 1, 20, 1, '2021112293024'),
(19, '米血', 1, 20, 1, '2021112293024'),
(20, '百頁', 1, 20, 1, '2021112356835'),
(21, '烏梅汁大杯', 1, 50, 1, '2021112356835'),
(22, '黑輪片', 1, 20, 1, '2021112356835'),
(23, '小甜不辣', 1, 10, 1, '2021112356835'),
(24, '海帶', 1, 20, 1, '2021112356835'),
(25, '鳥蛋', 6, 20, 1, '2021112356835'),
(26, '豆皮', 1, 20, 1, '2021112356835'),
(27, '豬耳朵', 1, 35, 1, '2021112900894'),
(28, '雞腳大份', 15, 50, 1, '2021112900894'),
(29, '中甜不辣', 1, 15, 1, '2021112900894'),
(33, '雞腳中份', 5, 20, 1, '2021112981026'),
(34, '鴨翅', 1, 25, 1, '2021112981026'),
(35, '百頁', 1, 20, 1, '2021112981026'),
(36, '米血', 1, 20, 1, '2021112981026'),
(37, '鴨肝', 1, 10, 3, '2021112946845'),
(38, '海帶', 1, 20, 1, '2021112946845'),
(39, '米血', 1, 20, 1, '2021112946845'),
(40, '百頁', 1, 20, 1, '2021112946845'),
(41, '雞腳大份', 15, 50, 1, '2021112989895'),
(42, '百頁', 1, 20, 1, '2021112953094'),
(43, '德腸', 1, 25, 1, '2021112953094'),
(44, '鳥蛋', 6, 20, 1, '2021112953094'),
(45, '海帶', 1, 20, 1, '2021112953094'),
(73, '豬頭皮', 1, 30, 1, '2021120220898'),
(74, '菊花肉', 1, 40, 1, '2021120220898'),
(75, '百頁', 1, 20, 1, '2021120220898'),
(76, '中甜不辣', 1, 15, 1, '2021120220898'),
(77, '豆皮', 1, 20, 1, '2021120220898'),
(78, '豬頭皮', 1, 30, 1, '2021120258882'),
(79, '百頁', 1, 20, 1, '2021120258882'),
(80, '小甜不辣', 1, 10, 1, '2021120258882'),
(81, '米血', 1, 20, 1, '2021120258882'),
(82, '鴨心', 1, 30, 1, '2021120227065'),
(83, '脆腸', 1, 40, 1, '2021120227065'),
(84, '鳥蛋', 6, 20, 1, '2021120227065'),
(85, '豆皮', 1, 20, 1, '2021120227065'),
(86, '鴨心', 1, 30, 1, '2021120228779'),
(87, '鴨心', 1, 30, 1, '2021120228779'),
(88, '菊花肉', 1, 40, 1, '2021120228779'),
(89, '雞腿', 1, 80, 1, '2021120228779'),
(90, '黑輪片', 1, 20, 1, '2021120228779'),
(91, '豆皮', 1, 20, 1, '2021120228779'),
(92, '鴨心', 1, 30, 1, '2021120272291'),
(93, '百頁', 1, 20, 1, '2021120272291'),
(94, '小甜不辣', 1, 10, 1, '2021120272291'),
(95, '豆丁', 1, 20, 1, '2021120272291'),
(96, '鳥蛋', 6, 20, 1, '2021120272291'),
(97, '鴨心', 1, 30, 1, '2021120234476'),
(98, '鴨肝', 1, 10, 1, '2021120234476'),
(99, '鴨肝', 1, 10, 1, '2021120234476'),
(100, '豬頭皮', 1, 30, 1, '2021120234476'),
(101, '雞腿', 1, 80, 1, '2021120234476'),
(102, '雞腱', 1, 5, 1, '2021120234476'),
(103, '雞腱', 1, 5, 1, '2021120234476'),
(104, '中甜不辣', 1, 15, 1, '2021120234476'),
(105, '海帶', 1, 20, 1, '2021120234476'),
(106, '豬頭皮', 1, 30, 1, '2021120279118'),
(107, '菊花肉', 1, 40, 1, '2021120279118'),
(108, '豬心', 1, 30, 1, '2021120279118'),
(109, '德腸', 1, 25, 1, '2021120279118'),
(110, '豆皮', 1, 20, 1, '2021120279118'),
(111, '米血', 1, 20, 1, '2021120279118'),
(112, '雞翅小份', 1, 20, 1, '2021120444165'),
(113, '雞翅小份', 1, 20, 1, '2021120444165'),
(114, '鳥蛋', 6, 20, 1, '2021120444165'),
(115, '鴨心', 1, 30, 1, '2021120465816'),
(116, '豆丁', 1, 20, 1, '2021120404197'),
(117, '雞腳大份', 15, 50, 1, '2021120465816'),
(118, '米血', 1, 20, 1, '2021120404197'),
(119, '黑輪片', 1, 20, 1, '2021120465816'),
(120, '豆丁', 1, 20, 1, '2021120404197'),
(121, '豆丁', 1, 20, 1, '2021120465816'),
(122, '鳥蛋', 6, 20, 1, '2021120465816'),
(123, '米血', 1, 20, 1, '2021120465816'),
(124, '鴨心', 1, 30, 1, '2021120429022'),
(125, '豆丁', 1, 20, 1, '2021120425975'),
(126, '雞腳大份', 15, 50, 1, '2021120429022'),
(127, '米血', 1, 20, 1, '2021120425975'),
(128, '黑輪片', 1, 20, 1, '2021120429022'),
(129, '豆丁', 1, 20, 1, '2021120425975'),
(130, '豆丁', 1, 20, 1, '2021120429022'),
(131, '鳥蛋', 6, 20, 1, '2021120429022'),
(132, '米血', 1, 20, 1, '2021120429022'),
(133, '雞翅小份', 1, 20, 2, '2021120485888'),
(134, '鳥蛋', 6, 20, 1, '2021120485888'),
(135, '鴨頭小份', 1, 40, 1, '2021121719443'),
(136, '雞翅小份', 1, 20, 1, '2021121798770'),
(137, '雞腱', 1, 5, 2, '2021121798770'),
(138, '豆丁', 1, 20, 1, '2021121798770'),
(139, '鳥蛋', 6, 20, 1, '2021121798770'),
(140, '米血', 1, 20, 1, '2021121798770'),
(141, '鴨翅', 1, 25, 1, '2021121760482'),
(142, '鴨翅', 1, 25, 1, '2021121760482'),
(143, '雞腳大份', 15, 50, 1, '2021121760482'),
(144, '百頁', 1, 20, 1, '2021121760482'),
(145, '中甜不辣', 1, 15, 1, '2021121760482'),
(146, '芋條', 1, 20, 1, '2021121760482'),
(147, '米血', 1, 20, 1, '2021121760482'),
(148, '鴨翅', 1, 25, 1, '2021121720995'),
(149, '鴨肝', 1, 10, 1, '2021121720995'),
(150, '鴨肝', 1, 10, 1, '2021121720995'),
(151, '雞腱', 1, 5, 1, '2021121720995'),
(152, '雞腱', 1, 5, 1, '2021121720995'),
(153, '雞腱', 1, 5, 1, '2021121720995'),
(154, '雞腱', 1, 5, 1, '2021121720995'),
(155, '雞腱', 1, 5, 1, '2021121720995'),
(156, '雞腱', 1, 5, 1, '2021121720995'),
(157, '中甜不辣', 1, 15, 1, '2021121720995'),
(158, '米血', 1, 20, 1, '2021121720995'),
(159, '鴨心', 1, 30, 1, '2021121765339'),
(160, '鴨心', 1, 30, 1, '2021121765339'),
(161, '雞腳中份', 5, 20, 1, '2021121765339'),
(162, '鴨翅', 1, 25, 1, '2021121784563'),
(163, '鴨翅', 1, 25, 1, '2021121784563'),
(164, '豆丁', 1, 20, 1, '2021121784563'),
(165, '豬頭皮', 1, 30, 1, '2021121731302'),
(166, '豆丁', 1, 20, 1, '2021121731302'),
(167, '鳥蛋', 6, 20, 1, '2021121731302'),
(168, '雞腳大份', 15, 50, 1, '2021121731302'),
(169, '鴨肝', 1, 10, 1, '2021121707643'),
(170, '鴨肝', 1, 10, 1, '2021121707643'),
(171, '鴨肝', 1, 10, 1, '2021121707643'),
(172, '豬耳朵', 1, 35, 1, '2021121707643'),
(173, '豬大腸', 1, 40, 1, '2021121707643'),
(174, '雞翅小份', 1, 20, 1, '2021121707643'),
(175, '雞翅小份', 1, 20, 1, '2021121707643'),
(176, '雞腱', 1, 5, 1, '2021121707643'),
(177, '雞腱', 1, 5, 1, '2021121707643'),
(178, '德腸', 1, 25, 1, '2021121707643'),
(179, '鴨翅', 1, 25, 1, '2021121757999'),
(180, '鴨翅', 1, 25, 1, '2021121757999'),
(181, '鴨肝', 1, 10, 1, '2021121757999'),
(182, '豬大腸', 1, 40, 1, '2021121757999'),
(183, '百頁', 1, 20, 1, '2021121757999'),
(184, '豆丁', 1, 20, 1, '2021121757999'),
(185, '海帶', 1, 20, 1, '2021121757999'),
(186, '米血', 1, 20, 1, '2021121757999'),
(187, '德腸', 1, 25, 1, '2021121757999'),
(188, '豬耳朵', 1, 35, 1, '2021121760662'),
(189, '雞翅小份', 1, 20, 1, '2021121760662'),
(190, '雞腱', 1, 5, 1, '2021121760662'),
(191, '雞腱', 1, 5, 1, '2021121760662'),
(192, '豆丁', 1, 20, 1, '2021121760662'),
(193, '鳥蛋', 6, 20, 1, '2021121760662'),
(194, '豆皮', 1, 20, 1, '2021121760662'),
(195, '雞腳中份', 5, 20, 1, '2021121704773'),
(196, '鴨頭小份', 1, 40, 1, '2021121798655'),
(197, '豬耳朵', 1, 35, 1, '2021121798655'),
(198, '黑輪片', 1, 20, 1, '2021121798655'),
(199, '黑輪片', 1, 20, 1, '2021121798655'),
(200, '鳥蛋', 6, 20, 1, '2021121798655'),
(201, '米血', 1, 20, 1, '2021121798655'),
(202, '豬頭皮', 1, 30, 1, '2021121772079'),
(203, '豬舌', 1, 35, 1, '2021121772079'),
(204, '海帶', 1, 20, 1, '2021121772079'),
(205, '米血', 1, 20, 1, '2021121772079');

-- --------------------------------------------------------

--
-- 資料表結構 `order_records`
--

CREATE TABLE `order_records` (
  `id` int NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `order_records`
--

INSERT INTO `order_records` (`id`, `order_id`, `time`, `total`) VALUES
(4, '2021112293024', '2021-11-22 19:18:14', 120),
(5, '2021112356835', '2021-11-23 16:33:46', 160),
(6, '2021112900894', '2021-11-29 16:20:50', 100),
(8, '2021112981026', '2021-11-29 17:08:26', 85),
(9, '2021112946845', '2021-11-29 17:24:32', 90),
(10, '2021112989895', '2021-11-29 19:03:25', 50),
(11, '2021112953094', '2021-11-29 19:19:15', 85),
(13, '2021113051185', '2021-11-30 09:53:48', 180),
(18, '2021120220898', '2021-12-02 16:22:39', 125),
(19, '2021120258882', '2021-12-02 17:48:03', 80),
(20, '2021120227065', '2021-12-02 17:48:16', 110),
(21, '2021120228779', '2021-12-02 17:48:35', 220),
(22, '2021120272291', '2021-12-02 17:48:49', 100),
(23, '2021120234476', '2021-12-02 17:49:12', 205),
(24, '2021120279118', '2021-12-02 17:49:38', 165),
(25, '2021120444165', '2021-12-04 15:19:17', 60),
(26, '2021120465816', '2021-12-04 15:19:51', 160),
(27, '2021120404197', '2021-12-04 15:19:51', 60),
(28, '2021120429022', '2021-12-04 15:20:11', 160),
(29, '2021120425975', '2021-12-04 15:20:11', 60),
(30, '2021120485888', '2021-12-04 17:20:45', 60),
(31, '2021121719443', '2021-12-17 20:54:08', 40),
(32, '2021121798770', '2021-12-17 20:54:35', 90),
(33, '2021121760482', '2021-12-17 20:54:58', 175),
(34, '2021121720995', '2021-12-17 20:56:11', 110),
(35, '2021121765339', '2021-12-17 20:56:27', 80),
(36, '2021121784563', '2021-12-17 20:56:38', 70),
(37, '2021121731302', '2021-12-17 20:56:57', 120),
(38, '2021121707643', '2021-12-17 20:57:24', 180),
(39, '2021121757999', '2021-12-17 20:57:49', 205),
(40, '2021121760662', '2021-12-17 20:58:07', 125),
(41, '2021121704773', '2021-12-17 20:58:15', 20),
(42, '2021121798655', '2021-12-17 20:58:28', 155),
(43, '2021121772079', '2021-12-17 20:58:54', 105);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `order_goods`
--
ALTER TABLE `order_goods`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `order_records`
--
ALTER TABLE `order_records`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_goods`
--
ALTER TABLE `order_goods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_records`
--
ALTER TABLE `order_records`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
