-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 01, 2017 at 08:56 PM
-- Server version: 5.5.52-MariaDB
-- PHP Version: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koolponv2`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`koolpon_test`@`%` PROCEDURE `V2BranchbusinesstypeMigration`()
BEGIN
DECLARE branchcount INT DEFAULT 0;
DECLARE i INT DEFAULT 0;
DECLARE branchid INT DEFAULT 0;
SELECT COUNT(*) FROM Branch INTO branchcount;
SET i=0;
WHILE i<branchcount DO 
 SELECT id From Branch limit i,1 INTO branchid;
 INSERT INTO Branch_Business_Type(id,branch_id,business_type_id,created_at,updated_at,deleted_at)
 SELECT null,branchid,id,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,null FROM Business_Type;
SET branchid =0;
SET i = i + 1;
END WHILE;
End$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `aaa`
--

CREATE TABLE IF NOT EXISTS `aaa` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `coupon_id` int(10) unsigned NOT NULL DEFAULT '0',
  `coupon_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BusinessName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `business_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa`
--

INSERT INTO `aaa` (`id`, `UserName`, `coupon_id`, `coupon_name`, `BusinessName`, `business_id`) VALUES
(2, 'Zar Li', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(3, 'Zar Li', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(4, 'rookingtest', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(5, 'rookingtest', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(6, 'rookingtest', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(7, 'rookingtest', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(8, 'rookingtest', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(10, 'rookingtest', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(12, 'rookingtest', 22, 'Dining Fukurou''s Special Promotion', 'Dining Fukurou', 20),
(16, 'rookingtest', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(18, 'rookingtest', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(20, 'rookingtest', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(30, 'Zar Li', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(34, 'Wyne Phyu Cin', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(35, 'Wyne Phyu Cin', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(37, 'Wyne Phyu Cin', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(46, 'Akira Udagawa', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(47, 'Akira Udagawa', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(48, 'AKIRA', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(49, 'Wyne Phyu Cin', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(51, 'Su Pyae Thandar', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(52, 'Wyne Phyu Cin', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(53, 'Wyne Phyu Cin', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(55, 'Thirisandar Oo', 22, 'Dining Fukurou''s Special Promotion', 'Dining Fukurou', 20),
(56, 'Su Pyae Thandar', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(57, 'Wyne Phyu Cin', 24, 'Happy Hour', 'Orianna 24', 22),
(58, 'Rooking Rooking', 26, 'Enjoy Promotion', 'Secret Recipe', 25),
(59, 'Rooking Rooking', 26, 'Enjoy Promotion', 'Secret Recipe', 25),
(60, 'Rooking Rooking', 23, 'BIIO Special Deal', 'B2O Roof and Cafe'' 20', 21),
(61, 'Rooking Rooking', 24, 'Happy Hour', 'Orianna 24', 22),
(62, 'Rooking Rooking', 25, 'Special Weekday Promotion', 'CHARM 66', 24),
(63, 'Rooking Rooking', 27, 'Enjoy Promotion', 'Kamakura Marina', 26),
(64, 'Wyne Phyu Cin', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(65, 'Wyne Phyu Cin', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(68, 'Thiri Soe', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(69, 'Thiri Soe', 26, 'Enjoy Promotion', 'Secret Recipe', 25),
(70, 'Wyne Phyu Cin', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(71, 'AKIRA', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(73, 'たかはし', 27, 'Enjoy Promotion', 'Kamakura Marina', 26),
(74, 'Htet Su Wai', 26, 'Enjoy Promotion', 'Secret Recipe', 25),
(75, 'Wyne Phyu Cin', 18, 'Family Room Promotion', 'Grand Laurel Hotel', 14),
(76, 'rookingtest', 22, 'Dining Fukurou''s Special Promotion', 'Dining Fukurou', 20),
(77, 'Wyne Phyu Cin', 16, 'Standard Single Room', 'Sunny Holiday Hotel', 13),
(78, 'Yethu Aung', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(79, 'Yethu Aung', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(80, 'Yethu Aung', 17, 'Deluxe Room Promo', 'Grand Laurel Hotel', 14),
(84, 'Wyne Phyu Cin', 37, 'The Emporia @ CHATRIUM - Dine 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(85, 'Wyne Phyu Cin', 37, 'The Emporia @ CHATRIUM - Dine 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(86, 'Wyne Phyu Cin', 37, 'The Emporia @ CHATRIUM - Dine 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(87, 'Wyne Phyu Cin', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(88, 'Wyne Phyu Cin', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(89, 'Wyne Phyu Cin', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(93, 'Zarchi', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(94, 'Zarchi', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(95, 'Zar Li', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(99, 'Yudai Suzuki', 18, 'Family Room Promotion', 'Grand Laurel Hotel', 14),
(102, 'Wyne Phyu Cin', 37, 'The Emporia @ CHATRIUM - Dine 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(110, 'Bone Pyae Sone', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(116, 'Wyne Phyu Cin', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(119, 'Wyne Phyu Cin', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(120, 'Wyne Phyu Cin', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(121, 'Wyne Phyu Cin', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(122, 'Shee Shee', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(124, 'Rooking Rooking', 37, 'The Emporia @ CHATRIUM - Dine 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(125, 'Rooking Rooking', 27, 'Enjoy Promotion', 'Kamakura Marina', 26),
(127, 'きよし KoKoa', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(128, 'きよし KoKoa', 27, 'Enjoy Promotion', 'Kamakura Marina', 26),
(129, 'きよし KoKoa', 22, 'Dining Fukurou''s Special Promotion', 'Dining Fukurou', 20),
(130, 'きよし KoKoa', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(136, 'rookingtest', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(138, 'rookingtest', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(139, 'rookingtest', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(140, 'rookingtest', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(143, 'Yinmyo Kywe', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(144, 'May Oo', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(145, 'May Oo', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(147, 'Suzuki', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(149, 'Zar Li', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(150, 'Zar Li', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(151, 'Zar Li', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(152, 'Zar Li', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(153, 'Zar Li', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(154, 'Akira Udagawa', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(155, 'Mon Mon', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(156, 'Mon Mon', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(157, 'Myat Su Naing', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(158, 'Kyaw Soe Htet', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(159, 'Myat Su Naing', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(161, 'Myat Su Naing', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(162, 'Myat Su Naing', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(163, 'Myat Su Naing', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(164, 'Myat Su Naing', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(165, 'Myat Su Naing', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(167, 'Mon Mon', 42, 'Oil Massage Therapy - 90 mins', 'Spa @ Hotel Esperado', 55),
(168, 'Thwin Zar Hein', 23, 'BIIO Special Deal', 'B2O Roof and Cafe'' 20', 21),
(169, 'Thwin Zar Hein', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(170, 'Htet Su Wai', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(171, 'Htet Su Wai', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(172, 'Mon Mon Myint Thu', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(175, 'Thant Sin', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(176, 'Thant Sin', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(177, 'Aung', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(178, 'Aung', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(179, 'あきら@白猫垢趣味垢', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(180, 'Meat Su Moe', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(181, 'htinlynn', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(182, 'phyu phyu that paint phyoe', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(183, 'ႏိုင္ေထြးဦး', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(184, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(185, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(186, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(187, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(188, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(189, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(190, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(191, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(192, 'ZM Thwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(193, 'Khin Myo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(194, 'Ko Lin Paing', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(195, 'Ko Lin Paing', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(196, 'Himiko Harumi', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(197, 'Himiko Harumi', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(198, 'Takayuki Ito', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(199, 'Himiko Harumi', 23, 'BIIO Special Deal', 'B2O Roof and Cafe'' 20', 21),
(200, 'SAWYANNAING', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(201, 'ေအးေအးေအာင္', 18, 'Family Room Promotion', 'Grand Laurel Hotel', 14),
(202, 'Yuta Mukai', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(203, 'Kyawt Lay', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(204, 'Wyne Phyu Cin', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(205, 'Wyne Phyu Cin', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(206, 'Myint Zu', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(207, 'Myint Zu', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(208, 'Ye Yint Htoo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(209, 'ohmar myint', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(210, 'Aungmyokhine Khine', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(211, 'ohmar myint', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(212, 'ohmar myint', 58, 'Japanese Language Course', 'ACE Inspiration ', 60),
(213, 'Wai Wai Mon', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(214, 'Thuya Hein Soe', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(215, 'mg mg', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(216, 'mmmm', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(217, 'jud', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(219, 'Than Than Maw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(220, 'Aung Kyaw Zaw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(221, 'Aung Kyaw Zaw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(222, 'u mya khin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(223, 'နြယ္နြယ္', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(224, 'Wyne Phyu Cin', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(225, 'Wyne Phyu Cin', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(226, 'နြယ္နြယ္', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(227, 'Wyne Phyu Cin', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(228, 'Wyne Phyu Cin', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(229, 'Myo Min', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(230, 'Thuzar', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(231, 'Thet Phyo Kyaw', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(232, 'Kyawminn Thu', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(233, 'Tomoaki  Nagai', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(234, 'Thîñ Ëi Šâń', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(235, 'Thin Thinn Hlaing', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(236, 'jud', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(237, 'Aung Aung Naing', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(238, 'Aung Aung Naing', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(239, 'Aung Aung Naing', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(240, 'Wai Shan', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(241, 'Moemoe Khaing', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(242, 'Hla Witt Yee Lwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(243, 'Xhaka Waw Gyi', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(244, 'U Kyee San', 59, 'Web Development with Java', 'ACE Inspiration ', 60),
(245, 'Kyaw San Win', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(246, 'Htet Htet Aung', 37, 'The Emporia @ CHATRIUM - Dine 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(247, 'Htet Htet Aung', 37, 'The Emporia @ CHATRIUM - Dine 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(248, 'Thukha Pyaesone', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(249, 'Thukha Pyaesone', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(250, 'Htet Htet Aung', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(251, 'Ko Khin Maung Lin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(252, 'kyawsoe', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(253, 'Kaung Htet', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(254, 'Thet Naing Soe', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(255, 'aye myat thu', 59, 'Web Development with Java', 'ACE Inspiration ', 60),
(256, 'UAungKyawSein', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(257, 'UAungKyawSein', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(258, 'Pann Phyu', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(259, 'khinkhin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(260, 'Pann Phyu', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(261, 'Pann Phyu', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(262, 'Zinnwe Win', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(263, 'Ko Nay', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(264, 'Aung Khin Myat', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(265, 'Ko Nay', 18, 'Family Room Promotion', 'Grand Laurel Hotel', 14),
(266, 'ကံေကာ္ေအာက္ ကလရိပ္ခ်ိဳ', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(267, 'ကံေကာ္ေအာက္ ကလရိပ္ခ်ိဳ', 24, 'Happy Hour', 'Orianna 24', 22),
(268, 'James Khora', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(269, 'James Khora', 32, 'Enjoy Promotion', 'February Six Restaurant', 11),
(270, 'San San Nwe', 59, 'Web Development with Java', 'ACE Inspiration ', 60),
(271, 'Ye Thiha', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(272, 'U Mar GA', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(273, 'U Mar GA', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(274, 'Ye Thiha', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(275, 'Jason Jason', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(276, 'Ye Thiha', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(277, 'Ye Thiha', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(278, 'Sandar Kyaw', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(279, 'Sein Gyi', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(280, 'Zeyar Aung', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(281, 'Zinnwe Win', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(282, 'Ko Nay', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(283, 'Ko Nay', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(284, 'aye myat thu', 25, 'Special Weekday Promotion', 'CHARM 66', 24),
(285, 'Hsu Mon Nyein', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(286, 'Sandar Kyaw', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(287, 'Sandar Kyaw', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(288, 'Sandar Kyaw', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(289, 'Sandar Kyaw', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(290, 'Sandar Kyaw', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(291, 'Sandar Kyaw', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(292, 'Sandar Kyaw', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(293, 'Thukha Pyaesone', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(294, 'Sandar Kyaw', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(295, 'Sandar Kyaw', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(296, 'Crystal Lynn', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(297, 'Crystal Lynn', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(298, 'Hnin Oo Yin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(299, 'Winn Lai Lai Aung', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(300, 'Ko Naing', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(301, 'Arka Htut Naing', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(302, 'Saw Hlo', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(303, 'Kyi Mar', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(304, 'Kyi Mar', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(305, 'Kyi Mar', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(306, 'Kyi Mar', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(307, 'Htin Healthcare', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(308, 'Aye Aye Htaik', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(309, 'Zin Maw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(310, 'Mar Mar', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(311, 'Si Thu Kyaw', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(312, 'Tin Zar Phyo', 26, 'Enjoy Promotion', 'Secret Recipe', 25),
(313, 'April Aung', 22, 'Dining Fukurou''s Special Promotion', 'Dining Fukurou', 20),
(314, 'Hpone Nyunt', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(315, 'Zaw Win', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(316, 'Tin Zar Phyo', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(317, 'Thalsu Mon', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(318, 'Lai Yin Kyaw', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(319, 'KyawNyunt Thein', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(320, 'htoothetzaw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(321, 'Aung khine min', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(322, 'Thaw Zin Oo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(323, 'Saw Robert', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(324, 'Shwe Sin', 42, 'Oil Massage Therapy - 90 mins', 'Spa @ Hotel Esperado', 55),
(325, 'Kyaw San', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(326, 'Zaw Win', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(327, 'Zaw Win', 32, 'Enjoy Promotion', 'February Six Restaurant', 11),
(328, 'Phwephwe Zin', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(329, 'Tin Zar Phyo', 47, 'Hotel Inya', 'Hotel 7 Mile ', 57),
(330, 'Tin Zar Phyo', 47, 'Hotel Inya', 'Hotel 7 Mile ', 57),
(331, 'Ko Cho', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(332, 'Nann Thin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(333, 'U Htut Lyin', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(334, 'Winpapa Lwintuu', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(335, 'Noel Noel', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(336, 'Win Win', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(337, 'kyin', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(338, 'Sithu Khine', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(339, 'Sithu Khine', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(340, 'Sithu Khine', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(341, 'Sithu Khine', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(342, 'Sithu Khine', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(343, 'Sithu Khine', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(344, 'Noel Noel', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(345, 'Noel Noel', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(346, 'May Thu Myint', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(347, 'Nyi Nyi Min', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(348, 'Nyi Nyi Min', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(349, 'Hla Oo', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(350, 'Tre Za', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(351, 'Su Nanda Latt', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(352, 'Laminn Kabyar', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(353, 'Khinhtet Aung', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(354, 'Su Myat Yadanar', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(355, 'Thant Thinzar Nyi', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(356, 'ကိုကို ခ်စ္', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(357, 'Nay Linoo', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(358, 'Po Po Myint Than', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(359, 'Tin Zar Phyo', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(360, 'FC Lion', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(361, 'Kyaw Min Oo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(362, 'Alvin Swan YI', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(363, 'Oscar Myo Min', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(364, 'Mmgl English Class', 49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', 57),
(365, 'kyi lwin ', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(366, 'ashinawbasa', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(367, 'Anthony Than Kyaw', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(368, 'Nyi Nyi', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(369, 'Nyi Nyi', 58, 'Japanese Language Course', 'ACE Inspiration ', 60),
(370, 'Kyawmin Htet', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(371, 'Lamin Phyu Thwe', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(372, 'Tin Zar Phyo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(373, 'Eros Eros', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(374, 'Ma Lik', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(375, 'Tun Lin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(376, 'Aung Win Tun', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(377, 'Thet Paing Kyaw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(378, 'Pyae Phyo Maung', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(379, 'Pyae Phyo Maung', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(380, 'Thein Ki Kin', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(381, 'Min Min', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(382, 'Soe Nyunt', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(383, 'U Aye Zaw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(384, 'Ngwe Lwin Aung', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(385, 'Ă Nyěįn Thū', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(386, 'Ya Da Nar', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(387, 'Aung Kyaw MinMin', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(388, 'No Ven', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(389, 'No Ven', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(390, 'No Ven', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(391, 'No Ven', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(392, 'Oo Thiha Min Thu', 58, 'Japanese Language Course', 'ACE Inspiration ', 60),
(393, 'Oo Kyaw', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(394, 'Sein Thaung Tun', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(395, 'Aye Thi Mon', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(396, 'Aung Kyaw San', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(397, 'Ko Ko', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(398, 'win naing', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(399, 'Golden Fish', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(400, 'Golden Fish', 47, 'Hotel Inya', 'Hotel 7 Mile ', 57),
(401, 'Cherry Chan Myae', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(402, 'MThu Rein', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(403, 'Tin Aye Lin', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(404, 'Zar Li', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(405, '李澤成', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(406, 'Hein Htet Aung', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(407, 'Win Ah', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(408, 'Kazushi  Okabe', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(409, 'Oo Kyaw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(410, 'Thet Phyo Kyaw', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(411, 'Yê Yîñț Ãĝ', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(412, 'Yê Yîñț Ãĝ', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(413, 'Oo Kyaw', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(414, 'Oscar Myo Min', 25, 'Special Weekday Promotion', 'CHARM 66', 24),
(415, 'Ye Kyaw Aung', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(416, 'Ye Kyaw Aung', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(417, 'Ye Kyaw Aung', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(418, 'Ye Kyaw Aung', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(419, 'Ye Thiha', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(420, 'Ye Thiha', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(421, 'Htet Su Wai', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(422, 'Htet Su Wai', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(423, 'Anthony Than Kyaw', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(424, 'Zar Li', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(425, 'Zar Li', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(426, 'Ye Thiha', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(427, 'Cyran Gregory', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(428, 'Sandar Lin', 42, 'Oil Massage Therapy - 90 mins', 'Spa @ Hotel Esperado', 55),
(429, 'Sai Soe Thu', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(430, 'Thin Thin Aung', 6, 'Enjoy Promotion', 'Padonmar Restaurant ', 10),
(431, 'Sai Soe Thu', 17, 'Deluxe Room Promo', 'Grand Laurel Hotel', 14),
(432, 'Kyaw Htin Naing', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(433, 'Ye Thiha', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(434, 'Ye Thiha', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(435, 'Ba Ba', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(436, 'Alligent Fever', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(437, 'Thwin Zar Hein', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(438, 'Thwin Zar Hein', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(439, 'Nyein Wai Phyo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(440, 'Ye Thiha', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(441, 'Nyein Wai Phyo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(442, 'Zinnyi Soe', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(443, 'Lin Lin', 58, 'Japanese Language Course', 'ACE Inspiration ', 60),
(444, 'Myo Thura Lwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(445, 'Myo Thura Lwin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(446, 'Nyein Chan Aung', 49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', 57),
(447, 'Mar Lar', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(448, 'Aung Myo Min', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(449, 'Ye Thiha', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(450, 'Ye Thiha', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(451, 'Nyein Ei San', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(452, 'Ye Thiha', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(453, 'Nyein Ei San', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(454, 'Zaw Lin Ko', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(455, 'Nyi Nyi', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(456, 'Ye Thiha', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(457, 'Nanda Kyawlwin', 49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', 57),
(458, 'Ye Tay Zar Shein', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(459, 'Zar Li', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(460, 'Myat Phyo Aung', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(461, 'Ye Thiha', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(462, 'Ye Thiha', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(463, 'U Tun Win Aung', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(464, 'Aung Kyaw Nyein', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(465, 'Thein Soe Htike', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(466, 'အာကာ မင်း', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(467, 'Nyein Ei San', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(468, 'Robin Aunggyi', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(469, 'Ye Thiha', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(470, 'Aung Thu', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(471, 'Riwic', 49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', 57),
(472, 'Peter Min', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(473, 'Thwin Zar Hein', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(474, 'Ye Thiha', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(475, 'Mya Thandar', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(476, 'Mya Thandar', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(477, 'Thet Zaw Htoon', 49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', 57),
(478, 'Win Win Htet', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(479, 'Zee Kwat', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(480, 'Ye Thiha', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(481, 'Ye Thiha', 6, 'Enjoy Promotion', 'Padonmar Restaurant ', 10),
(482, 'Ei Myat Myat Mon', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(483, 'Ye Thiha', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(484, 'Mg Shein Kyaw', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(485, 'Mg Shein Kyaw', 41, 'Oil Massage Therapy - 60 mins', 'Spa @ Hotel Esperado', 55),
(486, 'Win Htet Aung', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(487, 'Tinhtun Aung', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(488, 'Tinhtun Aung', 49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', 57),
(489, 'Ko Lat', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(490, 'kaunghtet', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(491, 'Kyi Mar', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(492, 'Kyi Mar', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(493, 'Kyi Mar', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(494, 'Ye Thiha', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(495, 'Koolpon', 42, 'Oil Massage Therapy - 90 mins', 'Spa @ Hotel Esperado', 55),
(496, 'Thet Aung-Goal', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(497, 'Thet Aung-Goal', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(498, 'Khin Khin Thant', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(499, 'Khin Aye Swe', 41, 'Oil Massage Therapy - 60 mins', 'Spa @ Hotel Esperado', 55),
(500, 'Phyu ', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(501, 'Zar Li', 59, 'Web Development with Java', 'ACE Inspiration ', 60),
(502, 'Phyu ', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(503, 'Ohnmar Soe', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(504, 'Julia Thae', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(505, 'aung naing', 41, 'Oil Massage Therapy - 60 mins', 'Spa @ Hotel Esperado', 55),
(506, 'aung naing', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(507, 'Aung Win Tun', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(508, 'Aung Win Tun', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(509, 'aung naing', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(510, 'Karim Szh', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(511, 'Pan Hsu Htwar', 42, 'Oil Massage Therapy - 90 mins', 'Spa @ Hotel Esperado', 55),
(512, 'SI Thu Htet', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(513, 'Rin Tomolu Fay', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(514, 'Rin Tomolu Fay', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(515, 'Thin Thin Aung', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(516, 'Kyaw San Lin', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(517, 'SI Thu Htet', 50, 'Software Engineering Course', 'ACE Inspiration ', 60),
(518, 'SI Thu Htet', 50, 'Software Engineering Course', 'ACE Inspiration ', 60),
(519, 'SI Thu Htet', 50, 'Software Engineering Course', 'ACE Inspiration ', 60),
(520, 'SI Thu Htet', 50, 'Software Engineering Course', 'ACE Inspiration ', 60),
(521, 'Lwin Mar Than', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(522, 'Karim Szh', 40, 'Dermalogica Facial Treatment', 'Spa @ Hotel Esperado', 55),
(523, 'KyawThuHein', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(524, 'KyawThuHein', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(525, 'A East Wai Gyi', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(526, 'Ei Myat Myat Mon', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(527, 'KyawThuHein', 46, 'Moonsoon Promotion', 'Hotel 7 Mile ', 57),
(528, 'Kyaw Min Oo', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(529, 'Tre Za', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(530, 'Tre Za', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(531, 'jud', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(532, 'Tin Zar Phyo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(533, 'Tin Zar Phyo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(534, 'Tin Zar Phyo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(535, 'Tin Zar Phyo', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(536, 'Tin Zar Phyo', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(537, 'Richard Shwe', 3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', 7),
(538, 'Tin Zar Phyo', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(539, 'Shee Shee', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(540, 'Zayar Lin', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(541, 'Tin Zar Phyo', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(542, 'Tin Zar Phyo', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(543, 'Tin Zar Phyo', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(544, 'Aye Thandar', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(545, 'Nyein Ei San', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(546, 'Polar', 18, 'Family Room Promotion', 'Grand Laurel Hotel', 14),
(547, 'Polar', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(548, 'Polar', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(549, 'Aye Thandar', 38, 'TIGER HILL @ CHATRIUM - Dine 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(551, 'San Tun Oo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(552, 'Polar', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(553, 'Wendy Nyo', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(555, 'Shee Shee', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(556, 'Nyi Lurn', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(557, 'Yan Naing Aung', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(558, 'Eaindary Mon', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(559, 'Eaindary Mon', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(560, 'Eaindary Mon', 46, 'Moonsoon Promotion', 'Hotel 7 Mile ', 57),
(561, 'きよし KoKoa', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(562, 'Kyaw Ye Min', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(563, 'Thëÿ Čæll Mê Dêrrîck', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(564, 'Mon Mon', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(565, 'Mon Mon', 42, 'Oil Massage Therapy - 90 mins', 'Spa @ Hotel Esperado', 55),
(566, 'Khin Aye Swe', 23, 'BIIO Special Deal', 'B2O Roof and Cafe'' 20', 21),
(567, 'Mon Mon', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(568, 'Min Min', 23, 'BIIO Special Deal', 'B2O Roof and Cafe'' 20', 21),
(569, 'Min Min', 26, 'Enjoy Promotion', 'Secret Recipe', 25),
(570, 'あきら@白猫垢趣味垢', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(571, 'あきら@白猫垢趣味垢', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(572, 'あきら@白猫垢趣味垢', 58, 'Japanese Language Course', 'ACE Inspiration ', 60),
(573, 'Wendy Nyo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(574, 'Wendy Nyo', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(575, 'Mon Mon', 22, 'Dining Fukurou''s Special Promotion', 'Dining Fukurou', 20),
(576, 'Mon Mon', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(577, 'Min Min', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(578, 'Min Min', 32, 'Enjoy Promotion', 'February Six Restaurant', 11),
(579, 'takahashi', 54, 'Spa Deluxe', 'Hotel 7 Mile', 61),
(580, 'Min Min', 25, 'Special Weekday Promotion', 'CHARM 66', 24),
(581, 'Min Min', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(582, 'Min Min', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(583, 'Mon Mon', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(584, 'Fiona Hong ', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(585, 'Samuel Fong', 25, 'Special Weekday Promotion', 'CHARM 66', 24),
(586, 'Kar Yan', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(587, 'Ko Linn', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(588, 'Ko Linn', 37, 'The Emporia @ CHATRIUM - Dine 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', 53),
(589, 'Aye Thandar', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(590, 'Su Thandar Oo', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(591, 'Kyaw Ye Min', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(592, 'Aung Ye Thant', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(593, 'Kyaw Thet Win', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(594, 'Kyaw Thet Win', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(595, 'Min Min', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(596, 'Min Min', 16, 'Standard Single Room', 'Sunny Holiday Hotel', 13),
(597, 'Min Min', 16, 'Standard Single Room', 'Sunny Holiday Hotel', 13),
(598, 'Min Min', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(599, 'Min Min', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(600, 'Min Min', 6, 'Enjoy Promotion', 'Padonmar Restaurant ', 10),
(601, 'Ye Thiha', 24, 'Happy Hour', 'Orianna 24', 22),
(602, 'Aye Thandar', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(603, 'sss and chue', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(604, 'sss and chue', 59, 'Web Development with Java', 'ACE Inspiration ', 60),
(605, 'sss and chue', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(606, 'sss and chue', 34, 'Happy Hour Myanmar Beer', 'Epic Bar & Restaurant', 51),
(607, 'sss and chue', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(608, 'Min Min', 17, 'Deluxe Room Promo', 'Grand Laurel Hotel', 14),
(609, 'takahashi', 49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', 57),
(610, 'takahashi', 47, 'Hotel Inya', 'Hotel 7 Mile ', 57),
(611, 'takahashi', 46, 'Moonsoon Promotion', 'Hotel 7 Mile ', 57),
(612, 'Min Min', 18, 'Family Room Promotion', 'Grand Laurel Hotel', 14),
(613, 'takahashi', 50, 'Software Engineering Course', 'ACE Inspiration ', 60),
(614, 'Ye Thiha', 35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', 51),
(615, 'Myat Yadanar Sint', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(616, 'Myat Yadanar Sint', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(617, 'ရ. တု', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(618, 'ရ. တု', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(619, 'ရ. တု', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(620, 'ရ. တု', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(621, 'ရ. တု', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(622, 'ရ. တု', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(623, 'ရ. တု', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(624, 'ရ. တု', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(625, 'ရ. တု', 1, 'Enjoy Free Soft Drink', 'Jasper House', 3),
(626, 'ရ. တု', 34, 'Happy Hour Myanmar Beer', 'Epic Bar & Restaurant', 51),
(627, 'Aung Myat Thein Oo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(628, 'Aung Myat Thein Oo', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(629, 'Thwin Zar Hein', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(630, 'Ye Thiha', 53, 'Programming Fundamental Course', 'ACE Inspiration ', 60),
(631, 'Ye Thiha', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(632, 'Aung Ye Thant', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(633, 'Sabal Phyoe', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(634, 'Sabal Phyoe', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(635, 'Yuta Mukai', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(636, 'Myat Yadanar Sint', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(637, 'Shun', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(638, 'Khin Aye Swe', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(639, 'KyisoeThant', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(640, 'Thukha Pyaesone', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(641, 'Su Mon Lay', 60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', 62),
(642, 'Su Mon Lay', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(643, 'Su Mon Lay', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(644, 'Chilli Chilli Phyo Lay', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(645, 'Myat Htut', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(646, 'Nyo Chaw Lay', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(647, 'Kum Kum', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(648, 'San San', 43, 'Monsoon Promotion', 'Linkage Training Restaurant', 56),
(649, 'phyominthann', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(650, 'Boaung Din', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(651, 'Boaung Din', 4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', 6),
(652, 'Boaung Din', 5, 'Big Chance @Parami Branch', 'Amazing Thai Food', 9),
(653, 'Julie', 32, 'Enjoy Promotion', 'February Six Restaurant', 11),
(654, 'Su Mon Lay', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(655, 'Freddy Jackson', 49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', 57),
(656, 'Su Mon Lay', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(657, 'Su Mon Lay', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(658, 'Su Mon Lay', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(659, 'MgKyaing', 51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', 58),
(660, 'Su Mon Lay', 21, 'Enjoy Coupons', 'Hera Spa', 17),
(661, 'Boaung Din', 53, 'Programming Fundamental Course', 'ACE Inspiration ', 60),
(662, 'Yan Naing Oo', 39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', 53),
(663, 'Cricket Kg MaLay', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(664, 'lucyvito', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(665, 'Cricket Kg MaLay', 33, 'Enjoy Promotion', 'Cafe'' Paradise', 12),
(666, 'MgKyaing', 52, 'Android Development Course', 'ACE Inspiration ', 60),
(667, 'Kaung Htet Kyaw', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(668, 'lucyvito', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(669, 'April Aries', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(670, 'April Aries', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(671, 'lucyvito', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(672, 'lucyvito', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(673, 'Nilar Aung', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(674, 'lucyvito', 36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', 52),
(675, 'Aung Ko Khant', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(676, 'CML', 52, 'Android Development Course', 'ACE Inspiration ', 60),
(677, 'CML', 53, 'Programming Fundamental Course', 'ACE Inspiration ', 60),
(678, 'Little Nwe', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(679, 'Fiona Hong ', 44, 'Amazing Cocktail Promotion', 'Dining Fukurou', 20),
(680, 'Kyaw Lu', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(681, 'Thinzar Thu Zaw', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(682, 'Julie', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(683, 'Julie', 20, 'Enjoy Coupons', 'Golden Park Spa Land', 16),
(684, 'Ei Khine', 31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', 6),
(685, 'Nan Ei Mon', 2, 'Little Korea Barbecue', 'Little Korea Barbecue', 4),
(686, 'Aung Kyaw Nyunt', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(687, 'Hnin Htut', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(688, 'Hnin Htut', 63, 'Special Wednesday', 'Rangoon Grill & Chill', 45),
(689, 'Hnin Htut', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(690, 'Hnin Htut', 62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', 45),
(691, 'Hnin Hnin', 40, 'Dermalogica Facial Treatment', 'Spa @ Hotel Esperado', 55);

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE IF NOT EXISTS `Admin` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `name`, `email`, `password`, `address`, `remember_token`, `api_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Rooking', 'cookpro.rooking@gmail.com', '$2y$10$VdQ/bTX2MKdKvo8JThDbEOaDdU6ueK9zhJaMgOqJiMBvZAl2lP0f6', 'myanmar / japan', 'aSBKZecg6uxtX8CtwAfTAzOHEAbHrjEBX7solMS7vDcAthgAiiMY6nJgEmRo', 'DgIdNdEkVG3y0zaRimRtUwLQP0tKx1K3F0T19OsTuiC6LSkxL74QQX7w8IRW', NULL, '2016-12-22 07:48:07', NULL),
(2, 'Akn', 'akn.nikita.akn@gmail.com', '$2y$10$67kYU2svRBbaHy8Bo/XZ8.U9M87rhhHArxV6F5/wx3nnAFIxmnYaW', 'Myanmar', NULL, '6gcTBAJRpKsQU3geyMAOM4s8ndssaK2vXvU4Iga9WPoRXyB69oCGsazKuvIn', NULL, '2016-09-26 09:42:30', NULL),
(3, 'Aung Kyaw Nyunt', 'aungkyawnyunt2004@gmail.com', '$2y$10$z7lHVC8OO5QY600KSahYaO2zfmLcVqcmP5zK7g1T/hbxp3rx19Tiu', '127.0.0.1', NULL, 'cUhTgUP6SPNiSuDLpA2qVGIWpY69y8hNsmEkyz9RE0C73uEn8tlWGRJ0zyKU', '2016-09-22 14:27:15', '2017-01-01 06:41:45', NULL),
(4, 'suzuki', 'suzuki@rooking.co.jp', '$2y$10$.tB3ckBvu5kbNa1I9.UdY.UkkCD9zwRA0i9JXjgLHSmSGHRZSdXRe', 'Japan', NULL, 'ccC8EW9xVAVya3S1Y4mK24r9Xwfv0aoPHRIQ80cFMwqZZi0lSdVxZzlLTmRX', '2016-09-22 16:59:55', '2016-09-22 10:31:56', NULL),
(5, 'Takahashi San', 'takahashi@rooking.co.jp', '$2y$10$Q1fhEkG5WuJzF2KvEGBbTeD8kmFaBis6uCObwuohJ/jwdL0beHNvu', 'Japan', 'ACQFE2jXLWKW2mNVzB722nSA5IyIlE9Jkpymb1SRaogLO0YvUKObuAHbvnbI', 'onwUmrI4MQyUhhJPb9eWJjYP2oYNkTzwMNgrQTM9wh21bp8h4ZehvuiVBMbV', '2016-10-05 16:47:10', '2016-11-17 05:32:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `App_Version`
--

CREATE TABLE IF NOT EXISTS `App_Version` (
  `id` int(10) unsigned NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Branch`
--

CREATE TABLE IF NOT EXISTS `Branch` (
  `id` int(10) unsigned NOT NULL,
  `main_branch` tinyint(1) NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` double(15,8) NOT NULL COMMENT 'google map location lng',
  `lat` double(15,8) NOT NULL COMMENT 'google map location lat',
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1:paid, 2:free',
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `average_item_price_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `average_item_price_to` decimal(10,2) DEFAULT NULL,
  `open_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'eg->Monday - Friday 17:00 - 23:30(L.O.22:30) Saturday & Sunday & Holiday 17:00 - 23:00(L.O.22:00)',
  `township_id` int(11) NOT NULL,
  `activate` int(11) DEFAULT NULL COMMENT '1: unactivate, 2:admin approve it',
  `lincese` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'lincese file to approve owner own this restaurant',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Branch`
--

INSERT INTO `Branch` (`id`, `main_branch`, `business_id`, `name`, `description`, `image`, `lng`, `lat`, `phone`, `address`, `status`, `website`, `average_item_price_from`, `average_item_price_to`, `open_time`, `township_id`, `activate`, `lincese`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 0, 3, 'Jasper House', '-', 'thumb_26725687918314.jpg', 96.12901659, 16.78333725, '012302011', 'No.54, Alone Street, West Quater Pyay Road, Dagon Township', 2, NULL, '5000', 5000.00, '0900AM -1100PM', 1, 2, '480493130218445472.jpg', '2016-08-26 18:05:13', '2016-09-01 11:58:43', NULL),
(4, 0, 4, 'Little Korea Barbecue', '-', 'thumb_76044477085102.jpg', 96.17963776, 16.84935564, '09-772903242', 'No.95H, Wai Za Yan Tar Street, South Okkalapa', 2, NULL, '13800', 13800.00, '5:00 PM - 11:00 PM', 17, 2, '669703860422880479.jpg', '2016-08-26 18:19:22', '2016-08-31 10:25:27', NULL),
(5, 0, 5, 'Goya Sky Bar @ Hotel Esperado', 'Bar & Restaurant', 'thumb_32249716365090.jpg', 96.16343660, 16.81871059, '01 8619487, 01 8619488, 01 8619489', 'No.23, 9th floor, Hotel Esperado, U Aung Myat Road, Mingalar Taung Nyunt Tsp', 2, NULL, '7000', 7000.00, '11:00AM-11:00PM', 12, 2, '636314342742203611.jpg', '2016-08-26 18:24:21', '2016-09-01 12:01:42', NULL),
(6, 0, 6, 'HOT SPOT BBQ AND HOT POT ', '-', 'thumb_9665887288665.jpg', 96.17920861, 16.84960208, '095111401,095213259', 'No.87,(8)QRT,YADANA RD, SOUTH OKKALAPA', 2, NULL, '9800', 9800.00, '03:00 PM - 11:00 PM', 17, 2, '126492724430648291.jpg', '2016-08-26 18:29:51', '2016-09-28 18:10:50', NULL),
(7, 0, 7, 'DIY Hot Pot and BBQ', '-', 'thumb_97264999638876.jpg', 96.16735274, 16.85178633, '01 233 0381', '95F WAI Zayan Dar Rd, Yangon, Myanmar, 11091', 2, NULL, '0', 0.00, '11:00 AM - 11:00 PM', 18, 2, '324530533676802726.jpg', '2016-08-26 18:51:47', '2016-09-07 17:02:10', NULL),
(8, 0, 8, 'Thai 47 Bristo & Bar', '-', 'thumb_59540403240702.jpg', 96.17234747, 16.83675108, '09 261619811, 09 26169822', 'Aung Zayya Road, Kyauk Kone', 2, NULL, '9000', 9000.00, '10:30 AM - 10:30 PM', 25, 2, '749331681902784384.jpg', '2016-08-27 14:41:55', '2016-09-01 12:07:07', NULL),
(9, 0, 9, 'Amazing Thai Food', '-', 'thumb_14410284594716.jpg', 96.16428479, 16.85168652, '09 4200 90007', 'No.152, Parami Road, South Okkalapa Township, Yangon', 2, NULL, '4000', 4000.00, '10:00 AM - 10:00 PM', 17, 2, '456995328192771464.jpg', '2016-08-27 14:46:20', '2016-09-01 11:30:07', NULL),
(10, 0, 10, 'Padonmar Restaurant ', 'သန္႔ရွင္းလတ္ဆတ္ျပီး အရသာရွိလွတဲ႔ ျမန္မာ ၊ ထိုင္း အစားအစာ ေကာင္းေကာင္းကိုမွ ၾကိဳက္ႏွစ္သက္သူ  ေတြအတြက္ Padonmar Fine Dining Myanmar & Thai Cuisine Restaurant နဲ႔ မိတ္ဆက္ေပးပါရေစ။ သင္ၾကိဳက္ႏွစ္သက္တဲ့အစားအစာမ်ားကို ထူးကဲေကာင္းမြန္ေသာ ၀န္ေဆာင္မႈ နဲ႔ အတူ သင့္အေနနဲ႔ သူမတူေအာင္ ေကာင္းမြန္ တဲ့အရသာ ကို ရရွိခံစားမိေစမွာ အေသအခ်ာပါပဲ။ အရသာရွိလွတဲ႕ အစားအစာ ေတြကို total bill တြင္ 10 % discount ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏိုင္ဖို႔ အခုပဲ Koolpon မွ discount ကူပြန္ကို အရယူျပီး လွမ္းလာခဲ့ပါ။ ', 'thumb_599624966043.jpg', 96.14049912, 16.78567151, '01 538895', '105/107, Kha Yae Bin Road, Dagon Township, Yangon', 2, NULL, '10000', 10000.00, '11:00 AM - 11:00 PM', 1, 2, '834668510836711596.jpg', '2016-08-27 15:05:21', '2016-11-30 14:34:37', NULL),
(11, 0, 11, 'February Six Restaurant', '-', 'thumb_18028536820308.jpg', 96.17909009, 16.83061230, '01 572858', 'No.33, Waizayantar Road, Thingangyun Township', 2, NULL, '5000', 5000.00, '10:30 AM - 9:30 PM', 18, 2, '622903561149766907.jpg', '2016-08-27 15:39:59', '2016-09-28 17:43:09', NULL),
(12, 0, 12, 'Cafe'' Paradise', '-', 'thumb_48719703048954.jpg', 96.16261666, 16.77412192, '01 378001', 'No.240, 2B, Seik Kan Thar (Upper), Kyauktada Township', 2, NULL, '4000', 4000.00, '9:00 AM - 9:00 PM', 3, 2, '731594355781348151.jpg', '2016-08-27 15:51:26', '2016-09-28 18:10:02', NULL),
(13, 0, 13, 'Sunny Holiday Hotel', '-', 'thumb_49638492207332.jpg', 96.15492941, 16.78316006, '01 375983', 'No.33, Nawaday Street, Yaw Min Gyi Quater, Dagon Township, Yangon', 2, NULL, '60', 60.00, '24 hrs', 46, 2, '995628643589248111.jpg', '2016-08-27 16:57:06', '2016-09-01 11:41:07', NULL),
(14, 0, 14, 'Grand Laurel Hotel', '-', 'thumb_39181406700328.jpg', 96.17265345, 16.77645756, '01-298986', '153/159, Bogyoke Aung San Road (corner of 46th street), Botahtuang', 2, NULL, '60000', 60000.00, '24 hrs', 9, 2, '907912507415375791.jpg', '2016-08-29 11:15:36', '2016-09-01 11:49:06', NULL),
(16, 0, 16, 'Golden Park Spa Land', '-', 'thumb_8131053955596.jpg', 96.12448888, 16.88591365, '09258343373', 'Pin Lon Road, Myanmar Equestrian Federation, North Dagon Township', 2, NULL, '8000', 8000.00, '24 Hours (Daily)', 13, 2, '721660632203725755.jpg', '2016-08-30 09:47:54', '2016-08-31 10:04:21', NULL),
(17, 0, 17, 'Hera Spa', '-', 'thumb_650994354343.jpg', 96.13755416, 16.80446860, '0943161224', 'Level-4(11), Dagon Centre(2), Sanchaung Township', 2, NULL, '0', 0.00, '10:00 AM ~ 08:00 PM', 8, 2, '483398612796259310.jpg', '2016-08-30 10:47:33', '2016-09-01 12:09:19', NULL),
(19, 0, 19, 'John Dee''s Western Restuarant', '-', 'thumb_50912717325686.jpg', 96.15825206, 16.80157159, '01541978~9,01541981~8,01541990~3', 'No.12,Ko Min Ko Chin Road,Bo Cho Ward No.1,Bahan Township', 2, NULL, '7000', 7000.00, '10:00 AM - 11:00 PM', 2, 2, '687904752498515187.jpg', '2016-08-30 13:22:15', '2016-09-01 12:11:48', NULL),
(20, 0, 20, 'Dining Fukurou', '-', 'thumb_45306945021498.jpg', 96.16104156, 16.82287211, '01542871,09420231330', 'No.81(C),New University Avenue Road, Bahan Township', 2, NULL, '0', 0.00, '11:00 AM - 10:00PM', 2, 2, '712853414582384903.jpg', '2016-08-30 13:28:52', '2016-09-28 18:12:10', NULL),
(21, 0, 21, 'B2O Roof and Cafe'' 20', '-', 'thumb_16412666912015.jpg', 96.15856319, 16.80928483, '09456060020', 'No.82/14, Shwe Gone Daing Main Road, Bahan Township', 2, NULL, '0', 0.00, '07:00 AM - 12:00 AM', 2, 2, '746543488151555648.jpg', '2016-08-30 13:43:31', '2016-09-28 18:13:04', NULL),
(22, 0, 22, 'Orianna 24', '-', 'thumb_43061566782366.jpg', 96.14355946, 16.77704669, '09-8618961', 'No.111, Shwe Taung Tan Street (Middle Block), Lanmadaw Township', 2, NULL, '5000', 5000.00, '11:00 AM - 11:00 PM', 5, 2, '354304870922563957.jpg', '2016-08-30 21:06:08', '2016-09-28 18:11:29', NULL),
(24, 0, 24, 'CHARM 66', '-', 'thumb_2352806966503.jpg', 96.16983429, 16.84633418, '09-775555266', 'No.66, Waizanyandar Road, South Oakkala Township', 2, NULL, '28', 28.00, '5:00 PM - 11:30 PM', 17, 2, '161985909647464889.jpg', '2016-08-30 21:15:55', '2016-09-01 12:18:45', NULL),
(25, 0, 25, 'Secret Recipe', '-', 'thumb_75719383934381.jpg', 96.17059022, 16.81123620, '018604618', 'Second Floor, Ocean Super Center, Shwe Gone Daing, Bahan Township', 2, NULL, '3500', 7500.00, '9:00 AM - 10:00 PM', 2, 2, '594717686649534958.jpg', '2016-08-30 21:23:27', '2016-09-01 14:17:22', NULL),
(26, 0, 26, 'Kamakura Marina', '-', 'thumb_40248849048430.jpg', 96.13497840, 16.82301518, '01650651', 'Marina Residence Yangon, 8 Kaba Aye Pagoda Road,  Ward No.10 Mayangone Township, Yangon　', 2, NULL, '15', 15.00, 'Lunch 11:30 - 14:00 Dinner 17:30 - 22:30', 31, 2, '119296325887996884.jpg', '2016-08-30 21:30:31', '2016-08-31 13:30:59', NULL),
(27, 0, 27, 'Vista Bar', 'Bar & Pub', 'thumb_77022318653094.jpg', 96.15392834, 16.80503283, '+95 1 559 481,09252666678, 0973228586', '168 West Shwegonedaing Road, Bahan Township, Yangon', 2, NULL, '5000', 5000.00, '6PM-1AM', 2, 2, '478312233508780348.jpg', '2016-08-31 01:12:14', '2016-09-01 14:20:47', NULL),
(28, 0, 28, 'Fuse', 'DJ Bar', 'thumb_7625849461762.jpg', 96.15523497, 16.82743693, '09 44000 7788', 'HAGL, Myanmar Plaza Lv-4, Kabaraye Pagoda Road, Yankin Township', 2, NULL, '10000', 10000.00, '21:30PM - 03:00AM', 25, 2, '180567501319676731.jpg', '2016-08-31 01:24:03', '2016-09-01 14:25:35', NULL),
(29, 0, 29, 'YKKO @ South Race Course Branch', 'Kyay-Oh & BBQ', 'thumb_46455322522417.jpg', 96.16916109, 16.81806827, '09 44013 3330, 01-401 179 Ext: 130', 'No.(24/26), 7th Floor,Race Course Condominium,South Race Course Street, Tamwe Township, Yangon', 2, NULL, '3500', 3500.00, '10AM-10PM', 23, 2, '399630437668228791.jpg', '2016-08-31 01:47:21', '2016-08-31 01:52:31', NULL),
(42, 0, 42, 'Gakken Math School', 'Education Centre', 'thumb_6271091849972.jpg', 96.15988056, 16.82980916, '01-8605310 / 01-559256', 'No.41, Room 11,Shop House, Shwe Ohn Pin Housing, Yankin Tsp, Yangon', 2, NULL, '0', 0.00, 'Mon-Fri: 10:30 - 18:30 Sat-Sun: 09:00 - 17:00', 25, 2, '717992297909902771.jpg', '2016-08-31 02:22:41', '2016-08-31 02:22:41', NULL),
(43, 0, 43, 'Cafe''20', 'Cafe'' & Bar', 'thumb_93819085586678.jpg', 96.15892797, 16.80946970, '09 45606 0020', 'No.(82/14), Shwe Gon Daing Road, Bahan Township, Yangon', 2, NULL, '5000', 5000.00, '07:00 - 23:00', 2, 2, '249123864516896104.jpg', '2016-08-31 02:32:58', '2016-08-31 02:32:58', NULL),
(44, 0, 44, 'Gakken Math', 'Education Centre', 'thumb_12222614469192.jpg', 96.13028003, 16.82647783, '01 2307803', 'Hledan Centre, 4th floor, Pyay Road, Kamaryut Township, Yangon', 2, NULL, '0', 0.00, 'Mon-Fri: 10:30 - 18:30 Sat-Sun: 09:00 - 17:00', 30, 2, '561364994137175177.jpg', '2016-08-31 02:37:50', '2016-08-31 02:45:51', NULL),
(45, 0, 45, 'Rangoon Grill & Chill', 'BBQ', 'thumb_39175599877139.jpg', 96.12514054, 16.84782251, '09 252 653 011', '182A, Yangon-Insein Road, Hlaing Township Yangon', 2, NULL, '10000', 10000.00, '14:00 - 22:30', 28, 2, '633826400596869131.jpg', '2016-08-31 02:54:14', '2016-09-28 18:14:06', NULL),
(47, 0, 47, 'Kohaku Japanese Restaurant @ Chatrium Hotel Royal Lake Yangon', 'Japanese Restaurant', 'thumb_42413478257080.jpg', 96.16895188, 16.80037232, '01 544 500', 'No 40, Natmauk Road, Tamwe Township, Yangon', 2, NULL, '5000', 5000.00, '11:00 - 22:30', 23, 2, '533124658926789515.jpg', '2016-08-31 03:08:29', '2016-08-31 03:10:57', NULL),
(49, 0, 49, 'Tiger Hill Chinese Restaurant @ Chatrium Hotel Royal Lake Yangon', 'Chinese Restaurant', 'thumb_69709842511975.jpg', 96.16897334, 16.80035178, '01 544500', 'No.40, Natmauk Road, Tamwe Township, Yangon', 2, NULL, '5000', 5000.00, '11:00 - 22:30', 23, 2, '889495834775838123.jpg', '2016-08-31 03:18:16', '2016-08-31 03:18:16', NULL),
(51, 0, 51, 'Epic Bar & Restaurant', '-', 'thumb_53834659876179.jpg', 96.17944996, 16.83244322, '09-255863839', 'No.41, Parami Yeikthar, Parami Road, Yankin', 2, NULL, '3000', 10000.00, '11:00 AM -11:00 PM', 25, 2, '877432454681706673.jpg', '2016-08-31 13:50:13', '2016-09-08 11:34:10', NULL),
(52, 0, 52, 'Steam Boat Hot Pot', '-', 'thumb_84764496733829.jpg', 96.16297046, 16.82992212, '09-254863677', 'Kandawgyi, Myaw Sin Kyun', 2, NULL, '5000', 10000.00, '9:00 AM - 11:00 PM', 25, 2, '255270362417833235.jpg', '2016-08-31 14:47:53', '2016-09-28 18:14:49', NULL),
(53, 0, 53, 'Chatrium Hotel Royal Lake Yangon', '-', 'thumb_14257939625560.jpg', 96.18141879, 16.82428148, '95-1-544500, 95-1-544400', 'No.40, Natmauk Road, Tamwe Township, Yangon', 2, NULL, '0', 0.00, '24 hrs', 23, 2, '357363659457670194.jpg', '2016-08-31 17:00:55', '2016-08-31 17:00:55', NULL),
(55, 0, 55, 'Spa @ Hotel Esperado', 'Spa', 'thumb_48783357340696.jpg', 96.15785760, 16.78822704, '01 861 9486', 'No.23, Kan Yeik Thar Road, Mingalar Taung Nyunt Township', 2, NULL, '35000', 35000.00, '10AM-10PM', 12, 2, '264744228344660841.jpg', '2016-09-01 01:04:09', '2016-09-01 02:03:04', NULL),
(56, 0, 56, 'Linkage Training Restaurant', 'Linkage Restaurant is a social project as well as a link to Forever Humanitarian & Development Projects, a volunteer group founded in 2010. It is a pretty corner in crowded downtown of Yangon, Myanmar where you can enjoy a great collection of Myanmar Fine Art (paintings) and delicious food prepared and served by enthusiastic young adolescents with dignity!', 'thumb_9662263629443.jpg', 96.16193538, 16.77432737, '09 960 046739', '141, 1st floor, Seikkantha St, Yangon, Myanmar, 11182', 2, NULL, '4000', 8000.00, 'Tue-Sun:  Morning - 11:00 am - 2:00 pm Evening 6:00 pm - 10:00 pm', 3, 2, '194563622255576776.jpg', '2016-09-01 10:37:09', '2016-09-01 10:37:09', NULL),
(57, 0, 57, 'Hotel 7 Mile ', '-', 'thumb_79953266220887.jpg', 96.14755260, 16.86162523, '01656466~70', 'No.32, Kone Myint Yeiktha Street, Mayangone Township, 7-Mile, Yangon, Myanmar', 2, NULL, '30000', 80000.00, '24/7', 31, 2, '980386263622781719.jpg', '2016-09-01 16:06:16', '2016-09-01 16:06:16', NULL),
(58, 0, 58, 'Golden Butterfly Hotel Yangon', 'Hotel', 'thumb_94343474029986.jpg', 96.15815550, 16.80181809, '(951) 541 978~9, 541 981~8, 541 990~3', ' No.12, Ko Min Ko Chin Road, Bo Cho Ward No(1), Bahan Township, Yangon', 2, NULL, '110', 110.00, '24 Hours', 2, 2, '743228825141385630.jpg', '2016-09-01 16:50:34', '2016-09-01 16:50:34', NULL),
(60, 0, 60, 'ACE Inspiration ', 'Professional Development Center', 'thumb_89248685596349.jpg', 96.12739360, 16.85004046, '09253257742', 'No.(210), Insein Road, Near Than Lan Bus Stop, Hlaing Township, Yangon', 2, NULL, '0', 0.00, '09:00 AM - 06:00 PM', 28, 2, '157688450575160464.jpg', '2016-09-01 16:56:58', '2016-09-28 10:03:17', NULL),
(61, 0, 61, 'Hotel 7 Mile', '-', 'thumb_67269364252752.jpg', 96.10403644, 16.86129667, '01656466~70', 'No.32, Kone Myint Yeiktha Street, Mayangone Township, 7-Mile, Yangon, Myanmar', 2, NULL, '30000', 80000.00, '24/7', 31, 2, '533167225662892267.jpg', '2016-09-01 17:18:49', '2016-09-01 17:18:49', NULL),
(62, 0, 62, 'Grand Laurel Hotel', '-', 'thumb_74458553137792.jpg', 96.05972962, 16.89980923, '01-298986', '153/159, Bogyoke Aung San Road (corner of 46th street), Botahtuang', 2, NULL, '60000', 60000.00, '24 hrs', 9, 2, '429122456290831520.jpg', '2016-09-01 20:24:34', '2016-09-01 20:35:57', NULL),
(63, 0, 63, 'Spice Brasserie International Restaurant', 'Spice Brasserie International Restaurant @PARKROYAL Yangon', 'thumb_89972489097561.jpg', 96.21494725, 16.86299954, ' 01-250388 ext: 8122', 'No33, Alan Pya Pagoda Road, Dagon Township, Yangon', 2, NULL, '35', 38.00, 'Lunch : 11:30 AM  - 2:30 PM Dinner: 6:00pm - 9:30pm', 46, 2, '926941196604432867.jpg', '2016-09-01 20:52:39', '2016-09-01 20:52:39', NULL),
(64, 0, 64, 'Dr.Fish', 'Fish Spa & Foot Care', 'thumb_83660236137062.jpg', 96.18696556, 16.84484911, '09 970479338', 'No.692, 12 Ward, Myittar Road, South Okkalapa Township, Yangon', 2, NULL, '7000', 10000.00, '10:00 am ~ 10:00 pm', 17, 2, '278548904810783104.jpg', '2016-09-14 10:28:08', '2016-09-14 10:49:43', NULL),
(65, 0, 65, 'Hera Spa by Ko Ko', 'Spa', 'thumb_35565916455796.jpg', 96.15472763, 16.81367795, '09 43161224', 'No.64/B, Kanbawza Street, Bahan Township, Yangon', 2, NULL, '7000', 100000.00, '10:00 am ~ 08:00 pm', 2, 2, '443976627500912248.jpg', '2016-09-14 12:10:02', '2016-09-14 12:10:02', NULL),
(66, 0, 66, 'Nexus English Language Learning Centre', 'Education', 'thumb_56339771886263.jpg', 96.13091276, 16.82288195, '01 504647, 01 504757, 09 263310931', 'A6, Level II, Waggi Yeiktar Street, Pyi Yeik Mon, Kamaryut Township, Yangon', 2, NULL, '299000', 349000.00, '9:00 am ~ 5:00 pm', 30, 2, '874791749334234512.jpg', '2016-09-16 18:06:54', '2016-09-16 18:12:54', NULL),
(67, 0, 67, 'Siam Thai Cusine', 'Food & Drink', 'thumb_78982283768469.jpg', 96.12391210, 16.80877143, '09 731 76517', 'Near Pan Hlaing Station.Pan Hlaing St. Kyimyindine Tsp, Yangon ', 2, NULL, '1500', 15000.00, '10:00 Am ~ 10:00 Pm', 4, 2, '520179458614252521.jpg', '2016-09-20 16:43:09', '2016-09-20 16:49:37', NULL),
(68, 0, 68, 'Yangon Yangon Bristo Bar', 'Yangon Yangon Bristo Bar', 'thumb_1863799175654.jpg', 96.15920087, 16.77921179, '01 255 131', '339, Bogyoke Aung San Road, Kyauktada Township', 2, NULL, '5000', 50000.00, 'till midnight', 3, 2, '143914715316255421.jpg', '2016-09-22 16:19:07', '2016-09-22 16:19:07', NULL),
(69, 0, 69, 'Koolpon', 'Koolpon System', 'thumb_96608296636894.jpg', 96.11928260, 16.85123157, '09 964004023', 'Yangon', 2, NULL, '0', 0.00, '24 Hours', 28, 2, '629462986113597780.jpg', '2016-09-27 12:57:54', '2016-09-27 12:57:54', NULL),
(70, 0, 70, 'Pyi Thit', 'Pyi Thit Premium BBQ & Restaurant ', 'thumb_16927379621015.jpg', 96.12333299, 16.79063781, '09 259 303 070', 'Strand Road, Kyee Myindaing Ward, Ahlone Township, Yangon, Myanmar', 2, NULL, '1000', 7000.00, '10:00AM To 11:PM', 1, 2, '495890417993507424.jpg', '2016-09-28 10:56:45', '2016-09-29 13:48:41', '2016-09-29 13:48:41'),
(71, 0, 71, 'Pyi Thit', 'Pyi Thit Premium BBQ & Restaurant', 'thumb_44862638121097.jpg', 96.12334372, 16.79060186, '09 259 303 070', 'Strand Road, Kyee Myindaing Ward, Ahlone Township, Yangon, Myanmar', 2, NULL, '1000', 7000.00, '10:00AM To 10:00PM', 1, 2, '975167225717459286.jpg', '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(72, 0, 72, 'Pyi Thit', 'Pyi Thit Premium BBQ Restaurant & SIGMA Car Servicing', 'thumb_44696311488783.jpg', 96.12339736, 16.79058131, '09 259 303 070', 'Strand Road, Kyee Myindaing Ward, Ahlone Township, Yangon, Myanmar', 2, NULL, '1000', 7000.00, '10:00AM to 11:00PM', 1, 2, '523964845322779360.jpg', '2016-09-29 00:38:05', '2016-09-29 00:38:05', NULL),
(73, 0, 73, 'Green Leaf Hotel', 'Hotel', 'thumb_96978893585793.jpg', 96.16781462, 16.81665100, '01 8603851, 01 8603852, 01 8603853, 01 8603855, 01 8603856', 'S-27, U Chit Maung Housing Estate, U Chit Maung Street, Tamwe Tsp', 2, NULL, '35', 90.00, '24/7', 23, 2, '630449633555618680.jpg', '2016-09-29 13:36:00', '2016-09-29 13:36:00', NULL),
(74, 0, 74, 'Green Leaf Hotel ', 'Food & Beverage', 'thumb_4541434882297.jpg', 96.16781999, 16.81668695, '+95 1 8603851 (or) +95 1 8603852', 'Save No. 27, U Chit Maung Housing Estate, U Chit Maung Road, Tamwe Tsp, Yangon', 2, NULL, '3000', 15000.00, '24/7', 23, 2, '516632676305651711.jpg', '2016-10-03 14:24:10', '2016-10-03 14:24:10', NULL),
(75, 0, 75, 'Ssuni Coffee & Dessert', 'Food & Drink', 'thumb_50549476428770.jpg', 96.13018052, 16.82612971, '09 785 049484', '(Hledan Center ) Corner of Pyay Road and Hledan Road , Kamayut Township', 2, NULL, '2000', 4000.00, 'Everyday', 30, 2, '609479676842396868.jpg', '2016-10-06 15:01:54', '2016-10-06 15:01:54', NULL),
(76, 0, 76, 'Mar''s Cafe & Restaurant', 'Food & Drink', 'thumb_89495468703034.jpg', 96.17692340, 16.80253947, '09 504 8816 / 09 500 1493', 'No.89, Kyouk Myaung Street, Tarmwe ', 2, NULL, '1000', 5000.00, '9:00 AM    to 10:00 PM', 23, 2, '925426812366945538.jpg', '2016-10-07 11:35:27', '2016-10-07 11:35:27', NULL),
(77, 0, 77, 'Yangon Hair and Beauty Center', 'Beauty Spa', 'thumb_66554652060744.jpg', 96.17306102, 16.79956605, '09 793883983, 09 263832408', 'No.78, Ground Floor, Kyaik Ka San Road, Tamwe Tsp', 2, NULL, '5000', 35000.00, '10:00AM ~ 10:00PM', 23, 2, '575269721316990241.jpg', '2016-10-08 23:20:40', '2016-10-08 23:20:40', NULL),
(78, 0, 78, 'Thai Yai Hair & Beauty Spa', 'Beauty Spa', 'thumb_95650691222372.jpg', 96.16946946, 16.83895119, '01 569630', 'No.217, Thitsar Road, 13 Ward, Near Than Lan Bus Stop, Yankin Tsp', 2, NULL, '7000', 50000.00, '9:00 AM ~ 10:00 PM', 25, 2, '979829498374416394.jpg', '2016-10-09 23:48:47', '2016-10-09 23:48:47', NULL),
(79, 0, 79, 'Gekko Restaurant Yangon', 'Restaurant', 'thumb_77043973584194.jpg', 96.16190051, 16.77195445, '09 5092414', 'No.535, Merchant Road, Kyauktada Tsp', 2, NULL, '4000', 40000.00, '11:00 AM ~ Midnight', 3, 2, '887189162409740460.jpg', '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(80, 0, 80, 'August Drinks & Fried Chicken', 'Restaurant', 'thumb_9777597516036.jpg', 96.13031731, 16.82743650, '09 264808769', 'Building (1), Room 12, Insein Road, Near Hledan Traffic, Kamaryut Tsp', 2, NULL, '1000', 11000.00, '10:00 AM ~ 10:00 PM', 30, 2, '389667487220615342.jpg', '2016-10-13 11:50:12', '2016-10-13 11:50:12', NULL),
(81, 0, 81, 'Vape City Myanmar', 'E-Cigarettes', 'thumb_36128267589845.jpg', 96.13753270, 16.80446859, '09 73230222', 'Pyay Road, Dagon Center - 2, Level - 3, Sanchaung Tsp', 2, NULL, '25000', 200000.00, '9:00 AM ~ 8:30 PM', 8, 2, '657382596235636233.jpg', '2016-10-17 10:41:02', '2016-10-17 10:41:02', NULL),
(82, 0, 82, 'El Dorado', 'Travel and Tour', 'thumb_62218116309091.jpg', 96.13510262, 16.80198821, '01 500 424', 'No.22,1st Floor,Zawtika Street ,Sanchaung Township,Myaynigone,Yangon', 2, NULL, '35000', 185000.00, '8:30 AM ~ 5:30 PM', 8, 2, '337260260138765818.jpg', '2016-10-27 10:49:31', '2016-10-27 10:49:31', NULL),
(83, 0, 83, 'TK House', 'ေမြးေန႔ပြဲေတြ...ခ်စ္သူရည္းစားေတြရဲ႕ ႏွစ္ပတ္လည္ပြဲေတြ နဲ႔တျခား မိတ္ဆံုစားပြဲေတြကို ဘယ္မွာ က်င္းပရမလဲ......... မသိျဖစ္ေနပါသလား ? TK House BBQ၊ Restaurant & Family KTV နဲ႔မိတ္ဆက္ေပးခ်င္ပါတယ္။   Fri -  Sat - Sun Special package အတြက္ Daily 10:00 Am to 3:00 Pm အတြင္းလာေရာက္ သူေတြကို 3 section + 1 section free ရရွိႏိုင္မွာျဖစ္ပါတယ္။ Mon to Thurs Special hour ( Date & Time limited ) package အတြက္ 3:00 Pm မွ ဆိုင္ပိတ္သည့္အခ်ိန္ 11:00 Pm အထိ 2 section + 1 section free ရရွိႏိုင္မွာျဖစ္ပါတယ္။ Double bonus ( Date & Time limited ) 1 section for 1 section free, 2 section for 2 section free, 3 section for 3 section free, 4 section for 4 section free အစရွိသည္ျဖင့္ အထူးေကာင္းမြန္တဲ့အခြင့္အေရး ေတြရွိမွာ ျဖစ္တဲ့အတြက္ အခုပဲ Koolpon မွာ discount coupon ကုိ အရယူျပီး လွမ္းလာခဲ့ပါ။', 'thumb_98858995859291.jpg', 96.13004397, 16.79837798, '09 45062 2600', '85 (B),Pan Hlaing Street,Sanchaung Tsp', 2, NULL, '10000', 35000.00, '10:00 AM ~ 11:00 PM', 8, 2, '666301289529589218.jpg', '2016-10-28 15:08:07', '2016-11-30 11:15:06', NULL),
(84, 0, 84, 'Melody World', 'Melody World at MCC', 'thumb_72494391472731.jpg', 96.12163173, 16.86220022, '0964004023', 'Mindama Road, Yangon', 2, NULL, '1', 1.00, '4:30 - Midnight', 31, 2, '451456862901878813.jpg', '2016-10-31 12:51:14', '2016-10-31 12:51:14', NULL),
(85, 0, 85, 'Acacia Tea Salon & Fine Dining Restaurant', 'Birthday Party, Wedding Engagement & Business meeting ေတြျပဳလုပ္ လိုပါသလား? Acacia Tea Salon & Fine Dining Restaurant မွ ေကာင္းမြန္ေသာ အစားအေသာက္မ်ားျဖင့္ ေစ်းႏႈန္းသက္သာစြာ တည့္ခင္းဧည့္ခံႏိုင္ဖို႔ Acacia မွ လူၾကီးမင္းတို႔အတြက္ Event Function Package 10% off / Acacia food benifit 5 % off ကို Koolpon မွာ အရယူျပီး လွမ္းလာခဲ့ပါ။', 'thumb_2589527438549.jpg', 96.15927130, 16.81908256, '01-554739 , 09-73113812', 'No-52 , Sayarsan Rd Bahan tsp', 2, NULL, '4000', 5000.00, '08:00 am to 10:00 pm', 2, 2, '452625374585799827.jpg', '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(86, 0, 86, 'Meringue Café', 'ေကာင္းမြန္တဲ႔ coffee အရသာကို ထိေတြ႕ခံစားႏိုင္ေစဖို႔ Meringue Cafe ႏွင့္ မိတ္ဆက္ေပးပါရေစ။ ေမႊးပ်ံ႕တဲ့ ေကာ္ဖီ အရသာကို အျပည့္အ၀ ခံစားႏုိင္မွာ ျဖစ္ျပီး ဆိုင္ေလးကလည္း တိတ္ဆိတ္ျငိမ္သက္တဲ့အတြက္ သင့္ကို စိတ္ေက်နပ္မႈ အျပည့္အ၀ ေပးႏိုင္ပါတယ္ ။ Meringue Cafe မွ ေကာ္ဖီႏွင့္ မုန္႔မ်ားကို Total bill တြင္ 5 % discount ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ သံုးေဆာင္ႏိုင္ဖို႔ အတြက္ အခုပဲ Koolpon မွ discount ကူပြန္ယူျပီး လွမ္းလာခဲ့လုိက္ပါ။', 'thumb_69077985184864.jpg', 96.15554437, 16.78362469, '09 972 431 791', 'No.30, Boyar Nyaunt Street, Dagon Township, Yangon', 2, NULL, '2000', 8000.00, '10:00 am to 10:00 pm', 46, 2, '417808817158880753.jpg', '2016-11-08 09:08:28', '2016-11-25 10:26:39', NULL),
(87, 0, 87, 'Fish & Co', 'Sea food ေကာင္းေကာင္းမွ ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ Fish & Co Restaurant နဲ႔ မိတ္ဆက္ေပးပါရေစ။  သန္႕ရွင္းလတ္ဆတ္ျပီး အမ်ိဳးအမယ္ စံုလင္လွတဲ႔ Sea food ေတြကို တစ္ေနရာထဲမွာ စားႏိုင္မွာ ျဖစ္ျပီး အရသာ မွာလည္း သူမတူေအာင္ ေကာင္းလြန္းတာေၾကာင့္ အၾကိဳက္ေတြ႕သြားေစမွာ အေသအခ်ာ ပါပဲ။  အရသာ ရွိတဲ႔ sea food ေတြကို ေစ်းႏႈန္း သက္သာစြာ စားႏိုင္ဖို႔ အခုပဲ KOOLPON မွာ discount ကူပြန္ကို  အရယူျပီး လွမ္းလာခဲ႔ပါ။', 'thumb_7733167488463.jpg', 96.14351855, 16.85330831, '01 966 6415', '2B Parami Road, Mayangone ', 2, NULL, '10000', 20000.00, '11:30 am to 11:00 pm', 31, 2, '744686704934608642.jpg', '2016-11-10 16:29:34', '2016-11-25 10:23:46', NULL),
(88, 0, 88, 'FUKAGAWA', 'ရန္ကုန္ျမိဳ႕ က်ိဳက္ေခါက္ ဘုရားလမ္း Star City Residence Compound အတြင္းမွာ တည္ရွိတဲ႔ FUKAGAWA Japanese Style Grill Restaurant နဲ႔မိတ္ဆက္ေပးပါရေစ။ Free Wifi, Private room, Car Parking ရွိျခင္းေၾကာင့္ စိတ္ေက်နပ္မႈ အျပည့္အ၀ ရရွိေစ ႏိုင္မွာ ျဖစ္ျပီး စြဲမက္ လွ်ာလည္ သြားေစမယ့္ အရသာ၊ သန္႔ရွင္းျပီး  fresh ျဖစ္တဲ့ ဂ်ပန္ အစားအစာ မ်ားကို သက္သာေသာ ေစ်းႏႈန္းနဲ႔ စားသံုးႏိုင္ဖို႔အတြက္  အခုပဲ KOOLPON မွာ disconunt ကူပြန္ေလးယူျပီး အေရာက္လာခဲ့ဖို႔ ဖိတ္ေခၚပါရေစ။', 'thumb_21690515978762.jpg', 96.24804421, 16.73551586, '056 23150-153', 'A-1 Star City , Kyaik Khauk Pagoda Rd , Thanlyin Tsp.', 2, NULL, '6000', 35000.00, '09:00 am to 09:00 pm', 26, 2, '143148223299646989.jpg', '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(89, 0, 89, 'EDO ZUSHI', 'ဂ်ပန္ အစားအစာ ေကာင္းေကာင္း ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ သန္႔ရွင္းလတ္ဆတ္ျပီး  အရသာထူးကဲေကာင္းမြန္ေသာ EDO ZUSHI JAPANESE Restaurant နဲ႔ မိတ္ဆက္ ေပးပါရေစ။ Private   room မ်ား၊ Car Park lots မ်ားႏွင့္ Wifi free သံုးရင္း အရသာရွိတဲ႕ ဂ်ပန္ အစားအေသာက္မ်ားကို သက္သာေသာ Discount ေစ်းႏႈန္းမ်ားျဖင့္ စားသံုးႏိုင္ရန္ KOOLPON မွ Discount ကူပြန္ကို အခုပဲရယူျပီး အေရာက္လာခဲ့ပါ။', 'thumb_84378002792114.jpg', 96.13981770, 16.80857061, '09 259 040 853', 'No . 290 (B) Block (10) , U Wizara Rd , Kamayut Tsp', 2, NULL, '4', 66.00, '11:00 am to 11:00 pm', 30, 2, '819728139489927617.jpg', '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(90, 0, 90, 'BULGOGI BROTHERS', 'Koolpon Digital Discount ေပးျခင္း', 'thumb_67224408970254.jpg', 96.13092349, 16.82148014, '09 730 388 99 , 09 796 307 127 , 01 705 577', 'G - 136 , GF , Building (D) , SOHO Diamond Tower , Nar Nat Taw St , Kamayut', 2, NULL, '6500', 12900.00, '10:30 am to 10:30 pm', 30, 2, '216503328439148695.jpg', '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(91, 0, 91, 'Hacked By Xaveroz_Tersakiti', 'Hacked By Xaveroz_Tersakiti\r\n\r\n#OPMyanmar\r\n\r\nGreetz:| GrenXPaRTa - r00tkit404 - Jilan404 - Arthiz Cyber - Indonesia Defacer Tersakiti - DiffMuRis - MLC7 - MalaysiaGov - Abrasax1337 - ./MR.ROB0T - fcod3x - Jiwa Tersesat - 0x1958 - Gboys_Flush CyberGhost.17 - Mr.Vendeta_404 - ZakirDotID |', 'thumb_83642619444179.jpg', 96.22407827, 16.91410164, NULL, 'Ahlone', 2, 'https://www.koolpon.com.mm', '12', NULL, '1/00', 34, 1, '924746646833712882.doc', '2016-11-22 13:27:32', '2016-11-22 13:27:32', '2016-11-22 13:30:59'),
(92, 0, 92, 'Hacked By Xaveroz_Tersakiti', 'Hacked By Xaveroz_Tersakiti\r\n\r\n#OPMyanmar\r\n\r\nGreetz:\r\n\r\n| GrenXPaRTa - r00tkit404 - Jilan404 - Arthiz Cyber - Indonesia Defacer Tersakiti - DiffMuRis - MLC7 - MalaysiaGov - Abrasax1337 - ./MR.ROB0T - fcod3x - Jiwa Tersesat - 0x1958 - Gboys_Flush CyberGhost.17 - Mr.Vendeta_404 - ZakirDotID |', 'thumb_32414642479311.jpg', 96.22391474, 16.93005061, NULL, 'Ahlone', 2, 'https://www.koolpon.com.mm', '12', NULL, '1/00', 1, 1, '254408986655773300.doc', '2016-11-22 13:30:59', '2016-11-22 13:30:59', '2016-11-22 13:30:59'),
(93, 0, 93, 'ren bussines', 'welcome', 'thumb_8587789403184.jpg', 96.10630570, 16.90490322, NULL, 'taman indah blok z', 2, 'RENteam.cf', '10000', NULL, '10.00-12.00', 27, 1, '119568597218412449.jpg', '2016-11-27 19:40:26', '2016-11-27 19:40:26', NULL),
(94, 0, 94, 'PastaMania', 'ေကာင္းမြန္တဲ့အရသာရွိျပီး သန္႔ရွင္းလတ္ဆတ္တဲ့ Italy အစားအစာ ေတြကို မွ ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ PastaMania Italian restaurant ေလးနဲ႔ မိတ္ဆက္ေပး ပါရေစ။ အီတလီ အစားအစာ အမ်ိဳးအမယ္ စံုလင္စြာ ကို တစ္ေနရာထဲမွာ စိတ္တိုင္းက် total bill 15% off ျဖင့္ ေစ်းႏႈန္း သက္သာစြာ စားသံုးႏုိင္ဖို႔ အခုပဲ Koolpon မွာ discount ကူပြန္ကို အရယူျပီး လွမ္းလာခဲ့ပါ။', 'thumb_49260957683882.jpg', 96.14453570, 16.80720206, '09 788 130 431 , 09 963 277 470', 'N0.7 , Inya Road , Kamayut Township , ygn', 2, NULL, '10000', 20000.00, '10:00 am to 10:00 pm', 30, 2, '440145598660813317.jpg', '2016-11-30 11:48:28', '2016-11-30 15:05:17', NULL),
(95, 0, 95, 'BULGOGI BROTHERS', 'Korea အစားအစာ ေကာင္းေကာင္းမွ စားခ်င္သူေတြအတြက္ Bulgogi Brothers Korean BBQ Restaurant နဲ႔မိတ္ဆက္ေပးခ်င္ပါတယ္။ ေမြးေန႔ပြဲ၊ မိတ္ဆံုစားပြဲ၊ meetingမ်ားလည္းျပဳလုပ္ႏုိင္ျပီးလာေရာက္စားသံုးသူတိုင္း ကို total bill တြင္ 10% off (including  tax) ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏိုင္ဖို႔ အခုပဲ Koolpon  မွာ  discount ကူပြန္ယူျပီး အေရာက္လာခဲ့ပါ။', 'thumb_99595125608423.jpg', 96.13091276, 16.82148527, '09 730 388 99 , 09 796 307 127 , 01 705 577', 'G - 136 , GF , Building (D) , SOHO Diamond Tower ,Nar Nat Taw St , Kamayut', 2, NULL, '6500', 12900.00, '10:30 am to 10:30 pm', 30, 2, '775557198794982278.jpg', '2016-11-30 16:53:06', '2016-11-30 18:03:11', NULL),
(96, 0, 96, 'MYANMA TOENAYAR (Travel & Tours)', 'Myanma Toenayar Travel & Tours မွ လူၾကီးမင္းတို႔ အတြက္ ရန္ကုန္ -  တာခ်ီလိတ္၊ ရန္ကုန္ - ျမစ္ၾကီးနား ခရီးစဥ္ အတြက္ Koolpon မွ discount ကူပြန္ 3000 Kyats off ကို အရယူျပီး ေစ်းႏႈန္းသက္သာစြာ  ျဖင့္၀ယ္ယူႏိုင္ျပီျဖစ္ ေၾကာင္း သတင္းေကာင္းပါးအပ္ပါတယ္။  ', 'thumb_71982565790762.jpg', 96.13002922, 16.80850364, '01 230 4820 , 230 4825 , 230 4826 , 09 250 026 236 , 09 979 289 468', 'အမွတ္ ( ၂၀၆ / B ) ေျမညီထပ္ ၊ ဂြေစ်းအနီး ဗဟိုလမ္း စမ္းေခ်ာင္း', 2, NULL, '50000', 130000.00, '09:00 am to 09:00 pm', 8, 2, '978731176107665937.jpg', '2016-11-30 17:40:26', '2016-12-01 15:19:01', NULL),
(97, 0, 97, 'Jasmine Palace Hotel', 'အစား အေသာက္ ေကာင္းေကာင္းေတြကိုမွ ရွာေဖြေနသူေတြအတြက္ Jasmine Palace Hotel မွာ ရွိတဲ႔ Empress Restaurant နဲ႔ မိတ္ဆက္ေပးခ်င္ပါတယ္။ Chinese food, Asian food, Grill, Pizza, Pub & Bar နဲ႔ Cafe စသည္ျဖင့္ အမ်ိဳးအစားစံုလင္စြာ ကို တစ္ေနရာတည္းမွာ ရရွိခံစားႏုိင္မွာ ျဖစ္တဲ႔အတြက္ total bill တြင္ 25% off ျဖင့္ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏုိင္ဖို႔ Koolpon မွာ discount ကူပြန္ကို အရယူျပီးအခုပဲ လွမ္းလာခဲ့ပါ။', 'thumb_10608465512757.jpg', 96.13470029, 16.81198658, '01 230 4402 ~ 03 , 01 538 953 ~ 54', 'NO (314) Pyau Road , Sanchaung Township , Yangon', 2, NULL, '5000', 10000.00, '12:00 am to 11:59 pm', 8, 2, '698493831420602603.jpg', '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL),
(98, 0, 3, 'test', '<p>test</p>\r\n', '', 96.14596754, 16.81123620, '423424242423', 'test', 0, NULL, '2423423', 99999999.99, '2234234234', 2, NULL, NULL, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Branch_Business_Type`
--

CREATE TABLE IF NOT EXISTS `Branch_Business_Type` (
  `id` int(10) unsigned NOT NULL,
  `branch_id` int(11) NOT NULL,
  `business_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Branch_Business_Type`
--

INSERT INTO `Branch_Business_Type` (`id`, `branch_id`, `business_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(2, 3, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(3, 3, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(4, 3, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(8, 4, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(9, 4, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(10, 4, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(11, 4, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(15, 5, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(16, 5, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(17, 5, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(18, 5, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(22, 6, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(23, 6, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(24, 6, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(25, 6, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(29, 7, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(30, 7, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(31, 7, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(32, 7, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(36, 8, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(37, 8, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(38, 8, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(39, 8, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(43, 9, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(44, 9, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(45, 9, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(46, 9, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(50, 10, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(51, 10, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(52, 10, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(53, 10, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(57, 11, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(58, 11, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(59, 11, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(60, 11, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(64, 12, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(65, 12, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(66, 12, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(67, 12, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(71, 13, 1, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(72, 13, 2, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(73, 13, 3, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(74, 13, 4, '2016-12-01 12:18:31', '2016-12-01 12:18:31', NULL),
(78, 14, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(79, 14, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(80, 14, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(81, 14, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(85, 16, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(86, 16, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(87, 16, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(88, 16, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(92, 17, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(93, 17, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(94, 17, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(95, 17, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(99, 19, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(100, 19, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(101, 19, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(102, 19, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(106, 20, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(107, 20, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(108, 20, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(109, 20, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(113, 21, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(114, 21, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(115, 21, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(116, 21, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(120, 22, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(121, 22, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(122, 22, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(123, 22, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(127, 24, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(128, 24, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(129, 24, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(130, 24, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(134, 25, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(135, 25, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(136, 25, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(137, 25, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(141, 26, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(142, 26, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(143, 26, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(144, 26, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(148, 27, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(149, 27, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(150, 27, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(151, 27, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(155, 28, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(156, 28, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(157, 28, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(158, 28, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(162, 29, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(163, 29, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(164, 29, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(165, 29, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(169, 42, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(170, 42, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(171, 42, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(172, 42, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(176, 43, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(177, 43, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(178, 43, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(179, 43, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(183, 44, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(184, 44, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(185, 44, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(186, 44, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(190, 45, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(191, 45, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(192, 45, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(193, 45, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(197, 47, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(198, 47, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(199, 47, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(200, 47, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(204, 49, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(205, 49, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(206, 49, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(207, 49, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(211, 51, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(212, 51, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(213, 51, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(214, 51, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(218, 52, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(219, 52, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(220, 52, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(221, 52, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(225, 53, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(226, 53, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(227, 53, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(228, 53, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(232, 55, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(233, 55, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(234, 55, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(235, 55, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(239, 56, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(240, 56, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(241, 56, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(242, 56, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(246, 57, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(247, 57, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(248, 57, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(249, 57, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(253, 58, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(254, 58, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(255, 58, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(256, 58, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(260, 60, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(261, 60, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(262, 60, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(263, 60, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(267, 61, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(268, 61, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(269, 61, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(270, 61, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(274, 62, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(275, 62, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(276, 62, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(277, 62, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(281, 63, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(282, 63, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(283, 63, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(284, 63, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(288, 64, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(289, 64, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(290, 64, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(291, 64, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(295, 65, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(296, 65, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(297, 65, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(298, 65, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(302, 66, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(303, 66, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(304, 66, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(305, 66, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(309, 67, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(310, 67, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(311, 67, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(312, 67, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(316, 68, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(317, 68, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(318, 68, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(319, 68, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(323, 69, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(324, 69, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(325, 69, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(326, 69, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(330, 70, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(331, 70, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(332, 70, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(333, 70, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(337, 71, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(338, 71, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(339, 71, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(340, 71, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(344, 72, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(345, 72, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(346, 72, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(347, 72, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(351, 73, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(352, 73, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(353, 73, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(354, 73, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(358, 74, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(359, 74, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(360, 74, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(361, 74, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(365, 75, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(366, 75, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(367, 75, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(368, 75, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(372, 76, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(373, 76, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(374, 76, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(375, 76, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(379, 77, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(380, 77, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(381, 77, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(382, 77, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(386, 78, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(387, 78, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(388, 78, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(389, 78, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(393, 79, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(394, 79, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(395, 79, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(396, 79, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(400, 80, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(401, 80, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(402, 80, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(403, 80, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(407, 81, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(408, 81, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(409, 81, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(410, 81, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(414, 82, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(415, 82, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(416, 82, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(417, 82, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(421, 83, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(422, 83, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(423, 83, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(424, 83, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(428, 84, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(429, 84, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(430, 84, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(431, 84, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(435, 85, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(436, 85, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(437, 85, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(438, 85, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(442, 86, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(443, 86, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(444, 86, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(445, 86, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(449, 87, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(450, 87, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(451, 87, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(452, 87, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(456, 88, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(457, 88, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(458, 88, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(459, 88, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(463, 89, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(464, 89, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(465, 89, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(466, 89, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(470, 90, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(471, 90, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(472, 90, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(473, 90, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(477, 91, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(478, 91, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(479, 91, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(480, 91, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(484, 92, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(485, 92, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(486, 92, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(487, 92, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(491, 93, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(492, 93, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(493, 93, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(494, 93, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(498, 94, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(499, 94, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(500, 94, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(501, 94, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(505, 95, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(506, 95, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(507, 95, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(508, 95, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(512, 96, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(513, 96, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(514, 96, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(515, 96, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(519, 97, 1, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(520, 97, 2, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(521, 97, 3, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(522, 97, 4, '2016-12-01 12:18:32', '2016-12-01 12:18:32', NULL),
(523, 98, 1, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL),
(524, 98, 2, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL),
(525, 98, 3, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL),
(526, 98, 4, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Branch_Category`
--

CREATE TABLE IF NOT EXISTS `Branch_Category` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Branch_Category`
--

INSERT INTO `Branch_Category` (`id`, `category_id`, `branch_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2016-08-26 18:05:13', '2016-09-01 11:58:43', '2016-09-01 11:58:43'),
(2, 3, 3, '2016-08-26 18:05:13', '2016-09-01 11:58:43', '2016-09-01 11:58:43'),
(3, 1, 4, '2016-08-26 18:19:22', '2016-09-01 15:05:38', NULL),
(4, 2, 4, '2016-08-26 18:19:22', '2016-09-01 15:05:38', NULL),
(5, 3, 5, '2016-08-26 18:24:21', '2016-09-01 12:01:43', NULL),
(6, 1, 6, '2016-08-26 18:29:51', '2016-09-28 18:10:50', NULL),
(7, 4, 6, '2016-08-26 18:29:51', '2016-09-28 18:10:50', NULL),
(8, 1, 6, '2016-08-26 18:31:05', '2016-09-28 18:10:50', '2016-09-28 18:10:50'),
(9, 4, 6, '2016-08-26 18:31:05', '2016-09-28 18:10:50', '2016-09-28 18:10:50'),
(10, 1, 7, '2016-08-26 18:51:47', '2016-09-01 12:03:56', '2016-09-01 12:03:56'),
(11, 2, 7, '2016-08-26 18:51:47', '2016-09-07 17:02:10', NULL),
(12, 4, 7, '2016-08-26 18:51:47', '2016-09-07 17:02:10', NULL),
(13, 2, 6, '2016-08-26 19:10:45', '2016-09-28 18:10:50', NULL),
(14, 2, 6, '2016-08-26 19:20:02', '2016-09-28 18:10:50', '2016-09-28 18:10:50'),
(15, 1, 8, '2016-08-27 14:41:55', '2016-09-01 12:07:07', '2016-09-01 12:07:07'),
(16, 1, 9, '2016-08-27 14:46:20', '2016-09-01 11:30:07', '2016-09-01 11:30:07'),
(17, 2, 9, '2016-08-27 14:46:20', '2016-09-01 11:30:07', '2016-09-01 11:30:07'),
(18, 4, 9, '2016-08-27 14:46:20', '2016-09-01 11:30:07', '2016-09-01 11:30:07'),
(19, 2, 10, '2016-08-27 15:05:21', '2016-09-01 11:27:18', '2016-09-01 11:27:18'),
(20, 3, 10, '2016-08-27 15:05:21', '2016-09-01 11:27:18', '2016-09-01 11:27:18'),
(21, 4, 10, '2016-08-27 15:05:21', '2016-09-01 11:27:18', '2016-09-01 11:27:18'),
(22, 1, 11, '2016-08-27 15:39:59', '2016-09-01 11:33:48', '2016-09-01 11:33:48'),
(23, 2, 11, '2016-08-27 15:39:59', '2016-09-01 11:33:48', '2016-09-01 11:33:48'),
(24, 3, 11, '2016-08-27 15:39:59', '2016-09-01 11:33:48', '2016-09-01 11:33:48'),
(25, 4, 11, '2016-08-27 15:39:59', '2016-09-01 11:33:48', '2016-09-01 11:33:48'),
(26, 1, 12, '2016-08-27 15:51:26', '2016-09-01 11:37:48', '2016-09-01 11:37:48'),
(27, 2, 12, '2016-08-27 15:51:26', '2016-09-01 11:37:48', '2016-09-01 11:37:48'),
(28, 3, 12, '2016-08-27 15:51:26', '2016-09-01 11:37:48', '2016-09-01 11:37:48'),
(29, 4, 12, '2016-08-27 15:51:26', '2016-09-01 11:37:48', '2016-09-01 11:37:48'),
(30, 6, 13, '2016-08-27 16:57:06', '2016-09-01 11:41:07', NULL),
(31, 6, 14, '2016-08-29 11:15:36', '2016-09-01 11:49:07', NULL),
(32, 6, 14, '2016-08-29 11:16:42', '2016-09-01 11:49:07', '2016-09-01 11:49:07'),
(33, 3, 15, '2016-08-29 17:19:53', '2016-08-30 14:06:35', NULL),
(34, 1, 19, '2016-08-30 13:22:15', '2016-09-01 12:11:48', NULL),
(35, 2, 19, '2016-08-30 13:22:15', '2016-09-01 12:11:48', '2016-09-01 12:11:48'),
(36, 3, 19, '2016-08-30 13:22:15', '2016-09-01 12:11:48', '2016-09-01 12:11:48'),
(37, 1, 20, '2016-08-30 13:28:52', '2016-09-01 11:54:28', '2016-09-01 11:54:28'),
(38, 2, 20, '2016-08-30 13:28:52', '2016-09-01 11:54:28', '2016-09-01 11:54:28'),
(39, 1, 20, '2016-08-30 13:34:02', '2016-08-30 13:59:41', '2016-08-30 13:59:41'),
(40, 2, 20, '2016-08-30 13:34:02', '2016-08-30 13:59:41', '2016-08-30 13:59:41'),
(41, 3, 21, '2016-08-30 13:43:31', '2016-09-28 18:13:27', NULL),
(42, 3, 21, '2016-08-30 13:59:15', '2016-09-28 18:13:27', '2016-09-28 18:13:27'),
(43, 1, 2, '2016-08-30 14:02:28', '2016-08-30 14:02:28', NULL),
(44, 1, 3, '2016-08-30 14:03:10', '2016-08-30 14:03:10', '2016-08-30 14:03:10'),
(45, 3, 3, '2016-08-30 14:03:10', '2016-08-30 14:03:10', '2016-08-30 14:03:10'),
(46, 3, 5, '2016-08-30 14:03:38', '2016-09-01 12:01:43', '2016-09-01 12:01:43'),
(47, 1, 7, '2016-08-30 14:04:41', '2016-08-30 14:04:41', '2016-08-30 14:04:41'),
(48, 2, 7, '2016-08-30 14:04:41', '2016-09-07 17:02:10', '2016-09-07 17:02:10'),
(49, 4, 7, '2016-08-30 14:04:41', '2016-09-07 17:02:10', '2016-09-07 17:02:10'),
(50, 1, 8, '2016-08-30 14:05:15', '2016-08-30 14:05:15', '2016-08-30 14:05:15'),
(51, 1, 9, '2016-08-30 14:05:32', '2016-08-30 14:05:32', '2016-08-30 14:05:32'),
(52, 2, 9, '2016-08-30 14:05:32', '2016-08-30 14:05:32', '2016-08-30 14:05:32'),
(53, 4, 9, '2016-08-30 14:05:32', '2016-08-30 14:05:32', '2016-08-30 14:05:32'),
(54, 2, 10, '2016-08-30 14:05:54', '2016-08-30 14:05:54', '2016-08-30 14:05:54'),
(55, 3, 10, '2016-08-30 14:05:54', '2016-08-30 14:05:54', '2016-08-30 14:05:54'),
(56, 4, 10, '2016-08-30 14:05:54', '2016-08-30 14:05:54', '2016-08-30 14:05:54'),
(57, 3, 15, '2016-08-30 14:06:35', '2016-08-30 14:06:35', '2016-08-30 14:06:35'),
(58, 7, 17, '2016-08-30 14:08:27', '2016-09-01 12:09:19', NULL),
(59, 7, 18, '2016-08-30 14:11:02', '2016-08-30 14:11:02', NULL),
(60, 1, 19, '2016-08-30 14:11:36', '2016-09-01 12:11:48', '2016-09-01 12:11:48'),
(61, 2, 19, '2016-08-30 14:11:36', '2016-08-30 14:11:36', '2016-08-30 14:11:36'),
(62, 3, 19, '2016-08-30 14:11:36', '2016-08-30 14:11:36', '2016-08-30 14:11:36'),
(63, 3, 22, '2016-08-30 21:06:08', '2016-09-28 18:11:29', NULL),
(64, 1, 25, '2016-08-30 21:23:27', '2016-09-01 14:17:22', '2016-09-01 14:17:22'),
(65, 2, 25, '2016-08-30 21:23:27', '2016-09-01 14:17:22', '2016-09-01 14:17:22'),
(66, 3, 25, '2016-08-30 21:23:27', '2016-09-01 14:17:22', '2016-09-01 14:17:22'),
(67, 4, 25, '2016-08-30 21:23:27', '2016-09-01 14:17:22', '2016-09-01 14:17:22'),
(68, 5, 25, '2016-08-30 21:23:27', '2016-09-01 14:17:22', '2016-09-01 14:17:22'),
(69, 1, 26, '2016-08-30 21:30:32', '2016-08-31 13:31:00', NULL),
(70, 3, 27, '2016-08-31 01:12:14', '2016-09-01 14:20:47', NULL),
(71, 3, 27, '2016-08-31 01:13:03', '2016-09-01 14:20:47', '2016-09-01 14:20:47'),
(72, 3, 28, '2016-08-31 01:24:03', '2016-09-01 15:01:08', NULL),
(73, 2, 29, '2016-08-31 01:47:21', '2016-09-01 14:44:21', NULL),
(74, 2, 30, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(75, 2, 31, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(76, 2, 32, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(77, 2, 33, '2016-08-31 01:47:30', '2016-08-31 01:47:30', NULL),
(78, 2, 34, '2016-08-31 01:47:31', '2016-08-31 01:47:31', NULL),
(79, 2, 29, '2016-08-31 01:52:30', '2016-09-01 14:44:21', '2016-09-01 14:44:21'),
(80, 3, 43, '2016-08-31 02:32:58', '2016-08-31 02:32:58', NULL),
(81, 3, 44, '2016-08-31 02:37:50', '2016-08-31 02:45:52', '2016-08-31 02:45:52'),
(82, 8, 44, '2016-08-31 02:45:52', '2016-08-31 02:45:52', NULL),
(83, 2, 45, '2016-08-31 02:54:14', '2016-09-28 18:14:07', NULL),
(84, 2, 46, '2016-08-31 03:01:31', '2016-08-31 03:01:31', NULL),
(85, 3, 46, '2016-08-31 03:01:31', '2016-08-31 03:01:31', NULL),
(86, 1, 47, '2016-08-31 03:08:29', '2016-08-31 03:10:57', NULL),
(87, 1, 47, '2016-08-31 03:10:57', '2016-08-31 03:10:57', '2016-08-31 03:10:57'),
(88, 2, 48, '2016-08-31 03:17:33', '2016-08-31 03:28:27', NULL),
(89, 1, 49, '2016-08-31 03:18:16', '2016-08-31 03:18:16', NULL),
(90, 1, 50, '2016-08-31 03:22:13', '2016-08-31 03:22:13', NULL),
(91, 2, 48, '2016-08-31 03:28:26', '2016-08-31 03:28:27', '2016-08-31 03:28:27'),
(92, 7, 16, '2016-08-31 09:59:45', '2016-09-01 18:01:01', NULL),
(93, 7, 16, '2016-08-31 10:04:21', '2016-09-01 18:01:01', '2016-09-01 18:01:01'),
(94, 1, 4, '2016-08-31 10:25:27', '2016-09-01 15:05:37', '2016-09-01 15:05:37'),
(95, 2, 4, '2016-08-31 10:25:27', '2016-09-01 15:05:37', '2016-09-01 15:05:37'),
(96, 4, 4, '2016-08-31 10:25:27', '2016-09-01 15:05:37', '2016-09-01 15:05:37'),
(97, 3, 22, '2016-08-31 12:13:41', '2016-09-28 18:11:29', '2016-09-28 18:11:29'),
(98, 1, 26, '2016-08-31 13:31:00', '2016-08-31 13:31:00', '2016-08-31 13:31:00'),
(99, 1, 51, '2016-08-31 13:50:13', '2016-09-08 11:34:11', NULL),
(100, 2, 51, '2016-08-31 13:50:13', '2016-09-08 11:34:11', NULL),
(101, 3, 51, '2016-08-31 13:50:13', '2016-09-08 11:34:11', NULL),
(102, 4, 52, '2016-08-31 14:47:53', '2016-09-28 18:14:49', NULL),
(103, 3, 53, '2016-08-31 17:00:55', '2016-08-31 17:00:55', NULL),
(104, 4, 54, '2016-08-31 20:23:08', '2016-08-31 20:25:43', NULL),
(105, 4, 54, '2016-08-31 20:25:42', '2016-08-31 20:25:42', '2016-08-31 20:25:42'),
(106, 7, 55, '2016-09-01 01:09:51', '2016-09-01 02:03:04', NULL),
(107, 7, 55, '2016-09-01 02:03:04', '2016-09-01 02:03:04', '2016-09-01 02:03:04'),
(108, 13, 10, '2016-09-01 11:27:18', '2016-11-30 14:34:37', NULL),
(109, 5, 9, '2016-09-01 11:30:07', '2016-09-01 11:30:07', NULL),
(110, 12, 11, '2016-09-01 11:33:48', '2016-09-28 17:43:09', NULL),
(111, 12, 12, '2016-09-01 11:37:48', '2016-09-28 18:10:03', NULL),
(112, 6, 13, '2016-09-01 11:41:07', '2016-09-01 11:41:07', '2016-09-01 11:41:07'),
(113, 12, 21, '2016-09-01 11:50:30', '2016-09-28 18:13:27', NULL),
(114, 12, 21, '2016-09-01 11:52:10', '2016-09-28 18:13:27', '2016-09-28 18:13:27'),
(115, 9, 20, '2016-09-01 11:54:28', '2016-09-28 18:12:10', NULL),
(116, 12, 3, '2016-09-01 11:58:43', '2016-09-01 11:58:43', NULL),
(117, 12, 5, '2016-09-01 12:01:42', '2016-09-01 12:01:43', NULL),
(118, 3, 8, '2016-09-01 12:07:07', '2016-09-01 12:07:07', NULL),
(119, 5, 8, '2016-09-01 12:07:07', '2016-09-01 12:07:07', NULL),
(120, 7, 17, '2016-09-01 12:09:19', '2016-09-01 12:09:19', '2016-09-01 12:09:19'),
(121, 14, 24, '2016-09-01 12:18:45', '2016-09-08 11:31:35', NULL),
(122, 12, 25, '2016-09-01 14:17:22', '2016-09-01 14:17:22', NULL),
(123, 1, 28, '2016-09-01 14:25:35', '2016-09-01 15:01:08', NULL),
(124, 3, 28, '2016-09-01 14:25:35', '2016-09-01 15:01:08', '2016-09-01 15:01:08'),
(125, 1, 29, '2016-09-01 14:42:18', '2016-09-01 14:44:21', NULL),
(126, 1, 29, '2016-09-01 14:44:21', '2016-09-01 14:44:21', '2016-09-01 14:44:21'),
(127, 1, 28, '2016-09-01 15:01:08', '2016-09-01 15:01:08', '2016-09-01 15:01:08'),
(128, 12, 11, '2016-09-01 15:03:51', '2016-09-28 17:43:09', '2016-09-28 17:43:09'),
(129, 11, 4, '2016-09-01 15:05:37', '2016-09-01 15:05:38', NULL),
(130, 6, 57, '2016-09-01 16:06:16', '2016-09-01 16:06:16', NULL),
(131, 6, 58, '2016-09-01 16:50:34', '2016-09-01 16:50:34', NULL),
(132, 1, 62, '2016-09-01 20:24:34', '2016-09-01 20:35:57', NULL),
(133, 1, 62, '2016-09-01 20:35:57', '2016-09-01 20:35:57', '2016-09-01 20:35:57'),
(134, 1, 63, '2016-09-01 20:52:39', '2016-09-01 20:55:02', '2016-09-01 20:55:02'),
(135, 11, 63, '2016-09-01 20:55:02', '2016-09-01 20:55:02', NULL),
(136, 14, 24, '2016-09-08 11:31:35', '2016-09-08 11:31:35', '2016-09-08 11:31:35'),
(137, 1, 51, '2016-09-08 11:34:10', '2016-09-08 11:34:11', '2016-09-08 11:34:11'),
(138, 2, 51, '2016-09-08 11:34:10', '2016-09-08 11:34:11', '2016-09-08 11:34:11'),
(139, 3, 51, '2016-09-08 11:34:10', '2016-09-08 11:34:11', '2016-09-08 11:34:11'),
(140, 7, 64, '2016-09-14 10:49:43', '2016-09-14 10:49:43', NULL),
(141, 7, 65, '2016-09-14 12:10:02', '2016-09-14 12:10:02', NULL),
(142, 8, 66, '2016-09-16 18:06:54', '2016-10-04 11:11:00', NULL),
(143, 8, 66, '2016-09-16 18:11:41', '2016-10-04 11:11:00', '2016-10-04 11:11:00'),
(144, 4, 67, '2016-09-20 16:43:10', '2016-09-20 16:49:37', NULL),
(145, 5, 67, '2016-09-20 16:43:10', '2016-09-20 16:49:37', NULL),
(146, 11, 67, '2016-09-20 16:43:10', '2016-09-20 16:49:37', NULL),
(147, 4, 67, '2016-09-20 16:49:37', '2016-09-20 16:49:37', '2016-09-20 16:49:37'),
(148, 5, 67, '2016-09-20 16:49:37', '2016-09-20 16:49:37', '2016-09-20 16:49:37'),
(149, 11, 67, '2016-09-20 16:49:37', '2016-09-20 16:49:37', '2016-09-20 16:49:37'),
(150, 15, 68, '2016-09-22 16:19:07', '2016-09-22 16:19:07', NULL),
(151, 1, 69, '2016-09-27 12:57:54', '2016-09-27 12:57:54', NULL),
(152, 8, 60, '2016-09-28 10:03:17', '2016-09-28 10:03:27', NULL),
(153, 8, 60, '2016-09-28 10:03:27', '2016-09-28 10:03:27', '2016-09-28 10:03:27'),
(154, 2, 70, '2016-09-28 10:56:45', '2016-09-28 10:56:45', NULL),
(155, 5, 70, '2016-09-28 10:56:46', '2016-09-28 10:56:46', NULL),
(156, 10, 70, '2016-09-28 10:56:46', '2016-09-28 10:56:46', NULL),
(157, 2, 71, '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(158, 5, 71, '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(159, 10, 71, '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(160, 2, 71, '2016-09-28 18:00:19', '2016-09-28 22:49:55', '2016-09-28 22:49:55'),
(161, 5, 71, '2016-09-28 18:00:19', '2016-09-28 22:49:55', '2016-09-28 22:49:55'),
(162, 10, 71, '2016-09-28 18:00:19', '2016-09-28 22:49:55', '2016-09-28 22:49:55'),
(163, 12, 12, '2016-09-28 18:10:03', '2016-09-28 18:10:03', '2016-09-28 18:10:03'),
(164, 9, 20, '2016-09-28 18:12:10', '2016-09-28 18:12:10', '2016-09-28 18:12:10'),
(165, 2, 45, '2016-09-28 18:14:07', '2016-09-28 18:14:07', '2016-09-28 18:14:07'),
(166, 4, 52, '2016-09-28 18:14:49', '2016-09-28 18:14:49', '2016-09-28 18:14:49'),
(167, 15, 72, '2016-09-29 00:38:05', '2016-09-29 01:00:53', NULL),
(168, 15, 72, '2016-09-29 00:49:39', '2016-09-29 01:00:52', '2016-09-29 01:00:52'),
(169, 6, 73, '2016-09-29 13:36:00', '2016-09-29 13:36:00', NULL),
(170, 1, 74, '2016-10-03 14:24:11', '2016-10-03 14:24:11', NULL),
(171, 11, 74, '2016-10-03 14:24:11', '2016-10-03 14:24:11', NULL),
(172, 16, 75, '2016-10-06 15:01:54', '2016-10-06 15:01:54', NULL),
(173, 17, 76, '2016-10-07 11:35:27', '2016-10-07 12:08:38', NULL),
(174, 17, 76, '2016-10-07 12:08:38', '2016-10-07 12:08:38', '2016-10-07 12:08:38'),
(175, 7, 77, '2016-10-08 23:20:40', '2016-10-08 23:20:40', NULL),
(176, 7, 78, '2016-10-09 23:48:47', '2016-10-09 23:48:47', NULL),
(177, 1, 79, '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(178, 9, 79, '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(179, 17, 79, '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(180, 1, 80, '2016-10-13 11:50:12', '2016-10-13 11:50:12', NULL),
(181, 12, 80, '2016-10-13 11:50:12', '2016-10-13 11:50:12', NULL),
(182, 18, 81, '2016-10-17 10:41:03', '2016-10-17 10:41:03', NULL),
(183, 6, 82, '2016-10-27 10:49:31', '2016-10-27 11:00:58', '2016-10-27 11:00:58'),
(184, 19, 82, '2016-10-27 11:00:58', '2016-10-27 11:00:58', NULL),
(185, 15, 83, '2016-10-28 15:08:08', '2016-10-28 15:19:07', '2016-10-28 15:19:07'),
(186, 21, 83, '2016-10-28 15:19:07', '2016-11-30 11:15:06', NULL),
(187, 15, 84, '2016-10-31 12:51:14', '2016-10-31 12:51:14', NULL),
(188, 21, 84, '2016-10-31 12:51:14', '2016-10-31 12:51:14', NULL),
(189, 2, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(190, 22, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(191, 23, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(192, 24, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(193, 25, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(194, 26, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(195, 27, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(196, 28, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(197, 29, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:18', NULL),
(198, 17, 86, '2016-11-08 09:08:28', '2016-11-25 10:26:39', NULL),
(199, 22, 86, '2016-11-08 09:08:28', '2016-11-25 10:26:39', NULL),
(200, 31, 87, '2016-11-10 16:29:34', '2016-11-25 10:25:47', NULL),
(201, 31, 87, '2016-11-10 16:32:14', '2016-11-25 10:25:47', '2016-11-25 10:25:47'),
(202, 9, 88, '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(203, 9, 88, '2016-11-18 11:09:59', '2016-11-23 16:43:17', '2016-11-23 16:43:17'),
(204, 9, 89, '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(205, 9, 89, '2016-11-21 17:56:56', '2016-11-21 18:07:10', '2016-11-21 18:07:10'),
(206, 16, 90, '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(207, 16, 90, '2016-11-22 09:56:26', '2016-11-22 09:57:18', '2016-11-22 09:57:18'),
(208, 7, 91, '2016-11-22 13:27:33', '2016-11-22 13:27:33', NULL),
(209, 6, 92, '2016-11-22 13:30:59', '2016-11-22 13:30:59', NULL),
(210, 19, 92, '2016-11-22 13:30:59', '2016-11-22 13:30:59', NULL),
(211, 17, 86, '2016-11-25 10:26:39', '2016-11-25 10:26:39', '2016-11-25 10:26:39'),
(212, 22, 86, '2016-11-25 10:26:39', '2016-11-25 10:26:39', '2016-11-25 10:26:39'),
(213, 9, 93, '2016-11-27 19:40:26', '2016-11-27 19:40:26', NULL),
(214, 2, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:17', '2016-11-28 10:16:17'),
(215, 22, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:17', '2016-11-28 10:16:17'),
(216, 23, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:17', '2016-11-28 10:16:17'),
(217, 24, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:17', '2016-11-28 10:16:17'),
(218, 25, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:17', '2016-11-28 10:16:17'),
(219, 26, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:18', '2016-11-28 10:16:18'),
(220, 27, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:18', '2016-11-28 10:16:18'),
(221, 28, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:18', '2016-11-28 10:16:18'),
(222, 29, 85, '2016-11-28 10:16:17', '2016-11-28 10:16:18', '2016-11-28 10:16:18'),
(223, 21, 83, '2016-11-30 11:12:13', '2016-11-30 11:15:06', '2016-11-30 11:15:06'),
(224, 24, 94, '2016-11-30 11:48:28', '2016-11-30 15:05:17', NULL),
(225, 13, 10, '2016-11-30 14:34:37', '2016-11-30 14:34:37', '2016-11-30 14:34:37'),
(226, 24, 94, '2016-11-30 15:01:21', '2016-11-30 15:05:17', '2016-11-30 15:05:17'),
(227, 16, 95, '2016-11-30 16:53:06', '2016-12-01 15:09:14', NULL),
(228, 16, 95, '2016-11-30 17:05:42', '2016-12-01 15:09:14', '2016-12-01 15:09:14'),
(229, 19, 96, '2016-11-30 17:40:26', '2016-12-01 15:19:01', NULL),
(230, 19, 96, '2016-12-01 15:08:13', '2016-12-01 15:19:01', '2016-12-01 15:19:01'),
(231, 10, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:18', NULL),
(232, 17, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:18', NULL),
(233, 26, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:18', NULL),
(234, 33, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:18', NULL),
(235, 35, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:18', NULL),
(236, 36, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:18', NULL),
(237, 10, 97, '2016-12-01 17:38:17', '2016-12-01 17:38:17', '2016-12-01 17:38:17'),
(238, 17, 97, '2016-12-01 17:38:17', '2016-12-01 17:38:17', '2016-12-01 17:38:17'),
(239, 26, 97, '2016-12-01 17:38:17', '2016-12-01 17:38:17', '2016-12-01 17:38:17'),
(240, 33, 97, '2016-12-01 17:38:17', '2016-12-01 17:38:17', '2016-12-01 17:38:17'),
(241, 35, 97, '2016-12-01 17:38:17', '2016-12-01 17:38:17', '2016-12-01 17:38:17'),
(242, 36, 97, '2016-12-01 17:38:17', '2016-12-01 17:38:18', '2016-12-01 17:38:18'),
(243, 17, 98, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL),
(244, 15, 98, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL),
(245, 32, 98, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Branch_Currency`
--

CREATE TABLE IF NOT EXISTS `Branch_Currency` (
  `id` int(10) unsigned NOT NULL,
  `currency_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Branch_Currency`
--

INSERT INTO `Branch_Currency` (`id`, `currency_id`, `branch_id`, `currency`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '', '2016-08-26 18:05:13', '2016-09-01 11:58:43', NULL),
(2, 1, 4, '', '2016-08-26 18:19:22', '2016-09-01 15:05:37', NULL),
(3, 5, 4, '', '2016-08-26 18:19:22', '2016-08-31 10:25:27', '2016-08-31 10:25:27'),
(4, 1, 5, '', '2016-08-26 18:24:21', '2016-09-01 12:01:42', NULL),
(5, 1, 6, '', '2016-08-26 18:29:51', '2016-09-28 18:10:50', NULL),
(6, 1, 7, '', '2016-08-26 18:51:47', '2016-09-07 17:02:10', NULL),
(7, 1, 8, '', '2016-08-27 14:41:55', '2016-09-01 12:07:07', NULL),
(8, 1, 9, '', '2016-08-27 14:46:20', '2016-09-01 11:30:07', NULL),
(9, 1, 10, '', '2016-08-27 15:05:21', '2016-11-30 14:34:37', NULL),
(10, 1, 11, '', '2016-08-27 15:39:59', '2016-09-28 17:43:09', NULL),
(11, 1, 12, '', '2016-08-27 15:51:26', '2016-09-28 18:10:03', NULL),
(12, 1, 13, '', '2016-08-27 16:57:06', '2016-09-01 11:41:07', NULL),
(13, 2, 13, '', '2016-08-27 16:57:06', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(14, 1, 14, '', '2016-08-29 11:15:36', '2016-09-01 11:49:07', NULL),
(15, 1, 15, '', '2016-08-29 17:19:53', '2016-08-30 14:06:35', NULL),
(16, 1, 19, '', '2016-08-30 13:22:15', '2016-09-01 12:11:48', NULL),
(17, 1, 20, '', '2016-08-30 13:28:52', '2016-09-28 18:12:10', NULL),
(18, 1, 21, '', '2016-08-30 13:43:31', '2016-09-28 18:13:27', NULL),
(19, 1, 2, '', '2016-08-30 14:02:28', '2016-08-30 14:02:28', NULL),
(20, 2, 2, '', '2016-08-30 14:02:28', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(21, 1, 22, '', '2016-08-30 21:06:08', '2016-09-28 18:11:29', NULL),
(22, 1, 25, '', '2016-08-30 21:23:27', '2016-09-01 14:17:22', NULL),
(23, 2, 26, '', '2016-08-30 21:30:32', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(24, 1, 27, '', '2016-08-31 01:12:14', '2016-09-01 14:20:47', NULL),
(25, 1, 28, '', '2016-08-31 01:24:03', '2016-09-01 15:01:08', NULL),
(26, 1, 29, '', '2016-08-31 01:47:21', '2016-09-01 14:44:21', NULL),
(27, 1, 30, '', '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(28, 1, 31, '', '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(29, 1, 32, '', '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(30, 1, 33, '', '2016-08-31 01:47:30', '2016-08-31 01:47:30', NULL),
(31, 1, 34, '', '2016-08-31 01:47:31', '2016-08-31 01:47:31', NULL),
(32, 1, 43, '', '2016-08-31 02:32:58', '2016-08-31 02:32:58', NULL),
(33, 1, 44, '', '2016-08-31 02:37:50', '2016-08-31 02:45:52', NULL),
(34, 1, 45, '', '2016-08-31 02:54:14', '2016-09-28 18:14:07', NULL),
(35, 1, 46, '', '2016-08-31 03:01:31', '2016-08-31 03:01:31', NULL),
(36, 1, 47, '', '2016-08-31 03:08:29', '2016-08-31 03:10:57', NULL),
(37, 3, 48, '', '2016-08-31 03:17:33', '2016-12-24 22:16:54', '2016-12-24 22:16:54'),
(38, 1, 49, '', '2016-08-31 03:18:16', '2016-08-31 03:18:16', NULL),
(39, 1, 50, '', '2016-08-31 03:22:13', '2016-08-31 03:22:13', NULL),
(40, 1, 16, '', '2016-08-31 09:59:45', '2016-09-01 18:01:01', NULL),
(41, 1, 51, '', '2016-08-31 13:50:13', '2016-09-08 11:34:10', NULL),
(42, 1, 52, '', '2016-08-31 14:47:53', '2016-09-28 18:14:49', NULL),
(43, 2, 53, '', '2016-08-31 17:00:55', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(44, 1, 54, '', '2016-08-31 20:23:08', '2016-08-31 20:25:42', NULL),
(45, 2, 54, '', '2016-08-31 20:23:08', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(46, 1, 57, '', '2016-09-01 16:06:16', '2016-09-01 16:06:16', NULL),
(47, 2, 57, '', '2016-09-01 16:06:16', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(48, 2, 58, '', '2016-09-01 16:50:34', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(49, 1, 62, '', '2016-09-01 20:24:34', '2016-09-01 20:35:57', NULL),
(50, 2, 63, '', '2016-09-01 20:52:39', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(51, 2, 24, '', '2016-09-08 11:31:35', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(52, 1, 64, '', '2016-09-14 10:49:43', '2016-09-14 10:49:43', NULL),
(53, 1, 65, '', '2016-09-14 12:10:02', '2016-09-14 12:10:02', NULL),
(54, 1, 66, '', '2016-09-16 18:06:54', '2016-10-04 11:11:00', NULL),
(55, 1, 67, '', '2016-09-20 16:43:10', '2016-09-20 16:49:37', NULL),
(56, 1, 68, '', '2016-09-22 16:19:07', '2016-09-22 16:19:07', NULL),
(57, 1, 69, '', '2016-09-27 12:57:54', '2016-09-27 12:57:54', NULL),
(58, 2, 69, '', '2016-09-27 12:57:54', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(59, 3, 69, '', '2016-09-27 12:57:54', '2016-12-24 22:16:54', '2016-12-24 22:16:54'),
(60, 4, 69, '', '2016-09-27 12:57:54', '2016-09-27 12:57:54', NULL),
(61, 5, 69, '', '2016-09-27 12:57:54', '2017-01-01 13:20:38', '2017-01-01 13:20:38'),
(62, 1, 60, '', '2016-09-28 10:03:27', '2016-09-28 10:03:27', NULL),
(63, 1, 70, '', '2016-09-28 10:56:45', '2016-09-28 10:56:45', NULL),
(64, 1, 71, '', '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(65, 1, 72, '', '2016-09-29 00:38:05', '2016-09-29 01:00:52', NULL),
(66, 2, 73, '', '2016-09-29 13:36:00', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(67, 1, 74, '', '2016-10-03 14:24:11', '2016-10-03 14:24:11', NULL),
(68, 1, 75, '', '2016-10-06 15:01:54', '2016-10-06 15:01:54', NULL),
(69, 1, 76, '', '2016-10-07 11:35:27', '2016-10-07 12:08:38', NULL),
(70, 1, 77, '', '2016-10-08 23:20:40', '2016-10-08 23:20:40', NULL),
(71, 1, 78, '', '2016-10-09 23:48:47', '2016-10-09 23:48:47', NULL),
(72, 1, 79, '', '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(73, 1, 80, '', '2016-10-13 11:50:12', '2016-10-13 11:50:12', NULL),
(74, 1, 81, '', '2016-10-17 10:41:02', '2016-10-17 10:41:02', NULL),
(75, 1, 82, '', '2016-10-27 10:49:31', '2016-10-27 11:00:58', NULL),
(76, 1, 83, '', '2016-10-28 15:08:07', '2016-11-30 11:15:06', NULL),
(77, 1, 84, '', '2016-10-31 12:51:14', '2016-10-31 12:51:14', NULL),
(78, 1, 85, '', '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(79, 2, 85, '', '2016-11-01 23:39:45', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(80, 1, 86, '', '2016-11-08 09:08:28', '2016-11-25 10:26:39', NULL),
(81, 2, 86, '', '2016-11-08 09:08:28', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(82, 5, 86, '', '2016-11-08 09:08:28', '2017-01-01 13:20:38', '2017-01-01 13:20:38'),
(83, 1, 87, '', '2016-11-10 16:29:34', '2016-11-25 10:25:47', NULL),
(84, 1, 88, '', '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(85, 2, 89, '', '2016-11-18 13:56:06', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(86, 1, 90, '', '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(87, 2, 90, '', '2016-11-22 09:37:32', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(88, 1, 91, '', '2016-11-22 13:27:32', '2016-11-22 13:27:32', NULL),
(89, 5, 91, '', '2016-11-22 13:27:32', '2017-01-01 13:20:38', '2017-01-01 13:20:38'),
(90, 4, 91, '', '2016-11-22 13:27:32', '2016-11-22 13:27:32', NULL),
(91, 2, 91, '', '2016-11-22 13:27:32', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(92, 3, 91, '', '2016-11-22 13:27:33', '2016-12-24 22:16:54', '2016-12-24 22:16:54'),
(93, 1, 92, '', '2016-11-22 13:30:59', '2016-11-22 13:30:59', NULL),
(94, 5, 92, '', '2016-11-22 13:30:59', '2017-01-01 13:20:38', '2017-01-01 13:20:38'),
(95, 4, 92, '', '2016-11-22 13:30:59', '2016-11-22 13:30:59', NULL),
(96, 2, 92, '', '2016-11-22 13:30:59', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(97, 3, 92, '', '2016-11-22 13:30:59', '2016-12-24 22:16:54', '2016-12-24 22:16:54'),
(98, 1, 93, '', '2016-11-27 19:40:26', '2016-11-27 19:40:26', NULL),
(99, 1, 94, '', '2016-11-30 11:48:28', '2016-11-30 15:05:17', NULL),
(100, 1, 95, '', '2016-11-30 16:53:06', '2016-12-01 15:09:14', NULL),
(101, 2, 95, '', '2016-11-30 16:53:06', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(102, 1, 96, '', '2016-11-30 17:40:26', '2016-12-01 15:19:01', NULL),
(103, 2, 96, '', '2016-11-30 17:40:26', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(104, 1, 97, '', '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL),
(105, 2, 97, '', '2016-12-01 15:42:45', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(106, 1, 98, '', '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Branch_Feature`
--

CREATE TABLE IF NOT EXISTS `Branch_Feature` (
  `id` int(10) unsigned NOT NULL,
  `feature_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Branch_Feature`
--

INSERT INTO `Branch_Feature` (`id`, `feature_id`, `branch_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2016-08-26 18:05:13', '2016-09-01 11:58:43', NULL),
(2, 3, 3, '2016-08-26 18:05:13', '2016-09-01 11:58:43', NULL),
(3, 1, 4, '2016-08-26 18:19:22', '2016-09-01 15:05:37', NULL),
(4, 3, 4, '2016-08-26 18:19:22', '2016-09-01 15:05:37', NULL),
(5, 1, 5, '2016-08-26 18:24:21', '2016-09-01 12:01:42', NULL),
(6, 2, 5, '2016-08-26 18:24:21', '2016-09-01 12:01:42', NULL),
(7, 3, 5, '2016-08-26 18:24:21', '2016-09-01 12:01:42', NULL),
(8, 1, 6, '2016-08-26 18:29:51', '2016-09-28 18:10:50', NULL),
(9, 3, 6, '2016-08-26 18:29:51', '2016-09-28 18:10:50', NULL),
(10, 1, 7, '2016-08-26 18:51:47', '2016-09-07 17:02:10', NULL),
(11, 3, 7, '2016-08-26 18:51:47', '2016-09-07 17:02:10', NULL),
(12, 2, 6, '2016-08-26 19:10:45', '2016-09-28 18:10:50', NULL),
(13, 1, 8, '2016-08-27 14:41:55', '2016-09-01 12:07:07', NULL),
(14, 2, 8, '2016-08-27 14:41:55', '2016-09-01 12:07:07', NULL),
(15, 3, 8, '2016-08-27 14:41:55', '2016-09-01 12:07:07', NULL),
(16, 1, 9, '2016-08-27 14:46:20', '2016-09-01 11:30:07', NULL),
(17, 2, 9, '2016-08-27 14:46:20', '2016-09-01 11:30:07', NULL),
(18, 3, 9, '2016-08-27 14:46:20', '2016-09-01 11:30:07', NULL),
(19, 1, 10, '2016-08-27 15:05:21', '2016-11-30 14:34:37', NULL),
(20, 2, 10, '2016-08-27 15:05:21', '2016-11-30 14:34:37', NULL),
(21, 3, 10, '2016-08-27 15:05:21', '2016-11-30 14:34:37', NULL),
(22, 1, 11, '2016-08-27 15:39:59', '2016-09-28 17:43:09', NULL),
(23, 2, 11, '2016-08-27 15:39:59', '2016-09-28 17:43:09', NULL),
(24, 3, 11, '2016-08-27 15:39:59', '2016-09-28 17:43:09', NULL),
(25, 2, 12, '2016-08-27 15:51:26', '2016-09-28 18:10:03', NULL),
(26, 4, 13, '2016-08-27 16:57:06', '2016-09-01 11:41:07', NULL),
(27, 4, 14, '2016-08-29 11:15:36', '2016-09-01 11:49:07', NULL),
(28, 1, 15, '2016-08-29 17:19:53', '2016-08-30 14:06:35', NULL),
(29, 2, 15, '2016-08-29 17:19:53', '2016-08-30 14:06:35', NULL),
(30, 3, 15, '2016-08-29 17:19:53', '2016-08-30 14:06:35', NULL),
(31, 1, 19, '2016-08-30 13:22:15', '2016-09-01 12:11:48', NULL),
(32, 3, 19, '2016-08-30 13:22:15', '2016-09-01 12:11:48', NULL),
(33, 1, 20, '2016-08-30 13:28:52', '2016-09-28 18:12:10', NULL),
(34, 3, 20, '2016-08-30 13:28:52', '2016-09-01 11:54:28', '2016-09-01 11:54:28'),
(35, 1, 21, '2016-08-30 13:43:31', '2016-09-28 18:13:26', NULL),
(36, 3, 21, '2016-08-30 13:43:31', '2016-09-28 18:13:26', NULL),
(37, 1, 2, '2016-08-30 14:02:28', '2016-08-30 14:02:28', NULL),
(38, 2, 22, '2016-08-30 21:06:08', '2016-09-28 18:11:29', NULL),
(39, 3, 25, '2016-08-30 21:23:27', '2016-09-01 14:17:22', NULL),
(40, 1, 26, '2016-08-30 21:30:32', '2016-08-31 13:31:00', NULL),
(41, 3, 26, '2016-08-30 21:30:32', '2016-08-31 13:31:00', NULL),
(42, 2, 27, '2016-08-31 01:12:14', '2016-09-01 14:20:47', NULL),
(43, 3, 27, '2016-08-31 01:12:14', '2016-09-01 14:20:47', NULL),
(44, 3, 28, '2016-08-31 01:24:03', '2016-09-01 15:01:08', NULL),
(45, 1, 29, '2016-08-31 01:47:21', '2016-09-01 14:44:21', NULL),
(46, 3, 29, '2016-08-31 01:47:21', '2016-09-01 14:44:21', NULL),
(47, 1, 30, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(48, 3, 30, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(49, 1, 31, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(50, 3, 31, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(51, 1, 32, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(52, 3, 32, '2016-08-31 01:47:29', '2016-08-31 01:47:29', NULL),
(53, 1, 33, '2016-08-31 01:47:30', '2016-08-31 01:47:30', NULL),
(54, 3, 33, '2016-08-31 01:47:30', '2016-08-31 01:47:30', NULL),
(55, 1, 34, '2016-08-31 01:47:31', '2016-08-31 01:47:31', NULL),
(56, 3, 34, '2016-08-31 01:47:31', '2016-08-31 01:47:31', NULL),
(57, 3, 29, '2016-08-31 01:52:31', '2016-09-01 14:42:18', '2016-09-01 14:42:18'),
(58, 1, 43, '2016-08-31 02:32:58', '2016-08-31 02:32:58', NULL),
(59, 2, 43, '2016-08-31 02:32:58', '2016-08-31 02:32:58', NULL),
(60, 3, 43, '2016-08-31 02:32:58', '2016-08-31 02:32:58', NULL),
(61, 1, 44, '2016-08-31 02:37:50', '2016-08-31 02:45:51', '2016-08-31 02:45:51'),
(62, 2, 44, '2016-08-31 02:37:50', '2016-08-31 02:45:51', '2016-08-31 02:45:51'),
(63, 3, 44, '2016-08-31 02:37:50', '2016-08-31 02:45:52', '2016-08-31 02:45:52'),
(64, 1, 45, '2016-08-31 02:54:14', '2016-09-28 18:14:06', NULL),
(65, 2, 45, '2016-08-31 02:54:14', '2016-09-28 18:14:06', NULL),
(66, 3, 45, '2016-08-31 02:54:14', '2016-09-28 18:14:06', NULL),
(67, 1, 46, '2016-08-31 03:01:31', '2016-08-31 03:01:31', NULL),
(68, 2, 46, '2016-08-31 03:01:31', '2016-08-31 03:01:31', NULL),
(69, 3, 46, '2016-08-31 03:01:31', '2016-08-31 03:01:31', NULL),
(70, 1, 47, '2016-08-31 03:08:29', '2016-08-31 03:10:57', NULL),
(71, 2, 47, '2016-08-31 03:08:29', '2016-08-31 03:10:57', NULL),
(72, 3, 47, '2016-08-31 03:08:29', '2016-08-31 03:10:57', NULL),
(73, 3, 48, '2016-08-31 03:17:33', '2016-08-31 03:28:26', NULL),
(74, 1, 49, '2016-08-31 03:18:16', '2016-08-31 03:18:16', NULL),
(75, 2, 49, '2016-08-31 03:18:16', '2016-08-31 03:18:16', NULL),
(76, 3, 49, '2016-08-31 03:18:16', '2016-08-31 03:18:16', NULL),
(77, 1, 50, '2016-08-31 03:22:13', '2016-08-31 03:22:13', NULL),
(78, 2, 4, '2016-08-31 10:25:27', '2016-09-01 15:05:37', NULL),
(79, 1, 51, '2016-08-31 13:50:13', '2016-09-08 11:34:10', NULL),
(80, 2, 51, '2016-08-31 13:50:13', '2016-09-08 11:34:10', NULL),
(81, 3, 51, '2016-08-31 13:50:13', '2016-09-08 11:34:10', NULL),
(82, 1, 52, '2016-08-31 14:47:53', '2016-09-28 18:14:49', NULL),
(83, 2, 52, '2016-08-31 14:47:53', '2016-09-28 18:14:49', NULL),
(84, 3, 52, '2016-08-31 14:47:53', '2016-09-28 18:14:49', NULL),
(85, 1, 53, '2016-08-31 17:00:55', '2016-08-31 17:00:55', NULL),
(86, 2, 53, '2016-08-31 17:00:55', '2016-08-31 17:00:55', NULL),
(87, 3, 53, '2016-08-31 17:00:55', '2016-08-31 17:00:55', NULL),
(88, 1, 54, '2016-08-31 20:23:08', '2016-08-31 20:25:42', NULL),
(89, 2, 54, '2016-08-31 20:23:08', '2016-08-31 20:25:42', NULL),
(90, 3, 54, '2016-08-31 20:23:08', '2016-08-31 20:25:42', NULL),
(91, 2, 21, '2016-09-01 11:50:29', '2016-09-28 18:13:26', NULL),
(92, 4, 57, '2016-09-01 16:06:16', '2016-09-01 16:06:16', NULL),
(93, 4, 58, '2016-09-01 16:50:34', '2016-09-01 16:50:34', NULL),
(94, 5, 16, '2016-09-01 18:01:01', '2016-09-01 18:01:01', NULL),
(95, 3, 62, '2016-09-01 20:24:34', '2016-09-01 20:35:57', NULL),
(96, 1, 63, '2016-09-01 20:52:39', '2016-09-01 20:55:02', NULL),
(97, 2, 63, '2016-09-01 20:52:39', '2016-09-01 20:55:02', NULL),
(98, 3, 63, '2016-09-01 20:52:39', '2016-09-01 20:55:02', NULL),
(99, 5, 65, '2016-09-14 12:10:02', '2016-09-14 12:10:02', NULL),
(100, 7, 66, '2016-09-16 18:06:54', '2016-10-04 11:11:00', NULL),
(101, 8, 66, '2016-09-16 18:06:54', '2016-10-04 11:11:00', NULL),
(102, 1, 67, '2016-09-20 16:43:10', '2016-09-20 16:49:37', NULL),
(103, 2, 67, '2016-09-20 16:43:10', '2016-09-20 16:49:37', NULL),
(104, 3, 67, '2016-09-20 16:43:10', '2016-09-20 16:49:37', NULL),
(105, 7, 68, '2016-09-22 16:19:07', '2016-09-22 16:19:07', NULL),
(106, 8, 68, '2016-09-22 16:19:07', '2016-09-22 16:19:07', NULL),
(107, 1, 69, '2016-09-27 12:57:54', '2016-09-27 12:57:54', NULL),
(108, 7, 60, '2016-09-28 10:03:17', '2016-09-28 10:03:27', NULL),
(109, 2, 70, '2016-09-28 10:56:45', '2016-09-28 10:56:45', NULL),
(110, 3, 70, '2016-09-28 10:56:45', '2016-09-28 10:56:45', NULL),
(111, 2, 71, '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(112, 3, 71, '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(113, 7, 72, '2016-09-29 00:38:05', '2016-09-29 01:00:52', NULL),
(114, 8, 72, '2016-09-29 00:38:05', '2016-09-29 01:00:52', NULL),
(115, 4, 73, '2016-09-29 13:36:00', '2016-09-29 13:36:00', NULL),
(116, 6, 73, '2016-09-29 13:36:00', '2016-09-29 13:36:00', NULL),
(117, 1, 74, '2016-10-03 14:24:11', '2016-10-03 14:24:11', NULL),
(118, 3, 74, '2016-10-03 14:24:11', '2016-10-03 14:24:11', NULL),
(119, 3, 75, '2016-10-06 15:01:54', '2016-10-06 15:01:54', NULL),
(120, 2, 76, '2016-10-07 11:35:27', '2016-10-07 12:08:38', NULL),
(121, 9, 76, '2016-10-07 11:35:27', '2016-10-07 12:08:38', NULL),
(122, 5, 77, '2016-10-08 23:20:40', '2016-10-08 23:20:40', NULL),
(123, 5, 78, '2016-10-09 23:48:47', '2016-10-09 23:48:47', NULL),
(124, 1, 79, '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(125, 2, 79, '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(126, 3, 79, '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(127, 9, 79, '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(128, 2, 80, '2016-10-13 11:50:12', '2016-10-13 11:50:12', NULL),
(129, 9, 80, '2016-10-13 11:50:12', '2016-10-13 11:50:12', NULL),
(130, 8, 81, '2016-10-17 10:41:02', '2016-10-17 10:41:02', NULL),
(131, 4, 82, '2016-10-27 10:49:31', '2016-10-27 11:00:58', NULL),
(132, 6, 82, '2016-10-27 10:49:31', '2016-10-27 11:00:58', NULL),
(133, 8, 83, '2016-10-28 15:08:07', '2016-11-30 11:15:06', NULL),
(134, 8, 84, '2016-10-31 12:51:14', '2016-10-31 12:51:14', NULL),
(135, 1, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(136, 2, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(137, 9, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(138, 10, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(139, 11, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(140, 12, 85, '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(141, 1, 86, '2016-11-08 09:08:28', '2016-11-25 10:26:39', NULL),
(142, 9, 86, '2016-11-08 09:08:28', '2016-11-25 10:26:39', NULL),
(143, 3, 87, '2016-11-10 16:29:34', '2016-11-25 10:25:47', NULL),
(144, 9, 87, '2016-11-10 16:29:34', '2016-11-25 10:25:47', NULL),
(145, 1, 88, '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(146, 2, 88, '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(147, 3, 88, '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(148, 9, 88, '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(149, 10, 88, '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(150, 12, 88, '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(151, 1, 89, '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(152, 2, 89, '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(153, 3, 89, '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(154, 9, 89, '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(155, 10, 89, '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(156, 12, 89, '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(157, 2, 90, '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(158, 3, 90, '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(159, 9, 90, '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(160, 10, 90, '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(161, 12, 90, '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(162, 5, 91, '2016-11-22 13:27:32', '2016-11-22 13:27:32', NULL),
(163, 4, 92, '2016-11-22 13:30:59', '2016-11-22 13:30:59', NULL),
(164, 6, 92, '2016-11-22 13:30:59', '2016-11-22 13:30:59', NULL),
(165, 1, 93, '2016-11-27 19:40:26', '2016-11-27 19:40:26', NULL),
(166, 1, 94, '2016-11-30 11:48:28', '2016-11-30 15:05:17', NULL),
(167, 9, 94, '2016-11-30 11:48:28', '2016-11-30 15:05:17', NULL),
(168, 10, 94, '2016-11-30 11:48:28', '2016-11-30 15:05:17', NULL),
(169, 2, 95, '2016-11-30 16:53:06', '2016-12-01 15:09:14', NULL),
(170, 3, 95, '2016-11-30 16:53:06', '2016-12-01 15:09:14', NULL),
(171, 9, 95, '2016-11-30 16:53:06', '2016-12-01 15:09:14', NULL),
(172, 10, 95, '2016-11-30 16:53:06', '2016-12-01 15:09:14', NULL),
(173, 12, 95, '2016-11-30 16:53:06', '2016-12-01 15:09:14', NULL),
(174, 4, 96, '2016-11-30 17:40:26', '2016-12-01 15:19:01', NULL),
(175, 1, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL),
(176, 2, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL),
(177, 3, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL),
(178, 9, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL),
(179, 10, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL),
(180, 12, 97, '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL),
(181, 9, 98, '2016-12-24 23:58:28', '2016-12-24 23:58:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Branch_Ranking`
--

CREATE TABLE IF NOT EXISTS `Branch_Ranking` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `star` int(11) NOT NULL COMMENT 'to vote rank of business from 1 to 5',
  `review_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Branch_Ranking`
--

INSERT INTO `Branch_Ranking` (`id`, `user_id`, `branch_id`, `star`, `review_comment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20, 4, 2, NULL, '2016-08-31 11:40:48', '2016-08-31 11:40:48', NULL),
(2, 20, 3, 3, NULL, '2016-08-31 15:23:59', '2016-08-31 15:24:09', NULL),
(3, 83, 6, 2, NULL, '2016-08-31 16:14:20', '2016-08-31 16:14:26', NULL),
(4, 93, 4, 5, NULL, '2016-08-31 20:07:17', '2016-08-31 20:07:17', NULL),
(5, 108, 53, 4, NULL, '2016-09-01 01:56:28', '2016-09-01 01:56:28', NULL),
(6, 109, 4, 5, NULL, '2016-09-01 02:04:15', '2016-09-01 02:04:15', NULL),
(7, 127, 6, 3, NULL, '2016-09-01 14:18:59', '2016-09-01 14:18:59', NULL),
(8, 34, 6, 5, NULL, '2016-09-01 14:41:11', '2016-09-01 14:41:11', NULL),
(9, 34, 20, 5, NULL, '2016-09-01 14:44:17', '2016-09-01 14:44:17', NULL),
(10, 158, 53, 5, NULL, '2016-09-01 20:41:37', '2016-09-01 20:41:37', NULL),
(11, 134, 6, 5, NULL, '2016-09-01 22:10:01', '2016-09-01 22:10:01', NULL),
(12, 587, 45, 3, NULL, '2016-09-06 12:58:16', '2016-09-06 12:58:46', NULL),
(13, 587, 20, 4, NULL, '2016-09-06 13:16:08', '2016-09-06 13:16:08', NULL),
(14, 728, 60, 1, NULL, '2016-09-12 16:19:38', '2016-09-12 16:21:38', NULL),
(15, 720, 60, 3, NULL, '2016-09-12 16:21:13', '2016-09-12 16:21:48', NULL),
(16, 740, 12, 5, NULL, '2016-09-14 14:49:42', '2016-09-14 14:54:58', NULL),
(17, 88, 51, 1, NULL, '2016-09-17 16:19:03', '2016-09-17 16:19:03', NULL),
(18, 740, 6, 5, '', '2016-09-21 17:10:10', '2016-09-29 11:39:09', NULL),
(19, 740, 13, 5, '', '2016-09-22 14:02:48', '2016-09-22 14:03:20', NULL),
(20, 88, 6, 2, NULL, '2016-10-04 11:41:19', '2016-10-04 11:41:19', NULL),
(21, 88, 74, 5, NULL, '2016-10-04 11:44:24', '2016-10-04 16:40:12', NULL),
(22, 88, 9, 5, NULL, '2016-10-04 16:42:10', '2016-10-04 16:42:10', NULL),
(23, 77, 75, 3, '', '2016-10-06 16:08:03', '2016-10-06 16:08:06', NULL),
(24, 88, 25, 1, NULL, '2016-10-13 10:46:22', '2016-10-13 10:46:22', NULL),
(25, 740, 80, 5, '', '2016-10-13 14:37:11', '2016-10-13 14:37:11', NULL),
(26, 740, 20, 5, '', '2016-10-20 11:19:33', '2016-10-20 11:19:33', NULL),
(27, 859, 82, 4, '', '2016-10-28 09:24:53', '2016-10-28 09:24:58', NULL),
(28, 860, 71, 5, '', '2016-10-28 10:02:50', '2016-10-28 10:02:50', NULL),
(29, 860, 74, 5, '', '2016-10-28 10:58:12', '2016-10-28 10:58:12', NULL),
(30, 859, 74, 4, '', '2016-10-31 08:45:41', '2016-11-02 15:38:25', NULL),
(31, 859, 73, 5, NULL, '2016-10-31 09:28:30', '2016-10-31 09:28:30', NULL),
(32, 859, 57, 5, '', '2016-10-31 10:42:49', '2016-10-31 10:42:49', NULL),
(33, 859, 63, 3, '', '2016-10-31 10:44:23', '2016-11-02 15:41:00', NULL),
(34, 859, 14, 5, '', '2016-10-31 10:59:08', '2016-10-31 10:59:08', NULL),
(35, 88, 5, 1, NULL, '2016-10-31 17:15:53', '2016-10-31 17:15:53', NULL),
(36, 816, 5, 5, '', '2016-11-02 00:07:24', '2016-11-02 00:07:24', NULL),
(37, 220, 57, 5, NULL, '2016-11-04 12:05:32', '2016-11-04 12:05:32', NULL),
(38, 859, 78, 5, '', '2016-11-04 12:12:04', '2016-11-04 12:12:04', NULL),
(39, 859, 5, 5, NULL, '2016-11-04 13:40:54', '2016-11-04 13:40:54', NULL),
(40, 309, 86, 5, '', '2016-11-09 13:48:07', '2016-11-09 13:48:07', NULL),
(41, 309, 85, 5, '', '2016-11-09 14:40:52', '2016-11-09 14:41:15', NULL),
(42, 859, 83, 5, '', '2016-11-10 08:31:45', '2016-11-10 08:31:45', NULL),
(43, 740, 4, 4, '', '2016-12-07 15:28:02', '2016-12-07 15:28:02', NULL),
(44, 740, 9, 4, '', '2016-12-07 16:34:07', '2016-12-07 16:34:07', NULL),
(45, 740, 3, 5, '', '2016-12-07 18:13:47', '2016-12-07 18:13:47', NULL),
(46, 952, 12, 5, '', '2016-12-08 11:03:56', '2016-12-08 11:03:56', NULL),
(47, 740, 14, 4, '', '2016-12-12 16:49:56', '2016-12-12 16:49:56', NULL),
(48, 952, 3, 5, '', '2016-12-15 17:53:26', '2016-12-15 17:53:26', NULL),
(49, 18, 6, 2, NULL, '2016-12-16 10:00:44', '2016-12-16 10:00:45', NULL),
(50, 88, 3, 1, NULL, '2016-12-16 10:39:14', '2016-12-16 10:56:46', NULL),
(51, 88, 4, 1, NULL, '2016-12-16 10:40:28', '2016-12-16 10:41:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Business`
--

CREATE TABLE IF NOT EXISTS `Business` (
  `id` int(10) unsigned NOT NULL,
  `business_group_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `license` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `activate` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Business`
--

INSERT INTO `Business` (`id`, `business_group_id`, `name`, `image`, `logo`, `description`, `website`, `license`, `activate`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 3, 'Jasper House', 'thumb_26725687918314.jpg', '', '-', '', '', 2, 2, '2016-08-26 18:05:13', '2016-09-01 11:58:43', NULL),
(4, 4, 'Little Korea Barbecue', 'thumb_76044477085102.jpg', '', '-', '', '', 2, 2, '2016-08-26 18:19:22', '2016-08-31 10:25:27', NULL),
(5, 5, 'Goya Sky Bar @ Hotel Esperado', 'thumb_32249716365090.jpg', '', 'Bar & Restaurant', '', '', 2, 2, '2016-08-26 18:24:21', '2016-09-01 12:01:42', NULL),
(6, 6, 'HOT SPOT BBQ AND HOT POT ', 'thumb_9665887288665.jpg', '', '-', '', '', 2, 2, '2016-08-26 18:29:51', '2016-09-28 18:10:50', NULL),
(7, 7, 'DIY Hot Pot and BBQ', 'thumb_97264999638876.jpg', '', '-', '', '', 2, 2, '2016-08-26 18:51:47', '2016-09-07 17:02:10', NULL),
(8, 8, 'Thai 47 Bristo & Bar', 'thumb_59540403240702.jpg', '', '-', '', '', 2, 2, '2016-08-27 14:41:55', '2016-09-01 12:07:07', NULL),
(9, 9, 'Amazing Thai Food', 'thumb_14410284594716.jpg', '', '-', '', '', 2, 2, '2016-08-27 14:46:20', '2016-09-01 11:30:07', NULL),
(10, 10, 'Padonmar Restaurant ', 'thumb_599624966043.jpg', '', 'သန္႔ရွင္းလတ္ဆတ္ျပီး အရသာရွိလွတဲ႔ ျမန္မာ ၊ ထိုင္း အစားအစာ ေကာင္းေကာင္းကိုမွ ၾကိဳက္ႏွစ္သက္သူ  ေတြအတြက္ Padonmar Fine Dining Myanmar & Thai Cuisine Restaurant နဲ႔ မိတ္ဆက္ေပးပါရေစ။ သင္ၾကိဳက္ႏွစ္သက္တဲ့အစားအစာမ်ားကို ထူးကဲေကာင္းမြန္ေသာ ၀န္ေဆာင္မႈ နဲ႔ အတူ သင့္အေနနဲ႔ သူမတူေအာင္ ေကာင္းမြန္ တဲ့အရသာ ကို ရရွိခံစားမိေစမွာ အေသအခ်ာပါပဲ။ အရသာရွိလွတဲ႕ အစားအစာ ေတြကို total bill တြင္ 10 % discount ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏိုင္ဖို႔ အခုပဲ Koolpon မွ discount ကူပြန္ကို အရယူျပီး လွမ္းလာခဲ့ပါ။ ', '', '', 2, 2, '2016-08-27 15:05:21', '2016-11-30 14:34:37', NULL),
(11, 11, 'February Six Restaurant', 'thumb_18028536820308.jpg', '', '-', '', '', 2, 2, '2016-08-27 15:39:59', '2016-09-28 17:43:09', NULL),
(12, 12, 'Cafe'' Paradise', 'thumb_48719703048954.jpg', '', '-', '', '', 2, 2, '2016-08-27 15:51:26', '2016-09-28 18:10:02', NULL),
(13, 13, 'Sunny Holiday Hotel', 'thumb_49638492207332.jpg', '', '-', '', '', 2, 2, '2016-08-27 16:57:06', '2016-09-01 11:41:07', NULL),
(14, 14, 'Grand Laurel Hotel', 'thumb_39181406700328.jpg', '', '-', '', '', 2, 2, '2016-08-29 11:15:36', '2016-09-01 11:49:06', NULL),
(16, 16, 'Golden Park Spa Land', 'thumb_8131053955596.jpg', '', '-', '', '', 2, 2, '2016-08-30 09:47:54', '2016-08-31 10:04:21', NULL),
(17, 17, 'Hera Spa', 'thumb_650994354343.jpg', '', '-', '', '', 2, 2, '2016-08-30 10:47:33', '2016-09-01 12:09:19', NULL),
(19, 19, 'John Dee''s Western Restuarant', 'thumb_50912717325686.jpg', '', '-', '', '', 2, 2, '2016-08-30 13:22:15', '2016-09-01 12:11:48', NULL),
(20, 20, 'Dining Fukurou', 'thumb_45306945021498.jpg', '', '-', '', '', 2, 2, '2016-08-30 13:28:52', '2016-09-28 18:12:10', NULL),
(21, 21, 'B2O Roof and Cafe'' 20', 'thumb_16412666912015.jpg', '', '-', '', '', 2, 2, '2016-08-30 13:43:31', '2016-09-28 18:13:04', NULL),
(22, 22, 'Orianna 24', 'thumb_43061566782366.jpg', '', '-', '', '', 2, 2, '2016-08-30 21:06:08', '2016-09-28 18:11:29', NULL),
(24, 24, 'CHARM 66', 'thumb_2352806966503.jpg', '', '-', '', '', 2, 2, '2016-08-30 21:15:55', '2016-09-01 12:18:45', NULL),
(25, 25, 'Secret Recipe', 'thumb_75719383934381.jpg', '', '-', '', '', 2, 2, '2016-08-30 21:23:27', '2016-09-01 14:17:22', NULL),
(26, 26, 'Kamakura Marina', 'thumb_40248849048430.jpg', '', '-', '', '', 2, 2, '2016-08-30 21:30:31', '2016-08-31 13:30:59', NULL),
(27, 27, 'Vista Bar', 'thumb_77022318653094.jpg', '', 'Bar & Pub', '', '', 2, 2, '2016-08-31 01:12:14', '2016-09-01 14:20:47', NULL),
(28, 28, 'Fuse', 'thumb_7625849461762.jpg', '', 'DJ Bar', '', '', 2, 2, '2016-08-31 01:24:03', '2016-09-01 14:25:35', NULL),
(29, 29, 'YKKO @ South Race Course Branch', 'thumb_46455322522417.jpg', '', 'Kyay-Oh & BBQ', '', '', 2, 2, '2016-08-31 01:47:21', '2016-08-31 01:52:31', NULL),
(42, 42, 'Gakken Math School', 'thumb_6271091849972.jpg', '', 'Education Centre', '', '', 2, 2, '2016-08-31 02:22:41', '2016-08-31 02:22:41', NULL),
(43, 43, 'Cafe''20', 'thumb_93819085586678.jpg', '', 'Cafe'' & Bar', '', '', 2, 2, '2016-08-31 02:32:58', '2016-08-31 02:32:58', NULL),
(44, 44, 'Gakken Math', 'thumb_12222614469192.jpg', '', 'Education Centre', '', '', 2, 2, '2016-08-31 02:37:50', '2016-08-31 02:45:51', NULL),
(45, 45, 'Rangoon Grill & Chill', 'thumb_39175599877139.jpg', '', 'BBQ', '', '', 2, 2, '2016-08-31 02:54:14', '2016-09-28 18:14:06', NULL),
(47, 47, 'Kohaku Japanese Restaurant @ Chatrium Hotel Royal Lake Yangon', 'thumb_42413478257080.jpg', '', 'Japanese Restaurant', '', '', 2, 2, '2016-08-31 03:08:29', '2016-08-31 03:10:57', NULL),
(49, 49, 'Tiger Hill Chinese Restaurant @ Chatrium Hotel Royal Lake Yangon', 'thumb_69709842511975.jpg', '', 'Chinese Restaurant', '', '', 2, 2, '2016-08-31 03:18:16', '2016-08-31 03:18:16', NULL),
(51, 51, 'Epic Bar & Restaurant', 'thumb_53834659876179.jpg', '', '-', '', '', 2, 2, '2016-08-31 13:50:13', '2016-09-08 11:34:10', NULL),
(52, 52, 'Steam Boat Hot Pot', 'thumb_84764496733829.jpg', '', '-', '', '', 2, 2, '2016-08-31 14:47:53', '2016-09-28 18:14:49', NULL),
(53, 53, 'Chatrium Hotel Royal Lake Yangon', 'thumb_14257939625560.jpg', '', '-', '', '', 2, 2, '2016-08-31 17:00:55', '2016-08-31 17:00:55', NULL),
(55, 55, 'Spa @ Hotel Esperado', 'thumb_48783357340696.jpg', '', 'Spa', '', '', 2, 2, '2016-09-01 01:04:09', '2016-09-01 02:03:04', NULL),
(56, 56, 'Linkage Training Restaurant', 'thumb_9662263629443.jpg', '', 'Linkage Restaurant is a social project as well as a link to Forever Humanitarian & Development Projects, a volunteer group founded in 2010. It is a pretty corner in crowded downtown of Yangon, Myanmar where you can enjoy a great collection of Myanmar Fine Art (paintings) and delicious food prepared and served by enthusiastic young adolescents with dignity!', '', '', 2, 2, '2016-09-01 10:37:09', '2016-09-01 10:37:09', NULL),
(57, 57, 'Hotel 7 Mile ', 'thumb_79953266220887.jpg', '', '-', '', '', 2, 2, '2016-09-01 16:06:16', '2016-09-01 16:06:16', NULL),
(58, 58, 'Golden Butterfly Hotel Yangon', 'thumb_94343474029986.jpg', '', 'Hotel', '', '', 2, 2, '2016-09-01 16:50:34', '2016-09-01 16:50:34', NULL),
(60, 60, 'ACE Inspiration ', 'thumb_89248685596349.jpg', '', 'Professional Development Center', '', '', 2, 2, '2016-09-01 16:56:58', '2016-09-28 10:03:17', NULL),
(61, 61, 'Hotel 7 Mile', 'thumb_67269364252752.jpg', '', '-', '', '', 2, 2, '2016-09-01 17:18:49', '2016-09-01 17:18:49', NULL),
(62, 62, 'Grand Laurel Hotel', 'thumb_74458553137792.jpg', '', '-', '', '', 2, 2, '2016-09-01 20:24:34', '2016-09-01 20:35:57', NULL),
(63, 63, 'Spice Brasserie International Restaurant', 'thumb_89972489097561.jpg', '', 'Spice Brasserie International Restaurant @PARKROYAL Yangon', '', '', 2, 2, '2016-09-01 20:52:39', '2016-09-01 20:52:39', NULL),
(64, 64, 'Dr.Fish', 'thumb_83660236137062.jpg', '', 'Fish Spa & Foot Care', '', '', 2, 2, '2016-09-14 10:28:08', '2016-09-14 10:49:43', NULL),
(65, 65, 'Hera Spa by Ko Ko', 'thumb_35565916455796.jpg', '', 'Spa', '', '', 2, 2, '2016-09-14 12:10:02', '2016-09-14 12:10:02', NULL),
(66, 66, 'Nexus English Language Learning Centre', 'thumb_56339771886263.jpg', '', 'Education', '', '', 2, 2, '2016-09-16 18:06:54', '2016-09-16 18:12:54', NULL),
(67, 67, 'Siam Thai Cusine', 'thumb_78982283768469.jpg', '', 'Food & Drink', '', '', 2, 2, '2016-09-20 16:43:09', '2016-09-20 16:49:37', NULL),
(68, 68, 'Yangon Yangon Bristo Bar', 'thumb_1863799175654.jpg', '', 'Yangon Yangon Bristo Bar', '', '', 2, 2, '2016-09-22 16:19:07', '2016-09-22 16:19:07', NULL),
(69, 69, 'Koolpon', 'thumb_96608296636894.jpg', '', 'Koolpon System', '', '', 2, 2, '2016-09-27 12:57:54', '2016-09-27 12:57:54', NULL),
(70, 70, 'Pyi Thit', 'thumb_16927379621015.jpg', '', 'Pyi Thit Premium BBQ & Restaurant ', '', '', 2, 2, '2016-09-28 10:56:45', '2016-09-29 13:48:41', '2016-09-29 13:48:41'),
(71, 71, 'Pyi Thit', 'thumb_44862638121097.jpg', '', 'Pyi Thit Premium BBQ & Restaurant', '', '', 2, 2, '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(72, 72, 'Pyi Thit', 'thumb_44696311488783.jpg', '', 'Pyi Thit Premium BBQ Restaurant & SIGMA Car Servicing', '', '', 2, 2, '2016-09-29 00:38:05', '2016-09-29 00:38:05', NULL),
(73, 73, 'Green Leaf Hotel', 'thumb_96978893585793.jpg', '', 'Hotel', '', '', 2, 2, '2016-09-29 13:36:00', '2016-09-29 13:36:00', NULL),
(74, 74, 'Green Leaf Hotel ', 'thumb_4541434882297.jpg', '', 'Food & Beverage', '', '', 2, 2, '2016-10-03 14:24:10', '2016-10-03 14:24:10', NULL),
(75, 75, 'Ssuni Coffee & Dessert', 'thumb_50549476428770.jpg', '', 'Food & Drink', '', '', 2, 2, '2016-10-06 15:01:54', '2016-10-06 15:01:54', NULL),
(76, 76, 'Mar''s Cafe & Restaurant', 'thumb_89495468703034.jpg', '', 'Food & Drink', '', '', 2, 2, '2016-10-07 11:35:27', '2016-10-07 11:35:27', NULL),
(77, 77, 'Yangon Hair and Beauty Center', 'thumb_66554652060744.jpg', '', 'Beauty Spa', '', '', 2, 2, '2016-10-08 23:20:40', '2016-10-08 23:20:40', NULL),
(78, 78, 'Thai Yai Hair & Beauty Spa', 'thumb_95650691222372.jpg', '', 'Beauty Spa', '', '', 2, 2, '2016-10-09 23:48:47', '2016-10-09 23:48:47', NULL),
(79, 79, 'Gekko Restaurant Yangon', 'thumb_77043973584194.jpg', '', 'Restaurant', '', '', 2, 2, '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(80, 80, 'August Drinks & Fried Chicken', 'thumb_9777597516036.jpg', '', 'Restaurant', '', '', 2, 2, '2016-10-13 11:50:12', '2016-10-13 11:50:12', NULL),
(81, 81, 'Vape City Myanmar', 'thumb_36128267589845.jpg', '', 'E-Cigarettes', '', '', 2, 2, '2016-10-17 10:41:02', '2016-10-17 10:41:02', NULL),
(82, 82, 'El Dorado', 'thumb_62218116309091.jpg', '', 'Travel and Tour', '', '', 2, 2, '2016-10-27 10:49:31', '2016-10-27 10:49:31', NULL),
(83, 83, 'TK House', 'thumb_98858995859291.jpg', '', 'ေမြးေန႔ပြဲေတြ...ခ်စ္သူရည္းစားေတြရဲ႕ ႏွစ္ပတ္လည္ပြဲေတြ နဲ႔တျခား မိတ္ဆံုစားပြဲေတြကို ဘယ္မွာ က်င္းပရမလဲ......... မသိျဖစ္ေနပါသလား ? TK House BBQ၊ Restaurant & Family KTV နဲ႔မိတ္ဆက္ေပးခ်င္ပါတယ္။   Fri -  Sat - Sun Special package အတြက္ Daily 10:00 Am to 3:00 Pm အတြင္းလာေရာက္ သူေတြကို 3 section + 1 section free ရရွိႏိုင္မွာျဖစ္ပါတယ္။ Mon to Thurs Special hour ( Date & Time limited ) package အတြက္ 3:00 Pm မွ ဆိုင္ပိတ္သည့္အခ်ိန္ 11:00 Pm အထိ 2 section + 1 section free ရရွိႏိုင္မွာျဖစ္ပါတယ္။ Double bonus ( Date & Time limited ) 1 section for 1 section free, 2 section for 2 section free, 3 section for 3 section free, 4 section for 4 section free အစရွိသည္ျဖင့္ အထူးေကာင္းမြန္တဲ့အခြင့္အေရး ေတြရွိမွာ ျဖစ္တဲ့အတြက္ အခုပဲ Koolpon မွာ discount coupon ကုိ အရယူျပီး လွမ္းလာခဲ့ပါ။', '', '', 2, 2, '2016-10-28 15:08:07', '2016-11-30 11:15:06', NULL),
(84, 84, 'Melody World', 'thumb_72494391472731.jpg', '', 'Melody World at MCC', '', '', 2, 2, '2016-10-31 12:51:14', '2016-10-31 12:51:14', NULL),
(85, 85, 'Acacia Tea Salon & Fine Dining Restaurant', 'thumb_2589527438549.jpg', '', 'Birthday Party, Wedding Engagement & Business meeting ေတြျပဳလုပ္ လိုပါသလား? Acacia Tea Salon & Fine Dining Restaurant မွ ေကာင္းမြန္ေသာ အစားအေသာက္မ်ားျဖင့္ ေစ်းႏႈန္းသက္သာစြာ တည့္ခင္းဧည့္ခံႏိုင္ဖို႔ Acacia မွ လူၾကီးမင္းတို႔အတြက္ Event Function Package 10% off / Acacia food benifit 5 % off ကို Koolpon မွာ အရယူျပီး လွမ္းလာခဲ့ပါ။', '', '', 2, 2, '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(86, 86, 'Meringue Café', 'thumb_69077985184864.jpg', '', 'ေကာင္းမြန္တဲ႔ coffee အရသာကို ထိေတြ႕ခံစားႏိုင္ေစဖို႔ Meringue Cafe ႏွင့္ မိတ္ဆက္ေပးပါရေစ။ ေမႊးပ်ံ႕တဲ့ ေကာ္ဖီ အရသာကို အျပည့္အ၀ ခံစားႏုိင္မွာ ျဖစ္ျပီး ဆိုင္ေလးကလည္း တိတ္ဆိတ္ျငိမ္သက္တဲ့အတြက္ သင့္ကို စိတ္ေက်နပ္မႈ အျပည့္အ၀ ေပးႏိုင္ပါတယ္ ။ Meringue Cafe မွ ေကာ္ဖီႏွင့္ မုန္႔မ်ားကို Total bill တြင္ 5 % discount ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ သံုးေဆာင္ႏိုင္ဖို႔ အတြက္ အခုပဲ Koolpon မွ discount ကူပြန္ယူျပီး လွမ္းလာခဲ့လုိက္ပါ။', '', '', 2, 2, '2016-11-08 09:08:28', '2016-11-25 10:26:39', NULL),
(87, 87, 'Fish & Co', 'thumb_7733167488463.jpg', '', 'Sea food ေကာင္းေကာင္းမွ ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ Fish & Co Restaurant နဲ႔ မိတ္ဆက္ေပးပါရေစ။  သန္႕ရွင္းလတ္ဆတ္ျပီး အမ်ိဳးအမယ္ စံုလင္လွတဲ႔ Sea food ေတြကို တစ္ေနရာထဲမွာ စားႏိုင္မွာ ျဖစ္ျပီး အရသာ မွာလည္း သူမတူေအာင္ ေကာင္းလြန္းတာေၾကာင့္ အၾကိဳက္ေတြ႕သြားေစမွာ အေသအခ်ာ ပါပဲ။  အရသာ ရွိတဲ႔ sea food ေတြကို ေစ်းႏႈန္း သက္သာစြာ စားႏိုင္ဖို႔ အခုပဲ KOOLPON မွာ discount ကူပြန္ကို  အရယူျပီး လွမ္းလာခဲ႔ပါ။', '', '', 2, 2, '2016-11-10 16:29:34', '2016-11-25 10:23:46', NULL),
(88, 88, 'FUKAGAWA', 'thumb_21690515978762.jpg', '', 'ရန္ကုန္ျမိဳ႕ က်ိဳက္ေခါက္ ဘုရားလမ္း Star City Residence Compound အတြင္းမွာ တည္ရွိတဲ႔ FUKAGAWA Japanese Style Grill Restaurant နဲ႔မိတ္ဆက္ေပးပါရေစ။ Free Wifi, Private room, Car Parking ရွိျခင္းေၾကာင့္ စိတ္ေက်နပ္မႈ အျပည့္အ၀ ရရွိေစ ႏိုင္မွာ ျဖစ္ျပီး စြဲမက္ လွ်ာလည္ သြားေစမယ့္ အရသာ၊ သန္႔ရွင္းျပီး  fresh ျဖစ္တဲ့ ဂ်ပန္ အစားအစာ မ်ားကို သက္သာေသာ ေစ်းႏႈန္းနဲ႔ စားသံုးႏိုင္ဖို႔အတြက္  အခုပဲ KOOLPON မွာ disconunt ကူပြန္ေလးယူျပီး အေရာက္လာခဲ့ဖို႔ ဖိတ္ေခၚပါရေစ။', '', '', 2, 2, '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(89, 89, 'EDO ZUSHI', 'thumb_84378002792114.jpg', '', 'ဂ်ပန္ အစားအစာ ေကာင္းေကာင္း ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ သန္႔ရွင္းလတ္ဆတ္ျပီး  အရသာထူးကဲေကာင္းမြန္ေသာ EDO ZUSHI JAPANESE Restaurant နဲ႔ မိတ္ဆက္ ေပးပါရေစ။ Private   room မ်ား၊ Car Park lots မ်ားႏွင့္ Wifi free သံုးရင္း အရသာရွိတဲ႕ ဂ်ပန္ အစားအေသာက္မ်ားကို သက္သာေသာ Discount ေစ်းႏႈန္းမ်ားျဖင့္ စားသံုးႏိုင္ရန္ KOOLPON မွ Discount ကူပြန္ကို အခုပဲရယူျပီး အေရာက္လာခဲ့ပါ။', '', '', 2, 2, '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(90, 90, 'BULGOGI BROTHERS', 'thumb_67224408970254.jpg', '', 'Koolpon Digital Discount ေပးျခင္း', '', '', 2, 2, '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(91, 91, 'Hacked By Xaveroz_Tersakiti', 'thumb_83642619444179.jpg', '', 'Hacked By Xaveroz_Tersakiti\r\n\r\n#OPMyanmar\r\n\r\nGreetz:| GrenXPaRTa - r00tkit404 - Jilan404 - Arthiz Cyber - Indonesia Defacer Tersakiti - DiffMuRis - MLC7 - MalaysiaGov - Abrasax1337 - ./MR.ROB0T - fcod3x - Jiwa Tersesat - 0x1958 - Gboys_Flush CyberGhost.17 - Mr.Vendeta_404 - ZakirDotID |', 'https://www.koolpon.com.mm', '', 1, 2, '2016-11-22 13:27:32', '2016-11-22 13:27:32', '2016-11-22 13:30:59'),
(92, 92, 'Hacked By Xaveroz_Tersakiti', 'thumb_32414642479311.jpg', '', 'Hacked By Xaveroz_Tersakiti\r\n\r\n#OPMyanmar\r\n\r\nGreetz:\r\n\r\n| GrenXPaRTa - r00tkit404 - Jilan404 - Arthiz Cyber - Indonesia Defacer Tersakiti - DiffMuRis - MLC7 - MalaysiaGov - Abrasax1337 - ./MR.ROB0T - fcod3x - Jiwa Tersesat - 0x1958 - Gboys_Flush CyberGhost.17 - Mr.Vendeta_404 - ZakirDotID |', 'https://www.koolpon.com.mm', '', 1, 2, '2016-11-22 13:30:59', '2016-11-22 13:30:59', '2016-11-22 13:30:59'),
(93, 93, 'ren bussines', 'thumb_8587789403184.jpg', '', 'welcome', 'RENteam.cf', '', 1, 2, '2016-11-27 19:40:26', '2016-11-27 19:40:26', NULL),
(94, 94, 'PastaMania', 'thumb_49260957683882.jpg', '', 'ေကာင္းမြန္တဲ့အရသာရွိျပီး သန္႔ရွင္းလတ္ဆတ္တဲ့ Italy အစားအစာ ေတြကို မွ ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ PastaMania Italian restaurant ေလးနဲ႔ မိတ္ဆက္ေပး ပါရေစ။ အီတလီ အစားအစာ အမ်ိဳးအမယ္ စံုလင္စြာ ကို တစ္ေနရာထဲမွာ စိတ္တိုင္းက် total bill 15% off ျဖင့္ ေစ်းႏႈန္း သက္သာစြာ စားသံုးႏုိင္ဖို႔ အခုပဲ Koolpon မွာ discount ကူပြန္ကို အရယူျပီး လွမ္းလာခဲ့ပါ။', '', '', 2, 2, '2016-11-30 11:48:28', '2016-11-30 15:05:17', NULL),
(95, 95, 'BULGOGI BROTHERS', 'thumb_99595125608423.jpg', '', 'Korea အစားအစာ ေကာင္းေကာင္းမွ စားခ်င္သူေတြအတြက္ Bulgogi Brothers Korean BBQ Restaurant နဲ႔မိတ္ဆက္ေပးခ်င္ပါတယ္။ ေမြးေန႔ပြဲ၊ မိတ္ဆံုစားပြဲ၊ meetingမ်ားလည္းျပဳလုပ္ႏုိင္ျပီးလာေရာက္စားသံုးသူတိုင္း ကို total bill တြင္ 10% off (including  tax) ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏိုင္ဖို႔ အခုပဲ Koolpon  မွာ  discount ကူပြန္ယူျပီး အေရာက္လာခဲ့ပါ။', '', '', 2, 2, '2016-11-30 16:53:06', '2016-11-30 18:03:11', NULL),
(96, 96, 'MYANMA TOENAYAR (Travel & Tours)', 'thumb_71982565790762.jpg', '', 'Myanma Toenayar Travel & Tours မွ လူၾကီးမင္းတို႔ အတြက္ ရန္ကုန္ -  တာခ်ီလိတ္၊ ရန္ကုန္ - ျမစ္ၾကီးနား ခရီးစဥ္ အတြက္ Koolpon မွ discount ကူပြန္ 3000 Kyats off ကို အရယူျပီး ေစ်းႏႈန္းသက္သာစြာ  ျဖင့္၀ယ္ယူႏိုင္ျပီျဖစ္ ေၾကာင္း သတင္းေကာင္းပါးအပ္ပါတယ္။  ', '', '', 2, 2, '2016-11-30 17:40:26', '2016-12-01 15:19:01', NULL),
(97, 97, 'Jasmine Palace Hotel', 'thumb_10608465512757.jpg', '', 'အစား အေသာက္ ေကာင္းေကာင္းေတြကိုမွ ရွာေဖြေနသူေတြအတြက္ Jasmine Palace Hotel မွာ ရွိတဲ႔ Empress Restaurant နဲ႔ မိတ္ဆက္ေပးခ်င္ပါတယ္။ Chinese food, Asian food, Grill, Pizza, Pub & Bar နဲ႔ Cafe စသည္ျဖင့္ အမ်ိဳးအစားစံုလင္စြာ ကို တစ္ေနရာတည္းမွာ ရရွိခံစားႏုိင္မွာ ျဖစ္တဲ႔အတြက္ total bill တြင္ 25% off ျဖင့္ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏုိင္ဖို႔ Koolpon မွာ discount ကူပြန္ကို အရယူျပီးအခုပဲ လွမ္းလာခဲ့ပါ။', '', '', 2, 2, '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Business_Group`
--

CREATE TABLE IF NOT EXISTS `Business_Group` (
  `id` int(10) unsigned NOT NULL,
  `owner_id` int(11) NOT NULL COMMENT 'id from Merchant',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'merchant name',
  `logo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Business_Group`
--

INSERT INTO `Business_Group` (`id`, `owner_id`, `name`, `logo`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 0, 'Jasper House', NULL, '-', '2016-08-26 18:05:13', '2016-09-01 11:58:43', NULL),
(4, 0, 'Little Korea Barbecue', NULL, '-', '2016-08-26 18:19:22', '2016-08-31 10:25:27', NULL),
(5, 0, 'Goya Sky Bar @ Hotel Esperado', NULL, 'Bar & Restaurant', '2016-08-26 18:24:21', '2016-09-01 12:01:42', NULL),
(6, 0, 'HOT SPOT BBQ AND HOT POT ', NULL, '-', '2016-08-26 18:29:51', '2016-09-28 18:10:50', NULL),
(7, 0, 'DIY Hot Pot and BBQ', NULL, '-', '2016-08-26 18:51:47', '2016-09-07 17:02:10', NULL),
(8, 0, 'Thai 47 Bristo & Bar', NULL, '-', '2016-08-27 14:41:55', '2016-09-01 12:07:07', NULL),
(9, 0, 'Amazing Thai Food', NULL, '-', '2016-08-27 14:46:20', '2016-09-01 11:30:07', NULL),
(10, 0, 'Padonmar Restaurant ', NULL, 'သန္႔ရွင္းလတ္ဆတ္ျပီး အရသာရွိလွတဲ႔ ျမန္မာ ၊ ထိုင္း အစားအစာ ေကာင္းေကာင္းကိုမွ ၾကိဳက္ႏွစ္သက္သူ  ေတြအတြက္ Padonmar Fine Dining Myanmar & Thai Cuisine Restaurant နဲ႔ မိတ္ဆက္ေပးပါရေစ။ သင္ၾကိဳက္ႏွစ္သက္တဲ့အစားအစာမ်ားကို ထူးကဲေကာင္းမြန္ေသာ ၀န္ေဆာင္မႈ နဲ႔ အတူ သင့္အေနနဲ႔ သူမတူေအာင္ ေကာင္းမြန္ တဲ့အရသာ ကို ရရွိခံစားမိေစမွာ အေသအခ်ာပါပဲ။ အရသာရွိလွတဲ႕ အစားအစာ ေတြကို total bill တြင္ 10 % discount ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏိုင္ဖို႔ အခုပဲ Koolpon မွ discount ကူပြန္ကို အရယူျပီး လွမ္းလာခဲ့ပါ။ ', '2016-08-27 15:05:21', '2016-11-30 14:34:37', NULL),
(11, 0, 'February Six Restaurant', NULL, '-', '2016-08-27 15:39:59', '2016-09-28 17:43:09', NULL),
(12, 0, 'Cafe'' Paradise', NULL, '-', '2016-08-27 15:51:26', '2016-09-28 18:10:02', NULL),
(13, 0, 'Sunny Holiday Hotel', NULL, '-', '2016-08-27 16:57:06', '2016-09-01 11:41:07', NULL),
(14, 0, 'Grand Laurel Hotel', NULL, '-', '2016-08-29 11:15:36', '2016-09-01 11:49:06', NULL),
(16, 0, 'Golden Park Spa Land', NULL, '-', '2016-08-30 09:47:54', '2016-08-31 10:04:21', NULL),
(17, 0, 'Hera Spa', NULL, '-', '2016-08-30 10:47:33', '2016-09-01 12:09:19', NULL),
(19, 0, 'John Dee''s Western Restuarant', NULL, '-', '2016-08-30 13:22:15', '2016-09-01 12:11:48', NULL),
(20, 0, 'Dining Fukurou', NULL, '-', '2016-08-30 13:28:52', '2016-09-28 18:12:10', NULL),
(21, 0, 'B2O Roof and Cafe'' 20', NULL, '-', '2016-08-30 13:43:31', '2016-09-28 18:13:04', NULL),
(22, 0, 'Orianna 24', NULL, '-', '2016-08-30 21:06:08', '2016-09-28 18:11:29', NULL),
(24, 0, 'CHARM 66', NULL, '-', '2016-08-30 21:15:55', '2016-09-01 12:18:45', NULL),
(25, 0, 'Secret Recipe', NULL, '-', '2016-08-30 21:23:27', '2016-09-01 14:17:22', NULL),
(26, 0, 'Kamakura Marina', NULL, '-', '2016-08-30 21:30:31', '2016-08-31 13:30:59', NULL),
(27, 0, 'Vista Bar', NULL, 'Bar & Pub', '2016-08-31 01:12:14', '2016-09-01 14:20:47', NULL),
(28, 0, 'Fuse', NULL, 'DJ Bar', '2016-08-31 01:24:03', '2016-09-01 14:25:35', NULL),
(29, 0, 'YKKO @ South Race Course Branch', NULL, 'Kyay-Oh & BBQ', '2016-08-31 01:47:21', '2016-08-31 01:52:31', NULL),
(42, 0, 'Gakken Math School', NULL, 'Education Centre', '2016-08-31 02:22:41', '2016-08-31 02:22:41', NULL),
(43, 0, 'Cafe''20', NULL, 'Cafe'' & Bar', '2016-08-31 02:32:58', '2016-08-31 02:32:58', NULL),
(44, 0, 'Gakken Math', NULL, 'Education Centre', '2016-08-31 02:37:50', '2016-08-31 02:45:51', NULL),
(45, 0, 'Rangoon Grill & Chill', NULL, 'BBQ', '2016-08-31 02:54:14', '2016-09-28 18:14:06', NULL),
(47, 0, 'Kohaku Japanese Restaurant @ Chatrium Hotel Royal Lake Yangon', NULL, 'Japanese Restaurant', '2016-08-31 03:08:29', '2016-08-31 03:10:57', NULL),
(49, 0, 'Tiger Hill Chinese Restaurant @ Chatrium Hotel Royal Lake Yangon', NULL, 'Chinese Restaurant', '2016-08-31 03:18:16', '2016-08-31 03:18:16', NULL),
(51, 0, 'Epic Bar & Restaurant', NULL, '-', '2016-08-31 13:50:13', '2016-09-08 11:34:10', NULL),
(52, 0, 'Steam Boat Hot Pot', NULL, '-', '2016-08-31 14:47:53', '2016-09-28 18:14:49', NULL),
(53, 0, 'Chatrium Hotel Royal Lake Yangon', NULL, '-', '2016-08-31 17:00:55', '2016-08-31 17:00:55', NULL),
(55, 0, 'Spa @ Hotel Esperado', NULL, 'Spa', '2016-09-01 01:04:09', '2016-09-01 02:03:04', NULL),
(56, 0, 'Linkage Training Restaurant', NULL, 'Linkage Restaurant is a social project as well as a link to Forever Humanitarian & Development Projects, a volunteer group founded in 2010. It is a pretty corner in crowded downtown of Yangon, Myanmar where you can enjoy a great collection of Myanmar Fine Art (paintings) and delicious food prepared and served by enthusiastic young adolescents with dignity!', '2016-09-01 10:37:09', '2016-09-01 10:37:09', NULL),
(57, 0, 'Hotel 7 Mile ', NULL, '-', '2016-09-01 16:06:16', '2016-09-01 16:06:16', NULL),
(58, 0, 'Golden Butterfly Hotel Yangon', NULL, 'Hotel', '2016-09-01 16:50:34', '2016-09-01 16:50:34', NULL),
(60, 0, 'ACE Inspiration ', NULL, 'Professional Development Center', '2016-09-01 16:56:58', '2016-09-28 10:03:17', NULL),
(61, 0, 'Hotel 7 Mile', NULL, '-', '2016-09-01 17:18:49', '2016-09-01 17:18:49', NULL),
(62, 0, 'Grand Laurel Hotel', NULL, '-', '2016-09-01 20:24:34', '2016-09-01 20:35:57', NULL),
(63, 0, 'Spice Brasserie International Restaurant', NULL, 'Spice Brasserie International Restaurant @PARKROYAL Yangon', '2016-09-01 20:52:39', '2016-09-01 20:52:39', NULL),
(64, 0, 'Dr.Fish', NULL, 'Fish Spa & Foot Care', '2016-09-14 10:28:08', '2016-09-14 10:49:43', NULL),
(65, 0, 'Hera Spa by Ko Ko', NULL, 'Spa', '2016-09-14 12:10:02', '2016-09-14 12:10:02', NULL),
(66, 0, 'Nexus English Language Learning Centre', NULL, 'Education', '2016-09-16 18:06:54', '2016-09-16 18:12:54', NULL),
(67, 0, 'Siam Thai Cusine', NULL, 'Food & Drink', '2016-09-20 16:43:09', '2016-09-20 16:49:37', NULL),
(68, 0, 'Yangon Yangon Bristo Bar', NULL, 'Yangon Yangon Bristo Bar', '2016-09-22 16:19:07', '2016-09-22 16:19:07', NULL),
(69, 0, 'Koolpon', NULL, 'Koolpon System', '2016-09-27 12:57:54', '2016-09-27 12:57:54', NULL),
(70, 0, 'Pyi Thit', NULL, 'Pyi Thit Premium BBQ & Restaurant ', '2016-09-28 10:56:45', '2016-09-29 13:48:41', '2016-09-29 13:48:41'),
(71, 0, 'Pyi Thit', NULL, 'Pyi Thit Premium BBQ & Restaurant', '2016-09-28 13:08:58', '2016-09-28 22:49:55', NULL),
(72, 0, 'Pyi Thit', NULL, 'Pyi Thit Premium BBQ Restaurant & SIGMA Car Servicing', '2016-09-29 00:38:05', '2016-09-29 00:38:05', NULL),
(73, 0, 'Green Leaf Hotel', NULL, 'Hotel', '2016-09-29 13:36:00', '2016-09-29 13:36:00', NULL),
(74, 0, 'Green Leaf Hotel ', NULL, 'Food & Beverage', '2016-10-03 14:24:10', '2016-10-03 14:24:10', NULL),
(75, 0, 'Ssuni Coffee & Dessert', NULL, 'Food & Drink', '2016-10-06 15:01:54', '2016-10-06 15:01:54', NULL),
(76, 0, 'Mar''s Cafe & Restaurant', NULL, 'Food & Drink', '2016-10-07 11:35:27', '2016-10-07 11:35:27', NULL),
(77, 0, 'Yangon Hair and Beauty Center', NULL, 'Beauty Spa', '2016-10-08 23:20:40', '2016-10-08 23:20:40', NULL),
(78, 0, 'Thai Yai Hair & Beauty Spa', NULL, 'Beauty Spa', '2016-10-09 23:48:47', '2016-10-09 23:48:47', NULL),
(79, 0, 'Gekko Restaurant Yangon', NULL, 'Restaurant', '2016-10-12 18:13:24', '2016-10-12 18:13:24', NULL),
(80, 0, 'August Drinks & Fried Chicken', NULL, 'Restaurant', '2016-10-13 11:50:12', '2016-10-13 11:50:12', NULL),
(81, 0, 'Vape City Myanmar', NULL, 'E-Cigarettes', '2016-10-17 10:41:02', '2016-10-17 10:41:02', NULL),
(82, 0, 'El Dorado', NULL, 'Travel and Tour', '2016-10-27 10:49:31', '2016-10-27 10:49:31', NULL),
(83, 0, 'TK House', NULL, 'ေမြးေန႔ပြဲေတြ...ခ်စ္သူရည္းစားေတြရဲ႕ ႏွစ္ပတ္လည္ပြဲေတြ နဲ႔တျခား မိတ္ဆံုစားပြဲေတြကို ဘယ္မွာ က်င္းပရမလဲ......... မသိျဖစ္ေနပါသလား ? TK House BBQ၊ Restaurant & Family KTV နဲ႔မိတ္ဆက္ေပးခ်င္ပါတယ္။   Fri -  Sat - Sun Special package အတြက္ Daily 10:00 Am to 3:00 Pm အတြင္းလာေရာက္ သူေတြကို 3 section + 1 section free ရရွိႏိုင္မွာျဖစ္ပါတယ္။ Mon to Thurs Special hour ( Date & Time limited ) package အတြက္ 3:00 Pm မွ ဆိုင္ပိတ္သည့္အခ်ိန္ 11:00 Pm အထိ 2 section + 1 section free ရရွိႏိုင္မွာျဖစ္ပါတယ္။ Double bonus ( Date & Time limited ) 1 section for 1 section free, 2 section for 2 section free, 3 section for 3 section free, 4 section for 4 section free အစရွိသည္ျဖင့္ အထူးေကာင္းမြန္တဲ့အခြင့္အေရး ေတြရွိမွာ ျဖစ္တဲ့အတြက္ အခုပဲ Koolpon မွာ discount coupon ကုိ အရယူျပီး လွမ္းလာခဲ့ပါ။', '2016-10-28 15:08:07', '2016-11-30 11:15:06', NULL),
(84, 0, 'Melody World', NULL, 'Melody World at MCC', '2016-10-31 12:51:14', '2016-10-31 12:51:14', NULL),
(85, 0, 'Acacia Tea Salon & Fine Dining Restaurant', NULL, 'Birthday Party, Wedding Engagement & Business meeting ေတြျပဳလုပ္ လိုပါသလား? Acacia Tea Salon & Fine Dining Restaurant မွ ေကာင္းမြန္ေသာ အစားအေသာက္မ်ားျဖင့္ ေစ်းႏႈန္းသက္သာစြာ တည့္ခင္းဧည့္ခံႏိုင္ဖို႔ Acacia မွ လူၾကီးမင္းတို႔အတြက္ Event Function Package 10% off / Acacia food benifit 5 % off ကို Koolpon မွာ အရယူျပီး လွမ္းလာခဲ့ပါ။', '2016-11-01 23:39:45', '2016-11-28 10:16:17', NULL),
(86, 0, 'Meringue Café', NULL, 'ေကာင္းမြန္တဲ႔ coffee အရသာကို ထိေတြ႕ခံစားႏိုင္ေစဖို႔ Meringue Cafe ႏွင့္ မိတ္ဆက္ေပးပါရေစ။ ေမႊးပ်ံ႕တဲ့ ေကာ္ဖီ အရသာကို အျပည့္အ၀ ခံစားႏုိင္မွာ ျဖစ္ျပီး ဆိုင္ေလးကလည္း တိတ္ဆိတ္ျငိမ္သက္တဲ့အတြက္ သင့္ကို စိတ္ေက်နပ္မႈ အျပည့္အ၀ ေပးႏိုင္ပါတယ္ ။ Meringue Cafe မွ ေကာ္ဖီႏွင့္ မုန္႔မ်ားကို Total bill တြင္ 5 % discount ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ သံုးေဆာင္ႏိုင္ဖို႔ အတြက္ အခုပဲ Koolpon မွ discount ကူပြန္ယူျပီး လွမ္းလာခဲ့လုိက္ပါ။', '2016-11-08 09:08:28', '2016-11-25 10:26:39', NULL),
(87, 0, 'Fish & Co', NULL, 'Sea food ေကာင္းေကာင္းမွ ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ Fish & Co Restaurant နဲ႔ မိတ္ဆက္ေပးပါရေစ။  သန္႕ရွင္းလတ္ဆတ္ျပီး အမ်ိဳးအမယ္ စံုလင္လွတဲ႔ Sea food ေတြကို တစ္ေနရာထဲမွာ စားႏိုင္မွာ ျဖစ္ျပီး အရသာ မွာလည္း သူမတူေအာင္ ေကာင္းလြန္းတာေၾကာင့္ အၾကိဳက္ေတြ႕သြားေစမွာ အေသအခ်ာ ပါပဲ။  အရသာ ရွိတဲ႔ sea food ေတြကို ေစ်းႏႈန္း သက္သာစြာ စားႏိုင္ဖို႔ အခုပဲ KOOLPON မွာ discount ကူပြန္ကို  အရယူျပီး လွမ္းလာခဲ႔ပါ။', '2016-11-10 16:29:34', '2016-11-25 10:23:46', NULL),
(88, 0, 'FUKAGAWA', NULL, 'ရန္ကုန္ျမိဳ႕ က်ိဳက္ေခါက္ ဘုရားလမ္း Star City Residence Compound အတြင္းမွာ တည္ရွိတဲ႔ FUKAGAWA Japanese Style Grill Restaurant နဲ႔မိတ္ဆက္ေပးပါရေစ။ Free Wifi, Private room, Car Parking ရွိျခင္းေၾကာင့္ စိတ္ေက်နပ္မႈ အျပည့္အ၀ ရရွိေစ ႏိုင္မွာ ျဖစ္ျပီး စြဲမက္ လွ်ာလည္ သြားေစမယ့္ အရသာ၊ သန္႔ရွင္းျပီး  fresh ျဖစ္တဲ့ ဂ်ပန္ အစားအစာ မ်ားကို သက္သာေသာ ေစ်းႏႈန္းနဲ႔ စားသံုးႏိုင္ဖို႔အတြက္  အခုပဲ KOOLPON မွာ disconunt ကူပြန္ေလးယူျပီး အေရာက္လာခဲ့ဖို႔ ဖိတ္ေခၚပါရေစ။', '2016-11-18 11:08:34', '2016-11-23 16:43:17', NULL),
(89, 0, 'EDO ZUSHI', NULL, 'ဂ်ပန္ အစားအစာ ေကာင္းေကာင္း ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ သန္႔ရွင္းလတ္ဆတ္ျပီး  အရသာထူးကဲေကာင္းမြန္ေသာ EDO ZUSHI JAPANESE Restaurant နဲ႔ မိတ္ဆက္ ေပးပါရေစ။ Private   room မ်ား၊ Car Park lots မ်ားႏွင့္ Wifi free သံုးရင္း အရသာရွိတဲ႕ ဂ်ပန္ အစားအေသာက္မ်ားကို သက္သာေသာ Discount ေစ်းႏႈန္းမ်ားျဖင့္ စားသံုးႏိုင္ရန္ KOOLPON မွ Discount ကူပြန္ကို အခုပဲရယူျပီး အေရာက္လာခဲ့ပါ။', '2016-11-18 13:56:06', '2016-11-21 18:07:10', NULL),
(90, 0, 'BULGOGI BROTHERS', NULL, 'Koolpon Digital Discount ေပးျခင္း', '2016-11-22 09:37:32', '2016-11-22 09:57:18', NULL),
(91, 0, 'Hacked By Xaveroz_Tersakiti', NULL, 'Hacked By Xaveroz_Tersakiti\r\n\r\n#OPMyanmar\r\n\r\nGreetz:| GrenXPaRTa - r00tkit404 - Jilan404 - Arthiz Cyber - Indonesia Defacer Tersakiti - DiffMuRis - MLC7 - MalaysiaGov - Abrasax1337 - ./MR.ROB0T - fcod3x - Jiwa Tersesat - 0x1958 - Gboys_Flush CyberGhost.17 - Mr.Vendeta_404 - ZakirDotID |', '2016-11-22 13:27:32', '2016-11-22 13:27:32', NULL),
(92, 0, 'Hacked By Xaveroz_Tersakiti', NULL, 'Hacked By Xaveroz_Tersakiti\r\n\r\n#OPMyanmar\r\n\r\nGreetz:\r\n\r\n| GrenXPaRTa - r00tkit404 - Jilan404 - Arthiz Cyber - Indonesia Defacer Tersakiti - DiffMuRis - MLC7 - MalaysiaGov - Abrasax1337 - ./MR.ROB0T - fcod3x - Jiwa Tersesat - 0x1958 - Gboys_Flush CyberGhost.17 - Mr.Vendeta_404 - ZakirDotID |', '2016-11-22 13:30:59', '2016-11-22 13:30:59', NULL),
(93, 0, 'ren bussines', NULL, 'welcome', '2016-11-27 19:40:26', '2016-11-27 19:40:26', NULL),
(94, 0, 'PastaMania', NULL, 'ေကာင္းမြန္တဲ့အရသာရွိျပီး သန္႔ရွင္းလတ္ဆတ္တဲ့ Italy အစားအစာ ေတြကို မွ ၾကိဳက္ႏွစ္သက္သူေတြအတြက္ PastaMania Italian restaurant ေလးနဲ႔ မိတ္ဆက္ေပး ပါရေစ။ အီတလီ အစားအစာ အမ်ိဳးအမယ္ စံုလင္စြာ ကို တစ္ေနရာထဲမွာ စိတ္တိုင္းက် total bill 15% off ျဖင့္ ေစ်းႏႈန္း သက္သာစြာ စားသံုးႏုိင္ဖို႔ အခုပဲ Koolpon မွာ discount ကူပြန္ကို အရယူျပီး လွမ္းလာခဲ့ပါ။', '2016-11-30 11:48:28', '2016-11-30 15:05:17', NULL),
(95, 0, 'BULGOGI BROTHERS', NULL, 'Korea အစားအစာ ေကာင္းေကာင္းမွ စားခ်င္သူေတြအတြက္ Bulgogi Brothers Korean BBQ Restaurant နဲ႔မိတ္ဆက္ေပးခ်င္ပါတယ္။ ေမြးေန႔ပြဲ၊ မိတ္ဆံုစားပြဲ၊ meetingမ်ားလည္းျပဳလုပ္ႏုိင္ျပီးလာေရာက္စားသံုးသူတိုင္း ကို total bill တြင္ 10% off (including  tax) ျဖင့္ ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏိုင္ဖို႔ အခုပဲ Koolpon  မွာ  discount ကူပြန္ယူျပီး အေရာက္လာခဲ့ပါ။', '2016-11-30 16:53:06', '2016-11-30 18:03:11', NULL),
(96, 0, 'MYANMA TOENAYAR (Travel & Tours)', NULL, 'Myanma Toenayar Travel & Tours မွ လူၾကီးမင္းတို႔ အတြက္ ရန္ကုန္ -  တာခ်ီလိတ္၊ ရန္ကုန္ - ျမစ္ၾကီးနား ခရီးစဥ္ အတြက္ Koolpon မွ discount ကူပြန္ 3000 Kyats off ကို အရယူျပီး ေစ်းႏႈန္းသက္သာစြာ  ျဖင့္၀ယ္ယူႏိုင္ျပီျဖစ္ ေၾကာင္း သတင္းေကာင္းပါးအပ္ပါတယ္။  ', '2016-11-30 17:40:26', '2016-12-01 15:19:01', NULL),
(97, 0, 'Jasmine Palace Hotel', NULL, 'အစား အေသာက္ ေကာင္းေကာင္းေတြကိုမွ ရွာေဖြေနသူေတြအတြက္ Jasmine Palace Hotel မွာ ရွိတဲ႔ Empress Restaurant နဲ႔ မိတ္ဆက္ေပးခ်င္ပါတယ္။ Chinese food, Asian food, Grill, Pizza, Pub & Bar နဲ႔ Cafe စသည္ျဖင့္ အမ်ိဳးအစားစံုလင္စြာ ကို တစ္ေနရာတည္းမွာ ရရွိခံစားႏုိင္မွာ ျဖစ္တဲ႔အတြက္ total bill တြင္ 25% off ျဖင့္ေစ်းႏႈန္းသက္သာစြာ စားသံုးႏုိင္ဖို႔ Koolpon မွာ discount ကူပြန္ကို အရယူျပီးအခုပဲ လွမ္းလာခဲ့ပါ။', '2016-12-01 15:42:45', '2016-12-01 17:38:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Business_Type`
--

CREATE TABLE IF NOT EXISTS `Business_Type` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Business_Type`
--

INSERT INTO `Business_Type` (`id`, `name`, `description`, `image`, `mobile_image`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Food & Drink', 'for restaurant', 'thumb_89424993911706.png', 'thumb_26756852818290.png', 'foodanddrink', '2016-08-26 10:07:47', '2016-09-27 15:11:24', NULL),
(2, 'Travel & Tour', 'Travel & Tour', 'thumb_91037671377524.png', 'thumb_37825995277355.png', 'travelandtour', '2016-08-26 10:07:47', '2016-09-27 15:11:42', NULL),
(3, 'Beauty & Wellness', 'Beauty & Wellness', 'thumb_72574831976736.png', 'thumb_33518418720875.png', 'beautyandwellness', '2016-08-26 10:07:47', '2016-09-27 15:11:58', NULL),
(4, 'Others', 'Others', 'thumb_74824487823253.png', 'thumb_23492532561115.png', 'others', '2016-08-26 10:07:47', '2016-09-27 15:12:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_type_id` int(11) NOT NULL COMMENT 'restaurant or hotel or ....',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `name`, `business_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Other', 1, '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(2, 'BBQ', 1, '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(3, 'Bar', 1, '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(4, 'HotPot', 1, '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(5, 'Thai Food', 1, '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(6, 'Hotel', 2, '2016-08-27 16:52:43', '2016-08-27 16:52:43', NULL),
(7, 'Spa', 3, '2016-08-30 09:44:33', '2016-08-30 09:44:33', NULL),
(8, 'Education', 4, '2016-08-31 02:15:33', '2016-08-31 02:15:33', NULL),
(9, 'Japanese', 1, '2016-09-01 11:15:01', '2016-09-01 11:15:01', NULL),
(10, 'Chinese', 1, '2016-09-01 11:20:39', '2016-09-01 11:20:39', NULL),
(11, 'Buffet', 1, '2016-09-01 11:20:48', '2016-09-01 11:20:48', NULL),
(12, 'Cafe'' & Bakery', 1, '2016-09-01 11:21:26', '2016-09-01 11:21:26', NULL),
(13, 'Myanmar', 1, '2016-09-01 11:24:10', '2016-09-01 11:24:10', NULL),
(14, 'Brazilian Restaurant', 1, '2016-09-01 12:16:28', '2016-09-01 12:16:28', NULL),
(15, 'Event', 4, '2016-09-22 16:10:59', '2016-09-22 16:10:59', NULL),
(16, 'Korean', 1, '2016-10-06 14:55:08', '2016-10-06 14:55:08', NULL),
(17, 'Asian', 1, '2016-10-07 11:18:46', '2016-10-07 11:18:46', NULL),
(18, 'Electronic Accessories', 4, '2016-10-17 10:35:52', '2016-10-17 10:35:52', NULL),
(19, 'Travel & Tour', 2, '2016-10-27 11:00:17', '2016-10-27 11:00:17', NULL),
(20, 'Travel & Tour', 2, '2016-10-27 11:00:17', '2016-10-27 20:30:24', '2016-10-27 20:30:24'),
(21, 'Entertainment', 4, '2016-10-28 15:18:43', '2016-10-28 15:18:43', NULL),
(22, 'European', 1, '2016-11-01 23:20:36', '2016-11-01 23:20:36', NULL),
(23, 'French', 1, '2016-11-01 23:20:49', '2016-11-01 23:20:49', NULL),
(24, 'Italian', 1, '2016-11-01 23:21:04', '2016-11-01 23:21:04', NULL),
(25, 'Middle Eastern', 1, '2016-11-01 23:21:26', '2016-11-01 23:21:26', NULL),
(26, 'Grill', 1, '2016-11-01 23:21:40', '2016-11-01 23:21:40', NULL),
(27, 'Sea Food', 1, '2016-11-01 23:21:51', '2016-11-01 23:21:51', NULL),
(28, 'Steak House', 1, '2016-11-01 23:22:08', '2016-11-01 23:22:08', NULL),
(29, 'Vegetarian', 1, '2016-11-01 23:22:25', '2016-11-01 23:22:25', NULL),
(30, 'Fast-Food', 1, '2016-11-10 16:15:05', '2016-11-10 16:15:05', NULL),
(31, 'Fast-Food', 1, '2016-11-10 16:15:10', '2016-11-10 16:15:10', NULL),
(32, 'Pizza', 1, '2016-12-01 14:12:57', '2016-12-01 14:12:57', NULL),
(33, 'Pizza', 1, '2016-12-01 14:13:11', '2016-12-01 14:13:11', NULL),
(34, 'Pub Bar', 1, '2016-12-01 14:13:29', '2016-12-01 14:13:29', NULL),
(35, 'Pub & Bar', 1, '2016-12-01 14:13:46', '2016-12-01 14:13:46', NULL),
(36, 'Cafe', 1, '2016-12-01 14:14:00', '2016-12-01 14:14:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE IF NOT EXISTS `Comments` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user_id',
  `type` smallint(6) NOT NULL COMMENT '1:restaurant 2:comment(comment of comment)',
  `type_id` int(11) NOT NULL COMMENT 'type=1:restaurant_id type=2:comment_id]',
  `comment` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'comments',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Comments`
--

INSERT INTO `Comments` (`id`, `user_id`, `type`, `type_id`, `comment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3', 4, 1, 'good!\r\n', '2016-08-26 12:25:43', '2016-08-26 12:25:43', NULL),
(2, '3', 4, 1, 'good!\r\n', '2016-08-26 12:25:50', '2016-08-26 12:25:50', NULL),
(3, '3', 4, 1, 'good!\r\n', '2016-08-26 12:25:51', '2016-08-26 12:25:51', NULL),
(4, '3', 4, 1, 'good!\r\n', '2016-08-26 12:25:51', '2016-08-26 12:25:51', NULL),
(5, '3', 4, 1, 'good!\r\n', '2016-08-26 12:25:52', '2016-08-26 12:25:52', NULL),
(6, '3', 4, 1, 'nice!!', '2016-08-26 17:52:30', '2016-08-26 17:52:30', NULL),
(7, '20', 2, 1, 'Nice!', '2016-08-31 11:00:15', '2016-08-31 11:00:15', NULL),
(8, '20', 1, 3, 'Beautiful Restaurant', '2016-08-31 15:25:05', '2016-08-31 15:25:05', NULL),
(9, '86', 1, 11, 'Yummy!', '2016-08-31 17:41:30', '2016-08-31 17:41:30', NULL),
(10, '86', 1, 52, 'Nice Appearance\r\n', '2016-08-31 19:42:19', '2016-08-31 19:42:19', NULL),
(11, '93', 2, 6, 'Good !', '2016-08-31 19:51:35', '2016-08-31 19:51:35', NULL),
(12, '93', 1, 4, 'Good!', '2016-08-31 20:13:04', '2016-08-31 20:13:04', NULL),
(13, '20', 4, 2, 'so good!', '2016-09-01 14:00:38', '2016-09-01 14:00:38', NULL),
(14, '20', 3, 2, 'Thank for promotion!', '2016-09-01 14:01:19', '2016-09-01 14:01:19', NULL),
(15, '134', 1, 6, 'Good', '2016-09-01 22:09:22', '2016-09-01 22:09:22', NULL),
(16, '587', 1, 45, 'nice', '2016-09-06 12:57:33', '2016-09-06 12:57:33', NULL),
(17, '587', 1, 45, 'very nice :)', '2016-09-06 12:58:10', '2016-09-06 12:58:10', NULL),
(18, '75', 2, 63, 'thanks for promotion. ;)', '2016-09-13 00:05:22', '2016-09-13 00:05:22', NULL),
(19, '740', 6, 1, 'nice ', '2016-09-21 17:10:54', '2016-09-21 17:10:54', NULL),
(20, '740', 6, 1, 'nice', '2016-09-22 13:25:49', '2016-09-22 13:25:49', NULL),
(21, '740', 1, 6, 'nice ', '2016-09-22 13:59:52', '2016-09-22 13:59:52', NULL),
(22, '22', 2, 93, 'Great Food!', '2016-10-08 23:14:17', '2016-10-08 23:14:17', NULL),
(23, '309', 1, 85, 'good', '2016-11-09 14:40:55', '2016-11-09 14:40:55', NULL),
(24, '309', 2, 120, 'Good :)', '2016-11-16 13:41:19', '2016-11-16 13:41:19', NULL),
(25, '4', 2, 123, 'thanks koolpon team and EDO ZUSHI.', '2016-11-29 17:22:20', '2016-11-29 17:22:20', NULL),
(26, '740', 1, 3, 'testing', '2016-12-07 15:22:07', '2016-12-07 15:22:07', NULL),
(27, '740', 1, 6, 'hello from @koolpon', '2016-12-07 16:22:31', '2016-12-07 16:22:31', NULL),
(28, '740', 1, 6, 'hello', '2016-12-07 16:25:28', '2016-12-07 16:25:28', NULL),
(29, '740', 1, 9, 'hello', '2016-12-07 16:32:15', '2016-12-07 16:32:15', NULL),
(30, '740', 1, 9, 'hello', '2016-12-07 16:34:01', '2016-12-07 16:34:01', NULL),
(31, '740', 1, 3, 'ok', '2016-12-07 16:36:44', '2016-12-07 16:36:44', NULL),
(32, '740', 1, 9, 'test comment', '2016-12-07 16:46:01', '2016-12-07 16:46:01', NULL),
(33, '740', 1, 3, 'welcome', '2016-12-07 18:13:44', '2016-12-07 18:13:44', NULL),
(34, '952', 1, 12, 'testing', '2016-12-08 11:04:09', '2016-12-08 11:04:09', NULL),
(35, '740', 1, 3, 'very nice', '2016-12-08 14:35:19', '2016-12-08 14:35:19', NULL),
(36, '740', 1, 3, 'yo yo', '2016-12-08 14:57:20', '2016-12-08 14:57:20', NULL),
(37, '952', 1, 16, 'testing from @koolpon #and_dev', '2016-12-09 10:30:47', '2016-12-09 10:30:47', NULL),
(38, '740', 1, 14, 'very nice#@!!!', '2016-12-12 16:50:10', '2016-12-12 16:50:10', NULL),
(39, '952', 1, 3, '@koolpon #testing !@#', '2016-12-12 16:52:11', '2016-12-12 16:52:11', NULL),
(40, '952', 1, 9, 'welcome koolpon', '2016-12-15 17:16:45', '2016-12-15 17:16:45', NULL),
(41, '88', 1, 3, 'hi', '2016-12-16 10:39:10', '2016-12-16 10:39:10', NULL),
(42, '88', 1, 4, 'hello', '2016-12-16 10:40:38', '2016-12-16 10:40:38', NULL),
(43, '88', 1, 4, 'mice', '2016-12-16 10:40:47', '2016-12-16 10:40:47', NULL),
(44, '952', 1, 3, 'ttt', '2016-12-16 13:43:47', '2016-12-16 13:43:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Coupon`
--

CREATE TABLE IF NOT EXISTS `Coupon` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `public_status` int(11) NOT NULL COMMENT '0 for not public, 1 for public',
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `after_reduce_price` int(11) DEFAULT NULL,
  `original_price` int(11) DEFAULT NULL,
  `price_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reduce_amount_by` int(11) DEFAULT NULL,
  `custom_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_condition` text COLLATE utf8_unicode_ci,
  `type` int(11) DEFAULT NULL COMMENT '1 for one time use, 2 for multiple use',
  `counter` int(11) DEFAULT NULL COMMENT ' example: if coupon count is 10, so only 10 members can take. after 10 times finish, this coupon will be expired.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Coupon`
--

INSERT INTO `Coupon` (`id`, `name`, `description`, `public_status`, `from_date`, `to_date`, `discount_percentage`, `after_reduce_price`, `original_price`, `price_currency`, `reduce_amount_by`, `custom_field`, `coupon_image`, `terms_condition`, `type`, `counter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Enjoy Free Soft Drink', '- Get Free Iced Jasper with purchase of 20,000 Kyats\r\n- Get Free Papaya Smoothie with purchase of 20,000 Kyats\r\n- Get Free Banana Smoothie with purchase of 20,000 Kyats ', 1, '2016-09-02', '2017-12-12', 0, NULL, NULL, NULL, 3, 'Enjoy Free Drink with Purchase of 20,000 Kyats', 'coupon_508187535225267960393.jpg', '- Show this coupon to the cashier and receive discount with purchase of 20,000 Kyats\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- One coupon per person, per purchase\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispu', 2, 0, '2016-08-26 18:13:05', '2016-09-01 22:33:22', NULL),
(2, 'Little Korea Barbecue', 'One of the Best Korean BBQ Restaurants in Yangon, It Feels Like You Are In Korea. Please join us in indulging in Korean BBQ as we share our list 52 menu with you. Cheapest buffet prices 13,800 Kyat with enjoy 10% discount. \r\n', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_219248998607101960430.jpg', '- Present this coupon to receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- One coupon per person\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Little Korea BBQ is final', 2, 0, '2016-08-26 18:24:16', '2016-08-31 10:44:58', NULL),
(3, 'Happy Hour For Weekdays', 'Happy hour for weekdays', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_622505889180396646105.jpg', '- Show this coupon to the cashier and receive discount\r\n- Valid only weekdays\r\n- Valid only 11:00 AM to 4:00 PM\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- One coupon per person, per purchase\r\n- No cash value\r\n- Not valid with any other discount\r\n- In ', 2, 0, '2016-08-26 18:58:02', '2016-08-30 20:01:00', NULL),
(4, 'Enjoy Promotion', 'Description\r\n', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_611084699070551788611.jpg', '- Show this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- One coupon per person, per purchase\r\n- No cash value\r\n- Not valid with any other discount\r\n- Advance booking required\r\n- In the event of any dispute, the', 2, 0, '2016-08-26 19:18:25', '2016-08-30 20:07:02', NULL),
(5, 'Big Chance @Parami Branch', 'Big Chance for October at Parami Amazing Thai ', 1, '2016-10-01', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_88762143796329716592.jpg', '- Show this coupon to the cashier and receive discount @Parami Branch only\r\n- Valid from 01 Oct 2016 to 31 Oct 2016 \r\n- No cash value \r\n- Not valid with other discount\r\n- In the event of any dispute, the decision of Amazing Thai is final', 2, 0, '2016-08-27 14:49:53', '2016-09-08 16:22:14', NULL),
(6, 'Enjoy Promotion', '-', 1, '2016-09-01', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_615522098358146418285.jpg', '- Present this coupon to receive discount with the purchase of 10,000 Kyat at least \r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Padonmar Restaurant is f', 2, 0, '2016-08-27 15:09:55', '2016-09-01 22:32:13', NULL),
(16, 'Standard Single Room', '-', 1, '2016-09-02', '2017-12-12', NULL, 50, 60, '2', 1, NULL, 'coupon_930560468700907119961.jpg', '- Present this coupon to receive discount \r\n- Valid from 2nd Sep 2016 to 31 Oct 2016\r\n- One coupon per person and only for one room\r\n- One coupon is effective for the whole stay\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any ', 2, 0, '2016-08-27 17:01:42', '2016-09-01 22:31:20', NULL),
(17, 'Deluxe Room Promo', 'Discount room rate on offer includes buffet breakfast, service charges and tax. Maximum 2 persons can stay in Deluxe room.', 1, '2016-09-02', '2017-12-12', NULL, 60000, 70000, '1', 1, NULL, 'coupon_977433288789656234883.jpg', '- Present this coupon to receive discount.\r\n- Valid from 2nd Sep, 2016 to 30th Nov, 2016\r\n- Valid from minimum 1 night stay, offer valid everyday.\r\n- No cash value \r\n- Not valid with any other discount', 2, 0, '2016-08-29 11:22:59', '2016-08-31 00:04:53', NULL),
(18, 'Family Room Promotion', 'Discount room rate on offer includes buffet breakfast for 3 persons, service charges and tax. Maximum 3 persons can stay in each Family room', 1, '2016-09-02', '2017-12-12', NULL, 70000, 80000, '1', 1, NULL, 'coupon_795682793961285287030.jpg', '- Present this coupon to receive discount.\r\n- Valid from 2nd Sep, 2016 to 30th Nov 2016\r\n- Valid from minimum 1 night stay, offer valid everyday.\r\n- No cash value \r\n- Not valid with any other discou', 2, 0, '2016-08-29 11:31:32', '2016-09-01 22:30:16', NULL),
(20, 'Enjoy Coupons', '-', 1, '2016-09-02', '2017-12-12', 20, NULL, NULL, NULL, 2, NULL, 'coupon_64997391481124671396.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Golden Park Spa Land is final\r\n ', 2, 0, '2016-08-30 10:21:43', '2016-09-01 22:29:58', NULL),
(21, 'Enjoy Coupons', '-', 1, '2016-09-02', '2017-12-12', NULL, 5, 8, '2', 3, '3,000 Kyats OFF', 'coupon_40146705880689427046.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 - 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- Any Treatment for 3,000 MMK off\r\n- In the event of any dispute, the decision of Hera Spa is final', 2, 0, '2016-08-30 10:52:21', '2016-09-01 22:29:37', NULL),
(22, 'Dining Fukurou''s Special Promotion', '<p>- Only applicable for Wagguu, Lamb Ribs, Pork Ribs, Torimomo Karage, Fukurou&#39;s Korokke</p>\r\n', 1, '2016-10-10', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_246167715241985447256.jpg', '<p>-&nbsp; Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-&nbsp; Valid from 10th Oct 2016 to 31st Oct 2016</p>\r\n\r\n<p>-&nbsp; No cash value</p>\r\n\r\n<p>-&nbsp; Not valid with any other discount</p>\r\n\r\n<p>-&nbsp; In the event of any dispute, the decision of Dining Fukurou is final</p>\r\n', 2, 0, '2016-08-30 13:33:21', '2016-10-10 10:53:15', NULL),
(23, 'BIIO Special Deal', '<p>-</p>\r\n', 1, '2016-11-02', '2017-12-12', 15, NULL, NULL, NULL, 2, NULL, 'coupon_980174252810983327962.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 02 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of B2O Roof &amp; Cafe` 20 is final</p>\r\n', 2, 0, '2016-08-30 13:46:51', '2016-11-01 02:24:28', NULL),
(24, 'Happy Hour', '-', 1, '2016-09-02', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Any 4 Beer, Get 1 Free', 'coupon_52728839876617481178.jpg', '- Show this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- One coupon per person, per purchase\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Orianna 24', 2, 0, '2016-08-30 21:08:34', '2016-09-01 22:27:26', NULL),
(25, 'Special Weekday Promotion', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_4559723477612498704.jpg', '- Show this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- One coupon per person, per purchase\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of CHARM 66 is fi', 2, 0, '2016-08-30 21:19:19', '2016-09-01 22:27:11', NULL),
(26, 'Enjoy Promotion', '<p>-</p>\r\n', 1, '2016-10-11', '2017-12-12', 15, NULL, NULL, NULL, 2, NULL, 'coupon_579776413297074164633.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n-Valid from 11 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p><br />\r\n-No cash value</p>\r\n\r\n<p><br />\r\n-Not valid with any other discount</p>\r\n\r\n<p><br />\r\n-In the event of any dispute, the decision of Secret Recipe is final</p>\r\n', 2, 0, '2016-08-30 21:25:38', '2016-10-12 13:23:21', NULL),
(27, 'Enjoy Promotion', '<p>-</p>\r\n', 1, '2016-11-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_649214576980101472447.jpg', '<p>- Show this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid from 2nd Nov 2016 to 30th Nov 2016</p>\r\n\r\n<p>- One coupon per person, per purchase</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Kamakura Marina is final</p>\r\n', 2, 0, '2016-08-30 21:32:03', '2016-11-01 02:21:17', NULL),
(31, '9 + 1 Free', '-', 1, '2016-09-02', '2017-12-12', NULL, NULL, NULL, NULL, 3, '9 + 1 Free', 'coupon_87625089523645769958.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of HOT SPOT BBQ & HOT POT is final', 2, 0, '2016-08-31 11:05:41', '2016-09-01 22:26:15', NULL),
(32, 'Enjoy Promotion', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_88713713698168680889.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of February Six is final\r\n ', 2, 0, '2016-08-31 12:02:24', '2016-09-01 22:26:01', NULL),
(33, 'Enjoy Promotion', '<p>-</p>\r\n', 1, '2016-10-10', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_1595987552562884216.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid from 2nd Sep 2016 to 30th Sep 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Cafe&#39; Paradise is final</p>\r\n', 2, 0, '2016-08-31 12:07:18', '2016-10-10 10:44:09', NULL),
(34, 'Happy Hour Myanmar Beer', 'Happy Hour (Daily 1:00 PM to 6:00 PM)\r\nBuy 1 get 1 free Myanmar Draught Beer\r\nHere are some menus of Epic Bar and Restaurant.\r\nYou are warmly welcome to try at Epic Bar and restaurant located at the corner of Parami Road and Hnin si road.\r\nFor reservations , please call 09255863839, 09254803839', 1, '2016-09-02', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Buy one, Get one free for Myanmar Draught Beer  ', 'coupon_46317836852507141697.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016 (Daily 1:00 PM - 6:00 PM)\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Epic Bar & Restaurant is ', 2, 0, '2016-08-31 13:53:55', '2016-09-01 22:25:32', NULL),
(35, 'Happy Hour Cocktails', '-', 1, '2016-09-02', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Buy Two Get One All Cocktails', 'coupon_392969619206963540317.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31 Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Epic Bar & Restaurant is final\r\n ', 2, 0, '2016-08-31 14:14:55', '2016-09-01 22:25:03', NULL),
(36, 'Get 10% Food Present ', '<p>- Spend 20,000 and above, Get 10% Food Present</p>\r\n', 1, '2016-10-10', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Get 10% Food Present', 'coupon_276283616308468117090.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid from 10th Oct 2016 to 30th Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Steam Boat Hot Pot is final</p>\r\n', 2, 0, '2016-08-31 14:50:21', '2016-10-27 20:40:35', NULL),
(37, 'The Emporia @ CHATRIUM - Come 5 Pay 4', '<p>The Emporia Restaurant at Chatrium-Come 5 Pay 4 - Seafood International Buffet Dinner US$32.00+ per (Every Friday to Sunday) person until the end of October 2016</p>\r\n', 1, '2016-10-17', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Dine 5, Pay 4 Seafood International Buffet', 'coupon_454361345053271823427.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid until 31st October 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- No valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of the Chatrium Hotel Royal Lake Yangon is final</p>\r\n', 2, 0, '2016-08-31 17:11:11', '2016-10-17 18:08:32', NULL),
(38, 'TIGER HILL @ CHATRIUM - Come 5, Pay 4', '<p>Tiger Hill Restaurant at Chatrium- Come 5 Pay 4-Dim SumA&rsquo; La Carte Lunch Buffet US$24.00 nett per person (Daily Lunch) until the end of October 2016</p>\r\n', 1, '2016-10-17', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Come 5, Pay 4', 'coupon_710371647968652799191.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid until 31st October 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- No valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of the Chatrium Hotel Royal Lake Yangon is final</p>\r\n', 2, 0, '2016-08-31 17:53:49', '2016-10-17 18:05:29', NULL),
(39, 'Kohaku Restaurant @ CHATRIUM', '10% Discount on Kohaku Deluxe Buffet Dinner US$40.00nett per person (Sat & Sun) Until 30 Sep 2016', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_574483499029702088990.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Kohaku Restaurant @ CHATRIUM is final', 2, 0, '2016-08-31 17:57:47', '2016-09-01 22:23:52', NULL),
(40, 'Dermalogica Facial Treatment', 'This treatment is basic treatment for skin types. Our treatment are fully exclusive first step cleaning, professional double cleaning follow by exfoliating, extractions (as needed), masque, toner, hydrating and let not forget the face massage 20 minutes.', 1, '2016-09-02', '2017-12-12', 50, NULL, NULL, NULL, 2, NULL, 'coupon_692655314219397572224.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 - 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Spa @ Hotel Esperado is final', 2, 0, '2016-09-01 02:11:40', '2016-09-01 10:43:40', NULL),
(41, 'Oil Massage Therapy - 60 mins', 'This relaxing massage helps your body warms, makes better your blood circulation and soothes your muscles. This aroma therapedic blends helps alleviate stress and soothe the body and psyche.', 1, '2016-09-02', '2017-12-12', NULL, 25000, 35000, '1', 1, NULL, 'coupon_443701629744937206265.jpg', '-Present this coupon to the cashier and receive discount \r\n- Valid from 2nd Sep 2016 to 30th Sep 2016 \r\n- No cash value \r\n- Not valid with any other discount \r\n- In the event of any dispute, the decision of Spa @ Hotel Esperado is final', 2, 0, '2016-09-01 02:28:25', '2016-09-01 22:22:50', NULL),
(42, 'Oil Massage Therapy - 90 mins', '-', 1, '2016-09-02', '2017-12-12', NULL, 35000, 50000, '1', 1, NULL, 'coupon_362672728316713077637.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Spa @ Hotel Esperado is final', 2, 0, '2016-09-01 02:33:18', '2016-09-01 22:22:30', NULL),
(43, 'Monsoon Promotion', 'Enjoy monsoon promotion at the place where you can make your tummy and heart warm!', 1, '2016-09-02', '2017-12-12', NULL, NULL, NULL, NULL, 3, '1000 Kyat OFF', 'coupon_969308823057785270045.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Linkage Restaurant is final', 2, 0, '2016-09-01 10:39:46', '2016-09-01 22:22:04', NULL),
(44, 'Amazing Cocktail Promotion', '<p>- Only weekdays ( Monday ~ Friday )</p>\r\n', 1, '2016-10-10', '2017-12-12', 30, NULL, NULL, NULL, 2, NULL, 'coupon_802530537625027613043.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n- Valid from 10th Oct 2016 to 31st Oct 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of Dining Fukurou is final</p>\r\n', 2, 0, '2016-09-01 11:35:54', '2016-10-10 11:02:08', NULL),
(45, 'Admission Free', 'Well trained teachers educate students according to their learning level. We are 35 years teaching experience in Japan!', 1, '2016-09-02', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'No admission fee', 'coupon_2875769324853693474.jpg', '- No admission fee at every outlet of Gakken school\r\n- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision o', 2, 0, '2016-09-01 15:55:34', '2016-09-01 22:19:02', NULL),
(46, 'Moonsoon Promotion', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_938134659228746236350.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Hotel 7 Mile is final\r\n', 2, 0, '2016-09-01 16:17:01', '2016-09-01 22:18:47', NULL),
(47, 'Hotel Inya', '- 24 Hours Room Service\r\n- Laundry Service\r\n- Available Master and Visa Card\r\n- Ticket Reservation\r\n- IDD Calls at F.O\r\n- Safety Box in Room\r\n- Mini Bar\r\n- Free Wifi\r\n- LDC TV with 9 Channels\r\n- Individual Air Condition\r\n- Bath Tub with Hot and Cold Showe', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_38650676360938866115.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Hotel Inya is final\r\n', 2, 0, '2016-09-01 16:26:30', '2016-09-01 22:07:22', NULL),
(49, 'Grand Ngwe Saung Resort', '" Our hospitality will meet your satisfaction "', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_919434328143011742765.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31 Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Grand Ngwe Saung Resort is final\r\n ', 2, 0, '2016-09-01 16:41:36', '2016-09-01 22:00:38', NULL),
(50, 'Software Engineering Course', 'Professional Development Center ', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_496207677816457838029.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 - 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of ACE Inpiration is final', 2, 0, '2016-09-01 17:12:19', '2016-09-01 22:17:58', NULL),
(51, 'Golden Butterfly Hotel', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_402544167490522997520.jpg', '- Present this coupon to the cashier and receive discount for superior room only\r\n- Valid from 2nd Sep 2016 to 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Golden Butterfly Hotel is fi', 2, 0, '2016-09-01 17:14:02', '2016-09-07 10:44:29', NULL),
(52, 'Android Development Course', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_424154852885321998301.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of ACE Inspiration is final', 2, 0, '2016-09-01 17:16:37', '2016-09-01 22:16:56', NULL),
(53, 'Programming Fundamental Course', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_795894549463628254768.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of ACE Inspiration is final', 2, 0, '2016-09-01 17:18:53', '2016-09-01 22:15:52', NULL),
(54, 'Spa Deluxe', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_14254252935593242169.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31 Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Hotel 7 Mile is final\r\n ', 2, 0, '2016-09-01 17:22:26', '2016-09-01 22:14:39', NULL),
(55, 'Web Development Course with PHP ', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_937258975728273238714.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of ACE Inspiration is final', 1, 0, '2016-09-01 17:22:29', '2016-09-01 22:11:49', NULL),
(58, 'Japanese Language Course', '<p>-</p>\r\n', 1, '2016-11-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_593305666812879338618.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 02 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Ace Inspiration is final</p>\r\n', 1, 0, '2016-09-01 18:13:26', '2016-11-01 02:18:56', NULL),
(59, 'Web Development with Java', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_324518246583977900659.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of ACE Inspiration is final\r\n ', 1, 0, '2016-09-01 18:16:43', '2016-09-01 22:13:45', NULL),
(60, 'Lunch Menu Promotion', 'Discount offered on the total food bill of a la carte lunch menu.', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_62277995824046241543.jpg', '- Present this coupon to receive discount. \r\n- Valid from 2nd Sep 2016 to 30th Nov 2016 \r\n- Valid from minimum 1 night stay, offer valid everyday\r\n- No cash value \r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Grand ', 2, 0, '2016-09-01 20:29:21', '2016-09-01 22:08:41', NULL),
(62, 'Special Promotion of Rangoon', '<p>-</p>\r\n', 1, '2016-10-10', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_195764762655565065112.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n- Valid from 10th Oct 2016 to 30th Nov 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of Rangoon Grill &amp; Chill is final</p>\r\n', 2, 0, '2016-09-01 20:54:56', '2016-10-27 20:38:37', NULL),
(63, 'Special Wednesday', '<p>-</p>\r\n', 1, '2016-09-02', '2017-12-12', NULL, NULL, NULL, NULL, 3, '4 Plus 1 & 10% OFF', 'coupon_733771462309542323292.jpg', '<p>- Only applicable for Wednesday - Present this coupon to the cashier and receive discount - Valid from 2nd Sep 2016 to 30th Nov 2016 - No cash value - Not valid with any other discount - In the event of any dispute, the decision of Rangoon Grill &amp; Ch</p>\r\n', 2, 0, '2016-09-01 21:01:30', '2016-10-27 20:37:28', NULL),
(64, 'Oil Massage( Lady Only )', '- ', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_618177329689269490677.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31 Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Dr.Fish is final', 2, 0, '2016-09-14 10:37:19', '2016-09-14 10:38:13', NULL),
(65, 'Body Massage', '-', 1, '2016-09-02', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_90622701807271101097.jpg', '- Present this coupon to the cashier and receive discount\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Dr.Fish is final', 2, 0, '2016-09-14 11:34:42', '2016-09-14 11:34:42', NULL),
(66, 'All treatments ', '-', 1, '2016-09-02', '2017-12-12', 20, NULL, NULL, NULL, 2, NULL, 'coupon_118402072210652816863.jpg', '- Present this coupon to the cashier and receive discount with purchase of 50,000 kyats\r\n- Valid from 2nd Sep 2016 to 31st Oct 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of Hera Spa is final', 2, 0, '2016-09-14 12:16:04', '2016-09-14 12:16:04', NULL),
(67, 'Study 4skills English', '<p>-</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, 200000, 299000, '1', 1, NULL, 'coupon_427859537575453250775.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid from 1 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Nexus English Language Learning Centre is final</p>\r\n', 2, 0, '2016-09-16 18:18:18', '2016-10-04 11:17:43', NULL),
(68, 'Study Spoken English', '<p>-</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, 200000, 299000, '1', 1, NULL, 'coupon_351481944898776549076.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid from 1 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Nexus English Language Learning Centre is final</p>\r\n', 2, 0, '2016-09-16 18:40:22', '2016-10-04 11:15:46', NULL),
(69, 'Prepare for your IELTS Exam', '<p>-</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, 275000, 349000, '1', 1, NULL, 'coupon_355383496469509012870.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid from 1 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Nexus English Language Learning Centre is final</p>\r\n', 2, 0, '2016-09-16 18:46:58', '2016-10-04 11:14:05', NULL),
(70, 'Kimpot Menu', '<p>- Buy One Set Free One Dish</p>\r\n', 1, '2016-09-16', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Get Food Present', 'coupon_145659582256959996598.jpg', '<p>- Present this coupon to the cashier and receive discount - Valid from 16 Sep 2016 to 31 Oct 2016 - No cash value - Not valid with any other discount - In the event of any dispute, the decision of Siam Thai Cuisine is final</p>\r\n', 2, 0, '2016-09-20 16:48:36', '2016-09-26 17:31:00', NULL),
(71, 'Free Coupon for 9''Night INDIE', '- 9 NIGHT INDIE ပြဲအတြက္ Free E-Ticket ကို KOOLPON website ႏွင့္ KOOLPON mobile application မွ coupon QR code မ်ားကို အခမဲ့့ download ရယူနိုင္ပါသည္။ ထို Coupon QR code ကိုျပသၿပီး 9 NIGHT INDIE ပြဲသို႔ ဝင္ေရာက္နိုင္ပါသည္။ KOOLPON တြင္Free E-Tickets coupon code 50 သာ Limited လုပ္ထားပါသည္။ Coupon မထုတ္ယူထားသူမ်ားအေနျဖင့္ ပြဲေန႔တြင္ ဝင္ခြင့္လက္မွတ္ကို သတ္မွတ္ဝင္ေၾကးအတိုင္း ဝယ္ယူရမည္ျဖစ္ပါသည္။\r\n', 1, '2016-09-22', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Free Entry', 'coupon_683586678436968618043.jpg', '- Present this coupon when you join the event\r\n- Valid for only 30th Sep 2016\r\n- No cash value\r\n- Not valid with any other discount\r\n- In the event of any dispute, the decision of 9 Night INDIE event is final\r\n', 1, 50, '2016-09-22 16:38:11', '2016-09-22 17:52:27', NULL),
(72, 'Food Menu', '<p>-</p>\r\n', 1, '2016-10-01', '2017-12-12', 20, NULL, NULL, NULL, 2, NULL, 'coupon_2229299431881868033.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 1 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute, the decision of Pyi Thit Restaurant is final</p>\r\n', 2, 0, '2016-09-28 11:43:47', '2016-10-06 16:04:23', NULL),
(73, '5+1 (Beer) Tubor Beeger', '<p>-</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '5+1 (free)', 'coupon_819599059181092498227.jpg', '<p>-Present This coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 1 Oct 2016 To 31 Oct 2016</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute,the decision of Pyi Thit Restaurant is', 2, 0, '2016-09-28 13:31:07', '2016-09-28 18:03:10', '2016-09-28 18:03:10'),
(74, '5+1(Beer) Tuborg Beer', '<p>-</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '5+1 (free)', 'coupon_527177244240288649720.jpg', '<p>-Present This coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 1 Oct 2016 To 31 Oct 2016</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute,the decision of Pyi Thit Restaurant is', 1, 0, '2016-09-28 13:42:26', '2016-09-28 18:05:26', '2016-09-28 18:05:26'),
(75, '5+1(Beer) Tuborg Beer', '<p>-</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '5+1(Free)', 'coupon_305982159715883625559.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 1 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute, the decision of Pyi Thit Restaurant is final</p>\r\n', 2, 0, '2016-09-28 22:54:32', '2016-10-06 16:02:16', NULL),
(76, 'Car Service (Sigma)', '-', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '20% only car service', 'coupon_760673123996303974811.jpg', '-Present this coupon to the cashier and receive discount\r\n-Valid from 1 Oct 2016 to 31 Oct 2016\r\n-No cash value\r\n-Not valid with any other discount\r\n-In the event of any dispute, the decision of Pyi Thit Restaurant & SIGMA Car Servicing is final', 2, 0, '2016-09-29 00:56:05', '2016-09-29 01:10:56', '2016-09-29 01:10:56'),
(77, 'Car Service (Sigma)', '<p>-</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '20% only car service', 'coupon_863513071174614511877.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>- Valid from 1 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Pyi Thit Restaur</p>\r\n', 2, 0, '2016-09-29 01:03:08', '2016-10-06 16:05:07', NULL),
(78, 'Standard Room', '-', 1, '2016-10-01', '2017-12-12', NULL, 30, 40, '2', 1, NULL, 'coupon_407283872033645782350.jpg', '- Present this coupon to the cashier and receive discount \r\n- Valid from 1st Oct 2016 to 31st Oct 2016 \r\n- No cash value \r\n- Not valid with any other discount \r\n- In the event of any dispute, the decision of Green Leaf Hotel is final', 2, 0, '2016-10-03 11:36:53', '2016-10-03 11:36:53', NULL),
(79, 'Deluxe Room', '-\r\n', 1, '2016-10-01', '2017-12-12', NULL, 45, 60, '2', 1, NULL, 'coupon_13106046185216252356.jpg', '- Present this coupon to the cashier and receive discount \r\n- Valid from 1st Oct 2016 to 31st Oct 2016 \r\n- No cash value \r\n- Not valid with any other discount \r\n- In the event of any dispute, the decision of Green Leaf Hotel is final', 2, 0, '2016-10-03 11:42:17', '2016-10-03 11:44:40', NULL),
(80, 'Superior Room', '-', 1, '2016-10-01', '2017-12-12', NULL, 35, 50, '2', 1, NULL, 'coupon_578506375794235361767.jpg', '- Present this coupon to the cashier and receive discount \r\n- Valid from 1st Oct 2016 to 31st Oct 2016 \r\n- No cash value \r\n- Not valid with any other discount \r\n- In the event of any dispute, the decision of Green Leaf Hotel is final', 2, 0, '2016-10-03 11:48:11', '2016-10-03 11:48:11', NULL),
(81, 'Suite Room', '-', 1, '2016-10-01', '2017-12-12', NULL, 85, 110, '2', 1, NULL, 'coupon_48542974567431515005.jpg', '- Present this coupon to the cashier and receive discount \r\n- Valid from 1st Oct 2016 to 31st Oct 2016 \r\n- No cash value \r\n- Not valid with any other discount \r\n- In the event of any dispute, the decision of Green Leaf Hotel is final', 2, 0, '2016-10-03 11:51:19', '2016-10-03 11:51:19', NULL),
(82, 'Breakfast Buffet', '<p>-</p>\r\n', 1, '2016-11-01', '2017-12-12', NULL, 3000, 4500, '1', 1, NULL, 'coupon_214535894834601529188.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 01 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Green Leaf Hotel is final</p>\r\n', 2, 0, '2016-10-03 14:16:03', '2016-11-01 02:16:03', NULL),
(83, 'KOOLPON Photo Contest Winner  (B2O Roof and Cafe'' 20)', '<p>KOOLPON Photo Contest တြင္ အႏိုင္ရရွိေသာ ၂၀၀၀၀က်ပ္တန္ eCoupon ျဖစ္ပါသည္။ (B2O Roof and Cafe&#39; 20) တြင္ October လအတြင္း သြားေရာက္အသံုးျပဳႏိုင္ပါသည္။</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'for KOOLPON Photo Contest Winner', 'coupon_950010655279119197823.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ eCoupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ eCoupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- October 31 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (B2O Roof and Cafe&#39; 20) ၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 1, 1, '2016-10-03 16:12:45', '2016-10-06 17:45:39', NULL),
(84, 'KOOLPON Photo Contest Winner  (February Six Restaurant)', '<p>KOOLPON Photo Contest တြင္ အႏိုင္ရရွိေသာ ၂၀၀၀၀က်ပ္တန္ eCoupon ျဖစ္ပါသည္။ (February Six Restaurant) တြင္ October လအတြင္း သြားေရာက္အသံုးျပဳႏိုင္ပါသည္။</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'for KOOLPON Photo Contest Winner', 'coupon_950010655279119197823.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ eCoupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ eCoupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- October 31 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (February Six Restaurant) ၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 1, 1, '2016-10-03 16:12:45', '2016-10-03 16:42:25', NULL),
(85, 'KOOLPON Photo Contest Winner  (Rangoon Grill & Chill)', '<p>KOOLPON Photo Contest တြင္ အႏိုင္ရရွိေသာ ၂၀၀၀၀က်ပ္တန္ eCoupon ျဖစ္ပါသည္။ (Rangoon Grill &amp; Chill) တြင္ October လအတြင္း သြားေရာက္အသံုးျပဳႏိုင္ပါသည္။</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'for KOOLPON Photo Contest Winner', 'coupon_950010655279119197823.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ eCoupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ eCoupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- October 31 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (Rangoon Grill &amp; Chill) ၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 1, 1, '2016-10-03 16:12:45', '2016-10-03 16:41:30', NULL),
(86, 'KOOLPON Photo Contest Winner  (HOT SPOT BBQ AND HOT POT)', '<p>KOOLPON Photo Contest တြင္ အႏိုင္ရရွိေသာ ၂၀၀၀၀က်ပ္တန္ eCoupon ျဖစ္ပါသည္။ (HOT SPOT BBQ AND HOT POT)&nbsp;တြင္ October လအတြင္း သြားေရာက္အသံုးျပဳႏိုင္ပါသည္။</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'for KOOLPON Photo Contest Winner', 'coupon_950010655279119197823.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ eCoupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ eCoupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- October 31 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (HOT SPOT BBQ AND HOT POT)&nbsp;၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 1, 1, '2016-10-03 16:12:45', '2016-10-03 16:47:19', NULL),
(87, 'KOOLPON Photo Contest Winner (Steam Boat Hot Pot)', '<p>KOOLPON Photo Contest တြင္ အႏိုင္ရရွိေသာ ၂၀၀၀၀က်ပ္တန္ eCoupon ျဖစ္ပါသည္။ (Steam Boat Hot Pot) တြင္ October လအတြင္း သြားေရာက္အသံုးျပဳႏိုင္ပါသည္။</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'for KOOLPON Photo Contest Winner', 'coupon_950010655279119197823.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ eCoupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ eCoupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- October 31 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (Steam Boat Hot Pot) ၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 1, 1, '2016-10-03 16:12:45', '2016-10-03 16:48:12', NULL),
(88, 'KOOLPON Photo Contest Winner  (Orianna 24)', '<p>KOOLPON Photo Contest တြင္ အႏိုင္ရရွိေသာ ၂၀၀၀၀က်ပ္တန္ eCoupon ျဖစ္ပါသည္။ (Orianna 24)&nbsp;တြင္ October လအတြင္း သြားေရာက္အသံုးျပဳႏိုင္ပါသည္။</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'for KOOLPON Photo Contest Winner', 'coupon_950010655279119197823.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ eCoupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ eCoupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- October 31 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (Orianna 24)&nbsp;၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 1, 1, '2016-10-03 16:12:45', '2016-10-03 16:44:55', NULL),
(89, 'KOOLPON Photo Contest Winner  (Cafe'' Paradise)', '<p>KOOLPON Photo Contest တြင္ အႏိုင္ရရွိေသာ ၂၀၀၀၀က်ပ္တန္ eCoupon ျဖစ္ပါသည္။ (Cafe&#39; Paradise)&nbsp;တြင္ October လအတြင္း သြားေရာက္အသံုးျပဳႏိုင္ပါသည္။</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'for KOOLPON Photo Contest Winner', 'coupon_950010655279119197823.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ eCoupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ eCoupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- October 31 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (Cafe&#39; Paradise)&nbsp;၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 1, 1, '2016-10-03 16:12:45', '2016-10-03 16:45:27', NULL),
(90, 'KOOLPON Photo Contest Winner  (Dinning Fukuro)', '<p>KOOLPON Photo Contest တြင္ အႏိုင္ရရွိေသာ ၂၀၀၀၀က်ပ္တန္ eCoupon ျဖစ္ပါသည္။ (Dinning Fukuro)&nbsp;တြင္ October လအတြင္း သြားေရာက္အသံုးျပဳႏိုင္ပါသည္။</p>\r\n', 1, '2016-10-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'for KOOLPON Photo Contest Winner', 'coupon_950010655279119197823.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ eCoupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ eCoupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- October 31 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (Dinning Fukuro)&nbsp;၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 1, 1, '2016-10-03 16:12:45', '2016-10-03 16:45:27', NULL),
(91, 'Ssuni Coffee & Dessert ', '<p>-</p>\r\n', 1, '2016-10-06', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_70524513408025140274.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 6 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute, the decision of Ssuni Coffee &amp; Dessert Cafe is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 0, '2016-10-06 15:10:16', '2016-10-06 17:45:36', '2016-10-06 17:45:36'),
(92, 'Ssuni Coffee & Dessert ', '<p>-</p>\r\n', 1, '2016-10-06', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_279565940794696357212.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 6 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute, the decision of Ssuni Coffee &amp; Dessert is final</p>\r\n', 2, 0, '2016-10-06 17:48:54', '2016-10-06 17:52:06', NULL),
(93, 'Catering Service', '<p>-</p>\r\n', 1, '2016-10-07', '2017-12-12', NULL, 1800, 2000, '1', 1, NULL, 'coupon_725918250278499646775.jpg', '<p>- က်သင့္ေငြရွင္းသည့္အခ်ိန္တြင္ ဤ Coupon ကို ျပ၍ သတ္မွတ္ထားေသာ ခံစားခြင့္ကို ရယူႏိုင္ပါသည္။</p>\r\n\r\n<p>- ဤ Coupon ကုိ တစ္ၾကိမ္သာ အသံုးျပဳခြင့္ရွိပါသည္။</p>\r\n\r\n<p>- ေငြသားျဖင့္လဲလွယ္ျခင္း၊ ထုတ္ယူျခင္း မရပါ။</p>\r\n\r\n<p>- အေရအတြက္ (၁၀) နွင့္ အထက္ မွာယူလွ်င္ ပို႔ေဆာင္ေပးပါသည္။</p>\r\n\r\n<p>- အေရအတြက္ (၅၀) နွင့္ အထက္ မွာလွ်င္ Delivery Free ပို႔ေဆာင္ေပးပါသည္။</p>\r\n\r\n<p>- Ph ႀကိဳဆက္ေပးရန္ လိုပါသည္။</p>\r\n\r\n<p>- November 30 ရက္ေန့ေနာက္ဆံုးထား၍ အသံုးျပဳရပါမည္။</p>\r\n\r\n<p>- တစ္စံုတစ္ရာအျငင္းပြားမွဳရွိပါက (Mar&#39;s Cafe &amp; Restaurant) ၏ ဆံုးျဖတ္ခ်က္သာ အတည္ျဖစ္ပါသည္။</p>\r\n', 2, 0, '2016-10-07 12:15:59', '2016-10-07 12:16:55', NULL),
(94, 'Any Single Item', '<p>Any Single Item</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Only For Men</p>\r\n\r\n<p>- Hair Cutting</p>\r\n\r\n<p>- Coffee de&#39; Skin</p>\r\n\r\n<p>- Body Scrub &amp; Massage</p>\r\n\r\n<p>- Foot Massage</p>\r\n\r\n<p>- Aromatherapy</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2016-10-09', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_467028444294671420079.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n- Valid from 9th Oct 2016 to 30 Nov 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of Yangon Hair and Beauty Center is final</p>\r\n', 2, 0, '2016-10-08 23:29:09', '2016-10-27 20:34:55', NULL),
(95, 'Shampoo', '<p>- Shampoo + (Body Massage)</p>\r\n\r\n<p>- Lady Only</p>\r\n', 1, '2016-10-10', '2017-12-12', 20, 6400, 8000, '1', 1, NULL, 'coupon_50884915524105863238.jpg', '<p>- Present this coupon to the cashier and receive the discount</p>\r\n\r\n<p>- Valid from 10th Oct 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Thai Yai Hair and Beauty Spa is final</p>\r\n', 2, 0, '2016-10-09 23:57:46', '2016-10-27 20:33:09', NULL),
(96, 'Foot Massage', '<p>- Traditional Thai Foot Massage</p>\r\n\r\n<p>- Lady Only</p>\r\n', 1, '2016-10-10', '2017-12-12', 20, 6400, 8000, '1', 1, NULL, 'coupon_648224460351306492241.jpg', '<p>- Present this coupon to the cashier and receive the discount</p>\r\n\r\n<p><br />\r\n- Valid from 10th Oct 2016 to 30 Nov 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of Thai Yai Hair and Beauty Spa is final</p>\r\n', 2, 0, '2016-10-10 00:08:14', '2016-10-27 20:32:26', NULL),
(97, 'Buy 2 Get 1', '<p>- Only Thuesday and Thursday</p>\r\n\r\n<p>- Buy 2 slices of cake Get 1 slice Free</p>\r\n', 1, '2016-10-12', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Buy 2 Get 1', 'coupon_947963842245601234.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n- Valid from 12 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of Secret Recipe is final</p>\r\n', 2, 0, '2016-10-12 14:30:24', '2016-10-12 14:30:24', NULL),
(98, 'Thadingyut Promotion', '<p>- 15% off Whole Cake</p>\r\n', 1, '2016-10-12', '2017-12-12', 15, NULL, NULL, NULL, 2, NULL, 'coupon_327988849161076505076.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n-Valid from 12 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of Secret Recipe is final</p>\r\n', 2, 0, '2016-10-12 14:35:35', '2016-10-12 14:35:35', NULL),
(99, 'Asian Dishes ', '<p>- Only on Wednesday</p>\r\n\r\n<p>- 15% Off Asian dishes + Complimentry glass of Coke</p>\r\n', 1, '2016-10-12', '2017-12-12', 15, NULL, NULL, NULL, 2, NULL, 'coupon_854897925453264551476.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n<br />\r\n-Valid from 12 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p><br />\r\n<br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n<br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n<br />\r\n- In the event of any dispute, the decision of Secret Recipe is final</p>\r\n', 2, 0, '2016-10-12 14:54:00', '2016-10-12 14:54:00', NULL),
(100, 'Enjoy Promotion', '<p>- Only on 15 Oct 2016 ~ 17 Oct 2016</p>\r\n\r\n<p>- 15% Off One Whole cake</p>\r\n', 1, '2016-10-15', '2017-12-12', 15, NULL, NULL, NULL, 2, NULL, 'coupon_806563666776947434919.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n<br />\r\n-Valid from 15 Oct 2016 to 17 Oct 2016</p>\r\n\r\n<p><br />\r\n<br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n<br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n<br />\r\n- In the event of any dispute, the decision of Secret Recipe is final</p>\r\n', 2, 0, '2016-10-12 17:42:56', '2016-10-12 17:42:56', NULL),
(101, 'Enjoy discount on delivery service', '<p>- Discount သည္ Delivery Menu ထဲမွ မွာယူမႈမ်ား အတြက္သာ ျဖစ္ပါသည္။</p>\r\n', 1, '2016-10-14', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_213066442261334494252.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 14 Oct 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Gekko Restaurant Yangon is final</p>\r\n', 2, 0, '2016-10-13 10:48:16', '2016-10-27 20:31:28', NULL),
(102, 'Lunch Bento Boxes ', '<p>- Bento Boxes (10 + 1) + 10% Off</p>\r\n', 1, '2016-10-14', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_711009249624121658332.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 14 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Gekko Restaurant Yangon is final</p>\r\n', 2, 0, '2016-10-13 11:25:27', '2016-10-13 11:25:27', NULL),
(103, 'New Friends', '<p>- ဆိုင္ေလးရဲ႕ အားသာခ်က္က သန္႔ရွင္းလတ္ဆတ္မႈကို ဦးစားေပးျပီး လူငယ္ေတြအတြက္ဆို ထိုင္လို႔ေကာင္းတဲ့ ေနရာေလးတစ္ခု ျဖစ္ပါတယ္။</p>\r\n\r\n<p>- Koolpon Code ျပျပီး Total bill ရဲ႕ 10% discount ကို ခံစားခြင့္ရရွိမွာ ျဖစ္ပါတယ္။</p>\r\n', 1, '2016-10-14', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_96119336774729223895.jpg', '<p><br />\r\n-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n-Valid from 14 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of August Drinks &amp; Fried Chicken is final</p>\r\n', 2, 0, '2016-10-13 13:34:49', '2016-10-13 13:59:22', NULL),
(104, 'French Fried Present', '<p>- ဆိုင္ေလးရဲ႕ အားသာခ်က္က သန္႔ရွင္းလတ္ဆတ္မႈကိုဦးစားေပးျပီး လူငယ္ေတြအတြက္ ထိုင္လို႔ေကာင္းတဲ့ ေနရာေလးတစ္ခု ျဖစ္ပါတယ္။</p>\r\n\r\n<p>- Koolpon Code ေလးျပျပီး အနည္းဆံုး က်ပ္ ၈,၀၀၀ ဖိုးစားရံုနဲ႔ French Fried တစ္ပြဲ လက္ေဆာင္ရမွာ ျဖစ္ပါတယ္ ။</p>\r\n\r\n<p>- တျခား Promotion ေတြနဲ႔ ေပါင္းျပီး ခံစားခြင့္မရွိပါဘူး ။</p>\r\n', 1, '2016-10-14', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Food Present', 'coupon_183201275742169816153.jpg', '<p><br />\r\n-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n<br />\r\n-Valid from 14 Oct 2016 to 31 Oct 2016</p>\r\n\r\n<p><br />\r\n<br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n<br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n<br />\r\n- In the event of any dispute, the decision of August Drinks &amp; Fried Chicken is final</p>\r\n', 2, 0, '2016-10-13 13:56:59', '2016-10-13 14:01:59', NULL),
(105, 'Quit Smoking to Live Longer Life', '<p>Koolpon Code ကိုျပ၍</p>\r\n\r\n<p>- ၅၀,၀၀၀က်ပ္ဖိုး၀ယ္ယူလွ်င္ ၅,၀၀၀က်ပ္ discount</p>\r\n\r\n<p>- ၁၀၀,၀၀၀က်ပ္ဖိုး၀ယ္ယူလွ်င္ ၁၀,၀၀၀က်ပ္ discount</p>\r\n\r\n<p>- ၂၀၀,၀၀၀က်ပ္ဖိုး၀ယ္ယူလွ်င္ ၂၀,၀၀၀က်ပ္ discount</p>\r\n', 1, '2016-10-17', '2017-12-12', NULL, NULL, NULL, NULL, 3, '5,000ks off for minimum 50,000 purchased', 'coupon_23425808068349754656.jpg', '<p>- Present this coupon to cashier and receive discount</p>\r\n\r\n<p>- Valid from 17 Oct 2016 to 16 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Vape City Myanmar is final</p>\r\n', 2, 0, '2016-10-17 11:19:01', '2016-10-17 11:19:01', NULL);
INSERT INTO `Coupon` (`id`, `name`, `description`, `public_status`, `from_date`, `to_date`, `discount_percentage`, `after_reduce_price`, `original_price`, `price_currency`, `reduce_amount_by`, `custom_field`, `coupon_image`, `terms_condition`, `type`, `counter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(106, ' ေတာင္ၾကီးမီးပံုပ်ံပြဲ-ေအာင္ပန္း-မိန္းမရဲေတာင္-ျမသပိတ္ေရျပာအိုင္-ေတာက်ယ္ေရတံခြန္ ခရီးစဥ္', '<p>KOOLPON CODE ျပျပီး လက္မွတ္၀ယ္ယူ ရင္ေတာ့ ၁၇၀၀၀၀ က်ပ္တိတိျဖင့္ ရမွာျဖစ္ပါတယ္ ။</p>\r\n\r\n<p>သြားေရာက္လည္ပတ္မယ့္ ေနရာေတြကေတာ့ . . .</p>\r\n\r\n<p>- ရင္သပ္ရွဳေမာဖြယ္ရာ ေတာင္ေပၚတန္းေဒသအလွအပမ်ား။<br />\r\n- ေတာင္ၾကီးျမိဳ႔ ရွိ စူ႒မုုနိဘုုရား။<br />\r\n- ဟိုုပုုန္းရွိေက်ာက္ခက္ပန္းဆြဲမ်ားႏွင့္ထမ္႔စမ္းလိွဳင္ဂူ။<br />\r\n- ေစတီေတာ္မ်ားစုေပါင္းတည္ရွိရာေမြေတာ္ကကၠဴေရွးေဟာင္းဘုုရားမ်ား။<br />\r\n- အင္းေလးရွိ အင္းေလးေဖာင္ေတာ္ဦးဘုုရား။<br />\r\n- ငါးဖယ္ေခ်ာင္ဘုုန္းၾကီးေက်ာင္း။(ေၾကာင္ခုန္ေက်ာင္း)<br />\r\n- အလိုုေတာ္ေပါက္ဘုုရား။<br />\r\n- ပေဒါင္ရိုုးရာအိမ္။<br />\r\n- ယကၠန္းရံုု ႏွင့္အင္းေလးရိုုးရာအထည္ဆိုုင္။<br />\r\n- ေငြထည္ဆိုုင္။</p>\r\n', 1, '2016-10-27', '2017-12-12', NULL, 170000, 185000, '1', 1, NULL, 'coupon_603157020558131554324.jpg', '<p>- Present this coupon to the cashier and receive discount<br />\r\n- Valid from 27 Oct 2016 to 31 Oct 2016<br />\r\n- No cash value<br />\r\n- Not valid with any other discount<br />\r\n- In the event of any dispute, the decision of El Dorado is final</p>\r\n', 2, 0, '2016-10-27 11:12:36', '2016-10-27 11:16:12', NULL),
(107, 'TKIF Free Coupon', '<p>KOOLPON ရဲ႕ TKIF အစီအစဥ္ကို သင္သိၿပီးၿပီလား ေပ်ာ္ရႊင္စရာေသာၾက္ာေန႕ညတိုင္းအတြက္ကူပြန္အမ်ိဳးမ်ိဳးကို အထူးအစီအစဥ္အေနနဲ႕ ရယူႏုိင္မွာျဖစ္ပါတယ္။ အခုတစ္ပတ္ေသာၾက္ာေန႕ (28.10.2016) အတြက္ကေတာ့ Orianna 24 Bar &amp;Restaurantရဲ႕TKIFကူပြန္ ၁၀ေစာင္ကိုလာမယ့္ေသာၾက္ာေန႕ေန႕လည္ ၁၂း၀၀ က စၿပီးဦးရာလူစနစ္နဲ႕ရယူႏိုင္မွာျဖစ္ပါတယ္။ ဒီကူပြန္ကို Download လုပ္ ကူပြန္ကုဒ္ရယူၿပီး ဆိုင္မွာျပလုိက္ရံုနဲ႕ၾကက္ၾကြပ္မိႈထမင္းေၾကာ္နဲ႕ Tiger ဘီယာ ၂ ခြက္ လက္ေဆာင္ရရိွမွာဆိုေတာ့ေပ်ာ္စရာပဲေနာ္။ဒီအစီအစဥ္မွာပါ၀င္ဖို႕<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fwww.koolpon.com.mm%2F&amp;h=5AQHMGqwF&amp;enc=AZMobANGpBvJtq7ge0QUr-Psd2O0m855xgTuCCFCEDi0KhmaMQn-hG2dtxzF0jJkqmOp_KfFSLj-PA_USJcY7gRgAi5U9P6hXoAz8Syw07F5SgAR2HZiDKKU49C0gAQME_Y93Woszbbna1y-Q4qcuOUl&amp;s=1" target="_blank">www.koolpon.com.mm</a> မွာRegisterၾကိဳလုပ္ထားဖို႕မေမ့နဲ႕ေနာ္။KOOLPON Mobile app ကေန downloadလုပ္ရတာလည္းပိုၿပီးလြယ္ကူလို႕ Mobile app ကို install နဲ႕ update ၾကိဳလုပ္ထားဖို႕လည္းသတိေပးပါရေစ။ လာမယ့္ ေသာၾက္ာေန႕ည ၆း၀၀ ကေန ၁၀း၀၀ အထိသာဒီကူပြန္ကိုအသံုးျပဳခြင့္ရိွမွာျဖစ္ပါတယ္။ ေနာက္ၿပီးေတာ့လူတစ္ဦးကိုကူပြန္(၁)ေစာင္သာရယူခြင့္ရိွမွာျဖစ္ပါတယ္ကဲ အားလံုးအတြက္ ေပ်ာ္ရႊင္စရာ ေသာၾက္ာေန႕ျဖစ္ပါေစေနာ္။<br />\r\n<!--[if !supportLineBreakNewLine]--><br />\r\n<!--[endif]--></p>\r\n', 1, '2016-10-28', '2017-12-12', NULL, 0, 7200, '1', 1, NULL, 'coupon_48672315100216336829.jpg', '<p>- Show this coupon to the cashier and receive discount<br />\r\n- Valid only 28th Oct 2016<br />\r\n- One coupon per purchase<br />\r\n- No cash value<br />\r\n- Not valid with any other discount<br />\r\n- In the event of any dispute, the decision of Orianna 24</p>\r\n', 1, 10, '2016-10-28 11:41:57', '2016-10-28 11:41:57', NULL),
(108, 'Double Bonus (Date & Time Limited)', '<p>Room Type -&nbsp; S - 12,000 Kyat</p>\r\n\r\n<p>Room Type - M - 15,000 Kyat</p>\r\n\r\n<p>Room Type - L - 35,000 Kyat</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Enjoy Daily from 10:00 AM to 3:00 PM</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2016-10-28', '2017-12-12', NULL, NULL, NULL, NULL, 3, '(1 Section for 1 Section Free, 2 Section for 2 Section Free, 3 Section for 3 Section Free, 4 Section for 4 Section Free)', 'coupon_825942873821505546159.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-&nbsp; Enjoy Daily from 10:00 AM to 3:00 PM till 31st Dec 2016</p>\r\n\r\n<p>-&nbsp; No cash value</p>\r\n\r\n<p>-&nbsp; Not valid with any other discount</p>\r\n\r\n<p>-&nbsp; In the event of any dispute, the decision of TK House is final</p>\r\n', 1, 0, '2016-10-28 15:25:10', '2016-11-01 17:51:51', NULL),
(109, 'Special Hour (Date & Time Limited)', '<p>Room Type -&nbsp; S - 12,000 Kyat</p>\r\n\r\n<p>Room Type - M - 15,000 Kyat</p>\r\n\r\n<p>Room Type - L - 35,000 Kyat</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Enjoy Monday to Thursday 3:00 PM onwards</p>\r\n', 1, '2016-10-28', '2017-12-12', NULL, NULL, NULL, NULL, 3, '2 Section  + 1 Section Free ', 'coupon_485485748223012048431.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-&nbsp; Enjoy Monday to Thursday 3:00 PM onwards till 31st Dec 2016</p>\r\n\r\n<p>-&nbsp; No cash value</p>\r\n\r\n<p>-&nbsp; Not valid with any other discount</p>\r\n\r\n<p>-&nbsp; In the event of any dispute, the decision of TK House is final</p>\r\n', 1, 0, '2016-10-28 15:40:31', '2016-11-01 17:54:01', NULL),
(110, 'Melody World Grand Final  ၀င္ေၾကးအခမဲ့ ', '<p>Melody World ရဲ႕10th Anniversary ျဖစ္တဲ့ 2016 Melody World Grand Final ပြဲႀကီးကို Melody Worldမွေအာင္ျမင္ေက်ာ္ၾကားလ်ွက္႐ွိေသာ အဆိုေတာ္မ်ားစြာပါဝင္က်င္းပျပဳလုပ္သြားမွာျဖစ္ပါတယ္။ ႏုိ၀င္ဘာ (၇) ရက္ေန႔ ညေန ၄း၃၀ နာရီမွာ MCC ခန္းမမွာ ျပဳလုပ္မွာျဖစ္ၿပီး၂၀၁၆ရဲ႕ဂီတၾကယ္ပြင့္အသစ္ေတြကိုေမြးထုတ္ေပးမယ့္ ပြဲၾကီးလည္းျဖစ္ပါတယ္။ ေတးခ်စ္သူမ်ားအားလံုးကို ၀င္ေၾကးအခမဲ့အျပင္<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fwww.koolpon.com.mm%2F&amp;h=XAQEvtVx5AQH7lHlF2W7rGRuEZzBJ9-lOpLwJMFKnch7AcA&amp;enc=AZMTxKaakkgkPnJBhOJ3tWPjG4JhOLHWfsnzwYsVCadnlbkpfmjSw0Q1W0skJ7b8D-TqGYFYs83RxWNC57uZbwOFBBVOxFxq5iST8P6pa8Ujp8_o6XkclQiHQ_Fd84XmMjiQKZCyTdymK0f4CFOe5ZKVgbi9m2vVHE77X5MvB6o6qw&amp;s=1" onclick="LinkshimAsyncLink.referrer_log(this, &quot;http:\\/\\/www.koolpon.com.mm\\/&quot;, &quot;\\/si\\/ajax\\/l\\/render_linkshim_log\\/?u=http\\u00253A\\u00252F\\u00252Fwww.koolpon.com.mm\\u00252F&amp;h=XAQEvtVx5AQH7lHlF2W7rGRuEZzBJ9-lOpLwJMFKnch7AcA&amp;render_verification=0&amp;enc=AZMTxKaakkgkPnJBhOJ3tWPjG4JhOLHWfsnzwYsVCadnlbkpfmjSw0Q1W0skJ7b8D-TqGYFYs83RxWNC57uZbwOFBBVOxFxq5iST8P6pa8Ujp8_o6XkclQiHQ_Fd84XmMjiQKZCyTdymK0f4CFOe5ZKVgbi9m2vVHE77X5MvB6o6qw&amp;d&quot;);" target="_blank"> www.koolpon.com.mm</a> မွာ ကူပြန္ရယူထားရင္ Melody World ရဲ႕ Live Show DVD<br />\r\nတစ္ခ်ပ္လက္ေဆာင္ရယူႏိုင္မွာျဖစ္ပါတယ္။ ကူပြန္ အေရအတြက္(၂၀)ပဲ ကန္႕သတ္ထားတာေၾကာင့္ အျမန္ဆံုးေဒါင္းလုပ္ရယူဖို႕မေမ့နဲ႕ေနာ္။ သံစဥ္မ်ားနဲ႕ကမၻာထဲမွာ အားလံုးေပ်ာ္ရႊင္ၾကပါေစ။</p>\r\n', 1, '2016-11-07', '2017-12-12', NULL, NULL, NULL, NULL, 3, 'Free Entry and Live Show DVD တစ္ခ်ပ္လက္ေဆာင္', 'coupon_948525493285221753188.jpg', '<p>- Present this coupon to the cashier and receive discount<br />\r\n- Valid for only 7 Nov 2016<br />\r\n- No cash value<br />\r\n- Not valid with any other discount<br />\r\n- In the event of any dispute, the decision of Melody World is final</p>\r\n', 1, 20, '2016-10-31 13:42:23', '2016-11-01 17:15:47', NULL),
(111, 'BBQ Night', '<p>- KOOLPON CODE ျပျပီး က်ပ္၂၀,၀၀၀ တည္းျဖင့္&nbsp; Hotel Esperado ရဲ႕ Rooftop မွာ ေအးခ်မ္းသာယာတဲ့ ရႈခင္းေတြကို ခံစားရင္း BBQ Night ကို ဆင္ႏႊဲလိုက္ပါ ။</p>\r\n\r\n<p>- အခ်ိန္ကေတာ့ ညေန ၆:၃၀ pm ~ ည ၁၀:၀၀ pm အထိ</p>\r\n\r\n<p>* အပတ္စဥ္ ေသာျကာ ေန႔ တစ္ရက္တည္း သာ *</p>\r\n', 1, '2016-11-04', '2017-12-12', NULL, NULL, NULL, NULL, 3, '20,000 Kyats', 'coupon_304065358205222429149.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n-Valid from 04 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of Hotel Esperado Yangon is final</p>\r\n', 2, 0, '2016-10-31 14:42:36', '2016-10-31 14:59:38', NULL),
(112, 'Thai Dinner Buffet', '<p>&nbsp;</p>\r\n\r\n<p>- KOOLPON CODE ျပျပီး အရသာ ရွိလွတဲ့ Thai Dinner Buffet ကို Hotel Esperado ရဲ႕ Rooftop မွာ ေလညင္းခံရင္း တ၀ျကီး သံုးေဆာင္လိုက္ပါ ။</p>\r\n\r\n<p>- အခ်ိန္ကေတာ့ ညေန ၆:၃၀ pm ~ ည ၁၀:၀၀ pm အထိ</p>\r\n\r\n<p>* အပတ္စဥ္ စေန ေန႔ တစ္ရက္တည္း သာ *</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2016-11-05', '2017-12-12', NULL, NULL, NULL, NULL, 3, '20,000 Kyats', 'coupon_9929564182019684164.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 05 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Hotel Esperado Yangon is final</p>\r\n', 2, 0, '2016-10-31 14:58:57', '2016-10-31 14:58:57', NULL),
(113, 'Breakfast Buffet', '<p>KOOLPON CODE ျပျပီး အရသာရွိေသာ မနက္စာကို ေလေကာင္းေလသန္႔ ရွဴရႈိက္ရင္း တ၀ျကီး သံုးေဆာင္လိုက္ပါ ။</p>\r\n\r\n<p>- အခ်ိန္ကေတာ့ မနက္ ၆:၀၀ am မွ ၁၀:၀၀ am အထိ ေနာ္ ။</p>\r\n\r\n<p>- တစ္ဦးကို ၇,၅၀၀ က်ပ္ တည္းနဲ႔ အမ်ိဳးေပါင္း ၃၀ ေက်ာ္ကို သံုးေဆာင္ရမွာပါ ။</p>\r\n', 1, '2016-11-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '7,500 Kyats', 'coupon_287476735394781110077.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p><br />\r\n-Valid from 01 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p><br />\r\n- No cash value</p>\r\n\r\n<p><br />\r\n- Not valid with any other discount</p>\r\n\r\n<p><br />\r\n- In the event of any dispute, the decision of Hotel Esperado Yangon is final</p>\r\n', 2, 0, '2016-11-01 01:04:18', '2016-11-01 01:04:18', NULL),
(114, 'Indian Dinner Buffet', '<p>KOOLPON CODE ျပျပီး</p>\r\n\r\n<p>- အိႏိၵယအစားအစာ ျကိဳက္ႏွစ္သက္သူမ်ားအတြက္ တစ္ဦးကို က်ပ္ ၂၀,၀၀၀ ႏႈန္းျဖင့္ Dinner Buffet ကို သံုးေဆာင္နိဳင္ပါျပီ ။</p>\r\n\r\n<p>- အခ်ိန္ကေတာ့ ညေန ၆:၀၀ pm မွ ၁၀:၀၀ pm အထိေနာ္ ။</p>\r\n\r\n<p>* အပတ္စဥ္ တနဂၤေႏြ တစ္ရက္တည္းသာ *</p>\r\n', 1, '2016-11-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '20,000 Kyats', 'coupon_242360079749783482048.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 01 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Hotel Esperado Yangon is final</p>\r\n', 2, 0, '2016-11-01 01:29:04', '2016-11-01 01:29:04', NULL),
(115, 'Vegetarian Dinner Buffet', '<p>KOOLPON CODE ျပျပီး</p>\r\n\r\n<p>- သတ္္သတ္လြတ္ျကိဳက္ႏွစ္သက္သူမ်ား ႏွင့္ သတ္သတ္လြတ္စားခ်င္သူမ်ားအတြက္ အမ်ိဳးစားစံုလင္ျပီး အရမ္းတန္တဲ့ Dinner Buffet ေလးပဲ ျဖစ္ပါတယ္ ။</p>\r\n\r\n<p>- လူတစ္ဦးကို က်ပ္ ၁၀,၀၀၀ သာက်သင့္မွာပါ ။</p>\r\n\r\n<p>- အခ်ိန္ကေတာ့ ညေန ၆:၃၀ pm ~ ည ၁၀:၀၀ pm အထိ</p>\r\n\r\n<p>* အပတ္စဥ္ ဗုဒၶဟူး တစ္ရက္သာ *</p>\r\n', 1, '2016-11-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '10,000 Kyats', 'coupon_898046865268016933912.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 01 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Hotel Esperado Yangon is final</p>\r\n', 2, 0, '2016-11-01 01:38:47', '2016-11-01 01:38:47', NULL),
(116, 'Special Cake Promotion', '<p>KOOLPON CODE ျပျပီး</p>\r\n\r\n<p>- 1 kg logo cake မွာယူတုိင္း cookie bag present ကို ရယူလိုက္ပါ ။</p>\r\n\r\n<p>- ေစ်းႏႈန္းကေတာ့ ၁၅,၀၀၀ က်ပ္ပါ ။</p>\r\n\r\n<p>- Pre Order အေနနဲ႔&nbsp; မွာ ယူလိုရင္ေတာ့ 09 77866701, 09 77853715 ကို ဆက္သြယ္မွာယူနိဳင္ပါတယ္ ။</p>\r\n', 1, '2016-11-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '1 kg logo cake + cookie bag present', 'coupon_150406997846866747250.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 01 Nov 2016 to 30 Nov 2016</p>\r\n\r\n<p>- No cash value</p>\r\n\r\n<p>- Not valid with any other discount</p>\r\n\r\n<p>- In the event of any dispute, the decision of Hotel Esperado Yangon is final</p>\r\n', 2, 0, '2016-11-01 02:02:08', '2016-11-01 02:04:24', NULL),
(117, 'Acacia Food Benefit', '<p>-</p>\r\n', 1, '2016-11-01', '2017-12-12', 5, NULL, NULL, NULL, 2, NULL, 'coupon_30462888368914219589.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 1 Nov 2016 to 31 Dec 2016</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Food only (No Cake &amp; Coffee)</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute, the decision of Acacia Tea Salon &amp; Fine Dining Restaurant is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, '2016-11-01 23:54:46', '2016-11-01 23:56:37', NULL),
(118, 'Event Function Package', '<p>-To celebrate your birthday party , wedding Engagement &amp; business meeting</p>\r\n', 1, '2016-11-01', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_92415915973444238425.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 1 Nov 2016 to 31 Dec 2016</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute, the decision of Acacia Tea Salon &amp; Fine Dining Restaurant is final</p>\r\n', 1, 0, '2016-11-02 00:03:33', '2016-11-02 00:03:33', NULL),
(119, 'Fri-Sat-Sun Special', '<p>Room Type -&nbsp; S - 12,000 Kyat</p>\r\n\r\n<p>Room Type - M - 15,000 Kyat</p>\r\n\r\n<p>Room Type - L - 35,000 Kyat</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Enjoy Fri-Sat-Sun 3:00 PM onwards</p>\r\n', 1, '2016-11-01', '2017-12-12', NULL, NULL, NULL, NULL, 3, '3 Section + 1 Section Free', 'coupon_39158679600146461858.jpg', '<p>- Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-&nbsp; Enjoy Fri-Sat-Sun 3:00 PM onwards till 31st Dec 2016</p>\r\n\r\n<p>-&nbsp; No cash value</p>\r\n\r\n<p>-&nbsp; Not valid with any other discount</p>\r\n\r\n<p>-&nbsp; In the event of any dispute, the decision of TK House is final</p>\r\n', 2, 0, '2016-11-02 17:35:41', '2016-11-02 17:35:41', NULL),
(120, 'Meringue Café', '<p>-</p>\r\n', 1, '2016-11-07', '2017-12-12', 5, NULL, NULL, NULL, 2, NULL, 'coupon_438158520390908431631.jpg', '<p>&nbsp;-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 7 Nov 2016 to 1 Dec 2017</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Only for dine in customers</p>\r\n\r\n<p>-Not valid in conjunction with other offers.</p>\r\n\r\n<p>-In the event of any dispute, the decision of&nbsp;Meringue Caf&eacute; is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, '2016-11-08 09:15:20', '2016-11-08 09:18:43', NULL),
(121, 'Fish & Co', '<p>-</p>\r\n', 1, '2016-11-01', '2017-12-12', 20, NULL, NULL, NULL, 2, NULL, 'coupon_791588975488522403232.jpg', '<p>-Present this coupon to the cashier and receive discount<br />\r\n-Valid from 1 Nov 2016 to 30 Nov 2016<br />\r\n-No cash value<br />\r\n-Not valid with any other discount<br />\r\n-In the event of any dispute, the decision of Fish &amp; Co is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, '2016-11-10 16:41:57', '2016-11-10 16:41:57', NULL),
(122, 'FUKAGAWA', '<p>-</p>\r\n', 1, '2016-11-01', '2017-12-12', 5, NULL, NULL, NULL, 2, NULL, 'coupon_751697484309918000537.jpg', '<p>-Present this coupon to the cashier and receive discount<br />\r\n-Valid from 1 Nov 2016 to 31 Dec 2016<br />\r\n-No cash value<br />\r\n-Not valid with any other discount<br />\r\n-In the event of any dispute, the decision of FUKAGAWA is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, '2016-11-18 13:08:02', '2016-11-18 13:08:02', NULL),
(123, 'EDO ZUSHI', '<p>-</p>\r\n', 1, '2016-11-01', '2017-12-12', 5, NULL, NULL, NULL, 2, NULL, 'coupon_784438563324556879801.jpg', '<p>-Present this coupon to the cashier and receive discount<br />\r\n-Valid from 1 Nov 2016 to 31 Dec 2016<br />\r\n-No cash value<br />\r\n-Not valid with any other discount<br />\r\n-In the event of any dispute, the decision of EDO ZUSHI is final</p>\r\n', 1, 0, '2016-11-18 14:17:40', '2016-11-21 17:37:19', NULL),
(124, 'PastaMania', '<p>- 15% off total bill</p>\r\n', 1, '2016-12-01', '2017-12-12', 15, NULL, NULL, NULL, 2, NULL, 'coupon_8831357442666498410.jpg', '<p>-Present this coupon to the cashier and receive discount</p>\r\n\r\n<p>-Valid from 1 Dec 2016 to 28 Feb 2017</p>\r\n\r\n<p>-No cash value</p>\r\n\r\n<p>-Not valid with any other discount</p>\r\n\r\n<p>-In the event of any dispute, the decision of PastaMania is final</p>\r\n', 1, 0, '2016-11-30 11:54:25', '2016-11-30 11:54:25', NULL),
(125, 'BULGOGI BROTHERS', '<p>-10% discount on total bill (including Tax)</p>\r\n', 1, '2016-12-01', '2017-12-12', 10, NULL, NULL, NULL, 2, NULL, 'coupon_183501735968094661454.jpg', '<p>-Present this coupon to the cashier and receive discount<br />\r\n-Valid from 1 Dec 2016 to 28 Feb 2017<br />\r\n-No cash value<br />\r\n-Not valid with any other discount<br />\r\n-In the event of any dispute, the decision of BULGOGI BROTHERS is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, '2016-11-30 17:00:07', '2016-11-30 17:20:36', NULL),
(126, 'Myanma Toenayar (ျမစ္ႀကီးနား promotion) Air-ticket', '<p>-MNA - 132,000 / AML - 135,000</p>\r\n\r\n<p>-KBZ - 122,000 / 7Y - 112,000</p>\r\n\r\n<p>-AW - 120,000 / YA - 120,000</p>\r\n', 1, '2016-12-01', '2017-12-12', NULL, 0, 3000, '1', 3, '3000 kyats off for any airline', 'coupon_991566640413027677022.jpg', '<p>-Present this coupon to the cashier and receive discount<br />\r\n-Valid from 1 Dec 2016 to 28 Feb 2017<br />\r\n-No cash value<br />\r\n-Not valid with any other discount<br />\r\n-In the event of any dispute, the decision of Myanma Toenayar is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, '2016-11-30 17:44:26', '2016-12-01 15:19:53', NULL),
(127, 'Myanma Toenayar (တာခ်ီလိတ္ Promotion) Air-ticket', '<p>-MNA - 100,000 / AML - 98,000</p>\r\n\r\n<p>-KBZ - 112,000 / 7Y - 110,000</p>\r\n\r\n<p>-AW - 110,000 / YA - 100,000</p>\r\n', 1, '2016-12-01', '2017-12-12', NULL, 0, 3000, '1', 3, '3000 kyats off for any airline', 'coupon_766942088992547470439.jpg', '<p>-Present this coupon to the cashier and receive discount<br />\r\n-Valid from 1 Dec 2016 to 28 Feb 2017<br />\r\n-No cash value<br />\r\n-Not valid with any other discount<br />\r\n-In the event of any dispute, the decision of Myanma Toenayar is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, '2016-11-30 17:59:40', '2016-12-01 15:34:12', NULL),
(128, 'Empress Restaurant', '<p>- 25% off for total bill</p>\r\n', 1, '2916-12-01', '2017-12-12', 25, NULL, NULL, NULL, 2, NULL, 'coupon_25429797909324998618.jpg', '<p>-Present this coupon to the cashier and receive discount<br />\r\n-Valid from 1 Dec 2016 to 28 Feb 2017<br />\r\n-No cash value<br />\r\n-Not valid with any other discount<br />\r\n-In the event of any dispute, the decision of Empress Restaurant is final</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, '2016-12-01 16:33:06', '2016-12-01 16:33:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Coupon_Branch`
--

CREATE TABLE IF NOT EXISTS `Coupon_Branch` (
  `id` int(10) unsigned NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Coupon_Branch`
--

INSERT INTO `Coupon_Branch` (`id`, `coupon_id`, `branch_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2016-08-26 18:13:05', '2016-09-01 22:33:22', NULL),
(2, 2, 4, '2016-08-26 18:24:16', '2016-08-31 10:44:58', NULL),
(3, 3, 7, '2016-08-26 18:58:02', '2016-08-30 20:01:00', NULL),
(4, 4, 6, '2016-08-26 19:18:25', '2016-08-30 20:07:02', NULL),
(5, 5, 9, '2016-08-27 14:49:53', '2016-09-08 16:22:14', NULL),
(6, 6, 10, '2016-08-27 15:09:55', '2016-09-01 22:32:13', NULL),
(7, 16, 13, '2016-08-27 17:01:42', '2016-09-01 22:31:20', NULL),
(8, 17, 14, '2016-08-29 11:22:59', '2016-08-31 00:04:53', NULL),
(9, 18, 14, '2016-08-29 11:31:32', '2016-09-01 22:30:16', NULL),
(10, 20, 16, '2016-08-30 10:21:43', '2016-09-01 22:29:58', NULL),
(11, 21, 17, '2016-08-30 10:52:21', '2016-09-01 22:29:37', NULL),
(12, 22, 20, '2016-08-30 13:33:21', '2016-10-10 10:53:15', NULL),
(13, 23, 21, '2016-08-30 13:46:51', '2016-11-01 02:24:28', NULL),
(14, 24, 22, '2016-08-30 21:08:34', '2016-09-01 22:27:26', NULL),
(15, 25, 24, '2016-08-30 21:19:19', '2016-09-01 22:27:11', NULL),
(16, 26, 25, '2016-08-30 21:25:38', '2016-10-12 13:23:21', NULL),
(17, 27, 26, '2016-08-30 21:32:03', '2016-11-01 02:21:17', NULL),
(18, 31, 6, '2016-08-31 11:05:41', '2016-09-01 22:26:15', NULL),
(19, 32, 11, '2016-08-31 12:02:24', '2016-09-01 22:26:01', NULL),
(20, 33, 12, '2016-08-31 12:07:18', '2016-10-10 10:44:09', NULL),
(21, 34, 51, '2016-08-31 13:53:55', '2016-09-01 22:25:32', NULL),
(22, 35, 51, '2016-08-31 14:14:55', '2016-09-01 22:25:03', NULL),
(23, 36, 52, '2016-08-31 14:50:21', '2016-10-27 20:40:35', NULL),
(24, 37, 53, '2016-08-31 17:11:11', '2016-10-17 18:08:32', NULL),
(25, 38, 53, '2016-08-31 17:53:49', '2016-10-17 18:05:29', NULL),
(26, 39, 53, '2016-08-31 17:57:47', '2016-09-01 22:23:52', NULL),
(27, 40, 55, '2016-09-01 02:11:40', '2016-09-01 10:43:40', NULL),
(28, 41, 55, '2016-09-01 02:28:25', '2016-09-01 22:22:50', NULL),
(29, 42, 55, '2016-09-01 02:33:18', '2016-09-01 22:22:30', NULL),
(30, 43, 56, '2016-09-01 10:39:46', '2016-09-01 22:22:04', NULL),
(31, 44, 20, '2016-09-01 11:35:54', '2016-10-10 11:02:08', NULL),
(32, 45, 42, '2016-09-01 15:55:34', '2016-09-01 22:19:02', NULL),
(33, 46, 57, '2016-09-01 16:17:01', '2016-09-01 22:18:47', NULL),
(34, 47, 57, '2016-09-01 16:26:30', '2016-09-01 22:07:22', NULL),
(35, 49, 57, '2016-09-01 16:41:36', '2016-09-01 22:00:38', NULL),
(36, 50, 60, '2016-09-01 17:12:19', '2016-09-01 22:17:58', NULL),
(37, 51, 58, '2016-09-01 17:14:02', '2016-09-07 10:44:29', NULL),
(38, 52, 60, '2016-09-01 17:16:37', '2016-09-01 22:16:56', NULL),
(39, 53, 60, '2016-09-01 17:18:53', '2016-09-01 22:15:52', NULL),
(40, 54, 61, '2016-09-01 17:22:26', '2016-09-01 22:14:39', NULL),
(41, 55, 60, '2016-09-01 17:22:29', '2016-09-01 22:11:49', NULL),
(42, 58, 60, '2016-09-01 18:13:26', '2016-11-01 02:18:56', NULL),
(43, 59, 60, '2016-09-01 18:16:43', '2016-09-01 22:13:45', NULL),
(44, 60, 62, '2016-09-01 20:29:21', '2016-09-01 22:08:41', NULL),
(45, 62, 45, '2016-09-01 20:54:56', '2016-10-27 20:38:37', NULL),
(46, 63, 45, '2016-09-01 21:01:30', '2016-10-27 20:37:28', NULL),
(47, 64, 64, '2016-09-14 10:37:19', '2016-09-14 10:38:13', NULL),
(48, 65, 64, '2016-09-14 11:34:42', '2016-09-14 11:34:42', NULL),
(49, 66, 65, '2016-09-14 12:16:04', '2016-09-14 12:16:04', NULL),
(50, 67, 66, '2016-09-16 18:18:18', '2016-10-04 11:17:43', NULL),
(51, 68, 66, '2016-09-16 18:40:22', '2016-10-04 11:15:46', NULL),
(52, 69, 66, '2016-09-16 18:46:58', '2016-10-04 11:14:05', NULL),
(53, 70, 67, '2016-09-20 16:48:36', '2016-09-26 17:31:00', NULL),
(54, 71, 68, '2016-09-22 16:38:11', '2016-09-22 17:52:27', NULL),
(55, 72, 71, '2016-09-28 11:43:47', '2016-10-06 16:04:23', NULL),
(56, 73, 71, '2016-09-28 13:31:07', '2016-09-28 18:03:10', '2016-09-28 18:03:10'),
(57, 74, 71, '2016-09-28 13:42:26', '2016-09-28 18:05:26', '2016-09-28 18:05:26'),
(58, 75, 71, '2016-09-28 22:54:32', '2016-10-06 16:02:16', NULL),
(59, 76, 72, '2016-09-29 00:56:05', '2016-09-29 01:10:56', '2016-09-29 01:10:56'),
(60, 77, 72, '2016-09-29 01:03:08', '2016-10-06 16:05:07', NULL),
(61, 78, 73, '2016-10-03 11:36:53', '2016-10-03 11:36:53', NULL),
(62, 79, 73, '2016-10-03 11:42:17', '2016-10-03 11:44:40', NULL),
(63, 80, 73, '2016-10-03 11:48:11', '2016-10-03 11:48:11', NULL),
(64, 81, 73, '2016-10-03 11:51:19', '2016-10-03 11:51:19', NULL),
(65, 82, 74, '2016-10-03 14:16:03', '2016-11-01 02:16:03', NULL),
(66, 83, 21, '2016-10-03 16:12:45', '2016-10-06 17:45:39', NULL),
(67, 84, 11, '2016-10-03 16:12:45', '2016-10-03 16:42:25', NULL),
(68, 85, 45, '2016-10-03 16:12:45', '2016-10-03 16:41:30', NULL),
(69, 86, 6, '2016-10-03 16:12:45', '2016-10-03 16:47:19', NULL),
(70, 87, 52, '2016-10-03 16:12:45', '2016-10-03 16:48:12', NULL),
(71, 88, 22, '2016-10-03 16:12:45', '2016-10-03 16:44:55', NULL),
(72, 89, 12, '2016-10-03 16:12:45', '2016-10-03 16:45:27', NULL),
(73, 90, 20, '2016-10-03 16:12:45', '2016-10-03 16:45:27', NULL),
(74, 91, 75, '2016-10-06 15:10:16', '2016-10-06 17:45:36', '2016-10-06 17:45:36'),
(75, 92, 75, '2016-10-06 17:48:54', '2016-10-06 17:52:06', NULL),
(76, 93, 76, '2016-10-07 12:15:59', '2016-10-07 12:16:55', NULL),
(77, 94, 77, '2016-10-08 23:29:09', '2016-10-27 20:34:55', NULL),
(78, 95, 78, '2016-10-09 23:57:46', '2016-10-27 20:33:09', NULL),
(79, 96, 78, '2016-10-10 00:08:14', '2016-10-27 20:32:26', NULL),
(80, 97, 25, '2016-10-12 14:30:24', '2016-10-12 14:30:24', NULL),
(81, 98, 25, '2016-10-12 14:35:35', '2016-10-12 14:35:35', NULL),
(82, 99, 25, '2016-10-12 14:54:00', '2016-10-12 14:54:00', NULL),
(83, 100, 25, '2016-10-12 17:42:56', '2016-10-12 17:42:56', NULL),
(84, 101, 79, '2016-10-13 10:48:16', '2016-10-27 20:31:28', NULL),
(85, 102, 79, '2016-10-13 11:25:27', '2016-10-13 11:25:27', NULL),
(86, 103, 80, '2016-10-13 13:34:49', '2016-10-13 13:59:22', NULL),
(87, 104, 80, '2016-10-13 13:56:59', '2016-10-13 14:01:59', NULL),
(88, 105, 81, '2016-10-17 11:19:01', '2016-10-17 11:19:01', NULL),
(89, 106, 82, '2016-10-27 11:12:36', '2016-10-27 11:16:12', NULL),
(90, 107, 22, '2016-10-28 11:41:57', '2016-10-28 11:41:57', NULL),
(91, 108, 83, '2016-10-28 15:25:10', '2016-11-01 17:51:51', NULL),
(92, 109, 83, '2016-10-28 15:40:31', '2016-11-01 17:54:01', NULL),
(93, 110, 84, '2016-10-31 13:42:23', '2016-11-01 17:15:47', NULL),
(94, 111, 5, '2016-10-31 14:42:36', '2016-10-31 14:59:38', NULL),
(95, 112, 5, '2016-10-31 14:58:57', '2016-10-31 14:58:57', NULL),
(96, 113, 5, '2016-11-01 01:04:18', '2016-11-01 01:04:18', NULL),
(97, 114, 5, '2016-11-01 01:29:04', '2016-11-01 01:29:04', NULL),
(98, 115, 5, '2016-11-01 01:38:47', '2016-11-01 01:38:47', NULL),
(99, 116, 5, '2016-11-01 02:02:08', '2016-11-01 02:04:24', NULL),
(100, 117, 85, '2016-11-01 23:54:46', '2016-11-01 23:56:37', NULL),
(101, 118, 85, '2016-11-02 00:03:33', '2016-11-02 00:03:33', NULL),
(102, 119, 83, '2016-11-02 17:35:41', '2016-11-02 17:35:41', NULL),
(103, 120, 86, '2016-11-08 09:15:20', '2016-11-08 09:18:43', NULL),
(104, 121, 87, '2016-11-10 16:41:57', '2016-11-10 16:41:57', NULL),
(105, 122, 88, '2016-11-18 13:08:02', '2016-11-18 13:08:02', NULL),
(106, 123, 89, '2016-11-18 14:17:40', '2016-11-21 17:37:19', NULL),
(107, 124, 94, '2016-11-30 11:54:25', '2016-11-30 11:54:25', NULL),
(108, 125, 95, '2016-11-30 17:00:07', '2016-11-30 17:20:36', NULL),
(109, 126, 96, '2016-11-30 17:44:26', '2016-12-01 15:19:53', NULL),
(110, 127, 96, '2016-11-30 17:59:40', '2016-12-01 15:34:12', NULL),
(111, 128, 97, '2016-12-01 16:33:06', '2016-12-01 16:33:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Coupon_Business_Type`
--

CREATE TABLE IF NOT EXISTS `Coupon_Business_Type` (
  `id` int(10) unsigned NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `business_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Coupon_Business_Type`
--

INSERT INTO `Coupon_Business_Type` (`id`, `coupon_id`, `business_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2016-08-26 18:13:05', '2016-09-01 22:33:22', NULL),
(2, 2, 1, '2016-08-26 18:24:16', '2016-08-31 10:44:58', NULL),
(3, 3, 1, '2016-08-26 18:58:02', '2016-08-30 20:01:00', NULL),
(4, 4, 1, '2016-08-26 19:18:25', '2016-08-30 20:07:02', NULL),
(5, 5, 1, '2016-08-27 14:49:53', '2016-09-08 16:22:14', NULL),
(6, 6, 1, '2016-08-27 15:09:55', '2016-09-01 22:32:13', NULL),
(7, 16, 2, '2016-08-27 17:01:42', '2016-09-01 22:31:20', NULL),
(8, 17, 2, '2016-08-29 11:22:59', '2016-08-31 00:04:53', NULL),
(9, 18, 2, '2016-08-29 11:31:32', '2016-09-01 22:30:16', NULL),
(10, 20, 3, '2016-08-30 10:21:43', '2016-09-01 22:29:58', NULL),
(11, 21, 3, '2016-08-30 10:52:21', '2016-09-01 22:29:37', NULL),
(12, 22, 1, '2016-08-30 13:33:21', '2016-10-10 10:53:15', NULL),
(13, 23, 1, '2016-08-30 13:46:51', '2016-11-01 02:24:28', NULL),
(14, 24, 1, '2016-08-30 21:08:34', '2016-09-01 22:27:26', NULL),
(15, 25, 1, '2016-08-30 21:19:19', '2016-09-01 22:27:11', NULL),
(16, 26, 1, '2016-08-30 21:25:38', '2016-10-12 13:23:21', NULL),
(17, 27, 1, '2016-08-30 21:32:03', '2016-11-01 02:21:17', NULL),
(18, 31, 1, '2016-08-31 11:05:41', '2016-09-01 22:26:15', NULL),
(19, 32, 1, '2016-08-31 12:02:24', '2016-09-01 22:26:01', NULL),
(20, 33, 1, '2016-08-31 12:07:18', '2016-10-10 10:44:09', NULL),
(21, 34, 1, '2016-08-31 13:53:55', '2016-09-01 22:25:32', NULL),
(22, 35, 1, '2016-08-31 14:14:55', '2016-09-01 22:25:03', NULL),
(23, 36, 1, '2016-08-31 14:50:21', '2016-10-27 20:40:35', NULL),
(24, 37, 1, '2016-08-31 17:11:11', '2016-10-17 18:08:32', NULL),
(25, 38, 1, '2016-08-31 17:53:49', '2016-10-17 18:05:29', NULL),
(26, 39, 1, '2016-08-31 17:57:47', '2016-09-01 22:23:52', NULL),
(27, 40, 3, '2016-09-01 02:11:40', '2016-09-01 10:43:40', NULL),
(28, 41, 3, '2016-09-01 02:28:25', '2016-09-01 22:22:50', NULL),
(29, 42, 3, '2016-09-01 02:33:18', '2016-09-01 22:22:30', NULL),
(30, 43, 1, '2016-09-01 10:39:46', '2016-09-01 22:22:04', NULL),
(31, 44, 1, '2016-09-01 11:35:54', '2016-10-10 11:02:08', NULL),
(32, 45, 4, '2016-09-01 15:55:34', '2016-09-01 22:19:02', NULL),
(33, 46, 2, '2016-09-01 16:17:01', '2016-09-01 22:18:47', NULL),
(34, 47, 2, '2016-09-01 16:26:30', '2016-09-01 22:07:22', NULL),
(35, 49, 2, '2016-09-01 16:41:36', '2016-09-01 22:00:38', NULL),
(36, 50, 4, '2016-09-01 17:12:19', '2016-09-01 22:17:58', NULL),
(37, 51, 2, '2016-09-01 17:14:02', '2016-09-07 10:44:29', NULL),
(38, 52, 4, '2016-09-01 17:16:37', '2016-09-01 22:16:56', NULL),
(39, 53, 4, '2016-09-01 17:18:53', '2016-09-01 22:15:52', NULL),
(40, 54, 3, '2016-09-01 17:22:26', '2016-09-01 22:14:39', NULL),
(41, 55, 4, '2016-09-01 17:22:29', '2016-09-01 22:11:49', NULL),
(42, 58, 4, '2016-09-01 18:13:26', '2016-11-01 02:18:56', NULL),
(43, 59, 4, '2016-09-01 18:16:43', '2016-09-01 22:13:45', NULL),
(44, 60, 1, '2016-09-01 20:29:21', '2016-09-01 22:08:41', NULL),
(45, 62, 1, '2016-09-01 20:54:56', '2016-10-27 20:38:37', NULL),
(46, 63, 1, '2016-09-01 21:01:30', '2016-10-27 20:37:28', NULL),
(47, 64, 3, '2016-09-14 10:37:19', '2016-09-14 10:38:13', NULL),
(48, 65, 3, '2016-09-14 11:34:42', '2016-09-14 11:34:42', NULL),
(49, 66, 3, '2016-09-14 12:16:04', '2016-09-14 12:16:04', NULL),
(50, 67, 4, '2016-09-16 18:18:18', '2016-10-04 11:17:43', NULL),
(51, 68, 4, '2016-09-16 18:40:22', '2016-10-04 11:15:46', NULL),
(52, 69, 4, '2016-09-16 18:46:58', '2016-10-04 11:14:05', NULL),
(53, 70, 1, '2016-09-20 16:48:36', '2016-09-26 17:31:00', NULL),
(54, 71, 4, '2016-09-22 16:38:11', '2016-09-22 17:52:27', NULL),
(55, 72, 1, '2016-09-28 11:43:47', '2016-10-06 16:04:23', NULL),
(56, 73, 1, '2016-09-28 13:31:07', '2016-09-28 18:03:10', '2016-09-28 18:03:10'),
(57, 74, 1, '2016-09-28 13:42:26', '2016-09-28 18:05:26', '2016-09-28 18:05:26'),
(58, 75, 1, '2016-09-28 22:54:32', '2016-10-06 16:02:16', NULL),
(59, 76, 4, '2016-09-29 00:56:05', '2016-09-29 01:10:56', '2016-09-29 01:10:56'),
(60, 77, 4, '2016-09-29 01:03:08', '2016-10-06 16:05:07', NULL),
(61, 78, 2, '2016-10-03 11:36:53', '2016-10-03 11:36:53', NULL),
(62, 79, 2, '2016-10-03 11:42:17', '2016-10-03 11:44:40', NULL),
(63, 80, 2, '2016-10-03 11:48:11', '2016-10-03 11:48:11', NULL),
(64, 81, 2, '2016-10-03 11:51:19', '2016-10-03 11:51:19', NULL),
(65, 82, 1, '2016-10-03 14:16:03', '2016-11-01 02:16:03', NULL),
(66, 83, 1, '2016-10-03 16:12:45', '2016-10-06 17:45:39', NULL),
(67, 84, 1, '2016-10-03 16:12:45', '2016-10-03 16:42:25', NULL),
(68, 85, 1, '2016-10-03 16:12:45', '2016-10-03 16:41:30', NULL),
(69, 86, 1, '2016-10-03 16:12:45', '2016-10-03 16:47:19', NULL),
(70, 87, 1, '2016-10-03 16:12:45', '2016-10-03 16:48:12', NULL),
(71, 88, 1, '2016-10-03 16:12:45', '2016-10-03 16:44:55', NULL),
(72, 89, 1, '2016-10-03 16:12:45', '2016-10-03 16:45:27', NULL),
(73, 90, 1, '2016-10-03 16:12:45', '2016-10-03 16:45:27', NULL),
(74, 91, 1, '2016-10-06 15:10:16', '2016-10-06 17:45:36', '2016-10-06 17:45:36'),
(75, 92, 1, '2016-10-06 17:48:54', '2016-10-06 17:52:06', NULL),
(76, 93, 1, '2016-10-07 12:15:59', '2016-10-07 12:16:55', NULL),
(77, 94, 3, '2016-10-08 23:29:09', '2016-10-27 20:34:55', NULL),
(78, 95, 3, '2016-10-09 23:57:46', '2016-10-27 20:33:09', NULL),
(79, 96, 3, '2016-10-10 00:08:14', '2016-10-27 20:32:26', NULL),
(80, 97, 1, '2016-10-12 14:30:24', '2016-10-12 14:30:24', NULL),
(81, 98, 1, '2016-10-12 14:35:35', '2016-10-12 14:35:35', NULL),
(82, 99, 1, '2016-10-12 14:54:00', '2016-10-12 14:54:00', NULL),
(83, 100, 1, '2016-10-12 17:42:56', '2016-10-12 17:42:56', NULL),
(84, 101, 1, '2016-10-13 10:48:16', '2016-10-27 20:31:28', NULL),
(85, 102, 1, '2016-10-13 11:25:27', '2016-10-13 11:25:27', NULL),
(86, 103, 1, '2016-10-13 13:34:49', '2016-10-13 13:59:22', NULL),
(87, 104, 1, '2016-10-13 13:56:59', '2016-10-13 14:01:59', NULL),
(88, 105, 4, '2016-10-17 11:19:01', '2016-10-17 11:19:01', NULL),
(89, 106, 2, '2016-10-27 11:12:36', '2016-10-27 11:16:12', NULL),
(90, 107, 1, '2016-10-28 11:41:57', '2016-10-28 11:41:57', NULL),
(91, 108, 4, '2016-10-28 15:25:10', '2016-11-01 17:51:51', NULL),
(92, 109, 4, '2016-10-28 15:40:31', '2016-11-01 17:54:01', NULL),
(93, 110, 4, '2016-10-31 13:42:23', '2016-11-01 17:15:47', NULL),
(94, 111, 1, '2016-10-31 14:42:36', '2016-10-31 14:59:38', NULL),
(95, 112, 1, '2016-10-31 14:58:57', '2016-10-31 14:58:57', NULL),
(96, 113, 1, '2016-11-01 01:04:18', '2016-11-01 01:04:18', NULL),
(97, 114, 1, '2016-11-01 01:29:04', '2016-11-01 01:29:04', NULL),
(98, 115, 1, '2016-11-01 01:38:47', '2016-11-01 01:38:47', NULL),
(99, 116, 1, '2016-11-01 02:02:08', '2016-11-01 02:04:24', NULL),
(100, 117, 1, '2016-11-01 23:54:46', '2016-11-01 23:56:37', NULL),
(101, 118, 1, '2016-11-02 00:03:33', '2016-11-02 00:03:33', NULL),
(102, 119, 4, '2016-11-02 17:35:41', '2016-11-02 17:35:41', NULL),
(103, 120, 1, '2016-11-08 09:15:20', '2016-11-08 09:18:43', NULL),
(104, 121, 1, '2016-11-10 16:41:57', '2016-11-10 16:41:57', NULL),
(105, 122, 1, '2016-11-18 13:08:02', '2016-11-18 13:08:02', NULL),
(106, 123, 1, '2016-11-18 14:17:40', '2016-11-21 17:37:19', NULL),
(107, 124, 1, '2016-11-30 11:54:25', '2016-11-30 11:54:25', NULL),
(108, 125, 1, '2016-11-30 17:00:07', '2016-11-30 17:20:36', NULL),
(109, 126, 2, '2016-11-30 17:44:26', '2016-12-01 15:19:53', NULL),
(110, 127, 2, '2016-11-30 17:59:40', '2016-12-01 15:34:12', NULL),
(111, 128, 1, '2016-12-01 16:33:06', '2016-12-01 16:33:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Coupon_Slider`
--

CREATE TABLE IF NOT EXISTS `Coupon_Slider` (
  `id` int(10) unsigned NOT NULL,
  `type` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Coupon_Slider`
--

INSERT INTO `Coupon_Slider` (`id`, `type`, `type_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'coupon_43149142728712052159.jpg', '2016-08-26 18:13:05', '2016-08-26 18:13:05', NULL),
(2, 1, 1, 'coupon_757275299847677422099.jpg', '2016-08-26 18:13:05', '2016-08-26 18:13:05', NULL),
(3, 1, 1, 'coupon_709033472321084960315.jpg', '2016-08-26 18:13:05', '2016-08-26 18:13:05', NULL),
(4, 1, 2, 'coupon_184342989962086651.jpg', '2016-08-26 18:24:16', '2016-08-26 18:24:16', NULL),
(5, 1, 2, 'coupon_618645156184823109603.jpg', '2016-08-26 18:24:16', '2016-08-26 18:24:16', NULL),
(6, 1, 2, 'coupon_3123894487737910503.jpg', '2016-08-26 18:24:16', '2016-08-26 18:24:16', NULL),
(7, 1, 3, 'coupon_608046820136568928180.jpg', '2016-08-26 18:58:02', '2016-08-26 18:58:02', NULL),
(8, 1, 3, 'coupon_162230226476931871777.jpg', '2016-08-26 18:58:02', '2016-08-26 18:58:02', NULL),
(9, 1, 3, 'coupon_946928520775534991159.jpg', '2016-08-26 18:58:02', '2016-08-26 18:58:02', NULL),
(10, 1, 4, 'coupon_877341478253696009680.jpg', '2016-08-26 19:18:25', '2016-08-26 19:18:25', NULL),
(11, 1, 4, 'coupon_315486281683557323862.jpg', '2016-08-26 19:18:25', '2016-08-26 19:18:25', NULL),
(12, 1, 4, 'coupon_699473723102429506352.jpg', '2016-08-26 19:18:25', '2016-08-26 19:18:25', NULL),
(13, 1, 5, 'coupon_331345176834727923560.jpg', '2016-08-27 14:49:53', '2016-08-27 14:49:53', NULL),
(14, 1, 5, 'coupon_400887151134709141863.jpg', '2016-08-27 14:49:53', '2016-08-27 14:49:53', NULL),
(15, 1, 5, 'coupon_70105681193146779410.jpg', '2016-08-27 14:49:54', '2016-08-27 14:49:54', NULL),
(16, 1, 6, 'coupon_864207046244431236855.jpg', '2016-08-27 15:09:56', '2016-08-27 15:09:56', NULL),
(17, 1, 9, 'coupon_51681666161968456960.jpg', '2016-08-27 15:09:57', '2016-08-27 15:09:57', NULL),
(18, 1, 7, 'coupon_30382423341514320112.jpg', '2016-08-27 15:09:57', '2016-08-27 15:09:57', NULL),
(19, 1, 8, 'coupon_661316097617057714704.jpg', '2016-08-27 15:09:57', '2016-08-27 15:09:57', NULL),
(20, 1, 10, 'coupon_586714525629249436927.jpg', '2016-08-27 15:09:57', '2016-08-27 15:09:57', NULL),
(21, 1, 11, 'coupon_957506414500659643078.jpg', '2016-08-27 15:09:57', '2016-08-27 15:09:57', NULL),
(22, 1, 6, 'coupon_504879024324608192008.jpg', '2016-08-27 15:10:00', '2016-08-27 15:10:00', NULL),
(23, 1, 7, 'coupon_655473243814092940394.jpg', '2016-08-27 15:10:01', '2016-08-27 15:10:01', NULL),
(24, 1, 9, 'coupon_585742529499235627195.jpg', '2016-08-27 15:10:01', '2016-08-27 15:10:01', NULL),
(25, 1, 8, 'coupon_7654622276021084755.jpg', '2016-08-27 15:10:01', '2016-08-27 15:10:01', NULL),
(26, 1, 10, 'coupon_89810403040662347429.jpg', '2016-08-27 15:10:01', '2016-08-27 15:10:01', NULL),
(27, 1, 11, 'coupon_281535584655501110632.jpg', '2016-08-27 15:10:01', '2016-08-27 15:10:01', NULL),
(28, 1, 6, 'coupon_225662049419879623036.jpg', '2016-08-27 15:10:03', '2016-08-27 15:10:03', NULL),
(29, 1, 9, 'coupon_219141654706447487317.jpg', '2016-08-27 15:10:03', '2016-08-27 15:10:03', NULL),
(30, 1, 7, 'coupon_56760855962818935916.jpg', '2016-08-27 15:10:03', '2016-08-27 15:10:03', NULL),
(31, 1, 8, 'coupon_129119279345108073719.jpg', '2016-08-27 15:10:03', '2016-08-27 15:10:03', NULL),
(32, 1, 10, 'coupon_220601093957536299666.jpg', '2016-08-27 15:10:03', '2016-08-27 15:10:03', NULL),
(33, 1, 11, 'coupon_96905879930316863067.jpg', '2016-08-27 15:10:03', '2016-08-27 15:10:03', NULL),
(34, 1, 12, 'coupon_722964276545304000498.jpg', '2016-08-27 15:43:02', '2016-08-27 15:43:02', NULL),
(35, 1, 12, 'coupon_755951689819762556815.jpg', '2016-08-27 15:43:02', '2016-08-27 15:43:02', NULL),
(36, 1, 12, 'coupon_67318148754368446373.jpg', '2016-08-27 15:43:02', '2016-08-27 15:43:02', NULL),
(37, 1, 13, 'coupon_216539656283755058085.jpg', '2016-08-27 15:54:55', '2016-08-27 15:54:55', NULL),
(38, 1, 13, 'coupon_37895481322717573690.jpg', '2016-08-27 15:54:56', '2016-08-27 15:54:56', NULL),
(39, 1, 13, 'coupon_251387683070081963677.jpg', '2016-08-27 15:54:56', '2016-08-27 15:54:56', NULL),
(40, 1, 17, 'coupon_18806478074203130235.jpg', '2016-08-29 11:23:00', '2016-08-29 11:23:00', NULL),
(41, 1, 17, 'coupon_592761387735541574904.jpg', '2016-08-29 11:23:01', '2016-08-29 11:23:01', NULL),
(42, 1, 17, 'coupon_37881025276059161108.jpg', '2016-08-29 11:23:02', '2016-08-29 11:23:02', NULL),
(43, 1, 18, 'coupon_389652125422819105239.jpg', '2016-08-29 11:31:33', '2016-08-29 11:31:33', NULL),
(44, 1, 18, 'coupon_637402766570087357173.jpg', '2016-08-29 11:31:34', '2016-08-29 11:31:34', NULL),
(45, 1, 18, 'coupon_303328190258449496072.jpg', '2016-08-29 11:31:35', '2016-08-29 11:31:35', NULL),
(46, 1, 19, 'coupon_101148124093231870353.jpg', '2016-08-29 11:37:02', '2016-08-29 11:37:02', NULL),
(47, 1, 19, 'coupon_6928068817241566652.jpg', '2016-08-29 11:37:03', '2016-08-29 11:37:03', NULL),
(48, 1, 19, 'coupon_653881272124161735286.jpg', '2016-08-29 11:37:04', '2016-08-29 11:37:04', NULL),
(49, 1, 20, 'coupon_287203917610923025888.jpg', '2016-08-30 10:21:43', '2016-08-30 10:21:43', NULL),
(50, 1, 20, 'coupon_313971747518577988439.jpg', '2016-08-30 10:21:43', '2016-08-30 10:21:43', NULL),
(51, 1, 20, 'coupon_291629919761016459261.jpg', '2016-08-30 10:21:43', '2016-08-30 10:21:43', NULL),
(52, 1, 21, 'coupon_639780481866323129772.jpg', '2016-08-30 10:52:21', '2016-08-30 10:52:21', NULL),
(53, 1, 21, 'coupon_51036084536271861914.jpg', '2016-08-30 10:52:21', '2016-08-30 10:52:21', NULL),
(54, 1, 21, 'coupon_39899869091128576639.jpg', '2016-08-30 10:52:21', '2016-08-30 10:52:21', NULL),
(55, 1, 22, 'coupon_688869344886922653520.jpg', '2016-08-30 13:33:21', '2016-09-01 11:20:09', NULL),
(56, 1, 22, 'coupon_2098308977148653549.jpg', '2016-08-30 13:33:21', '2016-09-01 11:20:10', NULL),
(57, 1, 22, 'coupon_48299056612206570289.jpg', '2016-08-30 13:33:21', '2016-09-01 11:20:10', NULL),
(58, 1, 23, 'coupon_656229271064315714819.jpg', '2016-08-30 13:46:51', '2016-08-30 13:46:51', NULL),
(59, 1, 23, 'coupon_46540223324349437309.jpg', '2016-08-30 13:46:51', '2016-08-30 13:46:51', NULL),
(60, 1, 23, 'coupon_13038158783692394579.jpg', '2016-08-30 13:46:52', '2016-08-30 13:46:52', NULL),
(61, 1, 24, 'coupon_736528141300358132811.jpg', '2016-08-30 21:08:35', '2016-08-30 21:08:35', NULL),
(62, 1, 24, 'coupon_340038873997354490249.jpg', '2016-08-30 21:08:35', '2016-08-30 21:08:35', NULL),
(63, 1, 24, 'coupon_10836216571124926303.jpg', '2016-08-30 21:08:35', '2016-08-30 21:08:35', NULL),
(64, 1, 25, 'coupon_754024595014055066351.jpg', '2016-08-30 21:19:20', '2016-09-01 16:27:15', NULL),
(65, 1, 25, 'coupon_755154220535996921157.jpg', '2016-08-30 21:19:20', '2016-09-01 16:27:15', NULL),
(66, 1, 25, 'coupon_643188618553412202255.jpg', '2016-08-30 21:19:20', '2016-09-01 16:27:15', NULL),
(67, 1, 26, 'coupon_52211414588385543899.jpg', '2016-08-30 21:25:38', '2016-08-30 21:25:38', NULL),
(68, 1, 26, 'coupon_516210566873828074071.jpg', '2016-08-30 21:25:38', '2016-08-30 21:25:38', NULL),
(69, 1, 26, 'coupon_339971139538342745035.jpg', '2016-08-30 21:25:38', '2016-08-30 21:25:38', NULL),
(70, 1, 27, 'coupon_358289760190368500150.jpg', '2016-08-30 21:32:03', '2016-08-30 21:32:03', NULL),
(71, 1, 27, 'coupon_607283469677914969079.jpg', '2016-08-30 21:32:03', '2016-08-30 21:32:03', NULL),
(72, 1, 27, 'coupon_115225083204968197919.jpg', '2016-08-30 21:32:03', '2016-08-30 21:32:03', NULL),
(73, 1, 28, 'coupon_714724782762751064889.jpg', '2016-08-31 03:31:16', '2016-08-31 03:31:16', NULL),
(74, 1, 28, 'coupon_27342116319491715748.jpg', '2016-08-31 03:31:16', '2016-08-31 03:31:16', NULL),
(75, 1, 28, 'coupon_51559292826531661794.jpg', '2016-08-31 03:31:16', '2016-08-31 03:31:16', NULL),
(76, 1, 29, 'coupon_712079142336525749055.jpg', '2016-08-31 03:35:09', '2016-08-31 03:35:09', NULL),
(77, 1, 29, 'coupon_160756653031502302224.jpg', '2016-08-31 03:35:10', '2016-08-31 03:35:10', NULL),
(78, 1, 29, 'coupon_957806793609091659535.jpg', '2016-08-31 03:35:10', '2016-08-31 03:35:10', NULL),
(79, 1, 30, 'coupon_283602024049359927531.jpg', '2016-08-31 03:45:08', '2016-08-31 03:45:08', NULL),
(80, 1, 30, 'coupon_718663077302829257148.jpg', '2016-08-31 03:45:08', '2016-08-31 03:45:08', NULL),
(81, 1, 30, 'coupon_570564878605658707690.jpg', '2016-08-31 03:45:08', '2016-08-31 03:45:08', NULL),
(82, 1, 31, 'coupon_265443457465286367089.jpg', '2016-08-31 11:05:41', '2016-08-31 11:05:41', NULL),
(83, 1, 31, 'coupon_901997651988074760214.jpg', '2016-08-31 11:05:41', '2016-08-31 11:05:41', NULL),
(84, 1, 31, 'coupon_930327427420565975004.jpg', '2016-08-31 11:05:42', '2016-08-31 11:05:42', NULL),
(85, 1, 32, 'coupon_844201995807735947982.jpg', '2016-08-31 12:02:24', '2016-08-31 12:02:24', NULL),
(86, 1, 32, 'coupon_36395821997367731517.jpg', '2016-08-31 12:02:24', '2016-08-31 12:02:24', NULL),
(87, 1, 32, 'coupon_280657897486562847621.jpg', '2016-08-31 12:02:24', '2016-08-31 12:02:24', NULL),
(88, 1, 33, 'coupon_580759056659313680716.jpg', '2016-08-31 12:07:18', '2016-08-31 12:07:18', NULL),
(89, 1, 33, 'coupon_363988758921617912064.jpg', '2016-08-31 12:07:18', '2016-08-31 12:07:18', NULL),
(90, 1, 33, 'coupon_18969667188818182487.jpg', '2016-08-31 12:07:18', '2016-08-31 12:07:18', NULL),
(91, 1, 34, 'coupon_11504812752151092045.jpg', '2016-08-31 13:53:55', '2016-09-01 16:22:13', NULL),
(92, 1, 34, 'coupon_531896446975621514874.jpg', '2016-08-31 13:53:55', '2016-09-01 16:22:13', NULL),
(93, 1, 34, 'coupon_60008696795096462968.jpg', '2016-08-31 13:53:55', '2016-09-01 16:22:13', NULL),
(94, 1, 35, 'coupon_73312048878928930158.jpg', '2016-08-31 14:14:55', '2016-09-01 16:20:31', NULL),
(95, 1, 35, 'coupon_896840421162043711582.jpg', '2016-08-31 14:14:55', '2016-09-01 16:20:31', NULL),
(96, 1, 35, 'coupon_542006934991385960113.jpg', '2016-08-31 14:14:55', '2016-09-01 16:20:31', NULL),
(97, 1, 36, 'coupon_53217975684872146099.jpg', '2016-08-31 14:50:21', '2016-08-31 14:50:21', NULL),
(98, 1, 36, 'coupon_725219440260687928256.jpg', '2016-08-31 14:50:21', '2016-08-31 14:50:21', NULL),
(99, 1, 36, 'coupon_62988065866731710713.jpg', '2016-08-31 14:50:21', '2016-08-31 14:50:21', NULL),
(100, 1, 37, 'coupon_88323545031783615844.jpg', '2016-08-31 17:11:11', '2016-09-01 16:23:46', NULL),
(101, 1, 37, 'coupon_912240790686773280324.jpg', '2016-08-31 17:11:11', '2016-09-01 16:23:46', NULL),
(102, 1, 37, 'coupon_934962840816942939718.jpg', '2016-08-31 17:11:12', '2016-09-01 16:23:47', NULL),
(103, 1, 38, 'coupon_282968145579727527005.jpg', '2016-08-31 17:53:49', '2016-09-01 16:10:13', NULL),
(104, 1, 38, 'coupon_195393898580948637636.jpg', '2016-08-31 17:53:49', '2016-09-01 16:10:13', NULL),
(105, 1, 38, 'coupon_616841933339102827786.jpg', '2016-08-31 17:53:50', '2016-09-01 16:10:13', NULL),
(106, 1, 39, 'coupon_770046989768285833482.jpg', '2016-08-31 17:57:48', '2016-09-01 16:10:55', NULL),
(107, 1, 39, 'coupon_943924966904362930343.jpg', '2016-08-31 17:57:48', '2016-09-01 16:10:55', NULL),
(108, 1, 39, 'coupon_11414415025774263975.jpg', '2016-08-31 17:57:48', '2016-09-01 16:10:55', NULL),
(109, 1, 40, 'coupon_523029137591599054262.jpg', '2016-09-01 02:11:40', '2016-09-01 02:11:40', NULL),
(110, 1, 40, 'coupon_35744653384572994906.jpg', '2016-09-01 02:11:40', '2016-09-01 02:11:40', NULL),
(111, 1, 40, 'coupon_14897688706827625643.jpg', '2016-09-01 02:11:40', '2016-09-01 02:11:40', NULL),
(112, 1, 41, 'coupon_332113744984568000029.jpg', '2016-09-01 02:28:25', '2016-09-01 02:28:25', NULL),
(113, 1, 41, 'coupon_463007576350589916740.jpg', '2016-09-01 02:28:25', '2016-09-01 02:28:25', NULL),
(114, 1, 41, 'coupon_167208419644467149167.jpg', '2016-09-01 02:28:25', '2016-09-01 02:28:25', NULL),
(115, 1, 42, 'coupon_431217319193223754931.jpg', '2016-09-01 02:33:18', '2016-09-01 02:33:18', NULL),
(116, 1, 42, 'coupon_141504378591835842385.jpg', '2016-09-01 02:33:18', '2016-09-01 02:33:18', NULL),
(117, 1, 42, 'coupon_544393383447197854836.jpg', '2016-09-01 02:33:18', '2016-09-01 02:33:18', NULL),
(118, 1, 43, 'coupon_313409154755399429539.jpg', '2016-09-01 10:39:46', '2016-09-01 10:39:46', NULL),
(119, 1, 43, 'coupon_19021014575058448812.jpg', '2016-09-01 10:39:46', '2016-09-01 10:39:46', NULL),
(120, 1, 43, 'coupon_563601389527412345961.jpg', '2016-09-01 10:39:46', '2016-09-01 10:39:46', NULL),
(121, 1, 44, 'coupon_829897846565834146409.jpg', '2016-09-01 11:35:54', '2016-09-01 11:35:54', NULL),
(122, 1, 44, 'coupon_17551826754834272043.jpg', '2016-09-01 11:35:55', '2016-09-01 11:35:55', NULL),
(123, 1, 44, 'coupon_420392243713559013007.jpg', '2016-09-01 11:35:55', '2016-09-01 11:35:55', NULL),
(124, 1, 45, 'coupon_39291028613093328845.jpg', '2016-09-01 15:55:34', '2016-09-01 15:55:34', NULL),
(125, 1, 45, 'coupon_636036741433001639392.jpg', '2016-09-01 15:55:34', '2016-09-01 15:55:34', NULL),
(126, 1, 45, 'coupon_18336636719542124389.jpg', '2016-09-01 15:55:34', '2016-09-01 15:55:34', NULL),
(127, 1, 46, 'coupon_55400821289493236644.jpg', '2016-09-01 16:17:01', '2016-09-01 16:17:01', NULL),
(128, 1, 46, 'coupon_606513083645965668769.jpg', '2016-09-01 16:17:01', '2016-09-01 16:17:01', NULL),
(129, 1, 46, 'coupon_240019127193422447237.jpg', '2016-09-01 16:17:01', '2016-09-01 19:24:01', NULL),
(130, 1, 47, 'coupon_252674731928968804834.jpg', '2016-09-01 16:26:30', '2016-09-01 16:26:30', NULL),
(131, 1, 47, 'coupon_750891091566576940709.jpg', '2016-09-01 16:26:30', '2016-09-01 16:26:30', NULL),
(132, 1, 47, 'coupon_64432417762887915543.jpg', '2016-09-01 16:26:30', '2016-09-01 16:35:48', NULL),
(133, 1, 48, 'coupon_614235141745976393343.jpg', '2016-09-01 16:34:53', '2016-09-01 16:34:53', NULL),
(134, 1, 48, 'coupon_753683847226969500060.jpg', '2016-09-01 16:34:53', '2016-09-01 16:34:53', NULL),
(135, 1, 48, 'coupon_27957022137929199448.jpg', '2016-09-01 16:34:53', '2016-09-01 16:34:53', NULL),
(136, 1, 49, 'coupon_114227788768356457827.jpg', '2016-09-01 16:41:36', '2016-09-01 16:41:36', NULL),
(137, 1, 49, 'coupon_76748967287441983489.jpg', '2016-09-01 16:41:36', '2016-09-01 16:41:36', NULL),
(138, 1, 49, 'coupon_733148032849808503985.jpg', '2016-09-01 16:41:36', '2016-09-01 16:41:36', NULL),
(139, 1, 50, 'coupon_864555017107468689338.jpg', '2016-09-01 17:12:20', '2016-09-01 17:12:20', NULL),
(140, 1, 50, 'coupon_197439580611142832637.jpg', '2016-09-01 17:12:20', '2016-09-01 17:12:20', NULL),
(141, 1, 50, 'coupon_360378898847783494592.jpg', '2016-09-01 17:12:20', '2016-09-01 17:12:20', NULL),
(142, 1, 51, 'coupon_426214880721921347612.jpg', '2016-09-01 17:14:02', '2016-09-01 17:14:02', NULL),
(143, 1, 51, 'coupon_864395873195825906779.jpg', '2016-09-01 17:14:02', '2016-09-01 17:14:02', NULL),
(144, 1, 51, 'coupon_360248825886884208580.jpg', '2016-09-01 17:14:02', '2016-09-01 17:14:02', NULL),
(145, 1, 52, 'coupon_892911167934077989171.jpg', '2016-09-01 17:16:37', '2016-09-01 17:16:37', NULL),
(146, 1, 52, 'coupon_959862132563746821525.jpg', '2016-09-01 17:16:37', '2016-09-01 17:16:37', NULL),
(147, 1, 52, 'coupon_10179868622185943931.jpg', '2016-09-01 17:16:37', '2016-09-01 17:16:37', NULL),
(148, 1, 53, 'coupon_233029939593683480883.jpg', '2016-09-01 17:18:54', '2016-09-01 17:18:54', NULL),
(149, 1, 53, 'coupon_25942915481045853988.jpg', '2016-09-01 17:18:54', '2016-09-01 17:18:54', NULL),
(150, 1, 53, 'coupon_378904721031998221968.jpg', '2016-09-01 17:18:54', '2016-09-01 17:18:54', NULL),
(151, 1, 54, 'coupon_307226075404747061350.jpg', '2016-09-01 17:22:26', '2016-09-01 17:22:26', NULL),
(152, 1, 54, 'coupon_56535831551088211734.jpg', '2016-09-01 17:22:26', '2016-09-01 17:22:26', NULL),
(153, 1, 54, 'coupon_892634976899008330522.jpg', '2016-09-01 17:22:26', '2016-09-01 17:22:26', NULL),
(154, 1, 55, 'coupon_23745936244439171642.jpg', '2016-09-01 17:22:29', '2016-09-01 17:22:29', NULL),
(155, 1, 55, 'coupon_83701753725611321465.jpg', '2016-09-01 17:22:29', '2016-09-01 17:22:29', NULL),
(156, 1, 55, 'coupon_605887215500696576991.jpg', '2016-09-01 17:22:29', '2016-09-01 17:22:29', NULL),
(157, 1, 56, 'coupon_809845259077446512124.jpg', '2016-09-01 18:00:53', '2016-09-01 18:00:53', NULL),
(158, 1, 56, 'coupon_523859650867981796308.jpg', '2016-09-01 18:00:53', '2016-09-01 18:00:53', NULL),
(159, 1, 56, 'coupon_925403818358504783828.jpg', '2016-09-01 18:00:53', '2016-09-01 18:00:53', NULL),
(160, 1, 57, 'coupon_218479929795986555804.jpg', '2016-09-01 18:00:54', '2016-09-01 18:00:54', NULL),
(161, 1, 57, 'coupon_453231692013221113762.jpg', '2016-09-01 18:00:54', '2016-09-01 18:00:54', NULL),
(162, 1, 57, 'coupon_194947032080109319347.jpg', '2016-09-01 18:00:54', '2016-09-01 18:00:54', NULL),
(163, 1, 58, 'coupon_822883419513322472709.jpg', '2016-09-01 18:13:26', '2016-09-01 18:13:26', NULL),
(164, 1, 58, 'coupon_370437213808702652919.jpg', '2016-09-01 18:13:26', '2016-09-01 18:13:26', NULL),
(165, 1, 58, 'coupon_515187798196828278933.jpg', '2016-09-01 18:13:26', '2016-09-01 18:13:26', NULL),
(166, 1, 59, 'coupon_18828178268161234568.jpg', '2016-09-01 18:16:43', '2016-09-01 18:16:43', NULL),
(167, 1, 59, 'coupon_4700604423938786655.jpg', '2016-09-01 18:16:43', '2016-09-01 18:16:43', NULL),
(168, 1, 59, 'coupon_47195394188996422748.jpg', '2016-09-01 18:16:43', '2016-09-01 18:16:43', NULL),
(169, 1, 60, 'coupon_465374328461577907020.jpg', '2016-09-01 20:29:22', '2016-09-01 20:37:48', NULL),
(170, 1, 60, 'coupon_46456083228311577102.jpg', '2016-09-01 20:29:22', '2016-09-01 20:37:48', NULL),
(171, 1, 60, 'coupon_108631778434281558216.jpg', '2016-09-01 20:29:23', '2016-09-01 20:37:48', NULL),
(172, 1, 61, 'coupon_828359430418827363726.jpg', '2016-09-01 20:29:23', '2016-09-01 20:29:23', NULL),
(173, 1, 61, 'coupon_748304266223215267987.jpg', '2016-09-01 20:29:24', '2016-09-01 20:29:24', NULL),
(174, 1, 61, 'coupon_565931860362412611496.jpg', '2016-09-01 20:29:24', '2016-09-01 20:29:24', NULL),
(175, 1, 62, 'coupon_492724628213609587428.jpg', '2016-09-01 20:54:56', '2016-09-01 20:54:56', NULL),
(176, 1, 62, 'coupon_412856739251221536898.jpg', '2016-09-01 20:54:56', '2016-09-01 20:54:56', NULL),
(177, 1, 62, 'coupon_732657732444697997456.jpg', '2016-09-01 20:54:56', '2016-09-01 20:54:56', NULL),
(178, 1, 63, 'coupon_328164553914292455834.jpg', '2016-09-01 21:01:30', '2016-09-01 21:01:30', NULL),
(179, 1, 63, 'coupon_856520586235985518094.jpg', '2016-09-01 21:01:30', '2016-09-01 21:01:30', NULL),
(180, 1, 63, 'coupon_610567856849476073452.jpg', '2016-09-01 21:01:30', '2016-09-01 21:01:30', NULL),
(181, 1, 64, 'coupon_980875444205657595067.jpg', '2016-09-14 10:37:19', '2016-09-14 10:37:19', NULL),
(182, 1, 64, 'coupon_109900998575159425343.jpg', '2016-09-14 10:37:19', '2016-09-14 10:37:19', NULL),
(183, 1, 64, 'coupon_241829211450755016405.jpg', '2016-09-14 10:37:19', '2016-09-14 10:37:19', NULL),
(184, 1, 65, 'coupon_663625237458398967821.jpg', '2016-09-14 11:34:42', '2016-09-14 11:34:42', NULL),
(185, 1, 65, 'coupon_600349032369196291905.jpg', '2016-09-14 11:34:42', '2016-09-14 11:34:42', NULL),
(186, 1, 65, 'coupon_91753121547366148493.jpg', '2016-09-14 11:34:42', '2016-09-14 11:34:42', NULL),
(187, 1, 66, 'coupon_69953516494811552307.jpg', '2016-09-14 12:16:04', '2016-09-14 12:16:04', NULL),
(188, 1, 66, 'coupon_596214379504229732393.jpg', '2016-09-14 12:16:04', '2016-09-14 12:16:04', NULL),
(189, 1, 66, 'coupon_748229378120975727984.jpg', '2016-09-14 12:16:04', '2016-09-14 12:16:04', NULL),
(190, 1, 67, 'coupon_585665178032345919429.jpg', '2016-09-16 18:18:18', '2016-09-16 18:18:18', NULL),
(191, 1, 67, 'coupon_346985031629274524116.jpg', '2016-09-16 18:18:18', '2016-09-16 18:18:18', NULL),
(192, 1, 67, 'coupon_965565624310982691211.jpg', '2016-09-16 18:18:18', '2016-09-16 18:18:18', NULL),
(193, 1, 68, 'coupon_567738533226754699021.jpg', '2016-09-16 18:40:22', '2016-09-16 18:40:22', NULL),
(194, 1, 68, 'coupon_647867284238569595770.jpg', '2016-09-16 18:40:22', '2016-09-16 18:40:22', NULL),
(195, 1, 68, 'coupon_19673469798066971005.jpg', '2016-09-16 18:40:23', '2016-09-16 18:40:23', NULL),
(196, 1, 69, 'coupon_26632245753954286806.jpg', '2016-09-16 18:46:58', '2016-09-16 18:46:58', NULL),
(197, 1, 69, 'coupon_650196289349055224697.jpg', '2016-09-16 18:46:58', '2016-09-16 18:46:58', NULL),
(198, 1, 69, 'coupon_372508873147398890909.jpg', '2016-09-16 18:46:58', '2016-09-16 18:46:58', NULL),
(199, 1, 70, 'coupon_73234785215702664227.jpg', '2016-09-20 16:48:37', '2016-09-20 16:48:37', NULL),
(200, 1, 70, 'coupon_5733151609921553842.jpg', '2016-09-20 16:48:37', '2016-09-20 16:48:37', NULL),
(201, 1, 70, 'coupon_7451183137040744918.jpg', '2016-09-20 16:48:37', '2016-09-20 16:48:37', NULL),
(202, 1, 71, 'coupon_765093328815276944518.jpg', '2016-09-22 16:38:11', '2016-09-22 16:38:11', NULL),
(203, 1, 71, 'coupon_689926962057582591315.jpg', '2016-09-22 16:38:11', '2016-09-22 16:38:11', NULL),
(204, 1, 71, 'coupon_78735257055344953698.jpg', '2016-09-22 16:38:11', '2016-09-22 16:38:11', NULL),
(205, 1, 72, 'coupon_911419179125392399849.jpg', '2016-09-28 11:43:47', '2016-09-28 11:43:47', NULL),
(206, 1, 72, 'coupon_690236597625326888078.jpg', '2016-09-28 11:43:48', '2016-09-28 11:43:48', NULL),
(207, 1, 72, 'coupon_43814191190649758297.jpg', '2016-09-28 11:43:48', '2016-09-28 11:43:48', NULL),
(208, 1, 73, 'coupon_62405235526966192982.jpg', '2016-09-28 13:31:07', '2016-09-28 18:03:10', '2016-09-28 18:03:10'),
(209, 1, 73, 'coupon_32819757063184369152.jpg', '2016-09-28 13:31:07', '2016-09-28 18:03:10', '2016-09-28 18:03:10'),
(210, 1, 73, 'coupon_53697163034522334235.jpg', '2016-09-28 13:31:07', '2016-09-28 18:03:10', '2016-09-28 18:03:10'),
(211, 1, 74, 'coupon_26255564539715913150.jpg', '2016-09-28 13:42:27', '2016-09-28 18:05:26', '2016-09-28 18:05:26'),
(212, 1, 74, 'coupon_736801615127672646886.jpg', '2016-09-28 13:42:27', '2016-09-28 18:05:26', '2016-09-28 18:05:26'),
(213, 1, 74, 'coupon_167791756156737623533.jpg', '2016-09-28 13:42:27', '2016-09-28 18:05:26', '2016-09-28 18:05:26'),
(214, 1, 75, 'coupon_728099289617598479645.jpg', '2016-09-28 22:54:32', '2016-09-28 22:54:32', NULL),
(215, 1, 75, 'coupon_678425632594582409454.jpg', '2016-09-28 22:54:32', '2016-09-28 23:09:57', NULL),
(216, 1, 75, 'coupon_869509447493071623167.jpg', '2016-09-28 22:54:32', '2016-09-28 22:54:32', NULL),
(217, 1, 76, 'coupon_365880210091381457006.jpg', '2016-09-29 00:56:05', '2016-09-29 01:10:56', '2016-09-29 01:10:56'),
(218, 1, 76, 'coupon_890727452209086057160.jpg', '2016-09-29 00:56:05', '2016-09-29 01:10:56', '2016-09-29 01:10:56'),
(219, 1, 76, 'coupon_216991025954705246049.jpg', '2016-09-29 00:56:05', '2016-09-29 01:10:56', '2016-09-29 01:10:56'),
(220, 1, 77, 'coupon_418840391608036594985.jpg', '2016-09-29 01:03:08', '2016-09-29 01:03:08', NULL),
(221, 1, 77, 'coupon_233003628848642038038.jpg', '2016-09-29 01:03:08', '2016-09-29 01:03:08', NULL),
(222, 1, 77, 'coupon_411989170915521097177.jpg', '2016-09-29 01:03:08', '2016-09-29 01:03:08', NULL),
(223, 1, 78, 'coupon_983697826094407245765.jpg', '2016-10-03 11:36:54', '2016-10-03 11:36:54', NULL),
(224, 1, 78, 'coupon_814735023374246110214.jpg', '2016-10-03 11:36:54', '2016-10-03 11:36:54', NULL),
(225, 1, 78, 'coupon_970058936409033787677.jpg', '2016-10-03 11:36:54', '2016-10-03 11:36:54', NULL),
(226, 1, 79, 'coupon_65831966292194137793.jpg', '2016-10-03 11:42:17', '2016-10-03 11:44:40', NULL),
(227, 1, 79, 'coupon_468279289995635567513.jpg', '2016-10-03 11:42:17', '2016-10-03 11:42:17', NULL),
(228, 1, 79, 'coupon_511937043659559367630.jpg', '2016-10-03 11:42:17', '2016-10-03 11:42:17', NULL),
(229, 1, 80, 'coupon_95289814057848397253.jpg', '2016-10-03 11:48:11', '2016-10-03 11:48:11', NULL),
(230, 1, 80, 'coupon_149507533899588232785.jpg', '2016-10-03 11:48:12', '2016-10-03 11:48:12', NULL),
(231, 1, 80, 'coupon_962325962774336164451.jpg', '2016-10-03 11:48:12', '2016-10-03 11:48:12', NULL),
(232, 1, 81, 'coupon_6940439204797660598.jpg', '2016-10-03 11:51:19', '2016-10-03 11:51:19', NULL),
(233, 1, 81, 'coupon_913821635128573940258.jpg', '2016-10-03 11:51:19', '2016-10-03 11:51:19', NULL),
(234, 1, 81, 'coupon_331861983830519000140.jpg', '2016-10-03 11:51:19', '2016-10-03 11:51:19', NULL),
(235, 1, 82, 'coupon_6301835819879335947.jpg', '2016-10-03 14:16:03', '2016-10-03 14:16:03', NULL),
(236, 1, 82, 'coupon_917802859060065943648.jpg', '2016-10-03 14:16:03', '2016-10-03 14:16:03', NULL),
(237, 1, 82, 'coupon_962007374405271285890.jpg', '2016-10-03 14:16:03', '2016-10-03 14:16:03', NULL),
(238, 1, 83, 'coupon_604335122893624219141.jpg', '2016-10-03 16:12:45', '2016-10-06 17:45:39', '2016-10-06 17:45:39'),
(239, 1, 83, 'coupon_539777521323881845720.jpg', '2016-10-03 16:12:45', '2016-10-06 17:45:39', '2016-10-06 17:45:39'),
(240, 1, 83, 'coupon_31955007362073976088.jpg', '2016-10-03 16:12:45', '2016-10-06 17:45:39', '2016-10-06 17:45:39'),
(241, 1, 91, 'coupon_927544659303092047377.jpg', '2016-10-06 15:10:16', '2016-10-06 17:45:36', '2016-10-06 17:45:36'),
(242, 1, 91, 'coupon_737864238097769640289.jpg', '2016-10-06 15:10:16', '2016-10-06 17:45:36', '2016-10-06 17:45:36'),
(243, 1, 91, 'coupon_444653970000008894872.jpg', '2016-10-06 15:10:16', '2016-10-06 17:45:36', '2016-10-06 17:45:36'),
(244, 1, 92, 'coupon_22466014221107212378.jpg', '2016-10-06 17:48:55', '2016-10-06 17:48:55', NULL),
(245, 1, 92, 'coupon_227209971967956994827.jpg', '2016-10-06 17:48:55', '2016-10-06 17:48:55', NULL),
(246, 1, 92, 'coupon_584075983693591804197.jpg', '2016-10-06 17:48:55', '2016-10-06 17:48:55', NULL),
(247, 1, 93, 'coupon_27259732593945145320.jpg', '2016-10-07 12:15:59', '2016-10-07 12:15:59', NULL),
(248, 1, 93, 'coupon_531270139465733317047.jpg', '2016-10-07 12:15:59', '2016-10-07 12:15:59', NULL),
(249, 1, 93, 'coupon_727001136582883093492.jpg', '2016-10-07 12:16:00', '2016-10-07 12:16:00', NULL),
(250, 1, 94, 'coupon_878081555696146012630.jpg', '2016-10-08 23:29:09', '2016-10-08 23:29:09', NULL),
(251, 1, 94, 'coupon_782499688213385160061.jpg', '2016-10-08 23:29:09', '2016-10-08 23:29:09', NULL),
(252, 1, 94, 'coupon_597830925443565480521.jpg', '2016-10-08 23:29:09', '2016-10-08 23:29:09', NULL),
(253, 1, 95, 'coupon_952315861915579434219.jpg', '2016-10-09 23:57:46', '2016-10-09 23:57:46', NULL),
(254, 1, 95, 'coupon_659548615169636705860.jpg', '2016-10-09 23:57:46', '2016-10-09 23:57:46', NULL),
(255, 1, 95, 'coupon_585952118334314744287.jpg', '2016-10-09 23:57:46', '2016-10-09 23:57:46', NULL),
(256, 1, 96, 'coupon_38519413779829288792.jpg', '2016-10-10 00:08:14', '2016-10-10 00:08:14', NULL),
(257, 1, 96, 'coupon_703723927904111650382.jpg', '2016-10-10 00:08:14', '2016-10-10 00:08:14', NULL),
(258, 1, 96, 'coupon_292896536199825924155.jpg', '2016-10-10 00:08:14', '2016-10-10 00:08:14', NULL),
(259, 1, 97, 'coupon_862526144126947406634.jpg', '2016-10-12 14:30:24', '2016-10-12 14:30:24', NULL),
(260, 1, 97, 'coupon_650144386757078251677.jpg', '2016-10-12 14:30:24', '2016-10-12 14:30:24', NULL),
(261, 1, 97, 'coupon_74835766538226230644.jpg', '2016-10-12 14:30:24', '2016-10-12 14:30:24', NULL),
(262, 1, 98, 'coupon_527923771614208523781.jpg', '2016-10-12 14:35:35', '2016-10-12 14:35:35', NULL),
(263, 1, 98, 'coupon_433669779439968296298.jpg', '2016-10-12 14:35:35', '2016-10-12 14:35:35', NULL),
(264, 1, 98, 'coupon_272251097367458277111.jpg', '2016-10-12 14:35:35', '2016-10-12 14:35:35', NULL),
(265, 1, 99, 'coupon_23647654361823820001.jpg', '2016-10-12 14:54:00', '2016-10-12 14:54:00', NULL),
(266, 1, 99, 'coupon_59638252451799612112.jpg', '2016-10-12 14:54:00', '2016-10-12 14:54:00', NULL),
(267, 1, 99, 'coupon_427489061707002392463.jpg', '2016-10-12 14:54:00', '2016-10-12 14:54:00', NULL),
(268, 1, 100, 'coupon_995946197627789507691.jpg', '2016-10-12 17:42:56', '2016-10-12 17:42:56', NULL),
(269, 1, 100, 'coupon_643140176856552252730.jpg', '2016-10-12 17:42:56', '2016-10-12 17:42:56', NULL),
(270, 1, 100, 'coupon_680220620646991823280.jpg', '2016-10-12 17:42:56', '2016-10-12 17:42:56', NULL),
(271, 1, 101, 'coupon_96166619083491921677.jpg', '2016-10-13 10:48:16', '2016-10-13 10:48:16', NULL),
(272, 1, 101, 'coupon_399045131609743996519.jpg', '2016-10-13 10:48:16', '2016-10-13 10:48:16', NULL),
(273, 1, 101, 'coupon_613680351938747962564.jpg', '2016-10-13 10:48:16', '2016-10-13 10:48:16', NULL),
(274, 1, 102, 'coupon_639874869121374658417.jpg', '2016-10-13 11:25:28', '2016-10-13 11:25:28', NULL),
(275, 1, 102, 'coupon_928472030255516594001.jpg', '2016-10-13 11:25:28', '2016-10-13 11:25:28', NULL),
(276, 1, 102, 'coupon_152744284472969865894.jpg', '2016-10-13 11:25:28', '2016-10-13 11:25:28', NULL),
(277, 1, 103, 'coupon_871015812070497702497.jpg', '2016-10-13 13:34:49', '2016-10-13 13:34:49', NULL),
(278, 1, 103, 'coupon_228637145782675065330.jpg', '2016-10-13 13:34:49', '2016-10-13 13:34:49', NULL),
(279, 1, 103, 'coupon_465805291186824295517.jpg', '2016-10-13 13:34:50', '2016-10-13 13:34:50', NULL),
(280, 1, 104, 'coupon_765688570298796561457.jpg', '2016-10-13 13:56:59', '2016-10-13 13:56:59', NULL),
(281, 1, 104, 'coupon_876191656876091282985.jpg', '2016-10-13 13:56:59', '2016-10-13 13:56:59', NULL),
(282, 1, 104, 'coupon_80341374522262438916.jpg', '2016-10-13 13:57:00', '2016-10-13 13:57:00', NULL),
(283, 1, 105, 'coupon_65861411776344428525.jpg', '2016-10-17 11:19:01', '2016-10-17 11:19:01', NULL),
(284, 1, 105, 'coupon_3281018067157763520.jpg', '2016-10-17 11:19:01', '2016-10-17 11:19:01', NULL),
(285, 1, 105, 'coupon_924681917600525391093.jpg', '2016-10-17 11:19:01', '2016-10-17 11:19:01', NULL),
(286, 1, 106, 'coupon_779602014183081282644.jpg', '2016-10-27 11:12:36', '2016-10-27 11:12:36', NULL),
(287, 1, 106, 'coupon_245361791500649198680.jpg', '2016-10-27 11:12:36', '2016-10-27 11:12:36', NULL),
(288, 1, 106, 'coupon_68235096723761433434.jpg', '2016-10-27 11:12:36', '2016-10-27 11:16:12', NULL),
(289, 1, 107, 'coupon_75639059780586601694.jpg', '2016-10-28 11:41:57', '2016-10-28 11:41:57', NULL),
(290, 1, 107, 'coupon_799481735644897508293.jpg', '2016-10-28 11:41:57', '2016-10-28 11:41:57', NULL),
(291, 1, 107, 'coupon_784357642332795711676.jpg', '2016-10-28 11:41:57', '2016-10-28 11:41:57', NULL),
(292, 1, 108, 'coupon_981629252681661727386.jpg', '2016-10-28 15:25:10', '2016-10-28 15:25:10', NULL),
(293, 1, 108, 'coupon_322316548667868558240.jpg', '2016-10-28 15:25:10', '2016-10-28 15:25:10', NULL),
(294, 1, 108, 'coupon_797089870377711415471.jpg', '2016-10-28 15:25:10', '2016-10-28 15:25:10', NULL),
(295, 1, 109, 'coupon_230565758715815862162.jpg', '2016-10-28 15:40:31', '2016-10-28 15:40:31', NULL),
(296, 1, 109, 'coupon_4891272365475115583.jpg', '2016-10-28 15:40:31', '2016-10-28 15:40:31', NULL),
(297, 1, 109, 'coupon_151952167527118261944.jpg', '2016-10-28 15:40:31', '2016-10-28 15:40:31', NULL),
(298, 1, 110, 'coupon_192434279162949923492.jpg', '2016-10-31 13:42:23', '2016-10-31 13:42:23', NULL),
(299, 1, 110, 'coupon_543799345279807562614.jpg', '2016-10-31 13:42:23', '2016-10-31 13:42:23', NULL),
(300, 1, 110, 'coupon_32548913156972726280.jpg', '2016-10-31 13:42:23', '2016-10-31 13:42:23', NULL),
(301, 1, 111, 'coupon_560016458668663179216.jpg', '2016-10-31 14:42:36', '2016-10-31 14:42:36', NULL),
(302, 1, 111, 'coupon_84609097486708510457.jpg', '2016-10-31 14:42:36', '2016-10-31 14:42:36', NULL),
(303, 1, 111, 'coupon_790177854886853509792.jpg', '2016-10-31 14:42:36', '2016-10-31 14:42:36', NULL),
(304, 1, 112, 'coupon_64478109778725488368.jpg', '2016-10-31 14:58:57', '2016-10-31 14:58:57', NULL),
(305, 1, 112, 'coupon_300543237404292236820.jpg', '2016-10-31 14:58:58', '2016-10-31 14:58:58', NULL),
(306, 1, 112, 'coupon_818018796064409173196.jpg', '2016-10-31 14:58:58', '2016-10-31 14:58:58', NULL),
(307, 1, 113, 'coupon_450701255763691651405.jpg', '2016-11-01 01:04:18', '2016-11-01 01:04:18', NULL),
(308, 1, 113, 'coupon_132243841899456005509.jpg', '2016-11-01 01:04:18', '2016-11-01 01:04:18', NULL),
(309, 1, 113, 'coupon_485928465986152157826.jpg', '2016-11-01 01:04:18', '2016-11-01 01:04:18', NULL),
(310, 1, 114, 'coupon_31091866852586243108.jpg', '2016-11-01 01:29:04', '2016-11-01 01:29:04', NULL),
(311, 1, 114, 'coupon_718347779862934031263.jpg', '2016-11-01 01:29:04', '2016-11-01 01:29:04', NULL),
(312, 1, 114, 'coupon_463237314677267289787.jpg', '2016-11-01 01:29:04', '2016-11-01 01:29:04', NULL),
(313, 1, 115, 'coupon_66637592277725364164.jpg', '2016-11-01 01:38:48', '2016-11-01 01:38:48', NULL),
(314, 1, 115, 'coupon_295088221714862164773.jpg', '2016-11-01 01:38:48', '2016-11-01 01:38:48', NULL),
(315, 1, 115, 'coupon_20792086674046735084.jpg', '2016-11-01 01:38:48', '2016-11-01 01:38:48', NULL),
(316, 1, 116, 'coupon_984284772636075019692.jpg', '2016-11-01 02:02:08', '2016-11-01 02:02:08', NULL),
(317, 1, 116, 'coupon_733157354972074986777.jpg', '2016-11-01 02:02:08', '2016-11-01 02:02:08', NULL),
(318, 1, 116, 'coupon_421875592097467194241.jpg', '2016-11-01 02:02:08', '2016-11-01 02:02:08', NULL),
(319, 1, 117, 'coupon_323898189401487465572.jpg', '2016-11-01 23:54:46', '2016-11-01 23:54:46', NULL),
(320, 1, 117, 'coupon_778361610403951414937.jpg', '2016-11-01 23:54:46', '2016-11-01 23:54:46', NULL),
(321, 1, 117, 'coupon_114775918687173715387.jpg', '2016-11-01 23:54:46', '2016-11-01 23:54:46', NULL),
(322, 1, 118, 'coupon_7819406195846332570.jpg', '2016-11-02 00:03:33', '2016-11-02 00:03:33', NULL),
(323, 1, 118, 'coupon_35234774912426502084.jpg', '2016-11-02 00:03:33', '2016-11-02 00:03:33', NULL),
(324, 1, 118, 'coupon_18261684232304989009.jpg', '2016-11-02 00:03:33', '2016-11-02 00:03:33', NULL),
(325, 1, 119, 'coupon_519569085318262243931.jpg', '2016-11-02 17:35:41', '2016-11-02 17:35:41', NULL),
(326, 1, 119, 'coupon_939611869172253219316.jpg', '2016-11-02 17:35:41', '2016-11-02 17:35:41', NULL),
(327, 1, 119, 'coupon_309243648221879746084.jpg', '2016-11-02 17:35:42', '2016-11-02 17:35:42', NULL),
(328, 1, 120, 'coupon_534692446722208113480.jpg', '2016-11-08 09:15:20', '2016-11-08 09:15:20', NULL),
(329, 1, 120, 'coupon_425939596027173853310.jpg', '2016-11-08 09:15:20', '2016-11-08 09:15:20', NULL),
(330, 1, 120, 'coupon_46703883028652539721.jpg', '2016-11-08 09:15:20', '2016-11-08 09:15:20', NULL),
(331, 1, 121, 'coupon_445942125679643972178.jpg', '2016-11-10 16:41:58', '2016-11-10 16:41:58', NULL),
(332, 1, 121, 'coupon_353972284956046122832.jpg', '2016-11-10 16:41:58', '2016-11-10 16:41:58', NULL),
(333, 1, 121, 'coupon_978649238337872274915.jpg', '2016-11-10 16:41:58', '2016-11-10 16:41:58', NULL),
(334, 1, 122, 'coupon_223111568797524411854.jpg', '2016-11-18 13:08:02', '2016-11-18 13:08:02', NULL),
(335, 1, 122, 'coupon_758862589472727053244.jpg', '2016-11-18 13:08:02', '2016-11-18 13:08:02', NULL),
(336, 1, 122, 'coupon_502178937803944468484.jpg', '2016-11-18 13:08:02', '2016-11-18 13:08:02', NULL),
(337, 1, 123, 'coupon_969040343984752150778.jpg', '2016-11-18 14:17:41', '2016-11-18 14:17:41', NULL),
(338, 1, 123, 'coupon_210370245198718881522.jpg', '2016-11-18 14:17:41', '2016-11-18 14:17:41', NULL),
(339, 1, 123, 'coupon_267917492393256261016.jpg', '2016-11-18 14:17:41', '2016-11-18 14:17:41', NULL),
(340, 1, 124, 'coupon_111958971710053337164.jpg', '2016-11-30 11:54:25', '2016-11-30 11:54:25', NULL),
(341, 1, 124, 'coupon_58468042975628537825.jpg', '2016-11-30 11:54:25', '2016-11-30 11:54:25', NULL),
(342, 1, 124, 'coupon_605513375134501783132.jpg', '2016-11-30 11:54:25', '2016-11-30 11:54:25', NULL),
(343, 1, 125, 'coupon_883499151417978973660.jpg', '2016-11-30 17:00:07', '2016-11-30 17:00:07', NULL),
(344, 1, 125, 'coupon_780303135121727568717.jpg', '2016-11-30 17:00:07', '2016-11-30 17:00:07', NULL),
(345, 1, 125, 'coupon_424491171526444873311.jpg', '2016-11-30 17:00:07', '2016-11-30 17:00:07', NULL),
(346, 1, 126, 'coupon_163146695866646756542.jpg', '2016-11-30 17:44:26', '2016-11-30 17:44:26', NULL),
(347, 1, 126, 'coupon_849035144978284398482.jpg', '2016-11-30 17:44:26', '2016-11-30 17:44:26', NULL),
(348, 1, 126, 'coupon_824368544434219599326.jpg', '2016-11-30 17:44:26', '2016-11-30 17:44:26', NULL),
(349, 1, 127, 'coupon_642926157617177566890.jpg', '2016-11-30 17:59:40', '2016-11-30 17:59:40', NULL),
(350, 1, 127, 'coupon_12423397694206544922.jpg', '2016-11-30 17:59:40', '2016-11-30 17:59:40', NULL),
(351, 1, 127, 'coupon_208568911620129547408.jpg', '2016-11-30 17:59:40', '2016-11-30 17:59:40', NULL),
(352, 1, 128, 'coupon_206517734018143835223.jpg', '2016-12-01 16:33:06', '2016-12-01 16:33:06', NULL),
(353, 1, 128, 'coupon_176037060246324538107.jpg', '2016-12-01 16:33:06', '2016-12-01 16:33:06', NULL),
(354, 1, 128, 'coupon_729918631253363514600.jpg', '2016-12-01 16:33:06', '2016-12-01 16:33:06', NULL),
(355, 2, 2, 'coupon_789309940905976944022.jpg', '2016-12-24 18:00:50', '2016-12-24 18:00:50', NULL),
(356, 2, 2, 'coupon_262361762252021711230.jpg', '2016-12-24 18:00:50', '2016-12-24 18:00:50', NULL),
(357, 2, 2, 'coupon_99284165952704514711.jpg', '2016-12-24 18:00:50', '2016-12-24 18:00:50', NULL),
(358, 2, 3, 'coupon_757675471480111026190.jpg', '2016-12-24 18:01:11', '2016-12-24 18:01:11', NULL),
(359, 2, 3, 'coupon_629912337076128611702.jpg', '2016-12-24 18:01:11', '2016-12-24 18:01:11', NULL),
(360, 2, 3, 'coupon_686494144466533665881.jpg', '2016-12-24 18:01:11', '2016-12-24 18:01:11', NULL),
(361, 2, 4, 'coupon_643749314261598919731.jpg', '2016-12-24 18:13:33', '2016-12-24 18:13:33', NULL),
(362, 2, 4, 'coupon_382705684934295961970.jpg', '2016-12-24 18:13:33', '2016-12-24 18:13:33', NULL),
(363, 2, 4, 'coupon_616547093007198128703.jpg', '2016-12-24 18:13:33', '2016-12-24 18:13:33', NULL),
(364, 2, 5, 'coupon_272899895694027878492.jpg', '2016-12-24 18:14:12', '2016-12-24 18:14:12', NULL),
(365, 2, 5, 'coupon_46805776228264662410.jpg', '2016-12-24 18:14:12', '2016-12-24 18:14:12', NULL),
(366, 2, 5, 'coupon_692041951995791810421.jpg', '2016-12-24 18:14:12', '2016-12-24 18:14:12', NULL),
(367, 2, 6, 'coupon_932336235867097162119.jpg', '2016-12-24 18:42:04', '2016-12-24 18:42:04', NULL),
(368, 2, 6, 'coupon_418732387099376588431.jpg', '2016-12-24 18:42:04', '2016-12-24 18:42:04', NULL),
(369, 2, 6, 'coupon_303616185259738227752.jpg', '2016-12-24 18:42:04', '2016-12-24 18:42:04', NULL),
(370, 2, 7, 'coupon_156602642092835530531.jpg', '2016-12-24 20:40:57', '2016-12-24 20:40:57', NULL),
(371, 2, 7, 'coupon_20254984404014347071.jpg', '2016-12-24 20:40:58', '2016-12-24 20:40:58', NULL),
(372, 2, 7, 'coupon_174599845147963433947.jpg', '2016-12-24 20:40:58', '2016-12-24 20:40:58', NULL),
(373, 2, 9, 'coupon_359125885104145060222.jpg', '2016-12-25 04:59:28', '2016-12-25 04:59:28', NULL),
(374, 2, 9, 'coupon_891015456534143000318.jpg', '2016-12-25 04:59:29', '2016-12-25 04:59:29', NULL),
(375, 2, 9, 'coupon_39949540783846974735.jpg', '2016-12-25 04:59:29', '2016-12-25 04:59:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Currency`
--

CREATE TABLE IF NOT EXISTS `Currency` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Currency`
--

INSERT INTO `Currency` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kyats', 'Myanmar Kyats', '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(2, 'USD', 'United States dollar', '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(3, 'YEN', 'Japan Yen', '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(4, 'THB', 'Thai Baht', '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL),
(5, 'SGD', 'Singapore Dollar', '2016-08-27 16:51:43', '2016-08-27 16:51:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Expire_Table`
--

CREATE TABLE IF NOT EXISTS `Expire_Table` (
  `id` int(11) NOT NULL,
  `Coupon_Name` varchar(255) NOT NULL,
  `Business_Name` varchar(255) NOT NULL,
  `Expired_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Expire_Table`
--

INSERT INTO `Expire_Table` (`id`, `Coupon_Name`, `Business_Name`, `Expired_Date`) VALUES
(1, 'Enjoy Free Soft Drink', 'Jasper House', '2016-10-31'),
(2, 'Little Korea Barbecue', 'Little Korea Barbecue', '2016-10-31'),
(3, 'Happy Hour For Weekdays', 'DIY Hot Pot and BBQ', '2016-09-30'),
(4, 'Enjoy Promotion', 'HOT SPOT BBQ AND HOT POT ', '2016-09-30'),
(5, 'Big Chance @Parami Branch', 'Amazing Thai Food', '2016-10-31'),
(16, 'Standard Single Room', 'Sunny Holiday Hotel', '2016-10-31'),
(18, 'Family Room Promotion', 'Grand Laurel Hotel', '2016-10-30'),
(20, 'Enjoy Coupons', 'Golden Park Spa Land', '2016-09-30'),
(21, 'Enjoy Coupons', 'Hera Spa', '2016-09-30'),
(22, 'Dining Fukurou''s Special Promotion', 'Dining Fukurou', '2016-10-31'),
(23, 'BIIO Special Deal', 'B2O Roof and Cafe'' 20', '2016-10-31'),
(24, 'Happy Hour', 'Orianna 24', '2016-10-31'),
(25, 'Special Weekday Promotion', 'CHARM 66', '2016-09-30'),
(26, 'Enjoy Promotion', 'Secret Recipe', '2016-10-31'),
(27, 'Enjoy Promotion', 'Kamakura Marina', '2016-10-31'),
(31, '9 + 1 Free', 'HOT SPOT BBQ AND HOT POT ', '2016-09-30'),
(32, 'Enjoy Promotion', 'February Six Restaurant', '2016-10-31'),
(33, 'Enjoy Promotion', 'Cafe'' Paradise', '2016-10-31'),
(34, 'Happy Hour Myanmar Beer', 'Epic Bar & Restaurant', '2016-10-31'),
(35, 'Happy Hour Cocktails', 'Epic Bar & Restaurant', '2016-10-31'),
(36, 'Get 10% Food Present ', 'Steam Boat Hot Pot', '2016-10-31'),
(37, 'The Emporia @ CHATRIUM - Come 5 Pay 4', 'Chatrium Hotel Royal Lake Yangon', '2016-10-31'),
(38, 'TIGER HILL @ CHATRIUM - Come 5, Pay 4', 'Chatrium Hotel Royal Lake Yangon', '2016-10-31'),
(39, 'Kohaku Restaurant @ CHATRIUM', 'Chatrium Hotel Royal Lake Yangon', '2016-09-30'),
(40, 'Dermalogica Facial Treatment', 'Spa @ Hotel Esperado', '2016-09-30'),
(41, 'Oil Massage Therapy - 60 mins', 'Spa @ Hotel Esperado', '2016-09-30'),
(42, 'Oil Massage Therapy - 90 mins', 'Spa @ Hotel Esperado', '2016-09-30'),
(43, 'Monsoon Promotion', 'Linkage Training Restaurant', '2016-09-30'),
(44, 'Amazing Cocktail Promotion', 'Dining Fukurou', '2016-10-31'),
(45, 'Admission Free', 'Gakken Math School', '2016-10-31'),
(46, 'Moonsoon Promotion', 'Hotel 7 Mile ', '2016-10-31'),
(47, 'Hotel Inya', 'Hotel 7 Mile ', '2016-10-31'),
(49, 'Grand Ngwe Saung Resort', 'Hotel 7 Mile ', '2016-10-31'),
(50, 'Software Engineering Course', 'ACE Inspiration ', '2016-10-31'),
(51, 'Golden Butterfly Hotel', 'Golden Butterfly Hotel Yangon', '2016-09-30'),
(52, 'Android Development Course', 'ACE Inspiration ', '2016-10-31'),
(53, 'Programming Fundamental Course', 'ACE Inspiration ', '2016-10-31'),
(54, 'Spa Deluxe', 'Hotel 7 Mile', '2016-10-31'),
(55, 'Web Development Course with PHP ', 'ACE Inspiration ', '2016-10-31'),
(58, 'Japanese Language Course', 'ACE Inspiration ', '2016-10-31'),
(59, 'Web Development with Java', 'ACE Inspiration ', '2016-10-31'),
(60, 'Lunch Menu Promotion', 'Grand Laurel Hotel', '2016-10-30'),
(62, 'Special Promotion of Rangoon', 'Rangoon Grill & Chill', '2016-10-31'),
(63, 'Special Wednesday', 'Rangoon Grill & Chill', '2016-10-31'),
(64, 'Oil Massage( Lady Only )', 'Dr.Fish', '2016-10-31'),
(65, 'Body Massage', 'Dr.Fish', '2016-10-31'),
(66, 'All treatments ', 'Hera Spa by Ko Ko', '2016-10-31'),
(67, 'Study 4skills English', 'Nexus English Language Learning Centre', '2016-10-31'),
(68, 'Study Spoken English', 'Nexus English Language Learning Centre', '2016-10-31'),
(69, 'Prepare for your IELTS Exam', 'Nexus English Language Learning Centre', '2016-10-31'),
(70, 'Kimpot Menu', 'Siam Thai Cusine', '2016-10-31'),
(71, 'Free Coupon for 9''Night INDIE', 'Yangon Yangon Bristo Bar', '2016-09-29'),
(72, 'Food Menu', 'Pyi Thit', '2016-10-31'),
(75, '5+1(Beer) Tuborg Beer', 'Pyi Thit', '2016-10-31'),
(77, 'Car Service (Sigma)', 'Pyi Thit', '2016-10-31'),
(78, 'Standard Room', 'Green Leaf Hotel', '2016-10-31'),
(79, 'Deluxe Room', 'Green Leaf Hotel', '2016-10-31'),
(80, 'Superior Room', 'Green Leaf Hotel', '2016-10-31'),
(81, 'Suite Room', 'Green Leaf Hotel', '2016-10-31'),
(82, 'Breakfast Buffet', 'Green Leaf Hotel ', '2016-10-31'),
(84, 'KOOLPON Photo Contest Winner  (February Six Restaurant)', 'February Six Restaurant', '2016-10-31'),
(85, 'KOOLPON Photo Contest Winner  (Rangoon Grill & Chill)', 'Rangoon Grill & Chill', '2016-10-31'),
(86, 'KOOLPON Photo Contest Winner  (HOT SPOT BBQ AND HOT POT)', 'HOT SPOT BBQ AND HOT POT ', '2016-10-31'),
(87, 'KOOLPON Photo Contest Winner (Steam Boat Hot Pot)', 'Steam Boat Hot Pot', '2016-10-31'),
(88, 'KOOLPON Photo Contest Winner  (Orianna 24)', 'Orianna 24', '2016-10-31'),
(89, 'KOOLPON Photo Contest Winner  (Cafe'' Paradise)', 'Cafe'' Paradise', '2016-10-31'),
(90, 'KOOLPON Photo Contest Winner  (Dinning Fukuro)', 'Dining Fukurou', '2016-10-31'),
(92, 'Ssuni Coffee & Dessert ', 'Ssuni Coffee & Dessert', '2016-10-31'),
(94, 'Any Single Item', 'Yangon Hair and Beauty Center', '2016-10-31'),
(95, 'Shampoo', 'Thai Yai Hair & Beauty Spa', '2016-10-31'),
(96, 'Foot Massage', 'Thai Yai Hair & Beauty Spa', '2016-10-31'),
(97, 'Buy 2 Get 1', 'Secret Recipe', '2016-10-31'),
(98, 'Thadingyut Promotion', 'Secret Recipe', '2016-10-31'),
(99, 'Asian Dishes ', 'Secret Recipe', '2016-10-31'),
(100, 'Enjoy Promotion', 'Secret Recipe', '2016-10-17'),
(101, 'Enjoy discount on delivery service', 'Gekko Restaurant Yangon', '2016-10-31'),
(102, 'Lunch Bento Boxes ', 'Gekko Restaurant Yangon', '2016-10-31'),
(103, 'New Friends', 'August Drinks & Fried Chicken', '2016-10-31'),
(104, 'French Fried Present', 'August Drinks & Fried Chicken', '2016-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `Favourite_Branch`
--

CREATE TABLE IF NOT EXISTS `Favourite_Branch` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Favourite_Branch`
--

INSERT INTO `Favourite_Branch` (`id`, `user_id`, `branch_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 16, 3, '2016-08-28 16:27:56', '2016-08-28 16:27:56', NULL),
(2, 22, 9, '2016-08-29 11:39:03', '2016-08-29 11:39:03', NULL),
(3, 30, 3, '2016-08-30 05:58:37', '2016-08-30 09:57:45', '2016-08-30 09:57:45'),
(4, 30, 7, '2016-08-30 09:53:57', '2016-08-30 09:56:31', '2016-08-30 09:56:31'),
(5, 30, 3, '2016-08-30 10:00:30', '2016-08-30 10:22:16', '2016-08-30 10:22:16'),
(6, 42, 3, '2016-08-30 14:56:17', '2016-08-30 14:56:55', '2016-08-30 14:56:55'),
(7, 42, 4, '2016-08-30 14:56:41', '2016-08-30 14:56:54', '2016-08-30 14:56:54'),
(8, 42, 6, '2016-08-30 14:57:40', '2016-08-31 16:12:49', '2016-08-31 16:12:49'),
(9, 42, 11, '2016-08-30 14:57:56', '2016-08-30 14:58:21', '2016-08-30 14:58:21'),
(10, 42, 20, '2016-08-30 14:58:12', '2016-08-30 14:58:17', '2016-08-30 14:58:17'),
(11, 42, 12, '2016-08-30 15:20:22', '2016-08-31 08:52:18', '2016-08-31 08:52:18'),
(12, 42, 11, '2016-08-30 15:22:07', '2016-08-30 15:42:56', '2016-08-30 15:42:56'),
(13, 42, 1, '2016-08-30 15:54:56', '2016-08-30 15:54:56', NULL),
(14, 37, 3, '2016-08-30 17:35:26', '2016-08-30 17:35:26', NULL),
(15, 52, 12, '2016-08-30 17:56:07', '2016-08-30 17:56:07', NULL),
(16, 52, 6, '2016-08-30 18:01:30', '2016-08-30 18:01:30', NULL),
(17, 7, 3, '2016-08-30 18:54:47', '2016-08-31 08:56:18', '2016-08-31 08:56:18'),
(18, 6, 3, '2016-08-31 08:43:56', '2016-08-31 08:43:56', NULL),
(19, 42, 3, '2016-08-31 08:52:39', '2016-08-31 08:52:47', '2016-08-31 08:52:47'),
(20, 42, 13, '2016-08-31 08:53:45', '2016-08-31 13:33:20', '2016-08-31 13:33:20'),
(21, 7, 17, '2016-08-31 08:53:59', '2016-08-31 08:56:12', '2016-08-31 08:56:12'),
(22, 42, 17, '2016-08-31 08:54:37', '2016-08-31 08:56:06', '2016-08-31 08:56:06'),
(23, 68, 25, '2016-08-31 10:45:39', '2016-08-31 13:31:40', '2016-08-31 13:31:40'),
(24, 5, 21, '2016-08-31 11:12:32', '2016-08-31 11:12:32', NULL),
(25, 5, 26, '2016-08-31 11:24:55', '2016-09-01 09:20:04', '2016-09-01 09:20:04'),
(26, 5, 22, '2016-08-31 11:26:02', '2016-08-31 12:22:06', '2016-08-31 12:22:06'),
(27, 42, 10, '2016-08-31 12:27:34', '2016-08-31 13:33:17', '2016-08-31 13:33:17'),
(28, 7, 16, '2016-08-31 13:31:00', '2016-08-31 13:31:00', NULL),
(29, 68, 25, '2016-08-31 13:31:41', '2016-08-31 13:31:42', '2016-08-31 13:31:42'),
(30, 68, 25, '2016-08-31 13:31:43', '2016-08-31 16:39:47', '2016-08-31 16:39:47'),
(31, 79, 26, '2016-08-31 14:06:08', '2016-08-31 14:06:31', '2016-08-31 14:06:31'),
(32, 79, 11, '2016-08-31 14:30:17', '2016-08-31 14:30:17', NULL),
(33, 79, 26, '2016-08-31 14:30:26', '2016-08-31 14:30:26', NULL),
(34, 20, 6, '2016-08-31 14:31:11', '2016-08-31 15:32:33', '2016-08-31 15:32:33'),
(35, 42, 20, '2016-08-31 14:58:05', '2016-08-31 16:12:44', '2016-08-31 16:12:44'),
(36, 42, 22, '2016-08-31 14:58:22', '2016-08-31 16:12:46', '2016-08-31 16:12:46'),
(37, 42, 11, '2016-08-31 14:58:48', '2016-09-01 13:28:02', '2016-09-01 13:28:02'),
(38, 42, 52, '2016-08-31 14:59:08', '2016-08-31 16:12:52', '2016-08-31 16:12:52'),
(39, 20, 21, '2016-08-31 15:25:20', '2016-08-31 15:25:20', NULL),
(40, 20, 13, '2016-08-31 15:25:57', '2016-08-31 15:25:57', NULL),
(41, 37, 4, '2016-08-31 15:29:10', '2016-08-31 15:29:10', NULL),
(42, 37, 22, '2016-08-31 15:31:20', '2016-08-31 15:31:20', NULL),
(43, 42, 3, '2016-08-31 16:12:34', '2016-08-31 16:12:42', '2016-08-31 16:12:42'),
(44, 42, 3, '2016-08-31 16:13:03', '2016-08-31 16:13:59', '2016-08-31 16:13:59'),
(45, 83, 6, '2016-08-31 16:13:15', '2016-08-31 16:13:15', NULL),
(46, 42, 6, '2016-08-31 16:13:18', '2016-08-31 16:13:56', '2016-08-31 16:13:56'),
(47, 42, 25, '2016-08-31 16:13:36', '2016-09-01 13:27:59', '2016-09-01 13:27:59'),
(48, 42, 21, '2016-08-31 16:13:46', '2016-08-31 16:14:02', '2016-08-31 16:14:02'),
(49, 42, 24, '2016-08-31 16:14:16', '2016-09-01 13:27:55', '2016-09-01 13:27:55'),
(50, 42, 26, '2016-08-31 16:14:26', '2016-09-01 13:06:14', '2016-09-01 13:06:14'),
(51, 42, 22, '2016-08-31 16:15:02', '2016-09-01 13:06:24', '2016-09-01 13:06:24'),
(52, 42, 6, '2016-08-31 16:16:20', '2016-09-01 13:06:37', '2016-09-01 13:06:37'),
(53, 87, 6, '2016-08-31 17:10:14', '2016-08-31 17:10:14', NULL),
(54, 86, 12, '2016-08-31 17:42:01', '2016-08-31 17:42:01', NULL),
(55, 90, 21, '2016-08-31 17:42:08', '2016-08-31 17:42:08', NULL),
(56, 42, 17, '2016-08-31 18:06:06', '2016-09-01 13:27:52', '2016-09-01 13:27:52'),
(57, 5, 10, '2016-08-31 18:46:59', '2016-08-31 18:47:01', '2016-08-31 18:47:01'),
(58, 5, 10, '2016-08-31 18:47:02', '2016-09-01 09:18:54', '2016-09-01 09:18:54'),
(59, 5, 9, '2016-08-31 18:47:22', '2016-09-01 09:18:51', '2016-09-01 09:18:51'),
(60, 71, 17, '2016-08-31 19:26:33', '2016-08-31 19:26:40', '2016-08-31 19:26:40'),
(61, 93, 4, '2016-08-31 20:07:07', '2016-08-31 22:04:01', '2016-08-31 22:04:01'),
(62, 68, 10, '2016-08-31 20:16:42', '2016-08-31 20:16:42', '2016-08-31 20:16:42'),
(63, 68, 10, '2016-08-31 20:16:43', '2016-08-31 20:16:43', NULL),
(64, 108, 53, '2016-09-01 01:56:18', '2016-09-01 01:56:18', NULL),
(65, 109, 4, '2016-09-01 02:04:08', '2016-09-01 02:04:08', NULL),
(66, 98, 53, '2016-09-01 03:09:46', '2016-09-01 03:13:32', '2016-09-01 03:13:32'),
(67, 5, 26, '2016-09-01 09:20:07', '2016-09-01 14:22:35', '2016-09-01 14:22:35'),
(68, 113, 53, '2016-09-01 10:07:49', '2016-09-01 10:07:49', NULL),
(69, 42, 51, '2016-09-01 10:14:23', '2016-09-01 13:27:50', '2016-09-01 13:27:50'),
(70, 5, 22, '2016-09-01 10:22:15', '2016-09-01 10:22:15', NULL),
(71, 5, 6, '2016-09-01 10:22:36', '2016-09-01 14:22:32', '2016-09-01 14:22:32'),
(72, 42, 12, '2016-09-01 10:37:33', '2016-09-01 13:27:47', '2016-09-01 13:27:47'),
(73, 118, 53, '2016-09-01 10:59:03', '2016-09-01 10:59:03', NULL),
(74, 42, 55, '2016-09-01 12:02:34', '2016-09-01 13:06:20', '2016-09-01 13:06:20'),
(75, 88, 6, '2016-09-01 12:05:11', '2016-09-01 23:19:55', '2016-09-01 23:19:55'),
(76, 42, 20, '2016-09-01 13:08:07', '2016-09-01 13:27:45', '2016-09-01 13:27:45'),
(77, 42, 20, '2016-09-01 13:51:06', '2016-09-02 11:06:13', '2016-09-02 11:06:13'),
(78, 124, 53, '2016-09-01 14:23:11', '2016-09-01 14:23:11', NULL),
(79, 42, 16, '2016-09-01 14:42:40', '2016-09-02 11:04:03', '2016-09-02 11:04:03'),
(80, 124, 56, '2016-09-01 14:43:45', '2016-09-01 14:43:45', NULL),
(81, 42, 9, '2016-09-01 14:43:53', '2016-09-02 11:03:57', '2016-09-02 11:03:57'),
(82, 42, 51, '2016-09-01 16:37:49', '2016-09-01 16:38:03', '2016-09-01 16:38:03'),
(83, 133, 20, '2016-09-01 17:09:43', '2016-09-01 17:09:44', '2016-09-01 17:09:44'),
(84, 133, 20, '2016-09-01 17:10:10', '2016-09-01 17:10:10', NULL),
(85, 131, 20, '2016-09-01 17:40:39', '2016-09-01 17:40:39', NULL),
(86, 156, 53, '2016-09-01 19:58:54', '2016-09-01 19:58:54', NULL),
(87, 6, 20, '2016-09-01 20:48:19', '2016-09-01 20:50:11', '2016-09-01 20:50:11'),
(88, 6, 56, '2016-09-01 20:49:48', '2016-09-01 20:49:48', NULL),
(89, 88, 20, '2016-09-01 20:50:57', '2016-09-01 23:19:51', '2016-09-01 23:19:51'),
(90, 88, 56, '2016-09-01 20:51:19', '2016-09-01 23:20:35', '2016-09-01 23:20:35'),
(91, 88, 58, '2016-09-01 20:51:41', '2016-09-01 23:19:48', '2016-09-01 23:19:48'),
(92, 88, 53, '2016-09-01 20:52:40', '2016-09-01 23:07:10', '2016-09-01 23:07:10'),
(93, 88, 62, '2016-09-01 20:53:52', '2016-09-01 20:54:48', '2016-09-01 20:54:48'),
(94, 134, 6, '2016-09-01 22:09:47', '2016-09-01 22:09:47', NULL),
(95, 130, 62, '2016-09-01 23:01:04', '2016-09-01 23:01:04', NULL),
(96, 130, 7, '2016-09-01 23:02:28', '2016-09-01 23:02:28', NULL),
(97, 130, 60, '2016-09-01 23:18:20', '2016-09-01 23:18:21', '2016-09-01 23:18:21'),
(98, 130, 60, '2016-09-01 23:18:27', '2016-09-01 23:18:28', '2016-09-01 23:18:28'),
(99, 88, 45, '2016-09-01 23:20:51', '2016-09-01 23:21:38', '2016-09-01 23:21:38'),
(100, 88, 62, '2016-09-01 23:21:03', '2016-09-01 23:22:09', '2016-09-01 23:22:09'),
(101, 88, 56, '2016-09-01 23:21:18', '2016-09-01 23:21:35', '2016-09-01 23:21:35'),
(102, 88, 52, '2016-09-01 23:22:53', '2016-09-01 23:23:46', '2016-09-01 23:23:46'),
(103, 77, 21, '2016-09-01 23:31:42', '2016-09-01 23:39:23', '2016-09-01 23:39:23'),
(104, 162, 55, '2016-09-01 23:33:02', '2016-09-01 23:33:02', NULL),
(105, 161, 63, '2016-09-02 01:03:07', '2016-09-02 01:03:20', '2016-09-02 01:03:20'),
(106, 161, 63, '2016-09-02 01:03:22', '2016-09-02 01:03:22', NULL),
(107, 156, 62, '2016-09-02 02:25:19', '2016-09-06 13:50:58', '2016-09-06 13:50:58'),
(108, 156, 20, '2016-09-02 02:25:33', '2016-09-02 02:25:39', '2016-09-02 02:25:39'),
(109, 7, 45, '2016-09-02 07:22:45', '2016-09-02 07:22:45', NULL),
(110, 42, 45, '2016-09-02 11:04:32', '2016-09-02 11:05:07', '2016-09-02 11:05:07'),
(111, 42, 62, '2016-09-02 11:04:42', '2016-09-02 11:05:12', '2016-09-02 11:05:12'),
(112, 42, 53, '2016-09-02 11:04:54', '2016-09-02 11:05:16', '2016-09-02 11:05:16'),
(113, 42, 45, '2016-09-02 11:06:23', '2016-09-02 11:06:23', NULL),
(114, 42, 53, '2016-09-02 11:06:34', '2016-09-02 11:06:47', '2016-09-02 11:06:47'),
(115, 270, 63, '2016-09-02 12:46:40', '2016-09-02 12:46:40', NULL),
(116, 220, 45, '2016-09-02 12:47:17', '2016-09-09 15:39:53', '2016-09-09 15:39:53'),
(117, 270, 58, '2016-09-02 12:48:36', '2016-09-02 12:48:36', NULL),
(118, 91, 53, '2016-09-02 12:48:47', '2016-09-02 12:48:47', NULL),
(119, 3, 45, '2016-09-02 13:00:35', '2016-09-02 13:01:04', '2016-09-02 13:01:04'),
(120, 3, 62, '2016-09-02 13:00:46', '2016-09-02 13:01:00', '2016-09-02 13:01:00'),
(121, 3, 56, '2016-09-02 13:00:53', '2016-09-02 13:00:58', '2016-09-02 13:00:58'),
(122, 3, 45, '2016-09-02 13:18:32', '2016-09-02 13:19:38', '2016-09-02 13:19:38'),
(123, 3, 62, '2016-09-02 13:18:41', '2016-09-02 13:18:46', '2016-09-02 13:18:46'),
(124, 3, 53, '2016-09-02 13:18:58', '2016-09-02 13:19:06', '2016-09-02 13:19:06'),
(125, 220, 63, '2016-09-02 13:19:28', '2016-09-02 13:24:26', '2016-09-02 13:24:26'),
(126, 283, 62, '2016-09-02 13:35:42', '2016-09-02 13:35:42', NULL),
(127, 88, 45, '2016-09-02 13:58:48', '2016-09-02 14:00:14', '2016-09-02 14:00:14'),
(128, 88, 56, '2016-09-02 13:59:16', '2016-09-02 17:46:27', '2016-09-02 17:46:27'),
(129, 88, 53, '2016-09-02 13:59:41', '2016-09-02 13:59:54', '2016-09-02 13:59:54'),
(130, 88, 58, '2016-09-02 14:38:08', '2016-09-02 17:46:21', '2016-09-02 17:46:21'),
(131, 88, 57, '2016-09-02 14:38:26', '2016-09-02 17:42:12', '2016-09-02 17:42:12'),
(132, 88, 53, '2016-09-02 14:39:21', '2016-09-02 15:18:35', '2016-09-02 15:18:35'),
(133, 88, 52, '2016-09-02 14:39:34', '2016-09-02 14:44:27', '2016-09-02 14:44:27'),
(134, 88, 45, '2016-09-02 17:46:46', '2016-09-02 17:48:40', '2016-09-02 17:48:40'),
(135, 88, 63, '2016-09-02 17:47:05', '2016-09-02 18:00:34', '2016-09-02 18:00:34'),
(136, 88, 9, '2016-09-02 17:47:31', '2016-09-02 17:48:37', '2016-09-02 17:48:37'),
(137, 88, 45, '2016-09-02 17:49:29', '2016-09-02 17:53:03', '2016-09-02 17:53:03'),
(138, 88, 53, '2016-09-02 17:49:44', '2016-09-02 17:51:49', '2016-09-02 17:51:49'),
(139, 88, 52, '2016-09-02 17:49:56', '2016-09-02 17:50:03', '2016-09-02 17:50:03'),
(140, 88, 58, '2016-09-02 17:58:39', '2016-09-02 18:02:35', '2016-09-02 18:02:35'),
(141, 88, 14, '2016-09-02 17:58:50', '2016-09-02 18:00:23', '2016-09-02 18:00:23'),
(142, 88, 57, '2016-09-02 17:59:19', '2016-09-02 17:59:32', '2016-09-02 17:59:32'),
(143, 88, 16, '2016-09-02 18:01:44', '2016-09-02 18:02:32', '2016-09-02 18:02:32'),
(144, 88, 55, '2016-09-02 18:01:56', '2016-09-02 18:02:29', '2016-09-02 18:02:29'),
(145, 88, 61, '2016-09-02 18:02:15', '2016-09-02 18:02:25', '2016-09-02 18:02:25'),
(146, 88, 45, '2016-09-02 18:03:27', '2016-09-02 18:09:16', '2016-09-02 18:09:16'),
(147, 88, 62, '2016-09-02 18:03:47', '2016-09-02 18:04:13', '2016-09-02 18:04:13'),
(148, 88, 53, '2016-09-02 18:04:01', '2016-09-02 18:04:08', '2016-09-02 18:04:08'),
(149, 88, 62, '2016-09-02 18:05:24', '2016-09-02 18:09:23', '2016-09-02 18:09:23'),
(150, 88, 56, '2016-09-02 18:05:38', '2016-09-02 18:09:12', '2016-09-02 18:09:12'),
(151, 88, 53, '2016-09-02 18:06:03', '2016-09-02 18:06:29', '2016-09-02 18:06:29'),
(152, 88, 45, '2016-09-02 18:15:56', '2016-09-05 10:08:29', '2016-09-05 10:08:29'),
(153, 365, 22, '2016-09-03 11:12:33', '2016-09-03 11:12:33', NULL),
(154, 369, 45, '2016-09-03 11:26:08', '2016-09-03 11:26:08', NULL),
(155, 375, 45, '2016-09-03 11:39:58', '2016-09-03 11:39:58', NULL),
(156, 381, 62, '2016-09-03 11:49:48', '2016-09-03 11:49:48', NULL),
(157, 390, 45, '2016-09-03 12:16:22', '2016-09-03 12:16:23', '2016-09-03 12:16:23'),
(158, 390, 45, '2016-09-03 12:16:25', '2016-09-03 12:16:26', '2016-09-03 12:16:26'),
(159, 390, 45, '2016-09-03 12:16:42', '2016-09-03 12:16:42', NULL),
(160, 408, 45, '2016-09-03 13:33:41', '2016-09-03 13:33:41', NULL),
(161, 417, 20, '2016-09-03 13:51:54', '2016-09-03 13:51:54', NULL),
(162, 374, 55, '2016-09-03 15:02:40', '2016-09-03 15:02:40', NULL),
(163, 444, 45, '2016-09-03 15:29:47', '2016-09-03 15:29:47', NULL),
(164, 452, 6, '2016-09-03 17:07:52', '2016-09-03 17:07:52', NULL),
(165, 506, 53, '2016-09-04 11:30:45', '2016-09-04 11:30:54', '2016-09-04 11:30:54'),
(166, 490, 55, '2016-09-04 17:18:33', '2016-09-04 17:18:33', NULL),
(167, 88, 45, '2016-09-05 10:12:49', '2016-09-05 13:11:41', '2016-09-05 13:11:41'),
(168, 88, 62, '2016-09-05 10:13:02', '2016-09-05 13:11:36', '2016-09-05 13:11:36'),
(169, 88, 53, '2016-09-05 10:13:16', '2016-09-05 11:39:09', '2016-09-05 11:39:09'),
(170, 539, 53, '2016-09-05 10:26:10', '2016-09-05 10:26:10', '2016-09-05 10:26:10'),
(171, 539, 53, '2016-09-05 10:26:11', '2016-09-05 10:26:13', '2016-09-05 10:26:13'),
(172, 539, 53, '2016-09-05 10:26:14', '2016-09-05 10:26:15', '2016-09-05 10:26:15'),
(173, 539, 53, '2016-09-05 10:26:16', '2016-09-05 10:26:19', '2016-09-05 10:26:19'),
(174, 539, 53, '2016-09-05 10:26:21', '2016-09-05 10:26:22', '2016-09-05 10:26:22'),
(175, 88, 45, '2016-09-05 13:14:25', '2016-09-05 13:23:37', '2016-09-05 13:23:37'),
(176, 88, 62, '2016-09-05 13:14:36', '2016-09-05 13:16:06', '2016-09-05 13:16:06'),
(177, 88, 53, '2016-09-05 13:14:48', '2016-09-05 13:15:19', '2016-09-05 13:15:19'),
(178, 88, 51, '2016-09-05 13:15:08', '2016-09-05 13:15:26', '2016-09-05 13:15:26'),
(179, 88, 62, '2016-09-05 13:22:27', '2016-09-05 13:23:40', '2016-09-05 13:23:40'),
(180, 88, 20, '2016-09-05 13:22:40', '2016-09-05 13:40:03', '2016-09-05 13:40:03'),
(181, 88, 56, '2016-09-05 13:22:49', '2016-09-05 13:23:45', '2016-09-05 13:23:45'),
(182, 88, 53, '2016-09-05 13:22:59', '2016-09-05 13:23:08', '2016-09-05 13:23:08'),
(183, 396, 53, '2016-09-05 13:29:31', '2016-09-05 13:29:31', NULL),
(184, 88, 45, '2016-09-05 13:53:44', '2016-09-05 13:55:25', '2016-09-05 13:55:25'),
(185, 88, 53, '2016-09-05 13:54:21', '2016-09-05 13:55:17', '2016-09-05 13:55:17'),
(186, 88, 52, '2016-09-05 13:54:32', '2016-09-05 13:54:46', '2016-09-05 13:54:46'),
(187, 88, 45, '2016-09-06 10:36:58', '2016-09-06 10:41:13', '2016-09-06 10:41:13'),
(188, 88, 62, '2016-09-06 10:37:11', '2016-09-06 10:37:46', '2016-09-06 10:37:46'),
(189, 88, 20, '2016-09-06 10:37:26', '2016-09-06 10:37:37', '2016-09-06 10:37:37'),
(190, 88, 56, '2016-09-06 10:39:21', '2016-09-06 16:12:40', '2016-09-06 16:12:40'),
(191, 88, 52, '2016-09-06 10:39:37', '2016-09-06 10:41:11', '2016-09-06 10:41:11'),
(192, 88, 58, '2016-09-06 10:42:58', '2016-09-07 13:13:41', '2016-09-07 13:13:41'),
(193, 88, 57, '2016-09-06 10:43:13', '2016-09-06 16:12:05', '2016-09-06 16:12:05'),
(194, 88, 14, '2016-09-06 10:43:26', '2016-09-06 16:12:02', '2016-09-06 16:12:02'),
(195, 88, 12, '2016-09-06 10:44:26', '2016-09-06 16:11:59', '2016-09-06 16:11:59'),
(196, 88, 61, '2016-09-06 10:45:11', '2016-09-06 16:12:34', '2016-09-06 16:12:34'),
(197, 88, 55, '2016-09-06 10:45:26', '2016-09-06 16:11:55', '2016-09-06 16:11:55'),
(198, 88, 45, '2016-09-07 13:14:53', '2016-09-07 13:15:01', '2016-09-07 13:15:01'),
(199, 88, 56, '2016-09-07 13:15:14', '2016-09-07 13:18:08', '2016-09-07 13:18:08'),
(200, 88, 52, '2016-09-07 13:15:31', '2016-09-07 13:15:39', '2016-09-07 13:15:39'),
(201, 88, 63, '2016-09-07 13:18:27', '2016-09-12 17:25:57', '2016-09-12 17:25:57'),
(202, 88, 12, '2016-09-07 13:18:39', '2016-09-12 17:25:59', '2016-09-12 17:25:59'),
(203, 88, 11, '2016-09-07 13:18:51', '2016-09-12 17:10:07', '2016-09-12 17:10:07'),
(204, 88, 9, '2016-09-07 13:19:02', '2016-09-09 14:17:08', '2016-09-09 14:17:08'),
(205, 220, 58, '2016-09-07 13:27:01', '2016-09-07 13:27:11', '2016-09-07 13:27:11'),
(206, 220, 53, '2016-09-09 10:00:36', '2016-09-09 16:00:53', '2016-09-09 16:00:53'),
(207, 220, 12, '2016-09-09 10:02:07', '2016-09-09 10:31:43', '2016-09-09 10:31:43'),
(208, 220, 20, '2016-09-09 10:15:55', '2016-09-09 15:39:48', '2016-09-09 15:39:48'),
(209, 628, 45, '2016-09-09 15:19:54', '2016-09-09 15:20:12', '2016-09-09 15:20:12'),
(210, 628, 45, '2016-09-09 15:22:44', '2016-09-09 15:22:54', '2016-09-09 15:22:54'),
(211, 220, 51, '2016-09-09 15:26:32', '2016-09-09 16:00:56', '2016-09-09 16:00:56'),
(212, 220, 52, '2016-09-09 15:28:05', '2016-09-09 15:39:13', '2016-09-09 15:39:13'),
(213, 220, 57, '2016-09-09 15:49:53', '2016-09-09 16:01:01', '2016-09-09 16:01:01'),
(214, 220, 14, '2016-09-09 15:50:21', '2016-09-09 16:01:04', '2016-09-09 16:01:04'),
(215, 220, 60, '2016-09-09 15:52:25', '2016-09-09 16:01:14', '2016-09-09 16:01:14'),
(216, 220, 42, '2016-09-09 15:52:55', '2016-09-09 16:26:05', '2016-09-09 16:26:05'),
(217, 220, 55, '2016-09-09 15:53:23', '2016-11-04 12:13:11', '2016-11-04 12:13:11'),
(218, 220, 17, '2016-09-09 15:55:59', '2016-09-09 16:26:00', '2016-09-09 16:26:00'),
(219, 220, 62, '2016-09-09 16:14:45', '2016-09-09 16:26:02', '2016-09-09 16:26:02'),
(220, 220, 61, '2016-09-09 16:22:33', '2016-11-04 12:13:08', '2016-11-04 12:13:08'),
(221, 220, 63, '2016-09-09 16:23:41', '2016-09-26 16:58:00', '2016-09-26 16:58:00'),
(222, 720, 4, '2016-09-12 15:48:08', '2016-09-12 15:48:08', NULL),
(223, 677, 6, '2016-09-12 16:21:22', '2016-09-12 16:21:22', NULL),
(224, 191, 45, '2016-09-12 20:36:07', '2016-09-12 20:36:07', NULL),
(225, 740, 6, '2016-09-26 17:19:40', '2016-10-06 16:47:35', '2016-10-06 16:47:35'),
(226, 804, 66, '2016-09-29 09:30:51', '2016-09-29 09:30:51', NULL),
(227, 740, 11, '2016-10-06 16:50:40', '2016-12-15 16:34:30', '2016-12-15 16:34:30'),
(228, 740, 63, '2016-10-06 16:51:43', '2016-12-07 13:09:34', '2016-12-07 13:09:34'),
(229, 740, 9, '2016-10-06 16:52:15', '2016-10-10 15:33:11', '2016-10-10 15:33:11'),
(230, 740, 66, '2016-10-06 16:54:49', '2016-12-07 15:21:37', '2016-12-07 15:21:37'),
(231, 816, 76, '2016-10-07 13:15:31', '2016-10-07 13:15:36', '2016-10-07 13:15:36'),
(232, 171, 78, '2016-10-10 00:08:43', '2016-10-10 00:08:43', NULL),
(233, 220, 52, '2016-10-11 15:30:44', '2016-11-04 12:13:06', '2016-11-04 12:13:06'),
(234, 220, 72, '2016-10-11 16:24:59', '2016-10-28 09:33:00', '2016-10-28 09:33:00'),
(235, 827, 76, '2016-10-11 16:27:17', '2016-10-11 16:27:17', '2016-10-11 16:27:17'),
(236, 827, 76, '2016-10-11 16:27:17', '2016-10-11 16:27:17', NULL),
(237, 155, 76, '2016-10-11 18:36:15', '2016-10-11 18:36:22', '2016-10-11 18:36:22'),
(238, 780, 81, '2016-10-17 11:20:36', '2016-10-17 11:20:36', NULL),
(239, 835, 11, '2016-10-18 16:42:53', '2016-10-18 16:42:53', NULL),
(240, 825, 80, '2016-10-25 10:10:44', '2016-10-25 10:11:05', '2016-10-25 10:11:05'),
(241, 220, 60, '2016-10-28 09:33:29', '2016-10-28 09:33:53', '2016-10-28 09:33:53'),
(242, 220, 60, '2016-10-28 09:34:05', '2016-11-04 12:13:03', '2016-11-04 12:13:03'),
(243, 860, 80, '2016-10-28 10:43:17', '2016-10-28 10:43:17', NULL),
(244, 220, 74, '2016-10-28 12:12:49', '2016-11-04 12:12:57', '2016-11-04 12:12:57'),
(245, 859, 74, '2016-10-31 08:45:35', '2016-11-04 12:15:19', '2016-11-04 12:15:19'),
(246, 870, 83, '2016-10-31 13:23:23', '2016-10-31 13:23:23', NULL),
(247, 870, 66, '2016-10-31 14:17:22', '2016-10-31 14:17:22', NULL),
(248, 859, 45, '2016-11-02 07:51:06', '2016-11-04 12:12:15', '2016-11-04 12:12:15'),
(249, 859, 5, '2016-11-04 12:35:02', '2016-11-04 12:35:08', '2016-11-04 12:35:08'),
(250, 859, 5, '2016-11-04 12:37:52', '2016-11-04 12:38:10', '2016-11-04 12:38:10'),
(251, 859, 9, '2016-11-04 13:11:46', '2016-11-04 13:12:05', '2016-11-04 13:12:05'),
(252, 859, 83, '2016-11-04 13:50:20', '2016-11-10 08:07:01', '2016-11-10 08:07:01'),
(253, 740, 86, '2016-11-09 11:34:43', '2016-11-09 11:34:43', NULL),
(254, 816, 87, '2016-11-10 16:45:49', '2016-11-10 16:45:49', NULL),
(255, 18, 87, '2016-11-16 11:04:56', '2016-12-16 09:46:07', '2016-12-16 09:46:07'),
(256, 18, 5, '2016-11-16 17:53:15', '2016-12-16 09:46:03', '2016-12-16 09:46:03'),
(257, 912, 86, '2016-11-19 01:57:10', '2016-11-19 01:57:10', NULL),
(258, 740, 3, '2016-12-07 15:19:18', '2016-12-15 16:34:26', '2016-12-15 16:34:26'),
(259, 740, 6, '2016-12-07 16:22:16', '2016-12-15 16:34:22', '2016-12-15 16:34:22'),
(260, 740, 9, '2016-12-07 16:31:54', '2016-12-07 16:31:54', NULL),
(261, 740, 20, '2016-12-07 18:02:40', '2016-12-07 18:02:40', NULL),
(262, 740, 14, '2016-12-12 16:49:52', '2016-12-15 16:34:19', '2016-12-15 16:34:19'),
(263, 952, 9, '2016-12-15 17:00:55', '2016-12-15 17:00:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Feature`
--

CREATE TABLE IF NOT EXISTS `Feature` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_type_id` int(11) NOT NULL COMMENT 'restaurant or hotel or ....',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Feature`
--

INSERT INTO `Feature` (`id`, `name`, `description`, `image`, `business_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Free WIFI', 'free wifi access', '', 1, NULL, NULL, NULL),
(2, 'Allow Smoking', 'Allow smoking or have specific place to smoke.', '', 1, NULL, NULL, NULL),
(3, 'Car Parking', 'Place car parking', '', 1, NULL, NULL, NULL),
(4, 'Private Car Parking', 'Private Car Parking', '', 2, '2016-08-27 16:53:12', '2016-08-27 16:53:12', NULL),
(5, 'Private Car Parking', 'Private Car Parking', '', 3, '2016-09-01 17:53:25', '2016-09-01 17:53:25', NULL),
(6, 'Free Wifi', 'Free Wifi', '', 2, '2016-09-01 22:02:37', '2016-09-01 22:02:37', NULL),
(7, 'Free Wifi', 'Free Wifi', '', 4, '2016-09-16 18:01:06', '2016-09-16 18:01:06', NULL),
(8, 'Car Parking', 'Car Parking', '', 4, '2016-09-16 18:01:34', '2016-09-16 18:01:34', NULL),
(9, 'Air-Con', 'Air-Con', '', 1, '2016-10-07 11:12:39', '2016-10-07 11:12:39', NULL),
(10, 'Private Room', '', '', 1, '2016-11-01 23:17:17', '2016-11-01 23:17:17', NULL),
(11, 'Outdoor Dining Area', '', '', 1, '2016-11-01 23:18:19', '2016-11-01 23:18:19', NULL),
(12, 'Non Smoking Area', '', '', 1, '2016-11-01 23:18:49', '2016-11-01 23:18:49', NULL),
(13, 'Catagory', 'Pizza', '', 1, '2016-12-01 14:05:29', '2016-12-01 14:05:29', NULL),
(14, 'Pizza', '', '', 1, '2016-12-01 14:06:51', '2016-12-01 14:06:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Hot_Deal`
--

CREATE TABLE IF NOT EXISTS `Hot_Deal` (
  `id` int(10) unsigned NOT NULL,
  `business_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `after_reduce_price` int(11) DEFAULT NULL,
  `original_price` int(11) DEFAULT NULL,
  `reduce_amount_by` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `terms_condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Hot_Deal`
--

INSERT INTO `Hot_Deal` (`id`, `business_id`, `discount_percentage`, `after_reduce_price`, `original_price`, `reduce_amount_by`, `name`, `currency_id`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`, `from_date`, `to_date`, `terms_condition`) VALUES
(2, '6', NULL, 8820, 9800, 1, '9 Plus 1 Free', NULL, 'Description ', 'hotdeal_930169442663032260016.jpg', '2016-08-26 19:27:19', '2016-08-26 19:27:19', NULL, '2016-09-02', '2016-09-30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Hot_Deal_Branch`
--

CREATE TABLE IF NOT EXISTS `Hot_Deal_Branch` (
  `id` int(10) unsigned NOT NULL,
  `hot_deal_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Hot_Deal_Branch`
--

INSERT INTO `Hot_Deal_Branch` (`id`, `hot_deal_id`, `branch_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 6, '2016-08-26 19:27:19', '2016-08-26 19:27:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Hot_Deal_Slider`
--

CREATE TABLE IF NOT EXISTS `Hot_Deal_Slider` (
  `id` int(10) unsigned NOT NULL,
  `hot_deal_id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Hot_Deal_Slider`
--

INSERT INTO `Hot_Deal_Slider` (`id`, `hot_deal_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'hotdeal_41828169558226707515.jpg', '2016-08-26 19:27:18', '2016-08-26 19:27:18', NULL),
(2, 1, 'hotdeal_428084112430416250984.jpg', '2016-08-26 19:27:18', '2016-08-26 19:27:18', NULL),
(3, 1, 'hotdeal_82187614891663631047.jpg', '2016-08-26 19:27:18', '2016-08-26 19:27:18', NULL),
(4, 2, 'hotdeal_350908089003264820366.jpg', '2016-08-26 19:27:19', '2016-08-26 19:27:19', NULL),
(5, 2, 'hotdeal_503605830996182765421.jpg', '2016-08-26 19:27:19', '2016-08-26 19:27:19', NULL),
(6, 2, 'hotdeal_192133144049702461251.jpg', '2016-08-26 19:27:19', '2016-08-26 19:27:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Invite_Merchant`
--

CREATE TABLE IF NOT EXISTS `Invite_Merchant` (
  `id` int(10) unsigned NOT NULL,
  `invitation_code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL COMMENT 'owner or manager or casher',
  `type_id` int(11) NOT NULL COMMENT 'business group id or branch id',
  `email_phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'to send code to the email or phone',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Item`
--

CREATE TABLE IF NOT EXISTS `Item` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `recommend` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Item`
--

INSERT INTO `Item` (`id`, `name`, `description`, `image`, `price`, `branch_id`, `recommend`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Spicy Crab', 'Seafood အစားအစာထဲမွာဆိုရင္ ဂဏန္းကလည္း ထိပ္ဆံုးမွာရွိပါတယ္..\r\n\r\nဂဏန္းမွာရွိတဲ့ ခ်ိဳတဲ့ အရသာက လူတိုင္းကို ၾကိဳက္နွစ္သက္ေစတာျဖစ္ပါတယ္။ ေနာက္တစ္ခ်က္ကေတာ့ ဂဏန္းမွာ (82) ကယ္လိုရီဘဲ ပါ၀င္တာမို႔ လည္းခႏၶာကိုယ္ ကို မ၀ေစနိုင္ပါဘူးေနာ္..\r\n\r\nSeafood (Crab) အရသာမ်ားကိုေတာ့ ကုိယ္တိုင္လာေရာက္အားေပးပါ\r\nဦးေနာ္..', 'thumb_98540186506609.jpg', '5200 Kyat', 9, '1', '2016-08-27 16:23:05', '2016-08-27 16:23:05', NULL),
(3, 'Strawberry Yogurt ', 'Strawberry yogurt is a good source of potassium. Yogurt is a nutritious way to boost your intake of protein and calcium, but it isn''t usually a good source of fiber. Certain brands of yogurt have added fiber, and these can help you get plenty of fiber in your diet.', 'thumb_63216586847975.jpg', '-', 11, '1', '2016-08-27 16:30:05', '2016-08-27 16:30:05', NULL),
(4, 'Porkchop', '#CafeParadise က အရမ္းတန္ပီး အရသာအရမ္းေကာင္းတဲ့ special #Porkchop ပါ\r\n#6000ks နဲ႔လာေရာက္စားသံုးႏိုင္ပါပီ', 'thumb_98628803672672.jpg', '6000', 12, '1', '2016-08-27 16:34:31', '2016-08-27 16:34:31', NULL),
(5, 'Test 1', 'Test 1 ', 'thumb_4716581928529.jpg', '12000', 54, '2', '2016-08-31 20:27:08', '2016-08-31 20:27:08', NULL),
(6, 'Test 2', 'Test 3', 'thumb_81938692937307.jpg', '13000', 54, '2', '2016-08-31 20:27:47', '2016-08-31 20:27:47', NULL),
(7, 'Seafood Buffet', 'Spice Brasserie International Restaurant @PARK Royal Hotel', 'thumb_75549712048391.jpg', '$35 - $38', 63, '1', '2016-09-01 20:54:12', '2016-09-01 20:54:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Item_Branch`
--

CREATE TABLE IF NOT EXISTS `Item_Branch` (
  `id` int(10) unsigned NOT NULL,
  `item_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Item_Branch`
--

INSERT INTO `Item_Branch` (`id`, `item_id`, `branch_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 9, '2016-08-27 16:23:05', '2016-08-27 16:23:05', NULL),
(3, 3, 11, '2016-08-27 16:30:05', '2016-08-27 16:30:05', NULL),
(4, 4, 12, '2016-08-27 16:34:31', '2016-08-27 16:34:31', NULL),
(5, 5, 54, '2016-08-31 20:27:08', '2016-08-31 20:27:08', NULL),
(6, 6, 54, '2016-08-31 20:27:47', '2016-08-31 20:27:47', NULL),
(7, 7, 63, '2016-09-01 20:54:12', '2016-09-01 20:54:12', NULL),
(8, 2, 9, '2016-08-27 16:23:05', '2016-08-27 16:23:05', NULL),
(9, 3, 11, '2016-08-27 16:30:05', '2016-08-27 16:30:05', NULL),
(10, 4, 12, '2016-08-27 16:34:31', '2016-08-27 16:34:31', NULL),
(11, 5, 54, '2016-08-31 20:27:08', '2016-08-31 20:27:08', NULL),
(12, 6, 54, '2016-08-31 20:27:47', '2016-08-31 20:27:47', NULL),
(13, 7, 63, '2016-09-01 20:54:12', '2016-09-01 20:54:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Merchant`
--

CREATE TABLE IF NOT EXISTS `Merchant` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'merchant name',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'first time send for registration',
  `about` text COLLATE utf8_unicode_ci,
  `dob` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `township_id` int(11) DEFAULT NULL COMMENT 'optional township',
  `facebook_id` int(11) NOT NULL,
  `facebook_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_id` int(11) NOT NULL,
  `twitter_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Merchant`
--

INSERT INTO `Merchant` (`id`, `name`, `image`, `email`, `phone`, `password`, `api_token`, `activation_code`, `about`, `dob`, `address`, `township_id`, `facebook_id`, `facebook_token`, `twitter_id`, `twitter_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'thumb_14633296588555.jpg', 'test@test.com', NULL, '$2y$10$uSh3FV82Mzd0/AI./gESyeIvTJgIJT5t/BmsA.9FeywHQNqIQl0g6', 'kBXxQlP0zlRZAYmROQTrtKL3xsj1nytwD8XUWhKeGNMCR3sDGvGRUCbwtoK4', '1', NULL, '2016-01-01', '', 1, 0, NULL, 0, NULL, '2017-01-01 13:58:27', '2017-01-01 13:58:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Merchant_History`
--

CREATE TABLE IF NOT EXISTS `Merchant_History` (
  `id` int(10) unsigned NOT NULL,
  `merchant_id` int(11) NOT NULL COMMENT 'user_id from user table',
  `type` int(11) NOT NULL COMMENT '1:create business,2:update business,3:create coupon,4:update coupon,5:redeem coupon,6:create menu,7:update menu',
  `type_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Merchant_History`
--

INSERT INTO `Merchant_History` (`id`, `merchant_id`, `type`, `type_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 9, NULL, 'create account', '2017-01-01 13:58:27', '2017-01-01 13:58:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Merchant_Notification`
--

CREATE TABLE IF NOT EXISTS `Merchant_Notification` (
  `id` int(10) unsigned NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `type_id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Merchant_Role`
--

CREATE TABLE IF NOT EXISTS `Merchant_Role` (
  `id` int(10) unsigned NOT NULL,
  `business_group_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2016_03_01_000131_create_currency', 1),
('2016_03_01_000133_create_popular_land_mark', 1),
('2016_03_01_000134_create_business', 1),
('2016_03_01_062304_create_coupon', 1),
('2016_03_01_062617_create_menu', 1),
('2016_03_01_063109_create_photo', 1),
('2016_03_01_064706_create_user_business', 1),
('2016_03_01_065217_create_taken_coupon', 1),
('2016_03_01_065401_create_business_ranking', 1),
('2016_03_03_053740_create_business_currency', 1),
('2016_03_07_072705_create_admin', 1),
('2016_03_08_055635_create_sessions_table', 1),
('2016_03_28_202706_create_township_table', 1),
('2016_04_10_193208_feature', 1),
('2016_04_18_062905_business_feature_b', 1),
('2016_04_26_135358_create_comments_table', 1),
('2016_05_25_034620_category_table', 1),
('2016_07_07_160624_recovery_password', 1),
('2016_07_20_062813_create_business_type', 1),
('2016_07_20_064820_create_business_category_table', 1),
('2016_07_20_064930_create_bookmark_business_table', 1),
('2016_07_20_065326_create_history_table', 1),
('2016_07_26_130345_create_slider', 1),
('2016_07_26_130353_create_slider_detail', 1),
('2016_07_29_051821_create_hot_detal_table', 1),
('2016_08_01_023442_Edit_Coupon_Table', 1),
('2016_08_01_023502_create_couponslider_table', 1),
('2016_08_12_001112_update_hot_deal_table', 1),
('2016_08_12_030446_create_hot_deal_slider_table', 1),
('2016_08_14_065356_update_user_table_for_township', 1),
('2016_08_23_162730_update_business_ranking', 1),
('2016_08_29_032136_updaate_coupon_add_custom_field', 2),
('2016_08_29_075040_update_coupon_add_price_currency', 3),
('2016_09_07_023609_update_business_type_mobile_image', 4),
('2016_09_12_095312_add_average_price_to_Business', 5),
('2016_09_19_113514_create_merchant_history', 6),
('2016_10_05_081117_V2CreateBusinessGroupTable', 7),
('2016_10_05_081908_V2RenameBusinessToBranch', 7),
('2016_10_06_094757_V2CreateMerchantTable', 7),
('2016_10_06_211753_V2CRename_Table', 7),
('2016_10_06_213156_V2CRename_Column_Branch_BookMark', 7),
('2016_10_06_213536_V2CRename_Column_Branch_Category', 7),
('2016_10_06_213641_V2CRename_Column_Branch_Currency', 7),
('2016_10_06_213750_V2CRename_Column_Branch_Feature', 7),
('2016_10_06_214140_V2CRename_Column_Branch_Ranking', 7),
('2016_10_06_214348_V2Create_Branch_Business_Type_Table', 7),
('2016_10_06_215101_V2Create_Business_Table', 7),
('2016_10_06_215425_V2Modified_Branch', 7),
('2016_10_06_221641_V2Modified_Coupon', 7),
('2016_10_06_222345_V2Create_Coupon_Business_Type', 7),
('2016_10_06_223814_V2_Merchant_Update', 7),
('2016_10_06_233222_V2_Create_Role_Table', 7),
('2016_10_06_234717_V2_Create_RoleDetail_Table', 7),
('2016_10_06_235007_V2_Business_Group_Update', 7),
('2016_10_07_012636_V2_rename_businessgroup_table', 7),
('2016_10_07_014111_V2_rename_roledetail_table', 7),
('2016_10_14_110211_V2Rename_Branch_Bookmark_to_Favourite_Branch', 7),
('2016_10_14_110727_V2_Photo_Update', 7),
('2016_10_14_111707_V2Rename_Menu_To_Item', 7),
('2016_10_14_111956_V2Modified_Item', 7),
('2016_10_17_111018_V2merchant_modified', 7),
('2016_10_17_140643_V2_merchant_update_table', 7),
('2016_10_17_143443_V2_drop_table_role_detail', 7),
('2016_10_17_143457_V2_create_Merchant_Role', 7),
('2016_10_17_144419_V2_modified_table_role', 7),
('2016_10_18_023949_V2_Create_app_version_control', 7),
('2016_10_19_120818_V2_rename_column_Branch', 7),
('2016_10_19_121133_V2_add_main_branch_column_to_Branch', 7),
('2016_10_19_145429_V2_Modified_Merchant_Role', 7),
('2016_10_20_104551_V2_Modified_Coupon_Table', 7),
('2016_10_20_111808_V2_Crate_Coupon_Branch_Table', 7),
('2016_10_24_100142_V2_modified_merchant_ad_image', 7),
('2016_10_24_134904_V2_Create_Redeem_Table', 7),
('2016_10_24_142134_V2_Create_Invite_Merchant_Table', 7),
('2016_10_24_164048_v2_modified_rename_column_invite_merchant', 7),
('2016_10_26_130921_V2_Create_Merchant_Migration_Table', 7),
('2016_10_26_154209_V2_Create_Pont_Price_Coupon_Table', 7),
('2016_10_26_154234_V2_Create_Pont_Coupon_Branch_Table', 7),
('2016_10_26_154944_V2_Create_Point_Prize_Table', 7),
('2016_10_31_003327_V2_Edit_Taken_Coupon', 7),
('2016_10_31_023250_V2_Create_User_History_Table', 7),
('2016_11_02_072452_V2_Create_Item_Branch_Table', 7),
('2016_11_03_094917_V2_Create_Hot_Deal_Branch_Table', 7),
('2016_11_05_224752_V2_Add_COlumn_Merchant_Table', 7),
('2016_11_09_043047_V2_Create_Point_Prize_Slider', 7),
('2016_11_09_050602_V2_Modified_description_add_point_prize_coupon', 7),
('2016_11_10_213549_V2_Create_Point_Table', 7),
('2016_11_11_110719_V2_Modified_Coupon_Slider_Table', 7),
('2016_12_13_004556_add_column_into_Hotdetail_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `PasswordRecovery`
--

CREATE TABLE IF NOT EXISTS `PasswordRecovery` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PasswordRecovery`
--

INSERT INTO `PasswordRecovery` (`id`, `user_id`, `key`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 25, '4dbee84f1e74015f5c70bfc67f20a2a74dbee84f1e74015f5c70bfc67f20a2a7', 2, '2016-08-29 20:37:24', '2016-08-30 10:36:16', NULL),
(2, 31, 'b05c98f41c9077ef29b71e03958df191b05c98f41c9077ef29b71e03958df191', 2, '2016-08-30 02:09:56', '2016-08-30 09:32:37', '2016-08-30 09:32:37'),
(3, 24, '072713', 1, '2016-08-30 11:43:58', '2016-08-30 11:48:43', NULL),
(4, 43, '50c53eda2fe439259a7e559dceaee2b150c53eda2fe439259a7e559dceaee2b1', 2, '2016-08-30 15:01:03', '2016-08-30 08:36:34', '2016-08-30 08:36:34'),
(5, 43, '2c48ed6db761f7cce8966ee13703cc852c48ed6db761f7cce8966ee13703cc85', 2, '2016-08-30 15:11:02', '2016-08-30 08:43:29', '2016-08-30 08:43:29'),
(6, 43, '3db8e68989257d8e6dea71b8930d52a73db8e68989257d8e6dea71b8930d52a7', 2, '2016-08-30 15:14:05', '2016-08-30 08:47:06', '2016-08-30 08:47:06'),
(7, 31, '59df4a4d4d835f9091a1cfdbfda7cb5059df4a4d4d835f9091a1cfdbfda7cb50', 2, '2016-08-30 22:45:58', '2016-08-30 16:16:39', '2016-08-30 16:16:39'),
(8, 62, '738984', 1, '2016-08-31 02:44:22', '2016-08-31 02:44:22', NULL),
(9, 60, '2e953e5001e9571e968c4a4cf43e34342e953e5001e9571e968c4a4cf43e3434', 2, '2016-08-31 03:04:48', '2016-08-30 20:50:18', '2016-08-30 20:50:18'),
(10, 60, '045307', 1, '2016-08-31 04:23:17', '2016-08-31 04:56:24', '2016-08-31 04:56:24'),
(11, 60, '899533', 1, '2016-08-31 05:11:57', '2016-08-31 05:27:25', '2016-08-31 05:27:25'),
(12, 60, '738912', 1, '2016-08-31 05:30:13', '2016-08-31 05:30:53', '2016-08-31 05:30:53'),
(13, 60, '497210', 1, '2016-08-31 05:32:00', '2016-08-31 05:32:21', '2016-08-31 05:32:21'),
(14, 60, 'b538f25e538157ade0e0fba966984fcdb538f25e538157ade0e0fba966984fcd', 2, '2016-08-31 05:39:20', '2016-08-30 23:10:05', '2016-08-30 23:10:05'),
(15, 60, '57d40b0fdc0f17bb833537e3ebf5801857d40b0fdc0f17bb833537e3ebf58018', 2, '2016-08-31 05:41:27', '2016-08-30 23:11:55', '2016-08-30 23:11:55'),
(16, 43, 'e090ad0976aa935fb8779f90124230c0e090ad0976aa935fb8779f90124230c0', 2, '2016-08-31 09:08:27', '2016-08-31 09:08:27', NULL),
(17, 79, '538229', 1, '2016-08-31 13:59:25', '2016-08-31 13:59:25', NULL),
(18, 81, 'a029c6fbedc9b3961236ce502f192103a029c6fbedc9b3961236ce502f192103', 2, '2016-08-31 14:46:27', '2016-08-31 14:54:28', NULL),
(19, 93, '1f41a99fb89d227fdb317dc57655203e1f41a99fb89d227fdb317dc57655203e', 2, '2016-08-31 19:21:06', '2016-08-31 12:52:15', '2016-08-31 12:52:15'),
(20, 15, '1be7b3add7d34d911c596473a525ed031be7b3add7d34d911c596473a525ed03', 2, '2016-09-01 17:26:07', '2016-09-01 10:57:55', '2016-09-01 10:57:55'),
(21, 82, '692718', 1, '2016-09-01 18:02:21', '2016-09-01 18:03:02', '2016-09-01 18:03:02'),
(22, 82, '914779', 1, '2016-09-01 18:04:00', '2016-09-01 18:04:26', '2016-09-01 18:04:26'),
(23, 161, '949871', 1, '2016-09-01 21:06:16', '2016-09-01 21:18:41', '2016-09-01 21:18:41'),
(24, 202, '975903', 1, '2016-09-02 10:59:19', '2016-09-02 10:59:49', NULL),
(25, 246, '035039', 1, '2016-09-02 12:10:38', '2016-09-02 23:30:12', NULL),
(26, 333, '487746', 1, '2016-09-02 21:13:14', '2016-09-02 21:13:45', NULL),
(27, 334, '949915', 1, '2016-09-02 21:23:47', '2016-09-02 21:36:43', NULL),
(28, 443, '591069', 1, '2016-09-03 15:25:51', '2016-09-04 00:15:40', NULL),
(29, 450, '747210', 1, '2016-09-03 15:40:23', '2016-09-03 15:41:05', NULL),
(30, 536, '693558', 1, '2016-09-04 14:01:22', '2016-09-04 14:01:22', NULL),
(31, 173, '683732', 1, '2016-09-06 11:10:34', '2016-09-07 11:12:55', '2016-09-07 11:12:55'),
(32, 587, '0202cd2cec0f7d1d3233bb86f90cbd920202cd2cec0f7d1d3233bb86f90cbd92', 2, '2016-09-06 11:15:30', '2016-09-06 06:26:54', '2016-09-06 06:26:54'),
(33, 22, '806139', 1, '2016-09-06 14:51:46', '2016-09-06 14:52:22', '2016-09-06 14:52:22'),
(34, 88, '406879', 1, '2016-09-07 10:13:38', '2016-09-07 17:28:20', '2016-09-07 17:28:20'),
(35, 173, '164026', 1, '2016-09-07 11:53:29', '2016-09-07 12:02:41', '2016-09-07 12:02:41'),
(36, 173, '980878', 1, '2016-09-07 12:53:26', '2016-09-07 12:53:48', '2016-09-07 12:53:48'),
(37, 179, '88b85cb6019654a0e8bd027a042d030988b85cb6019654a0e8bd027a042d0309', 2, '2016-09-07 13:20:43', '2016-09-07 13:38:09', NULL),
(38, 88, '097da3fc0ff95425de99a741e8828ba9097da3fc0ff95425de99a741e8828ba9', 2, '2016-09-07 18:00:26', '2016-09-07 11:33:14', '2016-09-07 11:33:14'),
(39, 609, '922436', 1, '2016-09-08 13:55:40', '2016-09-08 13:56:06', '2016-09-08 13:56:06'),
(40, 611, '204155', 1, '2016-09-08 16:43:17', '2016-09-08 16:44:22', '2016-09-08 16:44:22'),
(41, 611, '591814', 1, '2016-09-08 23:08:23', '2016-09-08 23:08:49', '2016-09-08 23:08:49'),
(42, 88, '0c27716bf58e1629722e2c81ddafaf700c27716bf58e1629722e2c81ddafaf70', 2, '2016-09-09 14:52:02', '2016-09-09 08:23:31', '2016-09-09 08:23:31'),
(43, 88, '680105', 1, '2016-09-09 15:05:28', '2016-09-09 15:06:07', '2016-09-09 15:06:07'),
(44, 629, '439701', 1, '2016-09-09 15:55:47', '2016-09-09 16:00:25', '2016-09-09 16:00:25'),
(45, 629, '505626', 1, '2016-09-09 16:00:49', '2016-09-09 16:00:49', NULL),
(46, 631, '775221', 1, '2016-09-09 18:05:49', '2016-12-07 18:09:53', NULL),
(47, 676, '708041', 1, '2016-09-12 14:55:13', '2016-09-12 14:55:13', NULL),
(48, 726, '685596', 1, '2016-09-12 15:56:06', '2016-09-12 15:56:37', '2016-09-12 15:56:37'),
(49, 726, '681268', 1, '2016-09-12 15:57:30', '2016-09-12 15:57:53', '2016-09-12 15:57:53'),
(50, 725, 'ae020027d2c46c3718d5f84f12cb95cfae020027d2c46c3718d5f84f12cb95cf', 2, '2016-09-12 16:00:47', '2016-09-12 16:02:03', NULL),
(51, 726, '597388', 1, '2016-09-12 16:03:21', '2016-09-12 16:03:50', '2016-09-12 16:03:50'),
(52, 742, '411263', 1, '2016-09-15 15:59:56', '2016-09-15 16:02:43', '2016-09-15 16:02:43'),
(53, 742, '786956', 1, '2016-09-15 16:03:31', '2016-09-15 16:03:31', NULL),
(54, 149, 'fcf68b9ee464878448caafa748332f99fcf68b9ee464878448caafa748332f99', 2, '2016-09-17 20:05:45', '2016-09-17 13:45:21', '2016-09-17 13:45:21'),
(55, 140, '590964', 1, '2016-10-25 11:46:30', '2016-10-25 11:47:19', '2016-10-25 11:47:19'),
(56, 853, 'e23ee81375ff809a405fb920b9d3f6e8e23ee81375ff809a405fb920b9d3f6e8', 2, '2016-10-28 02:09:07', '2016-10-28 02:09:07', NULL),
(57, 5, '2d1212bcf85ebbafb25d1d0b545ffc002d1212bcf85ebbafb25d1d0b545ffc00', 2, '2016-10-31 11:20:27', '2016-10-31 11:20:27', NULL),
(58, 870, 'f7ef80302fc75b968bc96d091490a387f7ef80302fc75b968bc96d091490a387', 2, '2016-10-31 16:23:44', '2016-10-31 09:54:30', '2016-10-31 09:54:30'),
(59, 859, 'f48c9d799ba25d5b50ca2d7c90b93b82f48c9d799ba25d5b50ca2d7c90b93b82', 2, '2016-11-02 09:27:09', '2016-11-02 02:57:38', '2016-11-02 02:57:38'),
(60, 859, 'def887628e8de31d2255e9cb32bdbd1adef887628e8de31d2255e9cb32bdbd1a', 2, '2016-11-02 10:02:27', '2016-11-02 10:04:26', NULL),
(61, 875, 'b851d10e5fec9b2d21e627b31377077bb851d10e5fec9b2d21e627b31377077b', 2, '2016-12-07 16:52:42', '2016-12-07 17:12:01', NULL),
(62, 740, 'f6f05f264da314a9f2bec632abadbe5df6f05f264da314a9f2bec632abadbe5d', 2, '2016-12-07 17:54:43', '2016-12-07 17:54:43', NULL),
(63, 953, '219587', 1, '2016-12-08 17:23:24', '2016-12-08 17:23:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Photo`
--

CREATE TABLE IF NOT EXISTS `Photo` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Point`
--

CREATE TABLE IF NOT EXISTS `Point` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `point_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Point`
--

INSERT INTO `Point` (`id`, `user_id`, `point_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 740, 300, '2016-12-07 13:44:05', '2016-12-07 15:10:46', NULL),
(2, 952, 200, '2016-12-07 17:36:05', '2016-12-07 17:36:26', NULL),
(3, 88, 999, '2016-12-16 00:00:00', '2016-12-16 15:34:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Point_Coupon_Branch`
--

CREATE TABLE IF NOT EXISTS `Point_Coupon_Branch` (
  `id` int(10) unsigned NOT NULL,
  `point_prize_coupon_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Point_Coupon_Branch`
--

INSERT INTO `Point_Coupon_Branch` (`id`, `point_prize_coupon_id`, `branch_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2016-12-16 23:59:59', '2016-12-16 23:59:59', NULL),
(2, 2, 1, '2016-12-24 18:00:50', '2016-12-24 18:00:50', NULL),
(3, 3, 1, '2016-12-24 18:01:11', '2016-12-24 18:01:11', NULL),
(4, 4, 1, '2016-12-24 18:13:33', '2016-12-24 18:13:33', NULL),
(5, 5, 3, '2016-12-24 18:14:12', '2016-12-25 02:26:14', '2016-12-25 02:26:14'),
(6, 6, 85, '2016-12-24 18:42:04', '2016-12-24 18:42:04', NULL),
(7, 7, 44, '2016-12-24 20:40:58', '2016-12-24 20:40:58', NULL),
(8, 8, 3, '2016-12-25 02:12:18', '2016-12-25 02:12:18', NULL),
(9, 5, 3, '2016-12-25 02:14:33', '2016-12-25 02:26:14', '2016-12-25 02:26:14'),
(10, 5, 3, '2016-12-25 02:14:43', '2016-12-25 02:26:14', '2016-12-25 02:26:14'),
(11, 5, 3, '2016-12-25 02:14:48', '2016-12-25 02:26:14', '2016-12-25 02:26:14'),
(12, 5, 33, '2016-12-25 02:26:14', '2016-12-25 02:27:10', '2016-12-25 02:27:10'),
(13, 5, 222, '2016-12-25 02:27:10', '2016-12-25 02:27:28', '2016-12-25 02:27:28'),
(14, 5, 3, '2016-12-25 02:27:28', '2016-12-25 02:27:28', NULL),
(15, 5, 5, '2016-12-25 02:27:39', '2016-12-25 02:27:49', '2016-12-25 02:27:49'),
(16, 5, 5, '2016-12-25 02:33:58', '2016-12-25 02:33:58', NULL),
(17, 9, 53, '2016-12-25 04:59:29', '2016-12-25 04:59:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Point_Prize`
--

CREATE TABLE IF NOT EXISTS `Point_Prize` (
  `id` int(10) unsigned NOT NULL,
  `min_point` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Point_Prize`
--

INSERT INTO `Point_Prize` (`id`, `min_point`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 13, '13 hundred', '2016-12-29 03:07:05', '2016-12-24 23:05:44', NULL),
(2, 3, '333', '2016-12-24 21:52:24', '2016-12-24 22:17:02', '2016-12-24 22:17:02'),
(3, 22, 'asdfadf', '2016-12-24 21:53:13', '2016-12-24 22:16:54', '2016-12-24 22:16:54'),
(4, 1000, 'test', '2016-12-24 23:16:32', '2016-12-24 23:16:32', NULL),
(5, 1540, 'tess', '2017-01-01 13:20:23', '2017-01-01 13:20:38', '2017-01-01 13:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `Point_Prize_Coupon`
--

CREATE TABLE IF NOT EXISTS `Point_Prize_Coupon` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'name of coupon',
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `original_price` int(11) NOT NULL,
  `coupon_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `terms_condition` text COLLATE utf8_unicode_ci NOT NULL,
  `counter` int(11) NOT NULL,
  `point_prize_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Point_Prize_Coupon`
--

INSERT INTO `Point_Prize_Coupon` (`id`, `name`, `from_date`, `to_date`, `original_price`, `coupon_image`, `terms_condition`, `counter`, `point_prize_id`, `currency_id`, `created_at`, `updated_at`, `deleted_at`, `description`) VALUES
(1, 'this is gift coupon', '2016-12-16', '2017-12-16', 1000, 'coupon_68666595254811291178.jpg', '<p>asdf asd fasdf e asdfas dfasd f</p>\r\n', 0, 1, 1, '2016-12-16 23:59:59', '2017-01-01 13:16:05', NULL, '<p>asdf asd asd fasd fasdf asdf asdf asfasf&nbsp;</p>\r\n'),
(2, 'the name', '2016-01-01', '2016-01-01', 200, 'coupon_167200413941852785744.jpg', '2016/01/01', 1, 1, 1, '2016-12-24 18:00:50', '2016-12-24 18:00:50', NULL, 'the description'),
(3, 'the name', '2016-01-01', '2016-01-01', 200, 'coupon_805342467839186462362.jpg', '2016/01/01', 1, 1, 1, '2016-12-24 18:01:11', '2016-12-24 18:01:11', NULL, 'the description'),
(4, 'the name', '2016-01-01', '2018-01-01', 200, 'coupon_940045955933804418225.jpg', '201/01/01', 1, 1, 1, '2016-12-24 18:13:33', '2016-12-24 18:13:33', NULL, 'the description'),
(5, 'the names', '2016-01-01', '2018-01-01', 200, 'coupon_176645927020791153186.jpg', '<p>asdf asd asdasdfasd</p>\r\n', 0, 1, 1, '2016-12-24 18:14:12', '2016-12-25 21:02:56', NULL, '<p>asdf asd fasdfasdfasdf as asd</p>\r\n'),
(6, '2016/02/01', '2016-02-01', '2016-02-01', 1000, 'coupon_519988688216794101367.jpg', '<p>2016/02/01</p>\r\n', 22, 2, 1, '2016-12-24 18:42:04', '2016-12-24 18:42:04', NULL, '<p>2016/02/01</p>\r\n'),
(7, '2016/01/01', '2016-01-01', '2016-01-01', 333, 'coupon_492810988857287920856.jpg', '<p>2016/01/01</p>\r\n', 0, 1, 1, '2016-12-24 20:40:57', '2016-12-24 20:40:57', NULL, '<p>2016/01/01</p>\r\n'),
(8, 'the name', '2016-01-01', '2018-01-01', 200, 'coupon_119284464632254421763.jpg', '<p>asd asd asdf asdf asdf</p>\r\n', 0, 1, 1, '2016-12-25 02:12:18', '2016-12-25 21:03:37', NULL, '<p>&nbsp;asdfasdasd asd asdfadf asdf a</p>\r\n'),
(9, 'test', '2016-01-01', '2018-01-01', 10, 'coupon_326160071467572352933.jpg', '<p>2016/01/012016/01/012016/01/01&nbsp;2016/01/01&nbsp;2016/01/01</p>\r\n', 0, 4, 1, '2016-12-25 04:59:28', '2016-12-25 04:59:28', NULL, '<p>test</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `Point_Prize_Slider`
--

CREATE TABLE IF NOT EXISTS `Point_Prize_Slider` (
  `id` int(10) unsigned NOT NULL,
  `point_pirze_id` int(11) NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'slider image',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Popular_Land_Mark`
--

CREATE TABLE IF NOT EXISTS `Popular_Land_Mark` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Popular_Land_Mark`
--

INSERT INTO `Popular_Land_Mark` (`id`, `name`, `description`, `image`, `lat`, `lng`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hledan Road', 'Hledan Rd, Yangon, Myanmar (Burma)', '', '16.826511184648353', '96.130471942427', '2016-03-27 12:39:05', '2016-03-27 12:39:05', NULL),
(2, 'Shwedagon Pagoda', 'Shwedagon Pagoda, Yangon, Myanmar (Burma)', '', '16.798401511997028', '96.14962827921136', '2016-03-27 12:41:12', '2016-03-27 12:41:12', NULL),
(3, 'Dagon University', 'Dagon University Station, Yangon, Myanmar (Burma)', '', '16.91305289434475', '96.22013818979485', '2016-03-27 12:45:50', '2016-03-27 12:45:50', NULL),
(4, 'Sedona Hotel', 'Sedona Hotel Yangon', '', '16.829497014754967', '96.15544599056466', '2016-03-27 12:48:27', '2016-03-27 12:48:27', NULL),
(5, 'Taw Win Center', 'Taw Win Center, Pyay Rd, Yangon, Myanmar (Burma)', '', '16.785120630947283', '96.1421610093139', '2016-03-27 12:57:52', '2016-03-27 12:57:52', NULL),
(6, 'LanMaDaw', 'LanMaDaw, Myoma Kyaung St, Yangon, Myanmar (Burma)', '', '16.78142405654215', '96.1479974961303', '2016-03-27 13:05:23', '2016-03-27 13:05:23', NULL),
(7, 'Yangon Central Railway Station', 'Yangon Central Railway Station, Kun Chan Rd, Yangon, Myanmar (Burma)', '', '16.78120706192283', '96.16130125284417', '2016-03-27 13:10:10', '2016-03-27 13:10:10', NULL),
(8, 'Sule Pagoda', 'Sule Pagoda, Myanmar (Burma)', 'thumb_45767_og_1675024.jpg', '16.774530183291155', '96.15883362055047', '2016-03-27 13:45:32', '2016-03-27 13:45:32', NULL),
(9, 'Yangon City Hall', 'Y.C.H, Maha Bandula Road, Yangon, Myanmar (Burma)', 'thumb_Myanmar-Burma-76181148223.jpg', '16.774663723162618', '96.15971338510735', '2016-03-27 13:57:54', '2016-03-27 13:57:54', NULL),
(10, 'Burma Golf Club', 'Pyay Rd, Yangon, Myanmar (Burma)', 'thumb_image79558052.jpg', '16.884309304653065', '96.13696825266106', '2016-03-27 14:00:35', '2016-03-27 14:00:35', NULL),
(11, 'Myanmar Convention Center', 'Myanmar Convention Center,Min Dhama Rd, Yangon, Myanmar (Burma)', 'thumb_749825315642669.jpg', '16.875233633284594', '96.12932932138665', '2016-03-27 14:02:15', '2016-03-27 14:02:15', NULL),
(12, 'Dagon University', 'Bohmu Ba Htoo Road, Yangon, Myanmar (Burma)', '', '16.910897277105995', '96.20816480875237', '2016-03-27 14:18:02', '2016-03-27 14:18:02', NULL),
(13, 'Thanlyin TownShip', 'Phoe Myay Rd, Thanlyin, Myanmar (Burma)', '', '16.761751010878264', '96.24635946512444', '2016-03-27 14:19:49', '2016-03-27 14:19:49', NULL),
(14, 'Myanmar Economic Co Tyre Factory', 'Di Pe Yinn Wun Htaut U Mye St, Yangon, Myanmar (Burma)', '', '16.91391513433564', '96.0910488343261', '2016-03-27 14:21:15', '2016-03-27 14:21:15', NULL),
(15, 'Capital Hyper Mark', 'Pinlon Rd, Yangon, Myanmar (Burma)', '', '16.866656774379003', '96.18459020316823', '2016-03-27 14:23:48', '2016-03-27 14:23:48', NULL),
(16, 'South Dagon Industry Zone 1', 'South Dagon Industry Zone 1, Yauk Kaw St, Yangon, Myanmar (Burma)', '', '16.833016793585085', '96.2190116620086', '2016-03-27 14:24:58', '2016-03-27 14:24:58', NULL),
(17, 'YanKin Center', 'YanKin Center, Sayar San Rd, Yangon, Myanmar (Burma)', '', '16.823570237196982', '96.16265442729218', '2016-03-28 04:33:21', '2016-03-28 04:33:21', NULL),
(18, 'Tamwe Railway Station', 'Tamwe Railway Station, Yangon, Myanmar (Burma)', '', '16.821186380299476', '96.17905747652276', '2016-03-28 04:36:19', '2016-03-28 04:36:19', NULL),
(19, 'Junction 8 Shopping Centre', 'Myaing Hay Wun Housing, Yangon, Myanmar (Burma)', '', '16.865031965684445', '96.14085812628491', '2016-03-28 04:40:12', '2016-03-28 04:40:12', NULL),
(20, 'Shwe Taung Kyar Street', 'Shwe Taung Kyar St, Yangon, Myanmar (Burma)', '', '16.80880062512058', '96.1498696780227', '2016-03-28 04:52:45', '2016-03-28 04:52:45', NULL),
(21, 'City Mart', 'Myeik Rd, Yangon, Myanmar (Burma)', '', '16.848250442888013', '96.23541605234368', '2016-03-28 04:54:10', '2016-03-28 04:54:10', NULL),
(22, 'DaGon Thiri Zay', 'Aung Zabu Rd, Yangon, Myanmar (Burma)', '', '16.861968406080987', '96.24593031168206', '2016-03-28 04:56:49', '2016-03-28 04:56:49', NULL),
(23, 'Capital Hyper Market', 'Capital Hyper Market, Thadar Yon St, Yangon, Myanmar (Burma)', '', '16.802725558136416', '96.19583469391091', '2016-03-28 05:01:34', '2016-03-28 05:01:34', NULL),
(24, 'No.3 Market, Thaketa', 'Myin Taw Thar Rd, Yangon, Myanmar (Burma)', '', '16.781915824495915', '96.19708192110284', '2016-03-28 05:06:33', '2016-03-28 05:06:33', NULL),
(25, 'National Races Village', 'Thanlyin Chin Kat Rd, Yangon, Myanmar (Burma)', '', '16.802160664592297', '96.22872125864251', '2016-03-28 05:10:31', '2016-03-28 05:10:31', NULL),
(26, 'Asia Point Bowling Alley', 'Asia Point Bowling Alley', 'thumb_d64913351.jpg', '16.7745555', '96.1992603', '2016-03-28 05:27:11', '2016-03-28 05:27:11', NULL),
(27, 'Junction Square Shopping Centre', 'Junction Square Shopping Centre', 'thumb_658128942.jpg', '16.817141', '96.1288071', '2016-03-28 06:14:11', '2016-03-28 06:14:11', NULL),
(28, 'Junction MawTin', 'Junction MawTin', 'thumb_Junction-Centre-Maw-Tin4508795.jpg', '16.7777854', '96.1395912', '2016-03-28 06:27:49', '2016-03-28 06:27:49', NULL),
(29, 'Yangon Zoological Gardens', 'Yangon Zoological Gardens', 'thumb_unnamed2172457.jpg', '16.794455', '96.1566245', '2016-03-28 07:11:02', '2016-03-28 07:11:02', NULL),
(30, 'InnYa Kan Baung', 'InnYa Kan Baung, Pyay Road, Yangon', '', '16.7945677', '96.1570604', '2016-03-28 07:13:09', '2016-03-28 07:13:09', NULL),
(31, 'Botahtaung Pagoda', 'Botahtaung Pagoda', '', '16.7706137', '96.1659868', '2016-03-28 07:14:18', '2016-03-28 07:14:18', NULL),
(32, 'FMI Center', 'FMI Center', 'thumb_IMG_20160206_1824515205614.jpg', '16.7796842', '96.1545324', '2016-03-28 07:15:42', '2016-03-28 07:15:42', NULL),
(33, 'Bogyoke Market', 'Bogyoke Market', 'thumb_BogyokeMarket4452999.jpg', '16.7796842', '96.1545324', '2016-03-28 07:16:46', '2016-03-28 07:16:46', NULL),
(34, 'Bogyoke Aung San Stadium', 'Bogyoke Aung San Stadium', 'thumb_bg2747067.jpg', '16.7831869', '96.1575901', '2016-03-28 07:20:31', '2016-03-28 07:20:31', NULL),
(35, 'Shwe Gon Taing', 'Shwe Gon Taing Bus Stop', 'thumb_bg2177700.jpg', '16.8041419', '96.1492671', '2016-03-28 07:22:37', '2016-03-28 07:22:37', NULL),
(36, 'Yangon International Airport', 'Yangon International Airport', 'thumb_IMG_31374462531.jpg', '16.909714', '96.1328013', '2016-03-28 07:24:24', '2016-03-28 07:24:24', NULL),
(37, 'DaLa Township', 'DaLa TownShip', '', '16.7544943', '96.1401985', '2016-03-28 07:29:44', '2016-03-28 07:29:44', NULL),
(38, ' Hnin Si Gone Railway Station', ' Hnin Si Gone Railway Station', '', '16.8212632', '96.1889225', '2016-03-28 07:32:33', '2016-03-28 07:32:33', NULL),
(39, ' Okkala Golf Course', ' Okkala Golf Course Yangon', '', '16.8595634', '96.1650931', '2016-03-28 07:33:46', '2016-03-28 07:33:46', NULL),
(40, ' Puzundaung Station ', ' Puzundaung Station Mingalar Taung Nyunt', '', '16.786415', '96.1729887', '2016-03-28 07:37:54', '2016-03-28 07:37:54', NULL),
(41, ' Parami Railway Station', ' Parami Railway Station South Okkalapa', '', '16.8509281', '96.1628687', '2016-03-28 07:40:21', '2016-03-28 07:40:21', NULL),
(42, 'Okkalapa Pagoda', 'Okkalapa Pagoda Yangon', 'thumb_OkkalapaPagoda9996889.jpg', '16.8530271', '96.184073', '2016-03-28 07:44:46', '2016-03-28 07:44:46', NULL),
(43, 'FMI', 'FMI, Hlaingtharya, Yangon, Yangon Region', '', '16.8580347', '96.081715', '2016-03-28 07:49:24', '2016-03-28 07:49:24', NULL),
(44, 'Oke Kyin, Yangon', 'Oke Kyin BusStop', '', '16.8548832', '96.114171', '2016-03-28 07:52:07', '2016-03-28 07:52:07', NULL),
(45, 'Yangon Technological University', 'Yangon Technological University', '', '16.875683', '96.1148625', '2016-03-28 07:56:32', '2016-03-28 07:56:32', NULL),
(46, 'Aung Mingalar Highway Bus Station', 'Aung Mingalar Highway Bus Station', '', '16.9310642', '96.158664', '2016-03-28 08:01:21', '2016-03-28 08:01:21', NULL),
(47, ' Pinlon Village Resort & Driving Range', ' Pinlon Village Resort & Driving Range', '', '16.8586232', '96.2085317', '2016-03-28 08:20:03', '2016-03-28 08:20:03', NULL),
(48, 'Kandawgyi Nature Park', 'Kandawgyi Nature Park', 'thumb_IMG_11509221596.jpg', '16.79677', '96.1599215', '2016-03-28 08:23:29', '2016-03-28 08:23:29', NULL),
(49, 'May Ni Gone', 'May Ni Gone (Bargayar), Bagaya Street, Yangon, Yangon Region', '', '16.803781', '96.1356175', '2016-03-28 08:28:59', '2016-03-28 08:28:59', NULL),
(50, 'Hlaing University Compac', 'Hlaing University, Yangon, Yangon Region', '', '16.8517819', '96.1306292', '2016-03-28 08:32:02', '2016-03-28 08:32:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Redeem`
--

CREATE TABLE IF NOT EXISTS `Redeem` (
  `id` int(10) unsigned NOT NULL,
  `taken_coupon_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL COMMENT 'amount of voucher to calculate poiint',
  `user_id` int(11) NOT NULL COMMENT 'to know whose taken coupon',
  `merchant_id` int(11) NOT NULL COMMENT 'to know how redeem',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE IF NOT EXISTS `Role` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Slider`
--

CREATE TABLE IF NOT EXISTS `Slider` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `current_slider` int(11) NOT NULL COMMENT 'current slider:1 or 2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Slider`
--

INSERT INTO `Slider` (`id`, `name`, `description`, `current_slider`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Slider ', 'Slider ', 2, '2016-08-26 10:16:16', '2016-08-26 10:16:16', NULL),
(2, 'Slider ', 'Slider ', 1, '2016-08-26 10:16:16', '2016-11-28 13:31:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Slider_Detail`
--

CREATE TABLE IF NOT EXISTS `Slider_Detail` (
  `id` int(10) unsigned NOT NULL,
  `slider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Slider_Detail`
--

INSERT INTO `Slider_Detail` (`id`, `slider_id`, `name`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '', '', 'slider253281270349446.jpg', '2016-08-26 10:16:16', '2016-08-26 10:16:16', NULL),
(2, '1', '', '', 'slider861719747631919.jpg', '2016-08-26 10:16:16', '2016-08-26 10:16:16', NULL),
(3, '1', '', '', 'slider855566022042845.jpg', '2016-08-26 10:16:16', '2016-08-26 10:16:16', NULL),
(4, '1', '', '', 'slider824736736383646.jpg', '2016-08-26 10:16:16', '2016-08-26 10:16:16', NULL),
(5, '2', '', '', 'slider390874192238516.jpg', '2016-08-26 10:16:16', '2016-08-30 01:38:27', NULL),
(6, '2', '', '', 'slider898853797299145.jpg', '2016-08-26 10:16:16', '2016-08-30 01:38:27', NULL),
(7, '2', '', '', 'slider760394638441032.jpg', '2016-08-26 10:16:16', '2016-08-30 01:38:27', NULL),
(10, '2', '', '', 'slider921305713923053.jpg', '2016-08-30 01:38:27', '2016-08-30 01:38:27', NULL),
(16, '2', '', '', 'slider391238425834357.jpg', '2016-11-28 13:31:28', '2016-11-28 13:31:28', NULL),
(17, '2', '', '', 'slider556818949687714.jpg', '2016-11-28 13:31:28', '2016-11-28 13:31:28', NULL),
(18, '2', '', '', 'slider674218637533734.jpg', '2016-11-28 13:31:28', '2016-11-28 13:31:28', NULL),
(19, '2', '', '', 'slider735814861241465.jpg', '2016-11-28 13:31:28', '2016-11-28 13:31:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Taken_Coupon`
--

CREATE TABLE IF NOT EXISTS `Taken_Coupon` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Taken_Coupon`
--

INSERT INTO `Taken_Coupon` (`id`, `user_id`, `type`, `type_id`, `coupon_code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 21, 1, 1, '91-81-97-59', 2, '2016-08-28 15:48:10', '2016-08-28 15:48:10', NULL),
(2, 22, 1, 2, '64-54-1-96', 2, '2016-08-29 09:56:40', '2016-08-29 09:56:40', NULL),
(3, 22, 1, 3, '729-678-355', 2, '2016-08-30 10:31:42', '2016-08-30 10:31:42', NULL),
(4, 42, 1, 1, '713-861-044', 2, '2016-08-30 14:39:27', '2016-08-30 14:39:27', NULL),
(5, 42, 1, 1, '366-958-395', 2, '2016-08-30 14:39:44', '2016-08-30 14:39:44', NULL),
(6, 42, 1, 4, '936-526-919', 2, '2016-08-30 15:19:04', '2016-08-30 15:19:04', NULL),
(7, 42, 1, 4, '207-787-418', 2, '2016-08-30 15:19:30', '2016-08-30 15:19:30', NULL),
(8, 42, 1, 4, '382-985-427', 2, '2016-08-30 15:19:52', '2016-08-30 15:19:52', NULL),
(9, 42, 1, 13, '664-939-824', 2, '2016-08-30 15:20:25', '2016-08-30 15:20:25', NULL),
(10, 42, 1, 4, '216-471-052', 2, '2016-08-30 15:21:28', '2016-08-30 15:21:28', NULL),
(11, 42, 1, 12, '947-546-328', 2, '2016-08-30 15:22:03', '2016-08-30 15:22:03', NULL),
(12, 42, 1, 22, '269-505-211', 2, '2016-08-30 15:29:53', '2016-08-30 15:29:53', NULL),
(13, 42, 1, 12, '910-695-282', 2, '2016-08-30 15:32:36', '2016-08-30 15:32:36', NULL),
(14, 42, 1, 13, '689-943-403', 2, '2016-08-30 15:42:13', '2016-08-30 15:42:13', NULL),
(15, 42, 1, 13, '465-466-232', 2, '2016-08-30 15:45:10', '2016-08-30 15:45:10', NULL),
(16, 42, 1, 3, '786-541-162', 2, '2016-08-30 15:46:09', '2016-08-30 15:46:09', NULL),
(17, 42, 1, 13, '468-278-222', 2, '2016-08-30 15:53:14', '2016-08-30 15:53:14', NULL),
(18, 42, 1, 5, '380-831-278', 2, '2016-08-30 15:54:26', '2016-08-30 15:54:26', NULL),
(19, 37, 1, 1, '342-631-124', 2, '2016-08-30 17:33:55', '2016-08-30 17:33:55', NULL),
(20, 42, 1, 1, '222-936-837', 2, '2016-08-30 17:40:15', '2016-08-30 17:40:15', NULL),
(21, 52, 1, 13, '237-832-323', 2, '2016-08-30 17:56:47', '2016-08-30 17:56:47', NULL),
(22, 52, 1, 2, '353-523-963', 2, '2016-08-30 17:57:34', '2016-08-30 17:57:34', NULL),
(23, 52, 1, 15, '392-328-440', 2, '2016-08-30 17:58:14', '2016-08-30 17:58:14', NULL),
(24, 52, 1, 2, '460-714-972', 2, '2016-08-30 17:59:52', '2016-08-30 17:59:52', NULL),
(25, 52, 1, 4, '829-544-113', 2, '2016-08-30 18:01:23', '2016-08-30 18:01:23', NULL),
(26, 52, 1, 22, '451-666-805', 2, '2016-08-30 18:03:07', '2016-08-30 18:03:07', NULL),
(27, 30, 1, 1, '340-274-465', 2, '2016-08-30 18:03:41', '2016-08-30 18:03:41', NULL),
(28, 52, 1, 15, '568-461-257', 2, '2016-08-30 18:05:02', '2016-08-30 18:05:02', NULL),
(29, 52, 1, 1, '733-083-491', 2, '2016-08-30 18:12:03', '2016-08-30 18:12:03', NULL),
(30, 22, 1, 1, '079-946-146', 2, '2016-08-30 19:07:44', '2016-08-30 19:07:44', NULL),
(31, 56, 1, 2, '866-957-781', 2, '2016-08-31 00:01:00', '2016-08-31 00:01:00', NULL),
(32, 56, 1, 5, '328-366-047', 2, '2016-08-31 00:03:02', '2016-08-31 00:03:02', NULL),
(33, 30, 1, 22, '701-230-333', 2, '2016-08-31 00:03:55', '2016-08-31 00:03:55', NULL),
(34, 20, 1, 3, '858-363-369', 2, '2016-08-31 01:03:41', '2016-08-31 01:03:41', NULL),
(35, 20, 1, 3, '620-061-497', 2, '2016-08-31 01:11:33', '2016-08-31 01:11:33', NULL),
(36, 37, 1, 14, '823-694-646', 2, '2016-08-31 01:31:37', '2016-08-31 01:31:37', NULL),
(37, 20, 1, 1, '864-956-652', 2, '2016-08-31 01:35:55', '2016-08-31 01:35:55', NULL),
(38, 60, 1, 1, '738-011-794', 2, '2016-08-31 01:54:08', '2016-08-31 01:54:08', NULL),
(39, 60, 1, 2, '975-624-600', 2, '2016-08-31 01:56:28', '2016-08-31 01:56:28', NULL),
(40, 37, 1, 16, '325-851-187', 2, '2016-08-31 01:58:52', '2016-08-31 01:58:52', NULL),
(41, 37, 1, 17, '982-697-907', 2, '2016-08-31 02:01:23', '2016-08-31 02:01:23', NULL),
(42, 37, 1, 2, '327-477-679', 2, '2016-08-31 02:02:03', '2016-08-31 02:02:03', NULL),
(43, 70, 1, 29, '312-958-132', 2, '2016-08-31 03:40:57', '2016-08-31 03:40:57', NULL),
(44, 70, 1, 30, '121-839-303', 2, '2016-08-31 03:45:14', '2016-08-31 03:45:14', NULL),
(45, 70, 1, 30, '430-470-221', 2, '2016-08-31 03:45:38', '2016-08-31 03:45:38', NULL),
(46, 6, 1, 20, '520-613-701', 2, '2016-08-31 08:38:13', '2016-08-31 08:38:13', NULL),
(47, 6, 1, 1, '520-696-901', 2, '2016-08-31 08:42:45', '2016-08-31 08:42:45', NULL),
(48, 7, 1, 21, '965-720-100', 2, '2016-08-31 08:54:45', '2016-08-31 08:54:45', NULL),
(49, 20, 1, 1, '816-427-191', 2, '2016-08-31 09:41:47', '2016-08-31 09:41:47', NULL),
(50, 72, 1, 20, '087-027-990', 2, '2016-08-31 09:45:25', '2016-08-31 09:45:25', NULL),
(51, 73, 1, 1, '015-900-671', 2, '2016-08-31 10:06:29', '2016-08-31 10:06:29', NULL),
(52, 20, 1, 1, '334-228-360', 2, '2016-08-31 10:10:20', '2016-08-31 10:10:20', NULL),
(53, 20, 1, 4, '647-195-758', 2, '2016-08-31 10:11:05', '2016-08-31 10:11:05', NULL),
(54, 68, 1, 26, '594-408-842', 2, '2016-08-31 10:45:50', '2016-08-31 10:45:50', NULL),
(55, 74, 1, 22, '987-109-966', 2, '2016-08-31 10:54:38', '2016-08-31 10:54:38', NULL),
(56, 73, 1, 2, '897-036-751', 2, '2016-08-31 10:54:46', '2016-08-31 10:54:46', NULL),
(57, 20, 1, 24, '359-694-561', 2, '2016-08-31 10:55:25', '2016-08-31 10:55:25', NULL),
(58, 5, 1, 26, '684-613-325', 2, '2016-08-31 11:16:02', '2016-08-31 11:16:02', NULL),
(59, 5, 1, 26, '611-641-065', 2, '2016-08-31 11:22:07', '2016-08-31 11:22:07', NULL),
(61, 5, 1, 24, '887-951-037', 2, '2016-08-31 11:22:20', '2016-08-31 11:22:20', NULL),
(62, 5, 1, 25, '201-591-670', 2, '2016-08-31 11:22:23', '2016-08-31 11:22:23', NULL),
(63, 5, 1, 27, '903-562-887', 2, '2016-08-31 11:22:25', '2016-08-31 11:22:25', NULL),
(64, 20, 1, 1, '448-013-870', 2, '2016-08-31 11:23:32', '2016-08-31 11:23:32', NULL),
(65, 20, 1, 1, '840-321-602', 2, '2016-08-31 11:24:03', '2016-08-31 11:24:03', NULL),
(66, 62, 1, 20, '895-874-126', 2, '2016-08-31 11:28:40', '2016-08-31 11:28:40', NULL),
(67, 62, 1, 26, '081-472-635', 2, '2016-08-31 11:30:13', '2016-08-31 11:30:13', NULL),
(68, 76, 1, 20, '900-394-379', 2, '2016-08-31 11:31:54', '2016-08-31 11:31:54', NULL),
(69, 76, 1, 26, '802-790-254', 2, '2016-08-31 11:33:19', '2016-08-31 11:33:19', NULL),
(70, 20, 1, 2, '459-819-381', 2, '2016-08-31 11:41:10', '2016-08-31 11:41:10', NULL),
(71, 7, 1, 20, '246-196-519', 2, '2016-08-31 13:31:36', '2016-08-31 13:31:36', NULL),
(72, 68, 1, 20, '079-477-433', 2, '2016-08-31 13:32:05', '2016-08-31 13:32:05', NULL),
(73, 79, 1, 27, '523-741-458', 2, '2016-08-31 14:04:21', '2016-08-31 14:04:21', NULL),
(74, 80, 1, 26, '009-353-701', 2, '2016-08-31 14:12:15', '2016-08-31 14:12:15', NULL),
(75, 20, 1, 18, '0', 1, '2016-08-31 14:50:04', '2016-08-31 16:52:06', NULL),
(76, 42, 1, 22, '250-462-379', 2, '2016-08-31 14:57:34', '2016-08-31 14:57:34', NULL),
(77, 20, 1, 16, '0', 1, '2016-08-31 15:25:48', '2016-08-31 16:50:21', NULL),
(78, 83, 1, 4, '058-643-254', 2, '2016-08-31 16:12:02', '2016-08-31 16:12:02', NULL),
(79, 83, 1, 4, '380-799-077', 2, '2016-08-31 16:12:50', '2016-08-31 16:12:50', NULL),
(80, 83, 1, 17, '782-091-684', 2, '2016-08-31 16:23:44', '2016-08-31 16:23:44', NULL),
(81, 37, 1, 1, '470-292-712', 2, '2016-08-31 16:46:07', '2016-08-31 16:46:07', NULL),
(82, 85, 1, 2, '146-770-142', 2, '2016-08-31 16:59:23', '2016-08-31 16:59:23', NULL),
(83, 87, 1, 31, '018-577-352', 2, '2016-08-31 17:09:56', '2016-08-31 17:09:56', NULL),
(84, 20, 1, 37, '109-467-775', 2, '2016-08-31 17:31:07', '2016-08-31 17:31:07', NULL),
(85, 20, 1, 37, '275-256-906', 2, '2016-08-31 17:31:31', '2016-08-31 17:31:31', NULL),
(86, 20, 1, 37, '505-055-833', 2, '2016-08-31 17:31:41', '2016-08-31 17:31:41', NULL),
(87, 20, 1, 33, '001-493-523', 2, '2016-08-31 17:32:01', '2016-08-31 17:32:01', NULL),
(88, 20, 1, 33, '022-099-784', 2, '2016-08-31 17:32:20', '2016-08-31 17:32:20', NULL),
(89, 20, 1, 36, '855-977-715', 2, '2016-08-31 17:35:48', '2016-08-31 17:35:48', NULL),
(90, 20, 1, 19, '875-395-351', 2, '2016-08-31 17:38:26', '2016-08-31 17:38:26', NULL),
(91, 90, 1, 23, '160-041-373', 2, '2016-08-31 17:42:04', '2016-08-31 17:42:04', NULL),
(92, 86, 1, 19, '651-312-799', 2, '2016-08-31 17:58:22', '2016-08-31 17:58:22', NULL),
(93, 86, 1, 4, '159-785-804', 2, '2016-08-31 18:00:41', '2016-08-31 18:00:41', NULL),
(94, 86, 1, 31, '995-090-017', 2, '2016-08-31 18:01:05', '2016-08-31 18:01:05', NULL),
(95, 22, 1, 35, '361-571-673', 2, '2016-08-31 18:33:45', '2016-08-31 18:33:45', NULL),
(96, 68, 1, 6, '281-289-678', 2, '2016-08-31 18:49:46', '2016-08-31 18:49:46', NULL),
(97, 93, 1, 2, '261-426-916', 2, '2016-08-31 19:58:36', '2016-08-31 19:58:36', NULL),
(98, 62, 1, 39, '457-372-938', 2, '2016-08-31 20:04:49', '2016-08-31 20:04:49', NULL),
(99, 96, 1, 18, '876-462-112', 2, '2016-08-31 21:31:37', '2016-08-31 21:31:37', NULL),
(100, 93, 1, 33, '757-627-328', 2, '2016-08-31 22:01:49', '2016-08-31 22:01:49', NULL),
(101, 93, 1, 1, '128-105-052', 2, '2016-08-31 22:02:06', '2016-08-31 22:02:06', NULL),
(102, 20, 1, 37, '721-594-219', 2, '2016-08-31 23:25:51', '2016-08-31 23:25:51', NULL),
(103, 95, 1, 38, '651-593-163', 2, '2016-09-01 00:38:08', '2016-09-01 00:38:08', NULL),
(104, 93, 1, 39, '104-533-403', 2, '2016-09-01 00:40:22', '2016-09-01 00:40:22', NULL),
(105, 105, 1, 39, '555-537-542', 2, '2016-09-01 01:32:06', '2016-09-01 01:32:06', NULL),
(106, 107, 1, 6, '949-005-008', 2, '2016-09-01 01:40:46', '2016-09-01 01:40:46', NULL),
(107, 108, 1, 38, '131-506-064', 2, '2016-09-01 01:55:28', '2016-09-01 01:55:28', NULL),
(108, 109, 1, 2, '603-846-676', 2, '2016-09-01 02:03:20', '2016-09-01 02:03:20', NULL),
(109, 95, 1, 34, '495-537-231', 2, '2016-09-01 02:07:19', '2016-09-01 02:07:19', NULL),
(110, 110, 1, 5, '423-346-118', 2, '2016-09-01 08:47:52', '2016-09-01 08:47:52', NULL),
(111, 90, 1, 5, '491-757-596', 2, '2016-09-01 09:59:03', '2016-09-01 09:59:03', NULL),
(112, 90, 1, 6, '149-342-336', 2, '2016-09-01 09:59:38', '2016-09-01 09:59:38', NULL),
(113, 113, 1, 39, '193-836-747', 2, '2016-09-01 10:07:44', '2016-09-01 10:07:44', NULL),
(114, 113, 1, 20, '417-485-062', 2, '2016-09-01 10:08:44', '2016-09-01 10:08:44', NULL),
(115, 118, 1, 38, '849-806-357', 2, '2016-09-01 10:58:47', '2016-09-01 10:58:47', NULL),
(116, 20, 1, 43, '574-751-969', 2, '2016-09-01 10:59:01', '2016-09-01 10:59:01', NULL),
(117, 118, 1, 17, '451-079-804', 2, '2016-09-01 10:59:53', '2016-09-01 10:59:53', NULL),
(118, 118, 1, 20, '521-758-205', 2, '2016-09-01 11:00:50', '2016-09-01 11:00:50', NULL),
(119, 20, 1, 39, '381-987-685', 2, '2016-09-01 11:01:43', '2016-09-01 11:01:43', NULL),
(120, 20, 1, 36, '752-827-330', 2, '2016-09-01 11:12:34', '2016-09-01 11:12:34', NULL),
(121, 20, 1, 44, '833-702-727', 2, '2016-09-01 11:50:08', '2016-09-01 11:50:08', NULL),
(122, 88, 1, 44, '476-824-393', 2, '2016-09-01 12:42:58', '2016-12-15 18:07:27', '2016-12-15 18:07:27'),
(123, 109, 1, 44, '300-451-592', 2, '2016-09-01 14:02:51', '2016-09-01 14:02:51', NULL),
(124, 5, 1, 37, '225-965-561', 2, '2016-09-01 14:02:55', '2016-09-01 14:02:55', NULL),
(125, 5, 1, 27, '468-435-369', 2, '2016-09-01 14:22:22', '2016-09-01 14:22:22', NULL),
(126, 128, 1, 44, '291-268-093', 2, '2016-09-01 14:25:53', '2016-09-01 14:25:53', NULL),
(127, 34, 1, 4, '173-271-567', 2, '2016-09-01 14:41:59', '2016-09-01 14:41:59', NULL),
(128, 34, 1, 27, '895-721-466', 2, '2016-09-01 14:43:30', '2016-09-01 14:43:30', NULL),
(129, 34, 1, 22, '655-891-780', 2, '2016-09-01 14:44:52', '2016-09-01 14:44:52', NULL),
(130, 34, 1, 5, '871-625-938', 2, '2016-09-01 14:46:57', '2016-09-01 14:46:57', NULL),
(131, 124, 1, 43, '580-281-416', 2, '2016-09-01 15:47:10', '2016-09-01 15:47:10', NULL),
(132, 126, 1, 4, '183-918-920', 2, '2016-09-01 16:07:52', '2016-09-01 16:07:52', NULL),
(133, 126, 1, 5, '652-725-633', 2, '2016-09-01 16:08:00', '2016-09-01 16:08:00', NULL),
(134, 126, 1, 4, '395-558-094', 2, '2016-09-01 16:08:16', '2016-09-01 16:08:16', NULL),
(135, 131, 1, 44, '640-300-584', 2, '2016-09-01 16:09:20', '2016-09-01 16:09:20', NULL),
(136, 42, 1, 44, '370-558-935', 2, '2016-09-01 16:38:23', '2016-09-01 16:38:23', NULL),
(137, 132, 1, 43, '745-043-931', 2, '2016-09-01 16:39:20', '2016-09-01 16:39:20', NULL),
(138, 42, 1, 44, '861-522-365', 2, '2016-09-01 16:41:25', '2016-09-01 16:41:25', NULL),
(139, 42, 1, 39, '685-337-309', 2, '2016-09-01 16:41:50', '2016-09-01 16:41:50', NULL),
(140, 42, 1, 39, '581-249-052', 2, '2016-09-01 16:41:53', '2016-09-01 16:41:53', NULL),
(141, 130, 1, 44, '606-547-376', 2, '2016-09-01 16:52:58', '2016-09-01 16:52:58', NULL),
(142, 131, 1, 44, '951-862-204', 2, '2016-09-01 17:39:16', '2016-09-01 17:39:16', NULL),
(143, 146, 1, 43, '585-372-434', 2, '2016-09-01 18:02:44', '2016-09-01 18:02:44', NULL),
(144, 140, 1, 2, '551-237-085', 2, '2016-09-01 18:04:11', '2016-09-01 18:04:11', NULL),
(145, 140, 1, 38, '737-882-826', 2, '2016-09-01 18:05:16', '2016-09-01 18:05:16', NULL),
(146, 135, 1, 44, '038-926-551', 2, '2016-09-01 18:39:29', '2016-09-01 18:39:29', NULL),
(147, 158, 1, 51, '106-192-576', 2, '2016-09-01 19:42:28', '2016-09-01 19:42:28', NULL),
(148, 156, 1, 44, '191-163-606', 2, '2016-09-01 19:58:46', '2016-09-01 19:58:46', NULL),
(149, 22, 1, 44, '483-845-994', 2, '2016-09-01 20:18:39', '2016-09-01 20:18:39', NULL),
(150, 22, 1, 44, '572-848-165', 2, '2016-09-01 20:31:50', '2016-09-01 20:31:50', NULL),
(151, 22, 1, 38, '905-465-270', 2, '2016-09-01 20:36:58', '2016-09-01 20:36:58', NULL),
(152, 22, 1, 44, '217-553-490', 2, '2016-09-01 20:39:27', '2016-09-01 20:39:27', NULL),
(153, 22, 1, 44, '622-875-190', 2, '2016-09-01 20:41:57', '2016-09-01 20:41:57', NULL),
(154, 6, 1, 1, '602-474-974', 2, '2016-09-01 20:47:12', '2016-09-01 20:47:12', NULL),
(155, 162, 1, 63, '560-662-468', 2, '2016-09-01 21:06:14', '2016-09-01 21:06:14', NULL),
(156, 162, 1, 39, '724-045-945', 2, '2016-09-01 21:08:03', '2016-09-01 21:08:03', NULL),
(157, 134, 1, 43, '665-023-801', 2, '2016-09-01 21:49:18', '2016-09-01 21:49:18', NULL),
(158, 164, 1, 5, '896-527-947', 2, '2016-09-01 22:01:44', '2016-09-01 22:01:44', NULL),
(159, 165, 1, 60, '062-358-597', 2, '2016-09-01 22:21:18', '2016-09-01 22:21:18', NULL),
(160, 166, 1, 63, '418-459-119', 2, '2016-09-01 22:22:46', '2016-09-01 22:22:46', NULL),
(161, 165, 1, 62, '010-953-081', 2, '2016-09-01 22:23:24', '2016-09-01 22:23:24', NULL),
(162, 165, 1, 63, '311-516-063', 2, '2016-09-01 22:23:53', '2016-09-01 22:23:53', NULL),
(163, 165, 1, 63, '670-982-722', 2, '2016-09-01 22:24:49', '2016-09-01 22:24:49', NULL),
(164, 165, 1, 62, '199-107-270', 2, '2016-09-01 22:25:00', '2016-09-01 22:25:00', NULL),
(165, 165, 1, 60, '078-826-221', 2, '2016-09-01 22:25:43', '2016-09-01 22:25:43', NULL),
(166, 130, 1, 23, '899-330-305', 2, '2016-09-01 23:28:02', '2016-09-01 23:28:02', NULL),
(167, 162, 1, 42, '381-385-596', 2, '2016-09-01 23:31:26', '2016-09-01 23:31:26', NULL),
(169, 77, 1, 43, '013-595-934', 2, '2016-09-01 23:39:07', '2016-10-06 16:03:30', '2016-10-06 16:03:30'),
(170, 155, 1, 63, '151-052-040', 2, '2016-09-01 23:41:22', '2016-09-01 23:41:22', NULL),
(171, 155, 1, 62, '893-093-663', 2, '2016-09-01 23:42:03', '2016-09-01 23:42:03', NULL),
(172, 171, 1, 63, '032-333-452', 2, '2016-09-01 23:42:43', '2016-09-01 23:42:43', NULL),
(173, 156, 1, 23, '182-120-025', 2, '2016-09-02 02:22:49', '2016-09-02 02:22:49', NULL),
(174, 156, 1, 38, '610-757-323', 2, '2016-09-02 02:32:53', '2016-09-02 02:32:53', NULL),
(175, 11, 1, 43, '842-566-580', 2, '2016-09-02 04:00:50', '2016-09-02 04:00:50', NULL),
(176, 11, 1, 39, '169-672-983', 2, '2016-09-02 04:02:17', '2016-09-02 04:02:17', NULL),
(177, 149, 1, 35, '069-801-930', 2, '2016-09-02 09:32:37', '2016-09-02 09:32:37', NULL),
(178, 149, 1, 35, '758-567-171', 2, '2016-09-02 09:33:55', '2016-09-02 09:33:55', NULL),
(179, 4, 1, 63, '497-722-613', 2, '2016-09-02 09:44:07', '2016-09-02 09:44:07', NULL),
(180, 182, 1, 63, '985-077-894', 2, '2016-09-02 09:49:29', '2016-09-02 09:49:29', NULL),
(181, 184, 1, 63, '823-215-253', 2, '2016-09-02 09:52:58', '2016-09-02 09:52:58', NULL),
(182, 185, 1, 62, '421-064-998', 2, '2016-09-02 09:57:07', '2016-09-02 09:57:07', NULL),
(183, 193, 1, 63, '400-684-366', 2, '2016-09-02 10:22:08', '2016-09-02 10:22:08', NULL),
(184, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:37', '2016-09-02 10:32:37', NULL),
(185, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:40', '2016-09-02 10:32:40', NULL),
(186, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:41', '2016-09-02 10:32:41', NULL),
(187, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:41', '2016-09-02 10:32:41', NULL),
(188, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:41', '2016-09-02 10:32:41', NULL),
(189, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:41', '2016-09-02 10:32:41', NULL),
(190, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:41', '2016-09-02 10:32:41', NULL),
(191, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:41', '2016-09-02 10:32:41', NULL),
(192, 194, 1, 63, '296-670-714', 2, '2016-09-02 10:32:41', '2016-09-02 10:32:41', NULL),
(193, 197, 1, 63, '192-688-895', 2, '2016-09-02 10:46:53', '2016-09-02 10:46:53', NULL),
(194, 200, 1, 60, '068-837-348', 2, '2016-09-02 10:56:52', '2016-09-02 10:56:52', NULL),
(195, 200, 1, 60, '068-837-348', 2, '2016-09-02 10:56:52', '2016-09-02 10:56:52', NULL),
(196, 192, 1, 44, '570-937-755', 2, '2016-09-02 11:03:54', '2016-09-02 11:03:54', NULL),
(197, 192, 1, 35, '363-604-858', 2, '2016-09-02 11:05:46', '2016-09-02 11:05:46', NULL),
(198, 207, 1, 63, '366-660-425', 2, '2016-09-02 11:12:11', '2016-09-02 11:12:11', NULL),
(199, 192, 1, 23, '118-630-734', 2, '2016-09-02 11:13:58', '2016-09-02 11:13:58', NULL),
(200, 214, 1, 63, '858-284-116', 2, '2016-09-02 11:22:40', '2016-09-02 11:22:40', NULL),
(201, 215, 1, 18, '067-628-090', 2, '2016-09-02 11:24:01', '2016-09-02 11:24:01', NULL),
(202, 208, 1, 20, '909-610-752', 2, '2016-09-02 11:24:06', '2016-09-02 11:24:06', NULL),
(203, 228, 1, 60, '900-777-138', 2, '2016-09-02 11:37:56', '2016-09-02 11:37:56', NULL),
(204, 20, 1, 62, '937-086-522', 2, '2016-09-02 12:03:37', '2016-09-02 12:03:37', NULL),
(205, 20, 1, 62, '937-086-522', 2, '2016-09-02 12:03:38', '2016-09-02 12:03:38', NULL),
(206, 244, 1, 63, '568-316-229', 2, '2016-09-02 12:03:48', '2016-09-02 12:03:48', NULL),
(207, 244, 1, 63, '568-316-229', 2, '2016-09-02 12:03:48', '2016-09-02 12:03:48', NULL),
(208, 245, 1, 63, '674-024-173', 2, '2016-09-02 12:06:34', '2016-09-02 12:06:34', NULL),
(209, 249, 1, 63, '425-948-412', 2, '2016-09-02 12:13:25', '2016-09-02 12:13:25', NULL),
(210, 250, 1, 63, '055-572-432', 2, '2016-09-02 12:14:21', '2016-09-02 12:14:21', NULL),
(211, 249, 1, 63, '341-873-654', 2, '2016-09-02 12:14:59', '2016-09-02 12:14:59', NULL),
(212, 249, 1, 58, '662-488-664', 2, '2016-09-02 12:15:53', '2016-09-02 12:15:53', NULL),
(213, 252, 1, 63, '972-849-427', 2, '2016-09-02 12:19:41', '2016-09-02 12:19:41', NULL),
(214, 255, 1, 44, '072-768-525', 2, '2016-09-02 12:25:41', '2016-09-02 12:25:41', NULL),
(215, 254, 1, 44, '087-069-271', 2, '2016-09-02 12:26:11', '2016-09-02 12:26:11', NULL),
(216, 257, 1, 63, '402-432-786', 2, '2016-09-02 12:29:19', '2016-09-02 12:29:19', NULL),
(217, 259, 1, 44, '936-613-624', 2, '2016-09-02 12:30:42', '2016-09-02 12:30:42', NULL),
(218, 156, 1, 44, '220-845-253', 2, '2016-09-02 12:33:26', '2016-09-02 12:33:26', NULL),
(219, 262, 1, 62, '677-395-532', 2, '2016-09-02 12:35:39', '2016-09-02 12:35:39', NULL),
(220, 258, 1, 62, '938-496-299', 2, '2016-09-02 12:36:00', '2016-09-02 12:36:00', NULL),
(221, 258, 1, 62, '938-496-299', 2, '2016-09-02 12:36:01', '2016-09-02 12:36:01', NULL),
(222, 264, 1, 63, '216-335-462', 2, '2016-09-02 12:38:05', '2016-09-02 12:38:05', NULL),
(223, 265, 1, 60, '110-185-523', 2, '2016-09-02 12:38:21', '2016-09-02 12:38:21', NULL),
(224, 20, 1, 44, '142-386-767', 2, '2016-09-02 12:38:56', '2016-09-02 12:38:56', NULL),
(225, 20, 1, 44, '142-386-767', 2, '2016-09-02 12:39:00', '2016-09-02 12:39:00', NULL),
(226, 265, 1, 33, '115-199-233', 2, '2016-09-02 12:39:00', '2016-09-02 12:39:00', NULL),
(227, 20, 1, 44, '142-386-767', 2, '2016-09-02 12:39:02', '2016-09-02 12:39:02', NULL),
(228, 20, 1, 44, '142-386-767', 2, '2016-09-02 12:39:02', '2016-09-02 12:39:02', NULL),
(229, 263, 1, 62, '566-749-518', 2, '2016-09-02 12:40:10', '2016-09-02 12:40:10', NULL),
(230, 266, 1, 63, '875-173-992', 2, '2016-09-02 12:40:26', '2016-09-02 12:40:26', NULL),
(231, 268, 1, 63, '715-094-334', 2, '2016-09-02 12:43:25', '2016-09-02 12:43:25', NULL),
(232, 269, 1, 44, '414-640-486', 2, '2016-09-02 12:44:44', '2016-09-02 12:44:44', NULL),
(233, 91, 1, 63, '568-817-884', 2, '2016-09-02 12:45:25', '2016-09-02 12:45:25', NULL),
(234, 167, 1, 35, '155-755-659', 2, '2016-09-02 13:16:31', '2016-09-02 13:16:31', NULL),
(235, 277, 1, 62, '492-717-927', 2, '2016-09-02 13:19:51', '2016-09-02 13:19:51', NULL),
(236, 259, 1, 43, '406-680-227', 2, '2016-09-02 13:25:49', '2016-09-02 13:25:49', NULL),
(237, 283, 1, 63, '935-083-479', 2, '2016-09-02 13:32:59', '2016-09-02 13:32:59', NULL),
(238, 283, 1, 63, '935-083-479', 2, '2016-09-02 13:32:59', '2016-09-02 13:32:59', NULL),
(239, 283, 1, 63, '935-083-479', 2, '2016-09-02 13:32:59', '2016-09-02 13:32:59', NULL),
(240, 282, 1, 63, '427-247-986', 2, '2016-09-02 13:33:26', '2016-09-02 13:33:26', NULL),
(241, 284, 1, 38, '718-688-420', 2, '2016-09-02 13:37:27', '2016-09-02 13:37:27', NULL),
(242, 286, 1, 63, '474-421-565', 2, '2016-09-02 13:41:21', '2016-09-02 13:41:21', NULL),
(243, 291, 1, 63, '109-113-037', 2, '2016-09-02 13:51:23', '2016-09-02 13:51:23', NULL),
(244, 292, 1, 59, '691-976-349', 2, '2016-09-02 14:00:11', '2016-09-02 14:00:11', NULL),
(245, 181, 1, 44, '225-186-079', 2, '2016-09-02 14:00:29', '2016-09-02 14:00:29', NULL),
(246, 293, 1, 37, '541-595-850', 2, '2016-09-02 14:01:20', '2016-09-02 14:01:20', NULL),
(247, 293, 1, 37, '541-595-850', 2, '2016-09-02 14:01:20', '2016-09-02 14:01:20', NULL),
(248, 289, 1, 63, '341-002-456', 2, '2016-09-02 14:01:28', '2016-09-02 14:01:28', NULL),
(249, 289, 1, 63, '606-765-550', 2, '2016-09-02 14:02:42', '2016-09-02 14:02:42', NULL),
(250, 293, 1, 36, '943-648-427', 2, '2016-09-02 14:04:12', '2016-09-02 14:04:12', NULL),
(251, 295, 1, 63, '221-831-759', 2, '2016-09-02 14:07:54', '2016-09-02 14:07:54', NULL),
(252, 298, 1, 62, '375-065-584', 2, '2016-09-02 14:14:01', '2016-09-02 14:14:01', NULL),
(253, 299, 1, 63, '762-336-853', 2, '2016-09-02 14:16:27', '2016-09-02 14:16:27', NULL),
(254, 139, 1, 63, '955-769-800', 2, '2016-09-02 14:26:46', '2016-09-02 14:26:46', NULL),
(255, 302, 1, 59, '791-733-898', 2, '2016-09-02 14:34:15', '2016-09-02 14:34:15', NULL),
(256, 303, 1, 63, '190-525-950', 2, '2016-09-02 14:40:54', '2016-09-02 14:40:54', NULL),
(257, 303, 1, 63, '171-338-708', 2, '2016-09-02 14:41:29', '2016-09-02 14:41:29', NULL),
(258, 304, 1, 39, '964-229-159', 2, '2016-09-02 14:50:41', '2016-09-02 14:50:41', NULL),
(259, 305, 1, 63, '885-270-288', 2, '2016-09-02 14:59:29', '2016-09-02 14:59:29', NULL),
(260, 304, 1, 39, '608-797-127', 2, '2016-09-02 15:00:25', '2016-09-02 15:00:25', NULL),
(261, 304, 1, 38, '971-177-871', 2, '2016-09-02 15:00:37', '2016-09-02 15:00:37', NULL),
(262, 308, 1, 44, '333-428-144', 2, '2016-09-02 15:09:14', '2016-09-02 15:09:14', NULL),
(263, 311, 1, 43, '011-243-039', 2, '2016-09-02 15:20:39', '2016-09-02 15:20:39', NULL),
(264, 309, 1, 44, '983-986-338', 2, '2016-09-02 15:21:23', '2016-09-02 15:21:23', NULL),
(265, 311, 1, 18, '964-293-710', 2, '2016-09-02 15:22:19', '2016-09-02 15:22:19', NULL),
(266, 312, 1, 44, '125-136-129', 2, '2016-09-02 15:24:41', '2016-09-02 15:24:41', NULL),
(267, 312, 1, 24, '184-250-324', 2, '2016-09-02 15:26:01', '2016-09-02 15:26:01', NULL),
(268, 317, 1, 31, '834-951-083', 2, '2016-09-02 15:44:02', '2016-09-02 15:44:02', NULL),
(269, 317, 1, 32, '947-296-767', 2, '2016-09-02 15:44:54', '2016-09-02 15:44:54', NULL),
(270, 319, 1, 59, '699-968-407', 2, '2016-09-02 15:48:15', '2016-09-02 15:48:15', NULL),
(271, 276, 1, 60, '422-928-910', 2, '2016-09-02 15:49:20', '2016-09-02 15:49:20', NULL),
(272, 321, 1, 31, '736-309-837', 2, '2016-09-02 15:56:30', '2016-09-02 15:56:30', NULL),
(273, 321, 1, 31, '684-460-611', 2, '2016-09-02 15:57:03', '2016-09-02 15:57:03', NULL),
(274, 276, 1, 62, '880-130-619', 2, '2016-09-02 15:57:31', '2016-09-02 15:57:31', NULL),
(275, 322, 1, 63, '623-701-773', 2, '2016-09-02 15:58:46', '2016-09-02 15:58:46', NULL),
(276, 276, 1, 54, '743-355-025', 2, '2016-09-02 15:59:12', '2016-09-02 15:59:12', NULL),
(277, 276, 1, 33, '506-393-105', 2, '2016-09-02 16:13:38', '2016-09-02 16:13:38', NULL),
(278, 323, 1, 43, '634-439-540', 2, '2016-09-02 16:17:56', '2016-09-02 16:17:56', NULL),
(279, 325, 1, 44, '182-752-823', 2, '2016-09-02 16:32:20', '2016-09-02 16:32:20', NULL),
(280, 327, 1, 1, '879-455-948', 2, '2016-09-02 17:18:14', '2016-09-02 17:18:14', NULL),
(281, 308, 1, 3, '090-279-607', 2, '2016-09-02 17:19:26', '2016-09-02 17:19:26', NULL),
(282, 311, 1, 39, '640-141-343', 2, '2016-09-02 17:39:01', '2016-09-02 17:39:01', NULL),
(283, 311, 1, 43, '505-915-211', 2, '2016-09-02 17:39:23', '2016-09-02 17:39:23', NULL),
(284, 302, 1, 25, '127-665-976', 2, '2016-09-02 18:35:10', '2016-09-02 18:35:10', NULL),
(285, 221, 1, 21, '582-828-597', 2, '2016-09-02 18:54:22', '2016-09-02 18:54:22', NULL),
(286, 323, 1, 36, '919-551-877', 2, '2016-09-02 20:35:32', '2016-09-02 20:35:32', NULL),
(287, 323, 1, 36, '304-411-251', 2, '2016-09-02 20:35:41', '2016-09-02 20:35:41', NULL),
(288, 323, 1, 36, '845-034-932', 2, '2016-09-02 20:35:53', '2016-09-02 20:35:53', NULL),
(289, 323, 1, 36, '623-528-661', 2, '2016-09-02 20:36:06', '2016-09-02 20:36:06', NULL),
(290, 323, 1, 36, '587-225-680', 2, '2016-09-02 20:36:11', '2016-09-02 20:36:11', NULL),
(291, 323, 1, 3, '912-943-316', 2, '2016-09-02 20:36:44', '2016-09-02 20:36:44', NULL),
(292, 323, 1, 3, '113-141-388', 2, '2016-09-02 20:36:54', '2016-09-02 20:36:54', NULL),
(293, 332, 1, 63, '725-630-417', 2, '2016-09-02 21:05:23', '2016-09-02 21:05:23', NULL),
(294, 323, 1, 1, '775-917-379', 2, '2016-09-02 21:10:03', '2016-09-02 21:10:03', NULL),
(295, 323, 1, 1, '902-062-468', 2, '2016-09-02 21:10:16', '2016-09-02 21:10:16', NULL),
(296, 335, 1, 62, '630-801-492', 2, '2016-09-02 22:04:55', '2016-09-02 22:04:55', NULL),
(297, 335, 1, 62, '696-171-608', 2, '2016-09-02 22:05:17', '2016-09-02 22:05:17', NULL),
(298, 343, 1, 63, '342-780-468', 2, '2016-09-03 09:58:24', '2016-09-03 09:58:24', NULL),
(299, 342, 1, 62, '583-835-289', 2, '2016-09-03 09:58:38', '2016-09-03 09:58:38', NULL),
(300, 347, 1, 44, '397-567-126', 2, '2016-09-03 10:00:25', '2016-09-03 10:00:25', NULL),
(301, 349, 1, 44, '509-541-025', 2, '2016-09-03 10:10:28', '2016-09-03 10:10:28', NULL),
(302, 350, 1, 39, '649-345-521', 2, '2016-09-03 10:12:51', '2016-09-03 10:12:51', NULL),
(303, 351, 1, 38, '871-601-629', 2, '2016-09-03 10:14:07', '2016-09-03 10:14:07', NULL),
(304, 351, 1, 38, '871-601-629', 2, '2016-09-03 10:14:08', '2016-09-03 10:14:08', NULL),
(305, 351, 1, 31, '686-482-692', 2, '2016-09-03 10:15:26', '2016-09-03 10:15:26', NULL),
(306, 351, 1, 31, '686-482-692', 2, '2016-09-03 10:15:26', '2016-09-03 10:15:26', NULL),
(307, 352, 1, 62, '365-028-528', 2, '2016-09-03 10:17:22', '2016-09-03 10:17:22', NULL),
(308, 353, 1, 38, '311-686-454', 2, '2016-09-03 10:21:21', '2016-09-03 10:21:21', NULL),
(309, 355, 1, 62, '559-306-587', 2, '2016-09-03 10:40:23', '2016-09-03 10:40:23', NULL),
(310, 356, 1, 63, '902-733-574', 2, '2016-09-03 10:45:29', '2016-09-03 10:45:29', NULL),
(311, 357, 1, 39, '843-875-115', 2, '2016-09-03 10:49:23', '2016-09-03 10:49:23', NULL),
(312, 359, 1, 26, '809-018-139', 2, '2016-09-03 10:55:15', '2016-09-03 10:55:15', NULL),
(313, 360, 1, 22, '236-113-350', 2, '2016-09-03 10:56:36', '2016-09-03 10:56:36', NULL),
(314, 364, 1, 44, '840-304-724', 2, '2016-09-03 11:03:01', '2016-09-03 11:03:01', NULL),
(315, 366, 1, 62, '834-114-471', 2, '2016-09-03 11:13:01', '2016-09-03 11:13:01', NULL),
(316, 359, 1, 43, '055-810-014', 2, '2016-09-03 11:17:23', '2016-09-03 11:17:23', NULL),
(317, 368, 1, 62, '408-299-037', 2, '2016-09-03 11:19:53', '2016-09-03 11:19:53', NULL),
(318, 370, 1, 63, '598-418-643', 2, '2016-09-03 11:23:59', '2016-09-03 11:23:59', NULL),
(319, 371, 1, 39, '324-335-895', 2, '2016-09-03 11:24:27', '2016-09-03 11:24:27', NULL),
(320, 369, 1, 62, '798-108-713', 2, '2016-09-03 11:25:10', '2016-09-03 11:25:10', NULL),
(321, 372, 1, 63, '396-819-272', 2, '2016-09-03 11:32:58', '2016-09-03 11:32:58', NULL),
(322, 375, 1, 63, '240-054-346', 2, '2016-09-03 11:39:34', '2016-09-03 11:39:34', NULL),
(323, 373, 1, 4, '908-898-161', 2, '2016-09-03 11:41:01', '2016-09-03 11:41:01', NULL),
(324, 377, 1, 42, '936-355-269', 2, '2016-09-03 11:46:22', '2016-09-03 11:46:22', NULL),
(325, 381, 1, 60, '435-961-882', 2, '2016-09-03 11:49:25', '2016-09-03 11:49:25', NULL),
(326, 366, 1, 63, '642-396-827', 2, '2016-09-03 11:49:52', '2016-09-03 11:49:52', NULL),
(327, 366, 1, 32, '438-518-261', 2, '2016-09-03 11:51:23', '2016-09-03 11:51:23', NULL),
(328, 367, 1, 21, '365-042-616', 2, '2016-09-03 11:54:42', '2016-09-03 11:54:42', NULL),
(329, 359, 1, 47, '128-286-588', 2, '2016-09-03 11:54:52', '2016-09-03 11:54:52', NULL),
(330, 359, 1, 47, '128-286-588', 2, '2016-09-03 11:54:52', '2016-09-03 11:54:52', NULL),
(331, 384, 1, 63, '352-891-082', 2, '2016-09-03 11:59:49', '2016-09-03 11:59:49', NULL),
(332, 385, 1, 63, '454-637-660', 2, '2016-09-03 12:04:59', '2016-09-03 12:04:59', NULL),
(333, 387, 1, 62, '852-726-084', 2, '2016-09-03 12:09:30', '2016-09-03 12:09:30', NULL),
(334, 388, 1, 60, '312-290-168', 2, '2016-09-03 12:11:17', '2016-09-03 12:11:17', NULL),
(335, 389, 1, 60, '867-477-409', 2, '2016-09-03 12:14:24', '2016-09-03 12:14:24', NULL),
(336, 390, 1, 62, '826-798-229', 2, '2016-09-03 12:15:59', '2016-09-03 12:15:59', NULL),
(337, 365, 1, 21, '224-672-101', 2, '2016-09-03 12:18:31', '2016-09-03 12:18:31', NULL),
(338, 378, 1, 2, '707-785-614', 2, '2016-09-03 12:20:42', '2016-09-03 12:20:42', NULL),
(339, 378, 1, 2, '176-943-091', 2, '2016-09-03 12:20:43', '2016-09-03 12:20:43', NULL),
(340, 378, 1, 2, '707-785-614', 2, '2016-09-03 12:20:43', '2016-09-03 12:20:43', NULL),
(341, 378, 1, 2, '707-785-614', 2, '2016-09-03 12:20:43', '2016-09-03 12:20:43', NULL),
(342, 378, 1, 2, '707-785-614', 2, '2016-09-03 12:20:44', '2016-09-03 12:20:44', NULL),
(343, 378, 1, 2, '707-785-614', 2, '2016-09-03 12:20:44', '2016-09-03 12:20:44', NULL),
(344, 389, 1, 44, '092-820-294', 2, '2016-09-03 12:36:43', '2016-09-03 12:36:43', NULL),
(345, 389, 1, 44, '092-820-294', 2, '2016-09-03 12:36:43', '2016-09-03 12:36:43', NULL),
(346, 393, 1, 63, '163-503-124', 2, '2016-09-03 12:38:24', '2016-09-03 12:38:24', NULL),
(347, 395, 1, 60, '165-020-737', 2, '2016-09-03 12:40:27', '2016-09-03 12:40:27', NULL),
(348, 395, 1, 60, '126-548-094', 2, '2016-09-03 12:40:43', '2016-09-03 12:40:43', NULL),
(349, 397, 1, 62, '191-872-074', 2, '2016-09-03 12:41:14', '2016-09-03 12:41:14', NULL),
(350, 396, 1, 3, '357-252-192', 2, '2016-09-03 12:41:20', '2016-09-03 12:41:20', NULL),
(351, 398, 1, 63, '638-053-487', 2, '2016-09-03 12:41:36', '2016-09-03 12:41:36', NULL),
(352, 399, 1, 63, '704-786-831', 2, '2016-09-03 12:47:54', '2016-09-03 12:47:54', NULL),
(353, 402, 1, 63, '884-226-810', 2, '2016-09-03 12:56:10', '2016-09-03 12:56:10', NULL),
(354, 400, 1, 62, '442-656-911', 2, '2016-09-03 12:58:55', '2016-09-03 12:58:55', NULL),
(355, 403, 1, 44, '143-037-517', 2, '2016-09-03 13:14:08', '2016-09-03 13:14:08', NULL),
(356, 405, 1, 39, '454-072-866', 2, '2016-09-03 13:16:04', '2016-09-03 13:16:04', NULL),
(357, 406, 1, 44, '700-328-085', 2, '2016-09-03 13:26:35', '2016-09-03 13:26:35', NULL),
(358, 408, 1, 63, '516-788-055', 2, '2016-09-03 13:32:48', '2016-09-03 13:32:48', NULL),
(359, 359, 1, 62, '791-221-847', 2, '2016-09-03 13:34:37', '2016-09-03 13:34:37', NULL),
(360, 410, 1, 63, '329-024-916', 2, '2016-09-03 13:41:20', '2016-09-03 13:41:20', NULL),
(361, 411, 1, 63, '882-503-668', 2, '2016-09-03 13:42:12', '2016-09-03 13:42:12', NULL),
(362, 412, 1, 63, '324-617-829', 2, '2016-09-03 13:44:46', '2016-09-03 13:44:46', NULL),
(363, 416, 1, 62, '976-258-548', 2, '2016-09-03 13:50:11', '2016-09-03 13:50:11', NULL),
(364, 415, 1, 49, '077-036-839', 2, '2016-09-03 13:50:18', '2016-09-03 13:50:18', NULL),
(365, 417, 1, 63, '767-414-428', 2, '2016-09-03 13:52:09', '2016-09-03 13:52:09', NULL),
(366, 418, 1, 63, '582-515-678', 2, '2016-09-03 13:57:06', '2016-09-03 13:57:06', NULL),
(367, 419, 1, 63, '825-992-928', 2, '2016-09-03 13:58:41', '2016-09-03 13:58:41', NULL),
(368, 420, 1, 44, '044-900-594', 2, '2016-09-03 14:03:43', '2016-09-03 14:03:43', NULL),
(369, 420, 1, 58, '511-408-154', 2, '2016-09-03 14:04:25', '2016-09-03 14:04:25', NULL),
(370, 422, 1, 63, '557-861-896', 2, '2016-09-03 14:10:37', '2016-09-03 14:10:37', NULL),
(371, 421, 1, 63, '743-602-081', 2, '2016-09-03 14:11:00', '2016-09-03 14:11:00', NULL),
(372, 359, 1, 63, '386-812-502', 2, '2016-09-03 14:18:06', '2016-09-03 14:18:06', NULL),
(373, 423, 1, 62, '655-916-065', 2, '2016-09-03 14:18:55', '2016-09-03 14:18:55', NULL),
(374, 425, 1, 63, '126-997-240', 2, '2016-09-03 14:21:01', '2016-09-03 14:21:01', NULL),
(375, 427, 1, 63, '086-238-845', 2, '2016-09-03 14:24:31', '2016-09-03 14:24:31', NULL),
(376, 428, 1, 63, '695-747-098', 2, '2016-09-03 14:25:10', '2016-09-03 14:25:10', NULL),
(377, 431, 1, 62, '914-100-468', 2, '2016-09-03 14:58:26', '2016-09-03 14:58:26', NULL),
(378, 432, 1, 63, '838-466-123', 2, '2016-09-03 14:59:53', '2016-09-03 14:59:53', NULL),
(379, 432, 1, 63, '838-466-123', 2, '2016-09-03 14:59:59', '2016-09-03 14:59:59', NULL),
(380, 433, 1, 36, '378-379-065', 2, '2016-09-03 15:01:22', '2016-09-03 15:01:22', NULL),
(381, 374, 1, 39, '530-074-438', 2, '2016-09-03 15:01:39', '2016-09-03 15:01:39', NULL),
(382, 440, 1, 63, '565-893-882', 2, '2016-09-03 15:17:21', '2016-09-03 15:17:21', NULL),
(383, 441, 1, 62, '963-471-231', 2, '2016-09-03 15:22:47', '2016-09-03 15:22:47', NULL),
(384, 442, 1, 63, '985-490-297', 2, '2016-09-03 15:24:04', '2016-09-03 15:24:04', NULL),
(385, 444, 1, 60, '554-534-839', 2, '2016-09-03 15:29:31', '2016-09-03 15:29:31', NULL),
(386, 445, 1, 51, '286-630-268', 2, '2016-09-03 15:30:36', '2016-09-03 15:30:36', NULL),
(387, 446, 1, 62, '519-509-931', 2, '2016-09-03 15:31:55', '2016-09-03 15:31:55', NULL),
(388, 448, 1, 63, '852-939-058', 2, '2016-09-03 15:37:03', '2016-09-03 15:37:03', NULL),
(389, 448, 1, 63, '852-939-058', 2, '2016-09-03 15:37:07', '2016-09-03 15:37:07', NULL),
(390, 448, 1, 63, '852-939-058', 2, '2016-09-03 15:37:07', '2016-09-03 15:37:07', NULL),
(391, 448, 1, 63, '852-939-058', 2, '2016-09-03 15:37:10', '2016-09-03 15:37:10', NULL),
(392, 449, 1, 58, '303-508-639', 2, '2016-09-03 15:40:03', '2016-09-03 15:40:03', NULL),
(393, 452, 1, 63, '616-882-488', 2, '2016-09-03 15:42:10', '2016-09-03 15:42:10', NULL),
(394, 453, 1, 44, '317-447-627', 2, '2016-09-03 15:45:16', '2016-09-03 15:45:16', NULL),
(395, 455, 1, 38, '908-497-404', 2, '2016-09-03 15:51:13', '2016-09-03 15:51:13', NULL),
(396, 456, 1, 60, '631-171-833', 2, '2016-09-03 15:53:18', '2016-09-03 15:53:18', NULL),
(397, 457, 1, 63, '813-933-812', 2, '2016-09-03 15:53:48', '2016-09-03 15:53:48', NULL),
(398, 459, 1, 60, '526-595-516', 2, '2016-09-03 16:01:54', '2016-09-03 16:01:54', NULL),
(399, 460, 1, 63, '928-255-347', 2, '2016-09-03 16:02:03', '2016-09-03 16:02:03', NULL),
(400, 460, 1, 47, '541-073-001', 2, '2016-09-03 16:02:54', '2016-09-03 16:02:54', NULL),
(401, 462, 1, 54, '589-896-770', 2, '2016-09-03 16:06:55', '2016-09-03 16:06:55', NULL),
(402, 463, 1, 44, '844-178-568', 2, '2016-09-03 16:10:49', '2016-09-03 16:10:49', NULL),
(403, 376, 1, 1, '244-040-221', 2, '2016-09-03 16:14:04', '2016-09-03 16:14:04', NULL),
(404, 22, 1, 5, '850-541-229', 2, '2016-09-03 16:15:01', '2016-09-03 16:15:01', NULL),
(405, 465, 1, 63, '832-719-866', 2, '2016-09-03 16:15:02', '2016-09-03 16:15:02', NULL),
(406, 469, 1, 33, '831-534-951', 2, '2016-09-03 16:26:25', '2016-09-03 16:26:25', NULL),
(407, 470, 1, 44, '529-742-536', 2, '2016-09-03 16:26:34', '2016-09-03 16:26:34', NULL),
(408, 472, 1, 35, '557-518-146', 2, '2016-09-03 16:33:18', '2016-09-03 16:33:18', NULL),
(409, 452, 1, 62, '909-796-779', 2, '2016-09-03 16:37:50', '2016-09-03 16:37:50', NULL),
(410, 268, 1, 33, '699-028-357', 2, '2016-09-03 16:40:59', '2016-09-03 16:40:59', NULL),
(411, 271, 1, 33, '435-569-116', 2, '2016-09-03 16:41:22', '2016-09-03 16:41:22', NULL),
(412, 271, 1, 33, '210-138-207', 2, '2016-09-03 16:41:36', '2016-09-03 16:41:36', NULL),
(413, 452, 1, 43, '536-485-707', 2, '2016-09-03 17:06:06', '2016-09-03 17:06:06', NULL),
(414, 416, 1, 25, '673-643-984', 2, '2016-09-03 18:28:36', '2016-09-03 18:28:36', NULL),
(415, 478, 1, 63, '538-288-256', 2, '2016-09-03 19:27:39', '2016-09-03 19:27:39', NULL),
(416, 478, 1, 63, '731-112-148', 2, '2016-09-03 19:28:01', '2016-09-03 19:28:01', NULL),
(417, 478, 1, 63, '765-233-094', 2, '2016-09-03 19:28:30', '2016-09-03 19:28:30', NULL),
(418, 478, 1, 44, '805-763-236', 2, '2016-09-03 19:28:54', '2016-09-03 19:28:54', NULL),
(419, 276, 1, 63, '882-318-194', 2, '2016-09-03 20:36:11', '2016-09-03 20:36:11', NULL),
(420, 276, 1, 63, '882-318-194', 2, '2016-09-03 20:36:11', '2016-09-03 20:36:11', NULL),
(421, 155, 1, 63, '477-724-838', 2, '2016-09-03 20:38:21', '2016-09-03 20:38:21', NULL),
(422, 155, 1, 62, '228-828-992', 2, '2016-09-03 20:39:05', '2016-09-03 20:39:05', NULL),
(423, 419, 1, 54, '480-945-308', 2, '2016-09-03 21:32:32', '2016-09-03 21:32:32', NULL),
(424, 22, 1, 63, '0', 1, '2016-09-03 22:13:27', '2016-09-29 11:32:53', NULL),
(425, 22, 1, 63, '899-483-517', 2, '2016-09-03 22:13:28', '2016-09-03 22:13:28', NULL),
(426, 276, 1, 44, '646-596-164', 2, '2016-09-04 09:30:42', '2016-09-04 09:30:42', NULL),
(427, 483, 1, 44, '235-809-833', 2, '2016-09-04 09:36:44', '2016-09-04 09:36:44', NULL),
(428, 484, 1, 42, '708-597-899', 2, '2016-09-04 09:56:46', '2016-09-04 09:56:46', NULL),
(429, 486, 1, 63, '188-349-218', 2, '2016-09-04 09:58:43', '2016-09-04 09:58:43', NULL),
(430, 485, 1, 6, '998-463-106', 2, '2016-09-04 09:58:43', '2016-09-04 09:58:43', NULL),
(431, 486, 1, 17, '920-295-487', 2, '2016-09-04 09:59:13', '2016-09-04 09:59:13', NULL),
(432, 488, 1, 38, '890-865-926', 2, '2016-09-04 10:08:11', '2016-09-04 10:08:11', NULL),
(433, 276, 1, 44, '862-541-989', 2, '2016-09-04 10:25:41', '2016-09-04 10:25:41', NULL),
(434, 276, 1, 62, '662-861-221', 2, '2016-09-04 10:28:48', '2016-09-04 10:28:48', NULL),
(435, 489, 1, 62, '355-826-095', 2, '2016-09-04 10:33:32', '2016-09-04 10:33:32', NULL),
(436, 490, 1, 63, '425-664-471', 2, '2016-09-04 10:37:00', '2016-09-04 10:37:00', NULL),
(437, 77, 1, 62, '073-133-174', 2, '2016-09-04 10:38:40', '2016-10-06 16:06:36', '2016-10-06 16:06:36'),
(438, 77, 1, 63, '853-641-188', 2, '2016-09-04 11:03:42', '2016-10-06 16:04:05', '2016-10-06 16:04:05'),
(439, 497, 1, 63, '985-284-747', 2, '2016-09-04 11:06:33', '2016-09-04 11:06:33', NULL),
(440, 276, 1, 44, '983-905-099', 2, '2016-09-04 11:06:57', '2016-09-04 11:06:57', NULL),
(441, 497, 1, 63, '412-443-134', 2, '2016-09-04 11:07:01', '2016-09-04 11:07:01', NULL),
(442, 495, 1, 60, '090-909-119', 2, '2016-09-04 11:07:29', '2016-09-04 11:07:29', NULL),
(443, 498, 1, 58, '094-937-277', 2, '2016-09-04 11:08:26', '2016-09-04 11:08:26', NULL),
(444, 500, 1, 63, '135-484-176', 2, '2016-09-04 11:10:38', '2016-09-04 11:10:38', NULL),
(445, 500, 1, 63, '135-484-176', 2, '2016-09-04 11:10:39', '2016-09-04 11:10:39', NULL),
(446, 502, 1, 49, '134-678-168', 2, '2016-09-04 11:18:45', '2016-09-04 11:18:45', NULL),
(447, 504, 1, 63, '088-946-022', 2, '2016-09-04 11:26:38', '2016-09-04 11:26:38', NULL),
(448, 505, 1, 51, '385-835-677', 2, '2016-09-04 11:27:44', '2016-09-04 11:27:44', NULL),
(449, 276, 1, 43, '740-470-457', 2, '2016-09-04 11:28:28', '2016-09-04 11:28:28', NULL),
(450, 276, 1, 43, '740-470-457', 2, '2016-09-04 11:28:32', '2016-09-04 11:28:32', NULL),
(451, 506, 1, 63, '763-367-590', 2, '2016-09-04 11:29:33', '2016-09-04 11:29:33', NULL),
(452, 276, 1, 44, '989-712-466', 2, '2016-09-04 11:30:21', '2016-09-04 11:30:21', NULL),
(453, 506, 1, 38, '954-361-533', 2, '2016-09-04 11:30:32', '2016-09-04 11:30:32', NULL),
(454, 507, 1, 44, '307-383-441', 2, '2016-09-04 11:34:33', '2016-09-04 11:34:33', NULL),
(455, 508, 1, 62, '929-547-919', 2, '2016-09-04 11:36:02', '2016-09-04 11:36:02', NULL),
(456, 276, 1, 39, '820-693-816', 2, '2016-09-04 11:42:19', '2016-09-04 11:42:19', NULL),
(457, 509, 1, 49, '730-121-957', 2, '2016-09-04 11:56:11', '2016-09-04 11:56:11', NULL),
(458, 510, 1, 62, '990-021-032', 2, '2016-09-04 12:04:50', '2016-09-04 12:04:50', NULL),
(459, 22, 1, 44, '0', 1, '2016-09-04 12:05:41', '2016-09-29 10:58:41', NULL),
(460, 511, 1, 63, '972-853-511', 2, '2016-09-04 12:09:39', '2016-09-04 12:09:39', NULL),
(461, 276, 1, 36, '409-284-587', 2, '2016-09-04 12:10:32', '2016-09-04 12:10:32', NULL),
(462, 276, 1, 36, '409-284-587', 2, '2016-09-04 12:10:35', '2016-09-04 12:10:35', NULL),
(463, 512, 1, 44, '413-439-294', 2, '2016-09-04 12:18:14', '2016-09-04 12:18:14', NULL),
(464, 514, 1, 63, '065-332-603', 2, '2016-09-04 12:24:03', '2016-09-04 12:24:03', NULL),
(465, 517, 1, 43, '687-736-562', 2, '2016-09-04 12:27:46', '2016-09-04 12:27:46', NULL),
(466, 518, 1, 44, '306-247-479', 2, '2016-09-04 12:32:07', '2016-10-17 03:15:59', '2016-10-17 03:15:59'),
(467, 506, 1, 1, '085-042-842', 2, '2016-09-04 12:32:12', '2016-09-04 12:32:12', NULL),
(468, 519, 1, 51, '225-016-684', 2, '2016-09-04 12:37:03', '2016-09-04 12:37:03', NULL),
(469, 276, 1, 39, '519-777-234', 2, '2016-09-04 12:49:57', '2016-09-04 12:49:57', NULL),
(470, 523, 1, 44, '956-775-153', 2, '2016-09-04 13:04:59', '2016-09-04 13:04:59', NULL),
(471, 526, 1, 49, '925-087-424', 2, '2016-09-04 13:10:07', '2016-09-04 13:10:07', NULL),
(472, 527, 1, 44, '479-707-639', 2, '2016-09-04 13:11:21', '2016-09-04 13:11:21', NULL),
(473, 77, 1, 63, '166-601-407', 2, '2016-09-04 13:21:27', '2016-10-06 16:03:04', '2016-10-06 16:03:04'),
(474, 276, 1, 33, '810-899-184', 2, '2016-09-04 13:41:01', '2016-09-04 13:41:01', NULL),
(475, 532, 1, 43, '803-524-169', 2, '2016-09-04 13:41:35', '2016-09-04 13:41:35', NULL),
(476, 532, 1, 43, '803-524-169', 2, '2016-09-04 13:41:35', '2016-09-04 13:41:35', NULL),
(477, 535, 1, 49, '637-576-021', 2, '2016-09-04 13:54:29', '2016-09-04 13:54:29', NULL),
(478, 537, 1, 54, '102-867-473', 2, '2016-09-04 14:03:09', '2016-09-04 14:03:09', NULL),
(479, 538, 1, 63, '445-323-210', 2, '2016-09-04 14:10:36', '2016-09-04 14:10:36', NULL),
(480, 276, 1, 43, '534-884-765', 2, '2016-09-04 14:15:42', '2016-09-04 14:15:42', NULL),
(481, 276, 1, 6, '029-296-839', 2, '2016-09-04 14:17:13', '2016-09-04 14:17:13', NULL),
(482, 539, 1, 63, '540-097-788', 2, '2016-09-04 14:20:28', '2016-09-04 14:20:28', NULL),
(483, 276, 1, 63, '593-390-873', 2, '2016-09-04 14:24:07', '2016-09-04 14:24:07', NULL),
(484, 540, 1, 44, '631-133-643', 2, '2016-09-04 14:28:26', '2016-09-04 14:28:26', NULL),
(485, 540, 1, 41, '840-680-729', 2, '2016-09-04 14:29:48', '2016-09-04 14:29:48', NULL),
(486, 541, 1, 51, '766-080-755', 2, '2016-09-04 14:34:53', '2016-09-04 14:34:53', NULL),
(487, 544, 1, 44, '067-707-477', 2, '2016-09-04 14:38:50', '2016-09-04 14:38:50', NULL),
(488, 544, 1, 49, '928-456-791', 2, '2016-09-04 14:39:34', '2016-09-04 14:39:34', NULL),
(489, 547, 1, 62, '103-899-394', 2, '2016-09-04 14:46:22', '2016-09-04 14:46:22', NULL),
(490, 546, 1, 63, '572-428-992', 2, '2016-09-04 14:47:02', '2016-09-04 14:47:02', NULL),
(491, 351, 1, 20, '539-754-868', 2, '2016-09-04 14:47:26', '2016-09-04 14:47:26', NULL),
(492, 351, 1, 20, '539-754-868', 2, '2016-09-04 14:47:26', '2016-09-04 14:47:26', NULL),
(493, 351, 1, 20, '539-754-868', 2, '2016-09-04 14:47:27', '2016-09-04 14:47:27', NULL),
(494, 276, 1, 63, '849-139-431', 2, '2016-09-04 14:54:34', '2016-09-04 14:54:34', NULL),
(495, 524, 1, 42, '930-622-986', 2, '2016-09-04 15:14:57', '2016-09-04 15:14:57', NULL),
(496, 550, 1, 63, '232-371-901', 2, '2016-09-04 15:24:47', '2016-09-04 15:24:47', NULL),
(497, 550, 1, 63, '232-371-901', 2, '2016-09-04 15:24:47', '2016-09-04 15:24:47', NULL),
(498, 551, 1, 62, '059-857-173', 2, '2016-09-04 15:40:30', '2016-09-04 15:40:30', NULL),
(499, 552, 1, 41, '753-704-181', 2, '2016-09-04 15:44:04', '2016-09-04 15:44:04', NULL),
(500, 553, 1, 35, '117-318-992', 2, '2016-09-04 15:54:14', '2016-09-04 15:54:14', NULL),
(501, 22, 1, 59, '399-448-553', 2, '2016-09-04 15:54:42', '2016-09-04 15:54:42', NULL),
(502, 553, 1, 38, '687-966-700', 2, '2016-09-04 15:56:01', '2016-09-04 15:56:01', NULL),
(503, 137, 1, 2, '362-393-277', 2, '2016-09-04 16:01:51', '2016-09-04 16:01:51', NULL),
(504, 554, 1, 62, '071-526-190', 2, '2016-09-04 16:03:57', '2016-09-04 16:03:57', NULL),
(505, 555, 1, 41, '183-482-803', 2, '2016-09-04 16:18:57', '2016-09-04 16:18:57', NULL),
(506, 555, 1, 44, '172-939-539', 2, '2016-09-04 16:19:35', '2016-09-04 16:19:35', NULL),
(507, 428, 1, 63, '775-542-151', 2, '2016-09-04 16:21:42', '2016-09-04 16:21:42', NULL),
(508, 428, 1, 63, '577-840-503', 2, '2016-09-04 16:22:09', '2016-09-04 16:22:09', NULL),
(509, 555, 1, 39, '227-347-336', 2, '2016-09-04 16:25:07', '2016-09-04 16:25:07', NULL),
(510, 557, 1, 63, '116-536-809', 2, '2016-09-04 16:28:31', '2016-11-06 02:13:20', '2016-11-06 02:13:20'),
(511, 558, 1, 42, '374-291-867', 2, '2016-09-04 16:39:27', '2016-09-04 16:39:27', NULL),
(512, 559, 1, 38, '247-068-476', 2, '2016-09-04 16:54:52', '2016-09-04 16:54:52', NULL),
(513, 560, 1, 62, '110-491-819', 2, '2016-09-04 18:01:41', '2016-09-04 18:01:41', NULL),
(514, 560, 1, 62, '129-331-196', 2, '2016-09-04 18:03:15', '2016-09-04 18:03:15', NULL),
(515, 485, 1, 43, '517-365-032', 2, '2016-09-04 19:08:16', '2016-09-04 19:08:16', NULL),
(516, 178, 1, 5, '965-596-071', 2, '2016-09-04 19:48:27', '2016-09-04 19:48:27', NULL),
(517, 559, 1, 50, '033-937-697', 2, '2016-09-04 19:52:27', '2016-09-04 19:52:27', NULL),
(518, 559, 1, 50, '033-937-697', 2, '2016-09-04 19:52:44', '2016-09-04 19:52:44', NULL),
(519, 559, 1, 50, '033-937-697', 2, '2016-09-04 19:52:44', '2016-09-04 19:52:44', NULL),
(520, 559, 1, 50, '033-937-697', 2, '2016-09-04 19:52:46', '2016-09-04 19:52:46', NULL),
(521, 564, 1, 39, '897-153-765', 2, '2016-09-04 21:30:43', '2016-09-04 21:30:43', NULL),
(522, 557, 1, 40, '232-583-138', 2, '2016-09-04 23:58:40', '2016-11-06 02:13:24', '2016-11-06 02:13:24'),
(523, 534, 1, 63, '508-501-569', 2, '2016-09-05 01:06:18', '2016-09-05 01:06:18', NULL),
(524, 534, 1, 51, '855-578-938', 2, '2016-09-05 01:06:41', '2016-09-05 01:06:41', NULL),
(525, 566, 1, 39, '296-239-155', 2, '2016-09-05 08:14:30', '2016-09-05 08:14:30', NULL),
(526, 539, 1, 39, '284-874-451', 2, '2016-09-05 10:23:27', '2016-09-05 10:23:27', NULL),
(527, 534, 1, 46, '985-841-920', 2, '2016-09-05 10:43:49', '2016-09-05 10:43:49', NULL),
(528, 411, 1, 21, '790-464-380', 2, '2016-09-05 11:10:54', '2016-09-05 11:10:54', NULL),
(529, 396, 1, 39, '589-543-058', 2, '2016-09-05 13:28:58', '2016-09-05 13:28:58', NULL),
(530, 396, 1, 38, '906-676-876', 2, '2016-09-05 13:31:01', '2016-09-05 13:31:01', NULL),
(531, 259, 1, 63, '490-457-413', 2, '2016-09-05 14:40:50', '2016-09-05 14:40:50', NULL),
(532, 359, 1, 63, '588-243-401', 2, '2016-09-05 14:41:53', '2016-09-05 14:41:53', NULL),
(533, 359, 1, 63, '034-552-387', 2, '2016-09-05 14:45:01', '2016-09-05 14:45:01', NULL),
(534, 359, 1, 63, '638-604-509', 2, '2016-09-05 14:49:05', '2016-09-05 14:49:05', NULL),
(535, 359, 1, 54, '871-485-131', 2, '2016-09-05 14:52:54', '2016-09-05 14:52:54', NULL),
(536, 359, 1, 54, '531-096-783', 2, '2016-09-05 14:53:01', '2016-09-05 14:53:01', NULL),
(537, 573, 1, 3, '224-021-249', 2, '2016-09-05 14:54:40', '2016-09-05 14:54:40', NULL),
(538, 359, 1, 54, '147-867-325', 2, '2016-09-05 14:56:23', '2016-09-05 14:56:23', NULL),
(539, 88, 1, 20, '896-509-353', 2, '2016-09-05 15:13:13', '2016-10-04 11:32:48', '2016-10-04 11:32:48'),
(540, 574, 1, 63, '946-804-787', 2, '2016-09-05 15:17:48', '2016-09-05 15:17:48', NULL),
(541, 359, 1, 62, '289-513-478', 2, '2016-09-05 15:21:53', '2016-09-05 15:21:53', NULL),
(542, 359, 1, 54, '370-258-518', 2, '2016-09-05 15:22:23', '2016-09-05 15:22:23', NULL),
(543, 359, 1, 54, '370-258-518', 2, '2016-09-05 15:22:23', '2016-09-05 15:22:23', NULL),
(544, 575, 1, 63, '420-314-745', 2, '2016-09-05 15:36:38', '2016-09-05 15:36:38', NULL),
(545, 506, 1, 63, '235-476-185', 2, '2016-09-05 15:46:08', '2016-09-05 15:46:08', NULL),
(546, 578, 1, 18, '963-050-552', 2, '2016-09-05 15:53:18', '2016-09-05 15:53:18', NULL),
(547, 578, 1, 51, '302-643-979', 2, '2016-09-05 15:54:20', '2016-09-05 15:54:20', NULL),
(548, 578, 1, 51, '252-910-993', 2, '2016-09-05 16:09:04', '2016-09-05 16:09:04', NULL),
(549, 575, 1, 38, '224-885-750', 2, '2016-09-05 16:25:34', '2016-09-05 16:25:34', NULL),
(550, 156, 1, 4, '405-916-389', 2, '2016-09-05 18:06:57', '2016-09-05 18:06:57', NULL),
(551, 579, 1, 63, '725-502-458', 2, '2016-09-05 18:19:03', '2016-09-05 18:19:03', NULL),
(552, 578, 1, 51, '020-573-548', 2, '2016-09-06 01:23:50', '2016-09-06 01:23:50', NULL),
(553, 297, 1, 35, '479-648-584', 2, '2016-09-06 09:05:48', '2016-09-06 09:05:48', NULL),
(554, 156, 1, 20, '738-009-731', 2, '2016-09-06 13:51:50', '2016-09-06 13:51:50', NULL),
(555, 88, 1, 63, '971-954-515', 2, '2016-09-06 14:57:30', '2016-10-04 16:33:32', '2016-10-04 16:33:32'),
(556, 224, 1, 63, '566-202-831', 2, '2016-09-06 15:55:35', '2016-09-06 15:55:35', NULL),
(557, 593, 1, 60, '411-726-708', 2, '2016-09-06 16:12:52', '2016-09-06 16:12:52', NULL),
(558, 592, 1, 63, '742-343-090', 2, '2016-09-06 16:22:33', '2016-09-06 16:22:33', NULL),
(559, 592, 1, 43, '410-325-888', 2, '2016-09-06 16:22:48', '2016-09-06 16:22:48', NULL),
(560, 592, 1, 46, '888-548-685', 2, '2016-09-06 16:24:35', '2016-09-06 16:24:35', NULL),
(561, 34, 1, 63, '399-032-341', 2, '2016-09-06 16:25:37', '2016-09-06 16:25:37', NULL),
(562, 596, 1, 5, '942-123-599', 2, '2016-09-07 00:01:45', '2016-09-07 00:01:45', NULL),
(563, 597, 1, 44, '726-825-064', 2, '2016-09-07 06:24:14', '2016-09-07 06:24:14', NULL),
(564, 162, 1, 36, '033-048-224', 2, '2016-09-07 08:29:44', '2016-09-07 08:29:44', NULL),
(565, 162, 1, 42, '371-389-593', 2, '2016-09-07 09:15:59', '2016-09-07 09:15:59', NULL),
(567, 162, 1, 51, '496-590-181', 2, '2016-09-07 10:09:46', '2016-09-07 10:09:46', NULL),
(568, 389, 1, 84, '465-548-742', 2, '2016-09-07 11:29:48', '2016-09-07 11:29:48', NULL),
(569, 374, 1, 26, '240-243-767', 2, '2016-09-07 11:48:33', '2016-09-07 11:48:33', NULL),
(570, 4, 1, 63, '474-678-171', 2, '2016-09-07 12:05:26', '2016-09-07 12:05:26', NULL),
(571, 4, 1, 62, '129-288-758', 2, '2016-09-07 12:06:04', '2016-09-07 12:06:04', NULL),
(572, 4, 1, 58, '533-164-006', 2, '2016-09-07 12:08:48', '2016-09-07 12:08:48', NULL),
(573, 297, 1, 63, '569-264-389', 2, '2016-09-07 12:31:28', '2016-09-07 12:31:28', NULL),
(574, 297, 1, 21, '890-551-348', 2, '2016-09-07 12:32:12', '2016-09-07 12:32:12', NULL),
(575, 162, 1, 22, '936-718-925', 2, '2016-09-07 12:40:18', '2016-09-07 12:40:18', NULL),
(576, 162, 1, 44, '839-875-595', 2, '2016-09-07 12:45:03', '2016-09-07 12:45:03', NULL),
(577, 374, 1, 54, '180-505-548', 2, '2016-09-07 13:16:10', '2016-09-07 13:16:10', NULL),
(578, 374, 1, 32, '192-489-153', 2, '2016-09-07 13:29:50', '2016-09-07 13:29:50', NULL);
INSERT INTO `Taken_Coupon` (`id`, `user_id`, `type`, `type_id`, `coupon_code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(579, 220, 1, 54, '911-546-158', 2, '2016-09-07 13:43:21', '2016-09-07 13:43:21', NULL),
(580, 374, 1, 25, '395-020-176', 2, '2016-09-07 14:02:36', '2016-09-07 14:02:36', NULL),
(581, 374, 1, 2, '980-633-773', 2, '2016-09-07 14:21:55', '2016-09-07 14:21:55', NULL),
(582, 374, 1, 5, '975-398-400', 2, '2016-09-07 14:34:42', '2016-09-07 14:34:42', NULL),
(583, 162, 1, 5, '794-724-754', 2, '2016-09-07 14:34:56', '2016-09-07 14:34:56', NULL),
(584, 602, 1, 44, '409-862-436', 2, '2016-09-07 16:31:24', '2016-09-07 16:31:24', NULL),
(585, 599, 1, 25, '672-047-928', 2, '2016-09-07 17:30:58', '2016-09-07 17:30:58', NULL),
(586, 604, 1, 63, '998-987-044', 2, '2016-09-07 20:42:39', '2016-09-07 20:42:39', NULL),
(587, 605, 1, 63, '956-173-201', 2, '2016-09-08 09:33:34', '2016-09-08 09:33:34', NULL),
(588, 605, 1, 37, '582-740-589', 2, '2016-09-08 09:35:08', '2016-09-08 09:35:08', NULL),
(589, 575, 1, 63, '404-328-244', 2, '2016-09-08 10:53:56', '2016-09-08 10:53:56', NULL),
(590, 606, 1, 20, '032-141-158', 2, '2016-09-08 11:40:22', '2016-11-22 22:19:04', '2016-11-22 22:19:04'),
(591, 596, 1, 5, '590-263-966', 2, '2016-09-08 16:00:38', '2016-09-08 16:00:38', NULL),
(592, 591, 1, 62, '0', 1, '2016-09-08 18:28:50', '2016-10-05 17:02:30', NULL),
(593, 570, 1, 63, '281-930-370', 2, '2016-09-08 19:10:28', '2016-09-08 19:10:28', NULL),
(594, 570, 1, 63, '281-930-370', 2, '2016-09-08 19:10:28', '2016-09-08 19:10:28', NULL),
(595, 374, 1, 35, '075-812-725', 2, '2016-09-09 11:40:34', '2016-09-09 11:40:34', NULL),
(596, 374, 1, 16, '527-459-826', 2, '2016-09-09 12:51:09', '2016-09-09 12:51:09', NULL),
(597, 374, 1, 16, '527-459-826', 2, '2016-09-09 12:51:09', '2016-09-09 12:51:09', NULL),
(598, 374, 1, 1, '810-737-384', 2, '2016-09-09 13:25:01', '2016-09-09 13:25:01', NULL),
(599, 374, 1, 1, '810-737-384', 2, '2016-09-09 13:25:01', '2016-09-09 13:25:01', NULL),
(600, 374, 1, 6, '086-287-426', 2, '2016-09-09 13:39:34', '2016-09-09 13:39:34', NULL),
(601, 276, 1, 24, '362-314-730', 2, '2016-09-09 14:12:50', '2016-09-09 14:12:50', NULL),
(602, 575, 1, 43, '649-186-333', 2, '2016-09-09 14:21:55', '2016-09-09 14:21:55', NULL),
(603, 628, 1, 51, '488-682-346', 2, '2016-09-09 15:20:32', '2016-10-14 09:46:53', '2016-10-14 09:46:53'),
(604, 628, 1, 59, '364-193-932', 2, '2016-09-09 15:22:13', '2016-10-14 09:46:53', '2016-10-14 09:46:53'),
(605, 628, 1, 60, '957-850-645', 2, '2016-09-09 15:23:26', '2016-10-14 09:46:53', '2016-10-14 09:46:53'),
(606, 628, 1, 34, '472-105-525', 2, '2016-09-09 15:24:05', '2016-10-14 09:46:53', '2016-10-14 09:46:53'),
(607, 628, 1, 33, '698-309-451', 2, '2016-09-09 15:24:10', '2016-10-14 09:46:53', '2016-10-14 09:46:53'),
(608, 374, 1, 17, '213-760-393', 2, '2016-09-09 15:50:28', '2016-09-09 15:50:28', NULL),
(609, 220, 1, 49, '249-690-414', 2, '2016-09-09 15:54:26', '2016-11-04 12:12:45', '2016-11-04 12:12:45'),
(610, 220, 1, 47, '255-549-646', 2, '2016-09-09 15:54:30', '2016-10-28 10:36:14', '2016-10-28 10:36:14'),
(611, 220, 1, 46, '407-521-300', 2, '2016-09-09 15:54:33', '2016-10-28 10:36:10', '2016-10-28 10:36:10'),
(612, 374, 1, 18, '081-356-682', 2, '2016-09-09 15:59:41', '2016-09-09 15:59:41', NULL),
(613, 220, 1, 50, '437-410-681', 2, '2016-09-09 16:20:16', '2016-10-28 10:36:05', '2016-10-28 10:36:05'),
(614, 276, 1, 35, '759-566-673', 2, '2016-09-10 09:39:45', '2016-09-10 09:39:45', NULL),
(615, 633, 1, 63, '546-204-400', 2, '2016-09-10 15:48:40', '2016-09-10 15:48:40', NULL),
(616, 633, 1, 62, '233-550-116', 2, '2016-09-10 15:49:06', '2016-09-10 15:49:06', NULL),
(617, 634, 1, 63, '441-851-316', 2, '2016-09-10 16:26:01', '2016-09-10 16:26:01', NULL),
(618, 634, 1, 63, '413-507-312', 2, '2016-09-10 16:26:17', '2016-09-10 16:26:17', NULL),
(619, 634, 1, 63, '364-257-254', 2, '2016-09-10 16:26:24', '2016-09-10 16:26:24', NULL),
(620, 634, 1, 62, '164-885-095', 2, '2016-09-10 16:29:18', '2016-09-10 16:29:18', NULL),
(621, 634, 1, 62, '504-612-684', 2, '2016-09-10 16:29:21', '2016-09-10 16:29:21', NULL),
(622, 634, 1, 44, '362-122-209', 2, '2016-09-10 16:29:39', '2016-09-10 16:29:39', NULL),
(623, 634, 1, 44, '923-336-633', 2, '2016-09-10 16:29:42', '2016-09-10 16:29:42', NULL),
(624, 634, 1, 44, '415-928-768', 2, '2016-09-10 16:29:46', '2016-09-10 16:29:46', NULL),
(625, 634, 1, 1, '319-638-664', 2, '2016-09-10 16:30:29', '2016-09-10 16:30:29', NULL),
(626, 634, 1, 34, '162-655-150', 2, '2016-09-10 17:44:23', '2016-09-10 17:44:23', NULL),
(627, 635, 1, 63, '261-936-189', 2, '2016-09-10 18:21:11', '2016-09-10 18:21:11', NULL),
(628, 635, 1, 63, '261-936-189', 2, '2016-09-10 18:21:11', '2016-09-10 18:21:11', NULL),
(629, 77, 1, 62, '073-255-361', 2, '2016-09-10 18:30:08', '2016-10-06 16:01:39', '2016-10-06 16:01:39'),
(630, 276, 1, 53, '276-607-803', 2, '2016-09-11 13:36:05', '2016-09-11 13:36:05', NULL),
(631, 276, 1, 4, '386-397-538', 2, '2016-09-11 13:37:57', '2016-09-11 13:37:57', NULL),
(632, 591, 1, 36, '483-474-742', 2, '2016-09-11 17:08:32', '2016-09-11 17:08:32', NULL),
(633, 274, 1, 31, '530-209-693', 2, '2016-09-11 18:10:24', '2016-11-03 17:16:39', '2016-11-03 17:16:39'),
(634, 274, 1, 31, '234-540-203', 2, '2016-09-11 18:11:03', '2016-11-03 17:16:29', '2016-11-03 17:16:29'),
(635, 208, 1, 44, '388-171-380', 2, '2016-09-11 19:49:12', '2016-09-11 19:49:12', NULL),
(636, 633, 1, 62, '456-298-898', 2, '2016-09-11 23:10:44', '2016-09-11 23:10:44', NULL),
(637, 637, 1, 36, '103-531-873', 2, '2016-09-11 23:17:37', '2016-09-11 23:17:37', NULL),
(638, 552, 1, 63, '103-701-394', 2, '2016-09-12 11:46:00', '2016-09-12 11:46:00', NULL),
(639, 195, 1, 62, '056-064-307', 2, '2016-09-12 12:00:44', '2016-09-12 12:00:44', NULL),
(640, 332, 1, 63, '838-351-869', 2, '2016-09-12 12:17:08', '2016-09-12 12:17:08', NULL),
(641, 641, 1, 60, '434-558-697', 2, '2016-09-12 14:10:31', '2016-09-12 14:10:31', NULL),
(642, 641, 1, 5, '174-567-506', 2, '2016-09-12 14:22:27', '2016-09-12 14:22:27', NULL),
(643, 641, 1, 5, '687-012-541', 2, '2016-09-12 14:24:02', '2016-09-12 14:24:02', NULL),
(644, 657, 1, 63, '858-118-997', 2, '2016-09-12 14:50:14', '2016-09-12 14:50:14', NULL),
(645, 338, 1, 63, '813-393-354', 2, '2016-09-12 14:50:37', '2016-09-12 14:50:37', NULL),
(646, 678, 1, 63, '956-231-819', 2, '2016-09-12 14:57:25', '2016-09-12 14:57:25', NULL),
(647, 699, 1, 44, '784-364-491', 2, '2016-09-12 14:59:00', '2016-09-12 14:59:00', NULL),
(648, 710, 1, 43, '257-800-221', 2, '2016-09-12 15:05:15', '2016-09-12 15:05:15', NULL),
(649, 709, 1, 62, '417-378-978', 2, '2016-09-12 15:07:25', '2016-09-12 15:07:25', NULL),
(650, 666, 1, 5, '378-496-942', 2, '2016-09-12 15:20:57', '2016-09-12 15:20:57', NULL),
(651, 666, 1, 4, '013-962-767', 2, '2016-09-12 15:21:46', '2016-09-12 15:21:46', NULL),
(652, 666, 1, 5, '590-354-743', 2, '2016-09-12 15:22:12', '2016-09-12 15:22:12', NULL),
(653, 698, 1, 32, '590-515-249', 2, '2016-09-12 15:23:11', '2016-09-12 15:23:11', NULL),
(654, 641, 1, 21, '261-225-150', 2, '2016-09-12 15:24:30', '2016-09-12 15:24:30', NULL),
(655, 649, 1, 49, '763-917-910', 2, '2016-09-12 15:24:56', '2016-09-12 15:24:56', NULL),
(656, 641, 1, 21, '015-582-791', 2, '2016-09-12 15:25:21', '2016-09-12 15:25:21', NULL),
(657, 641, 1, 21, '597-094-680', 2, '2016-09-12 15:25:29', '2016-09-12 15:25:29', NULL),
(658, 641, 1, 21, '468-286-031', 2, '2016-09-12 15:25:34', '2016-09-12 15:25:34', NULL),
(659, 715, 1, 51, '665-707-057', 2, '2016-09-12 15:26:53', '2016-09-12 15:26:53', NULL),
(660, 641, 1, 21, '571-557-107', 2, '2016-09-12 15:27:05', '2016-09-12 15:27:05', NULL),
(661, 666, 1, 53, '040-368-855', 2, '2016-09-12 15:27:13', '2016-09-12 15:27:13', NULL),
(662, 718, 1, 39, '771-920-076', 2, '2016-09-12 15:27:59', '2016-09-12 15:27:59', NULL),
(663, 690, 1, 36, '168-991-397', 2, '2016-09-12 15:42:32', '2016-09-12 15:42:32', NULL),
(664, 720, 1, 2, '045-933-715', 2, '2016-09-12 15:42:52', '2016-09-12 15:42:52', NULL),
(665, 690, 1, 33, '090-345-507', 2, '2016-09-12 15:42:57', '2016-09-12 15:42:57', NULL),
(666, 715, 1, 52, '465-006-761', 2, '2016-09-12 15:43:32', '2016-09-12 15:43:32', NULL),
(667, 724, 1, 62, '574-207-733', 2, '2016-09-12 15:46:37', '2016-09-12 15:46:37', NULL),
(668, 720, 1, 2, '740-134-894', 2, '2016-09-12 15:47:02', '2016-09-12 15:47:02', NULL),
(669, 722, 1, 62, '068-278-700', 2, '2016-09-12 15:55:31', '2016-09-12 15:55:31', NULL),
(670, 722, 1, 62, '211-336-574', 2, '2016-09-12 15:56:26', '2016-09-12 15:56:26', NULL),
(671, 720, 1, 63, '720-478-833', 2, '2016-09-12 16:03:27', '2016-09-12 16:03:27', NULL),
(672, 720, 1, 62, '101-905-657', 2, '2016-09-12 16:03:41', '2016-09-12 16:03:41', NULL),
(673, 650, 1, 62, '395-125-171', 2, '2016-09-12 16:04:36', '2016-09-12 16:04:36', NULL),
(674, 720, 1, 36, '721-316-209', 2, '2016-09-12 16:04:52', '2016-09-12 16:04:52', NULL),
(675, 677, 1, 31, '242-583-354', 2, '2016-09-12 16:12:31', '2016-09-12 16:12:31', NULL),
(676, 728, 1, 52, '542-428-229', 2, '2016-09-12 16:19:09', '2016-09-12 16:19:09', NULL),
(677, 728, 1, 53, '949-034-703', 2, '2016-09-12 16:20:11', '2016-09-12 16:20:11', NULL),
(678, 730, 1, 63, '972-839-022', 2, '2016-09-12 17:55:03', '2016-09-12 17:55:03', NULL),
(679, 602, 1, 44, '916-611-922', 2, '2016-09-12 18:13:55', '2016-09-12 18:13:55', NULL),
(680, 731, 1, 63, '502-547-942', 2, '2016-09-12 19:19:32', '2016-09-12 19:19:32', NULL),
(681, 15, 1, 63, '694-391-916', 2, '2016-09-12 19:27:41', '2016-09-12 19:27:41', NULL),
(682, 698, 1, 20, '567-998-320', 2, '2016-09-12 20:01:49', '2016-09-12 20:01:49', NULL),
(683, 698, 1, 20, '567-998-320', 2, '2016-09-12 20:01:50', '2016-09-12 20:01:50', NULL),
(684, 733, 1, 31, '269-276-892', 2, '2016-09-12 21:03:21', '2016-09-12 21:03:21', NULL),
(685, 595, 1, 2, '781-023-135', 2, '2016-09-12 21:07:18', '2016-09-12 21:07:18', NULL),
(686, 75, 1, 63, '991-547-155', 2, '2016-09-13 00:05:08', '2016-09-13 00:05:08', NULL),
(687, 658, 1, 63, '933-276-829', 2, '2016-09-13 11:21:07', '2016-09-13 11:21:07', NULL),
(688, 658, 1, 63, '365-879-785', 2, '2016-09-13 11:21:48', '2016-09-13 11:21:48', NULL),
(689, 658, 1, 62, '850-896-833', 2, '2016-09-13 11:23:09', '2016-09-13 11:23:09', NULL),
(690, 658, 1, 62, '606-208-070', 2, '2016-09-13 11:23:17', '2016-09-13 11:23:17', NULL),
(691, 737, 1, 40, '570-325-843', 2, '2016-09-13 19:25:46', '2016-09-13 19:25:46', NULL),
(692, 518, 1, 58, '763-790-034', 2, '2016-09-14 12:54:26', '2016-10-17 03:15:59', '2016-10-17 03:15:59'),
(693, 618, 1, 64, '447-379-569', 2, '2016-09-14 14:57:10', '2016-09-14 14:57:10', NULL),
(694, 136, 1, 21, '203-425-791', 2, '2016-09-14 14:57:52', '2016-09-14 14:57:52', NULL),
(695, 618, 1, 21, '609-318-077', 2, '2016-09-14 14:58:55', '2016-09-14 14:58:55', NULL),
(696, 136, 1, 40, '869-675-246', 2, '2016-09-14 14:59:09', '2016-09-14 14:59:09', NULL),
(697, 136, 1, 20, '920-494-749', 2, '2016-09-14 14:59:45', '2016-09-14 14:59:45', NULL),
(698, 618, 1, 20, '218-758-880', 2, '2016-09-14 15:00:04', '2016-09-14 15:00:04', NULL),
(699, 171, 1, 44, '177-371-614', 2, '2016-09-15 12:31:08', '2016-09-15 12:31:08', NULL),
(700, 633, 1, 36, '531-288-961', 2, '2016-09-15 14:42:39', '2016-09-15 14:42:39', NULL),
(701, 741, 1, 20, '563-907-142', 2, '2016-09-15 17:18:06', '2016-09-15 17:18:06', NULL),
(702, 741, 1, 20, '563-907-142', 2, '2016-09-15 17:18:06', '2016-09-15 17:18:06', NULL),
(703, 741, 1, 42, '903-781-709', 2, '2016-09-15 17:19:36', '2016-09-15 17:19:36', NULL),
(704, 171, 1, 43, '850-180-264', 2, '2016-09-15 17:24:59', '2016-10-04 16:32:26', '2016-10-04 16:32:26'),
(705, 359, 1, 63, '560-653-176', 2, '2016-09-16 00:15:19', '2016-09-16 00:15:19', NULL),
(706, 745, 1, 33, '146-615-963', 2, '2016-09-16 01:32:38', '2016-09-16 01:32:38', NULL),
(707, 745, 1, 33, '267-053-794', 2, '2016-09-16 01:33:05', '2016-09-16 01:33:05', NULL),
(708, 745, 1, 33, '754-619-606', 2, '2016-09-16 01:33:06', '2016-09-16 01:33:06', NULL),
(709, 745, 1, 33, '095-670-156', 2, '2016-09-16 01:33:08', '2016-09-16 01:33:08', NULL),
(710, 745, 1, 62, '660-109-248', 2, '2016-09-16 01:34:07', '2016-09-16 01:34:07', NULL),
(711, 746, 1, 47, '497-992-684', 2, '2016-09-16 16:29:44', '2016-09-16 16:29:44', NULL),
(712, 276, 1, 67, '525-274-331', 2, '2016-09-16 18:21:05', '2016-09-16 18:21:05', NULL),
(713, 747, 1, 32, '845-105-737', 2, '2016-09-16 18:33:53', '2016-09-16 18:33:53', NULL),
(714, 747, 1, 63, '442-021-491', 2, '2016-09-16 18:35:23', '2016-09-16 18:35:23', NULL),
(715, 747, 1, 4, '676-870-830', 2, '2016-09-16 18:36:27', '2016-09-16 18:36:27', NULL),
(716, 747, 1, 32, '526-871-376', 2, '2016-09-16 18:38:05', '2016-09-16 18:38:05', NULL),
(717, 747, 1, 32, '429-831-346', 2, '2016-09-16 18:39:32', '2016-09-16 18:39:32', NULL),
(718, 747, 1, 4, '646-069-757', 2, '2016-09-16 18:40:05', '2016-09-16 18:40:05', NULL),
(719, 747, 1, 4, '067-433-261', 2, '2016-09-16 18:40:27', '2016-09-16 18:40:27', NULL),
(720, 751, 1, 26, '213-276-135', 2, '2016-09-17 11:22:23', '2016-09-17 11:22:23', NULL),
(721, 276, 1, 62, '664-678-093', 2, '2016-09-17 19:33:39', '2016-09-17 19:33:39', NULL),
(722, 383, 1, 20, '079-297-906', 2, '2016-09-18 13:29:43', '2016-09-18 13:29:43', NULL),
(723, 755, 1, 63, '753-948-217', 2, '2016-09-18 18:35:50', '2016-09-18 18:35:50', NULL),
(724, 757, 1, 51, '992-216-485', 2, '2016-09-19 13:49:23', '2016-09-19 13:49:23', NULL),
(725, 75, 1, 63, '539-350-306', 2, '2016-09-20 13:44:28', '2016-09-20 13:44:28', NULL),
(726, 761, 1, 63, '282-383-865', 2, '2016-09-20 14:25:37', '2016-09-20 14:25:37', NULL),
(727, 606, 1, 22, '485-005-885', 2, '2016-09-21 08:16:44', '2016-11-22 22:19:09', '2016-11-22 22:19:09'),
(728, 606, 1, 2, '287-159-590', 2, '2016-09-21 08:17:15', '2016-11-22 22:19:13', '2016-11-22 22:19:13'),
(729, 762, 1, 44, '287-757-467', 2, '2016-09-21 18:26:01', '2016-09-21 18:26:01', NULL),
(730, 136, 1, 62, '794-710-636', 2, '2016-09-21 19:42:33', '2016-09-21 19:42:33', NULL),
(731, 763, 1, 63, '234-403-418', 2, '2016-09-21 19:44:37', '2016-09-21 19:44:37', NULL),
(732, 763, 1, 63, '258-138-959', 2, '2016-09-21 19:45:35', '2016-09-21 19:45:35', NULL),
(733, 4, 1, 69, '051-765-397', 2, '2016-09-22 16:50:57', '2016-09-22 16:50:57', NULL),
(734, 765, 1, 67, '137-898-075', 2, '2016-09-22 16:51:42', '2016-09-22 16:51:42', NULL),
(735, 765, 1, 68, '217-055-700', 2, '2016-09-22 16:52:06', '2016-09-22 16:52:06', NULL),
(736, 4, 1, 68, '980-741-572', 2, '2016-09-22 16:52:10', '2016-09-22 16:52:10', NULL),
(737, 120, 1, 71, '728-170-699', 2, '2016-09-22 17:20:01', '2016-09-22 17:20:01', NULL),
(738, 22, 1, 71, '281-314-764', 2, '2016-09-22 17:20:44', '2016-09-22 17:20:44', NULL),
(739, 171, 1, 71, '868-000-858', 2, '2016-09-22 17:21:05', '2016-10-04 16:31:59', '2016-10-04 16:31:59'),
(740, 374, 1, 71, '207-330-658', 2, '2016-09-22 17:21:24', '2016-09-22 17:21:24', NULL),
(741, 578, 1, 2, '974-794-431', 2, '2016-09-22 17:40:13', '2016-09-22 17:40:13', NULL),
(742, 367, 1, 20, '489-988-472', 2, '2016-09-23 08:41:28', '2016-09-23 08:41:28', NULL),
(743, 586, 1, 70, '348-654-298', 2, '2016-09-23 16:42:38', '2016-09-23 16:42:38', NULL),
(744, 770, 1, 71, '952-255-609', 2, '2016-09-24 17:32:22', '2016-09-24 17:32:22', NULL),
(745, 740, 1, 71, '572-714-344', 2, '2016-09-25 00:02:16', '2016-10-04 17:51:17', '2016-10-04 17:51:17'),
(746, 772, 1, 71, '423-021-042', 2, '2016-09-25 00:53:26', '2016-09-25 00:53:26', NULL),
(747, 774, 1, 20, '588-442-667', 2, '2016-09-25 07:18:48', '2016-09-25 07:18:48', NULL),
(748, 774, 1, 20, '196-857-319', 2, '2016-09-25 07:19:15', '2016-09-25 07:19:15', NULL),
(749, 776, 1, 69, '312-944-773', 2, '2016-09-25 10:40:23', '2016-09-25 10:40:23', NULL),
(750, 776, 1, 67, '891-436-977', 2, '2016-09-25 10:55:11', '2016-09-25 10:55:11', NULL),
(751, 662, 1, 70, '968-508-615', 2, '2016-09-25 15:22:31', '2016-09-25 15:22:31', NULL),
(752, 777, 1, 71, '438-027-817', 2, '2016-09-25 21:45:22', '2016-09-25 21:45:22', NULL),
(753, 4, 1, 71, '206-745-402', 2, '2016-09-26 00:21:30', '2016-09-26 00:21:30', NULL),
(754, 778, 1, 71, '880-446-470', 2, '2016-09-26 10:51:16', '2016-09-26 10:51:16', NULL),
(755, 612, 1, 66, '772-680-030', 2, '2016-09-26 14:01:47', '2016-09-26 14:01:47', NULL),
(756, 565, 1, 71, '706-723-378', 2, '2016-09-26 15:43:45', '2016-09-26 15:43:45', NULL),
(757, 740, 1, 62, '625-592-566', 2, '2016-09-26 17:34:31', '2016-10-04 18:09:14', '2016-10-04 18:09:14'),
(758, 781, 1, 70, '893-218-277', 2, '2016-09-26 22:01:54', '2016-09-26 22:01:54', NULL),
(759, 781, 1, 70, '893-218-277', 2, '2016-09-26 22:01:55', '2016-09-26 22:01:55', NULL),
(760, 782, 1, 71, '024-527-744', 2, '2016-09-27 00:03:15', '2016-09-27 00:03:15', NULL),
(761, 138, 1, 71, '860-612-312', 2, '2016-09-27 14:56:10', '2016-09-27 14:56:10', NULL),
(762, 20, 1, 71, '510-417-693', 2, '2016-09-27 14:57:41', '2016-09-27 14:57:41', NULL),
(763, 785, 1, 71, '908-544-232', 2, '2016-09-27 15:14:28', '2016-09-27 15:14:28', NULL),
(764, 324, 1, 71, '767-002-562', 2, '2016-09-27 16:00:47', '2016-09-27 16:00:47', NULL),
(765, 787, 1, 70, '938-227-573', 2, '2016-09-27 18:39:23', '2016-09-27 18:39:23', NULL),
(766, 787, 1, 70, '685-941-003', 2, '2016-09-27 18:39:35', '2016-09-27 18:39:35', NULL),
(767, 787, 1, 70, '029-663-516', 2, '2016-09-27 18:40:23', '2016-09-27 18:40:23', NULL),
(768, 788, 1, 71, '732-288-054', 2, '2016-09-27 19:07:51', '2016-09-27 19:07:51', NULL),
(769, 646, 1, 62, '423-298-440', 2, '2016-09-27 19:17:47', '2016-09-27 19:17:47', NULL),
(770, 4, 1, 60, '554-574-494', 2, '2016-09-27 22:03:02', '2016-09-27 22:03:02', NULL),
(771, 4, 1, 69, '972-104-629', 2, '2016-09-27 22:16:38', '2016-09-27 22:16:38', NULL),
(772, 4, 1, 68, '542-208-520', 2, '2016-09-27 22:17:08', '2016-09-27 22:17:08', NULL),
(773, 4, 1, 59, '321-907-536', 2, '2016-09-27 22:17:38', '2016-09-27 22:17:38', NULL),
(774, 4, 1, 69, '394-672-551', 2, '2016-09-27 22:26:00', '2016-09-27 22:26:00', NULL),
(775, 4, 1, 69, '394-672-551', 2, '2016-09-27 22:26:01', '2016-09-27 22:26:01', NULL),
(776, 789, 1, 71, '735-212-893', 2, '2016-09-28 04:14:05', '2016-09-28 04:14:05', NULL),
(777, 778, 1, 59, '0', 1, '2016-09-28 10:05:07', '2016-09-28 10:05:26', NULL),
(778, 778, 1, 70, '364-256-280', 2, '2016-09-28 10:06:30', '2016-09-28 10:06:30', NULL),
(779, 276, 1, 72, '186-840-305', 2, '2016-09-28 12:01:46', '2016-09-28 12:01:46', NULL),
(780, 276, 1, 72, '988-275-946', 2, '2016-09-28 12:10:16', '2016-09-28 12:10:16', NULL),
(781, 780, 1, 71, '873-358-520', 2, '2016-09-28 13:11:23', '2016-09-28 13:11:23', NULL),
(782, 4, 1, 68, '389-327-573', 2, '2016-09-28 17:39:01', '2016-09-28 17:39:01', NULL),
(783, 781, 1, 72, '338-878-651', 2, '2016-09-28 19:38:59', '2016-09-28 19:38:59', NULL),
(784, 192, 1, 63, '495-792-674', 2, '2016-09-28 20:20:21', '2016-09-28 20:20:21', NULL),
(785, 120, 1, 75, '629-379-904', 2, '2016-09-28 23:37:01', '2016-09-28 23:37:01', NULL),
(786, 120, 1, 75, '019-842-440', 2, '2016-09-28 23:41:57', '2016-09-28 23:41:57', NULL),
(787, 4, 1, 77, '814-137-792', 2, '2016-09-29 01:06:23', '2016-09-29 01:06:23', NULL),
(788, 4, 1, 69, '301-951-805', 2, '2016-09-29 01:09:29', '2016-09-29 01:09:29', NULL),
(789, 4, 1, 77, '761-809-850', 2, '2016-09-29 01:11:21', '2016-09-29 01:11:21', NULL),
(790, 804, 1, 68, '567-477-618', 2, '2016-09-29 09:31:08', '2016-09-29 09:31:08', NULL),
(791, 22, 1, 31, '0', 1, '2016-09-29 10:14:20', '2016-09-29 10:15:30', NULL),
(792, 22, 1, 32, '0', 1, '2016-09-29 10:51:10', '2016-09-29 10:51:25', NULL),
(793, 22, 1, 33, '0', 1, '2016-09-29 10:53:08', '2016-09-29 10:53:34', NULL),
(794, 22, 1, 36, '0', 1, '2016-09-29 11:02:55', '2016-09-29 11:03:11', NULL),
(795, 22, 1, 24, '0', 1, '2016-09-29 11:29:54', '2016-09-29 11:30:10', NULL),
(797, 171, 1, 75, '232-487-785', 2, '2016-09-29 13:49:53', '2016-09-29 13:49:53', NULL),
(798, 22, 1, 32, '0', 1, '2016-09-29 15:16:40', '2016-09-29 15:18:07', NULL),
(799, 22, 1, 32, '0', 1, '2016-09-29 15:16:41', '2016-09-29 15:31:27', NULL),
(800, 780, 1, 44, '0', 1, '2016-09-29 15:18:24', '2016-09-29 15:18:55', NULL),
(801, 780, 1, 44, '0', 1, '2016-09-29 15:18:26', '2016-09-29 15:19:17', NULL),
(803, 518, 1, 67, '916-297-103', 2, '2016-09-29 16:52:39', '2016-10-17 03:15:59', '2016-10-17 03:15:59'),
(804, 518, 1, 67, '916-297-103', 2, '2016-09-29 16:52:43', '2016-10-17 03:15:59', '2016-10-17 03:15:59'),
(805, 807, 1, 67, '895-228-460', 2, '2016-09-29 17:49:51', '2016-09-29 17:49:51', NULL),
(806, 451, 1, 46, '741-853-138', 2, '2016-09-29 19:48:51', '2016-09-29 19:48:51', NULL),
(807, 22, 1, 75, '427-986-253', 2, '2016-09-30 08:01:13', '2016-09-30 08:01:13', NULL),
(808, 808, 1, 20, '713-863-084', 2, '2016-09-30 13:31:10', '2016-09-30 13:31:10', NULL),
(809, 518, 1, 67, '114-227-124', 2, '2016-09-30 14:24:24', '2016-10-17 03:15:59', '2016-10-17 03:15:59'),
(810, 654, 1, 51, '560-985-816', 2, '2016-09-30 17:13:08', '2016-09-30 17:13:08', NULL),
(811, 323, 1, 72, '705-397-254', 2, '2016-10-01 23:16:48', '2016-10-01 23:16:48', NULL),
(812, 22, 1, 75, '716-238-227', 2, '2016-10-02 08:30:18', '2016-10-02 08:30:18', NULL),
(813, 332, 1, 50, '644-579-883', 2, '2016-10-02 13:36:27', '2016-10-02 13:36:27', NULL),
(814, 651, 1, 34, '526-453-478', 2, '2016-10-02 14:33:41', '2016-10-02 14:33:41', NULL),
(815, 195, 1, 83, '195-083-001', 2, '2016-10-02 14:33:41', '2016-10-06 17:45:39', NULL),
(817, 612, 1, 85, '0', 1, '2016-10-02 14:33:41', '2016-10-05 22:13:40', NULL),
(818, 552, 1, 86, '0', 1, '2016-10-02 14:33:41', '2016-10-11 20:52:42', NULL),
(819, 639, 1, 87, '639-087-005', 2, '2016-10-02 14:33:41', '2016-10-02 14:33:41', NULL),
(820, 651, 1, 88, '651-088-007', 2, '2016-10-02 14:33:41', '2016-10-02 14:33:41', NULL),
(821, 323, 1, 89, '323-089-008', 2, '2016-10-02 14:33:41', '2016-10-02 14:33:41', NULL),
(822, 780, 1, 66, '733-446-073', 2, '2016-10-03 20:28:21', '2016-10-03 20:28:21', NULL),
(823, 606, 1, 2, '115-315-781', 2, '2016-10-03 20:57:04', '2016-11-22 22:19:18', '2016-11-22 22:19:18'),
(824, 780, 1, 82, '923-999-179', 2, '2016-10-04 12:54:17', '2016-10-04 12:54:17', NULL),
(825, 780, 1, 82, '520-400-249', 2, '2016-10-04 13:55:54', '2016-10-04 13:55:54', NULL),
(826, 524, 1, 24, '0', 1, '2016-10-04 14:40:47', '2016-10-04 14:41:22', NULL),
(827, 740, 1, 2, '343-948-115', 2, '2016-10-04 18:15:19', '2016-10-04 18:23:01', '2016-10-04 18:23:01'),
(828, 811, 1, 90, '323-090-008', 2, '2016-10-02 14:33:41', '2016-10-02 14:33:41', NULL),
(829, 503, 1, 82, '725-650-467', 2, '2016-10-05 21:12:24', '2016-10-05 21:12:24', NULL),
(830, 651, 1, 63, '078-041-100', 2, '2016-10-05 22:11:13', '2016-10-05 22:11:13', NULL),
(831, 637, 1, 63, '252-987-527', 2, '2016-10-06 11:28:10', '2016-10-06 11:28:10', NULL),
(832, 4, 1, 91, '030-718-707', 2, '2016-10-06 15:14:32', '2016-10-06 17:45:35', '2016-10-06 17:45:35'),
(833, 4, 1, 91, '365-689-408', 2, '2016-10-06 15:47:37', '2016-10-06 17:45:35', '2016-10-06 17:45:35'),
(834, 4, 1, 91, '290-283-510', 2, '2016-10-06 15:58:32', '2016-10-06 17:45:35', '2016-10-06 17:45:35'),
(835, 4, 1, 75, '600-957-292', 2, '2016-10-06 15:58:47', '2016-10-06 15:58:47', NULL),
(836, 4, 1, 75, '600-957-292', 2, '2016-10-06 15:58:50', '2016-10-06 15:58:50', NULL),
(837, 4, 1, 82, '062-780-598', 2, '2016-10-06 15:59:00', '2016-10-06 15:59:00', NULL),
(838, 4, 1, 32, '107-442-042', 2, '2016-10-06 15:59:36', '2016-10-06 15:59:36', NULL),
(839, 816, 1, 92, '960-212-227', 2, '2016-10-06 17:51:41', '2016-10-06 17:51:41', NULL),
(840, 816, 1, 92, '312-637-285', 2, '2016-10-06 17:52:15', '2016-10-06 17:52:15', NULL),
(841, 553, 1, 2, '727-335-708', 2, '2016-10-06 18:33:47', '2016-10-06 18:33:47', NULL),
(842, 553, 1, 2, '371-740-896', 2, '2016-10-06 18:33:57', '2016-10-06 18:33:57', NULL),
(843, 818, 1, 92, '044-954-704', 2, '2016-10-07 00:02:32', '2016-10-07 00:02:32', NULL),
(844, 816, 1, 93, '188-498-743', 2, '2016-10-07 12:38:23', '2016-10-07 12:38:23', NULL),
(845, 816, 1, 93, '531-552-129', 2, '2016-10-07 12:38:28', '2016-10-07 12:38:28', NULL),
(846, 811, 1, 93, '378-370-859', 2, '2016-10-08 10:05:05', '2016-10-08 10:05:05', NULL),
(847, 821, 1, 93, '502-943-671', 2, '2016-10-08 10:38:17', '2016-10-08 10:38:17', NULL),
(848, 150, 1, 92, '895-410-324', 2, '2016-10-08 22:35:42', '2016-10-08 22:35:42', NULL),
(849, 823, 1, 82, '252-581-182', 2, '2016-10-09 13:59:26', '2016-10-09 13:59:26', NULL),
(850, 4, 1, 67, '472-938-026', 2, '2016-10-09 21:40:41', '2016-10-09 21:40:41', NULL),
(851, 4, 1, 67, '363-921-135', 2, '2016-10-09 21:45:47', '2016-10-09 21:45:47', NULL),
(852, 552, 1, 36, '373-062-217', 2, '2016-10-11 16:05:01', '2016-10-11 16:05:01', NULL),
(853, 299, 1, 62, '167-866-972', 2, '2016-10-11 18:19:30', '2016-10-11 18:19:30', NULL),
(854, 88, 1, 81, '362-631-197', 2, '2016-10-12 12:00:50', '2016-10-12 12:00:50', NULL),
(855, 812, 1, 92, '563-483-966', 2, '2016-10-12 18:10:29', '2016-10-12 18:10:29', NULL),
(856, 812, 1, 92, '821-057-938', 2, '2016-10-12 18:10:42', '2016-10-12 18:10:42', NULL),
(857, 787, 1, 100, '121-065-993', 2, '2016-10-12 23:30:24', '2016-10-12 23:30:24', NULL),
(858, 831, 1, 67, '722-383-371', 2, '2016-10-13 12:27:54', '2016-10-13 12:27:54', NULL),
(859, 552, 1, 66, '706-765-383', 2, '2016-10-13 13:29:10', '2016-10-13 13:29:10', NULL),
(860, 596, 1, 5, '700-501-347', 2, '2016-10-13 16:46:49', '2016-10-13 16:46:49', NULL),
(861, 834, 1, 69, '251-416-519', 2, '2016-10-14 10:59:17', '2016-10-14 10:59:17', NULL),
(862, 834, 1, 69, '987-735-096', 2, '2016-10-14 11:01:29', '2016-10-14 11:01:29', NULL),
(863, 518, 1, 104, '475-963-162', 2, '2016-10-17 03:17:26', '2016-10-17 03:17:26', NULL),
(864, 518, 1, 100, '443-271-796', 2, '2016-10-17 03:17:50', '2016-10-17 03:17:50', NULL),
(865, 396, 1, 102, '646-609-272', 2, '2016-10-17 15:35:45', '2016-10-17 15:35:45', NULL),
(866, 171, 1, 6, '944-478-228', 2, '2016-10-19 09:06:37', '2016-10-19 09:06:37', NULL),
(867, 506, 1, 62, '476-769-044', 2, '2016-10-19 18:27:46', '2016-10-19 18:27:46', NULL),
(868, 845, 1, 105, '497-122-741', 2, '2016-10-25 11:03:28', '2016-10-25 11:03:28', NULL),
(869, 88, 1, 81, '415-096-712', 2, '2016-10-25 12:56:24', '2016-10-25 12:56:24', NULL),
(870, 524, 1, 49, '580-317-539', 2, '2016-10-25 13:31:46', '2016-10-25 13:31:46', NULL),
(871, 524, 1, 96, '312-148-232', 2, '2016-10-25 14:18:52', '2016-10-25 14:18:52', NULL),
(872, 848, 1, 49, '756-142-523', 2, '2016-10-26 11:35:46', '2016-10-26 11:35:46', NULL),
(873, 22, 1, 104, '648-028-381', 2, '2016-10-27 14:08:56', '2016-10-27 14:08:56', NULL),
(874, 22, 1, 103, '781-377-971', 2, '2016-10-27 14:23:06', '2016-10-27 14:23:06', NULL),
(875, 22, 1, 103, '781-377-971', 2, '2016-10-27 14:23:06', '2016-10-27 14:23:06', NULL),
(876, 859, 1, 104, '639-590-458', 2, '2016-10-28 09:01:05', '2016-10-28 09:01:05', NULL),
(877, 859, 1, 101, '220-300-548', 2, '2016-10-28 09:01:57', '2016-10-28 09:01:57', NULL),
(878, 859, 1, 96, '674-061-759', 2, '2016-10-28 09:18:06', '2016-10-28 09:18:06', NULL),
(879, 859, 1, 81, '151-915-766', 2, '2016-10-28 09:31:16', '2016-10-28 09:31:16', NULL),
(880, 859, 1, 104, '503-797-341', 2, '2016-10-28 09:35:46', '2016-10-28 09:35:46', NULL),
(881, 859, 1, 103, '511-028-324', 2, '2016-10-28 09:43:03', '2016-10-28 09:43:03', NULL),
(882, 859, 1, 16, '679-584-118', 2, '2016-10-28 09:54:40', '2016-10-28 09:54:40', NULL),
(883, 860, 1, 92, '408-348-331', 2, '2016-10-28 10:31:06', '2016-10-28 11:03:02', '2016-10-28 11:03:02'),
(884, 860, 1, 104, '019-774-524', 2, '2016-10-28 10:44:30', '2016-10-28 11:02:48', '2016-10-28 11:02:48'),
(885, 860, 1, 82, '643-987-191', 2, '2016-10-28 10:57:50', '2016-10-28 11:02:34', '2016-10-28 11:02:34'),
(886, 859, 1, 96, '587-943-924', 2, '2016-10-28 11:58:23', '2016-10-28 11:58:23', NULL),
(887, 862, 1, 107, '940-177-972', 2, '2016-10-28 13:37:29', '2016-10-28 13:37:29', NULL),
(888, 863, 1, 107, '316-527-007', 2, '2016-10-28 17:07:00', '2016-10-28 17:07:00', NULL),
(889, 864, 1, 107, '288-562-072', 2, '2016-10-28 17:27:29', '2016-10-28 17:27:29', NULL),
(890, 865, 1, 107, '913-680-842', 2, '2016-10-28 17:30:00', '2016-10-28 17:30:00', NULL),
(891, 866, 1, 107, '950-033-113', 2, '2016-10-28 20:05:25', '2016-10-28 20:05:25', NULL),
(892, 586, 1, 107, '438-963-640', 2, '2016-10-28 20:36:55', '2016-10-28 20:36:55', NULL),
(893, 859, 1, 82, '266-428-218', 2, '2016-10-31 08:26:40', '2016-10-31 08:26:40', NULL),
(894, 859, 1, 75, '290-505-522', 2, '2016-10-31 08:26:48', '2016-10-31 08:26:48', NULL),
(895, 859, 1, 64, '410-631-834', 2, '2016-10-31 08:30:05', '2016-10-31 08:30:05', NULL),
(896, 859, 1, 65, '994-429-263', 2, '2016-10-31 08:30:10', '2016-10-31 08:30:10', NULL),
(897, 859, 1, 96, '227-940-378', 2, '2016-10-31 08:36:04', '2016-10-31 08:36:04', NULL),
(898, 859, 1, 35, '101-157-906', 2, '2016-10-31 08:38:29', '2016-10-31 08:38:29', NULL),
(899, 859, 1, 82, '515-872-289', 2, '2016-10-31 09:07:05', '2016-10-31 09:07:05', NULL),
(900, 859, 1, 81, '813-629-752', 2, '2016-10-31 09:27:37', '2016-10-31 09:27:37', NULL),
(901, 859, 1, 79, '008-443-802', 2, '2016-10-31 09:45:15', '2016-10-31 09:45:15', NULL),
(902, 859, 1, 99, '086-959-476', 2, '2016-10-31 10:39:43', '2016-10-31 10:39:43', NULL),
(903, 859, 1, 17, '578-103-796', 2, '2016-10-31 10:55:39', '2016-10-31 10:55:39', NULL),
(904, 88, 1, 116, '610-533-954', 2, '2016-11-01 10:18:14', '2016-11-01 10:18:14', NULL),
(905, 88, 1, 112, '824-372-543', 2, '2016-11-01 10:20:34', '2016-11-01 10:20:34', NULL),
(906, 524, 1, 63, '100-397-625', 2, '2016-11-01 11:42:04', '2016-11-01 11:42:04', NULL),
(907, 524, 1, 116, '542-871-364', 2, '2016-11-01 11:50:56', '2016-11-01 11:50:56', NULL),
(908, 816, 1, 118, '454-809-378', 2, '2016-11-02 00:04:56', '2016-11-02 00:04:56', NULL),
(909, 816, 1, 117, '207-471-459', 2, '2016-11-02 00:06:12', '2016-11-02 00:06:12', NULL),
(910, 816, 1, 110, '758-775-272', 2, '2016-11-02 00:08:06', '2016-11-02 00:08:06', NULL),
(911, 859, 1, 112, '366-561-451', 2, '2016-11-02 07:47:53', '2016-11-02 07:47:53', NULL),
(912, 859, 1, 96, '533-370-086', 2, '2016-11-02 08:47:22', '2016-11-02 08:47:22', NULL),
(913, 859, 1, 94, '509-181-362', 2, '2016-11-02 15:56:57', '2016-11-02 15:56:57', NULL),
(914, 22, 1, 118, '542-402-316', 2, '2016-11-03 13:05:39', '2016-11-03 13:05:39', NULL),
(915, 274, 1, 63, '459-288-169', 2, '2016-11-03 17:19:29', '2016-11-03 17:19:29', NULL),
(916, 274, 1, 62, '537-055-785', 2, '2016-11-03 17:19:46', '2016-11-03 17:19:46', NULL),
(917, 274, 1, 36, '610-181-217', 2, '2016-11-03 17:19:57', '2016-11-03 17:19:57', NULL),
(918, 859, 1, 117, '227-471-936', 2, '2016-11-04 12:06:51', '2016-11-04 12:06:51', NULL),
(919, 876, 1, 115, '980-008-094', 2, '2016-11-04 12:34:03', '2016-11-04 12:34:03', NULL),
(920, 876, 1, 118, '805-026-916', 2, '2016-11-04 12:41:44', '2016-11-04 12:41:44', NULL),
(921, 859, 1, 17, '891-965-300', 2, '2016-11-04 13:12:25', '2016-11-04 13:12:25', NULL),
(922, 220, 1, 96, '299-987-465', 2, '2016-11-04 13:20:17', '2016-11-04 13:20:17', NULL),
(923, 220, 1, 96, '299-987-465', 2, '2016-11-04 13:20:18', '2016-11-04 13:20:18', NULL),
(924, 859, 1, 94, '841-051-028', 2, '2016-11-04 13:25:12', '2016-11-04 13:25:12', NULL),
(925, 859, 1, 95, '134-750-931', 2, '2016-11-04 13:25:24', '2016-11-04 13:25:24', NULL),
(926, 859, 1, 96, '807-034-477', 2, '2016-11-04 13:25:34', '2016-11-04 13:25:34', NULL),
(927, 859, 1, 118, '182-042-714', 2, '2016-11-04 13:40:25', '2016-11-04 13:40:25', NULL),
(928, 859, 1, 116, '656-277-667', 2, '2016-11-04 13:40:38', '2016-11-04 13:40:38', NULL),
(929, 859, 1, 116, '397-244-241', 2, '2016-11-04 13:41:04', '2016-11-04 13:41:04', NULL),
(930, 859, 1, 115, '842-294-422', 2, '2016-11-04 13:41:12', '2016-11-04 13:41:12', NULL),
(931, 859, 1, 114, '643-663-445', 2, '2016-11-04 13:41:19', '2016-11-04 13:41:19', NULL),
(932, 859, 1, 113, '384-747-882', 2, '2016-11-04 13:42:01', '2016-11-04 13:42:01', NULL),
(933, 859, 1, 112, '036-394-219', 2, '2016-11-04 13:42:07', '2016-11-04 13:42:07', NULL),
(934, 859, 1, 111, '203-928-006', 2, '2016-11-04 13:42:14', '2016-11-04 13:42:14', NULL),
(935, 859, 1, 105, '329-237-122', 2, '2016-11-04 13:54:08', '2016-11-04 13:54:08', NULL),
(936, 859, 1, 58, '731-337-457', 2, '2016-11-04 13:54:22', '2016-11-04 13:54:22', NULL),
(937, 859, 1, 108, '235-827-671', 2, '2016-11-04 13:54:29', '2016-11-04 13:54:29', NULL),
(938, 859, 1, 109, '691-940-903', 2, '2016-11-04 13:54:37', '2016-11-04 13:54:37', NULL),
(939, 859, 1, 110, '847-083-269', 2, '2016-11-04 13:54:46', '2016-11-04 13:54:46', NULL),
(940, 859, 1, 119, '922-670-183', 2, '2016-11-04 13:54:54', '2016-11-04 13:54:54', NULL),
(941, 859, 1, 105, '650-521-880', 2, '2016-11-04 13:55:34', '2016-11-04 13:55:34', NULL),
(942, 220, 1, 95, '516-260-698', 2, '2016-11-04 14:00:11', '2016-11-04 14:00:11', NULL),
(943, 885, 1, 110, '021-749-121', 2, '2016-11-06 06:29:12', '2016-11-06 06:29:12', NULL),
(944, 120, 1, 118, '187-825-932', 2, '2016-11-07 10:47:08', '2016-11-07 10:47:08', NULL),
(945, 893, 1, 110, '886-719-464', 2, '2016-11-07 12:14:35', '2016-11-07 12:14:35', NULL),
(946, 75, 1, 118, '671-343-134', 2, '2016-11-07 12:26:04', '2016-11-07 12:26:04', NULL),
(947, 894, 1, 118, '695-926-767', 2, '2016-11-07 12:55:09', '2016-11-07 12:55:09', NULL),
(948, 874, 1, 120, '062-305-653', 2, '2016-11-08 14:48:31', '2016-11-08 14:48:31', NULL),
(949, 309, 1, 118, '153-795-445', 2, '2016-11-09 09:38:47', '2016-11-09 09:38:47', NULL),
(950, 309, 1, 17, '668-078-490', 2, '2016-11-09 09:42:32', '2016-11-09 09:42:32', NULL),
(951, 4, 1, 120, '137-328-927', 2, '2016-11-09 10:34:02', '2016-11-09 10:34:02', NULL),
(952, 309, 1, 120, '918-465-822', 2, '2016-11-09 13:46:00', '2016-11-09 13:46:00', NULL),
(953, 859, 1, 113, '782-602-573', 2, '2016-11-10 08:39:32', '2016-11-10 08:39:32', NULL),
(954, 859, 1, 120, '431-686-066', 2, '2016-11-10 09:12:13', '2016-11-10 09:12:13', NULL),
(955, 859, 1, 119, '219-290-755', 2, '2016-11-10 09:20:57', '2016-11-10 09:20:57', NULL),
(956, 220, 1, 117, '540-939-802', 2, '2016-11-10 10:29:59', '2016-11-10 10:29:59', NULL),
(957, 220, 1, 23, '615-574-772', 2, '2016-11-10 10:49:23', '2016-11-10 10:49:23', NULL),
(958, 894, 1, 120, '578-728-938', 2, '2016-11-10 12:28:19', '2016-11-10 12:28:19', NULL),
(959, 901, 1, 6, '128-435-272', 2, '2016-11-10 13:41:46', '2016-11-10 13:41:46', NULL),
(960, 901, 1, 120, '701-535-542', 2, '2016-11-10 13:42:02', '2016-11-10 13:42:02', NULL),
(961, 902, 1, 116, '304-896-796', 2, '2016-11-10 14:02:53', '2016-11-10 14:02:53', NULL),
(962, 902, 1, 116, '914-853-693', 2, '2016-11-10 14:05:12', '2016-11-10 14:05:12', NULL),
(963, 75, 1, 120, '648-732-594', 2, '2016-11-10 15:51:05', '2016-11-10 15:51:05', NULL),
(964, 816, 1, 121, '669-189-841', 2, '2016-11-10 16:45:34', '2016-11-10 16:45:34', NULL),
(965, 591, 1, 121, '744-870-691', 2, '2016-11-16 11:22:52', '2016-11-16 11:22:52', NULL),
(966, 904, 1, 121, '435-877-065', 2, '2016-11-17 17:14:52', '2016-11-17 17:14:52', NULL),
(967, 816, 1, 122, '130-786-065', 2, '2016-11-18 13:36:11', '2016-11-18 13:36:11', NULL),
(968, 4, 1, 122, '185-949-737', 2, '2016-11-18 13:38:03', '2016-11-18 13:38:03', NULL),
(969, 816, 1, 123, '494-710-270', 2, '2016-11-18 14:18:49', '2016-11-18 14:18:49', NULL),
(970, 912, 1, 120, '571-354-502', 2, '2016-11-19 01:58:22', '2016-11-19 01:58:22', NULL),
(971, 912, 1, 63, '114-393-950', 2, '2016-11-19 02:07:03', '2016-11-19 02:07:03', NULL),
(972, 912, 1, 36, '476-780-540', 2, '2016-11-19 02:10:03', '2016-11-19 02:10:03', NULL),
(973, 912, 1, 36, '476-780-540', 2, '2016-11-19 02:10:03', '2016-11-19 02:10:03', NULL),
(974, 88, 1, 123, '384-732-114', 2, '2016-11-21 16:51:54', '2016-11-21 16:51:54', NULL),
(975, 904, 1, 123, '282-403-121', 2, '2016-11-21 17:31:36', '2016-11-21 17:31:36', NULL),
(976, 22, 1, 123, '607-066-134', 2, '2016-11-22 14:31:59', '2016-11-22 14:31:59', NULL),
(977, 606, 1, 6, '809-466-473', 2, '2016-11-22 22:18:24', '2016-11-22 22:18:24', NULL),
(978, 606, 1, 62, '107-736-824', 2, '2016-11-22 22:21:25', '2016-11-22 22:21:25', NULL),
(979, 606, 1, 63, '806-024-104', 2, '2016-11-22 22:21:34', '2016-11-22 22:21:34', NULL),
(980, 922, 1, 108, '267-610-501', 2, '2016-11-23 16:15:06', '2016-11-23 16:15:06', NULL),
(981, 75, 1, 124, '962-866-454', 2, '2016-11-30 12:38:27', '2016-11-30 12:38:27', NULL),
(982, 816, 1, 124, '593-048-161', 2, '2016-11-30 17:11:36', '2016-11-30 17:11:36', NULL),
(983, 816, 1, 126, '073-329-419', 2, '2016-11-30 17:47:47', '2016-11-30 17:47:47', NULL),
(984, 75, 1, 127, '271-098-578', 2, '2016-12-01 11:46:24', '2016-12-01 11:46:24', NULL),
(985, 740, 1, 1, '472-369-622', 2, '2016-12-07 11:33:22', '2016-12-07 13:08:54', '2016-12-07 13:08:54'),
(986, 740, 1, 1, '274-490-131', 2, '2016-12-07 13:40:36', '2016-12-15 15:20:51', '2016-12-15 15:20:51'),
(987, 740, 1, 22, '851-974-943', 2, '2016-12-07 13:41:54', '2016-12-15 15:21:28', '2016-12-15 15:21:28'),
(988, 740, 1, 26, '015-149-932', 2, '2016-12-07 15:21:21', '2016-12-15 15:20:55', '2016-12-15 15:20:55'),
(989, 740, 1, 32, '879-937-716', 2, '2016-12-07 15:29:50', '2016-12-07 15:29:50', NULL),
(990, 740, 1, 24, '270-383-128', 2, '2016-12-07 16:48:39', '2016-12-08 09:35:20', '2016-12-08 09:35:20'),
(991, 740, 1, 31, '032-454-528', 2, '2016-12-07 16:48:59', '2016-12-08 09:35:27', '2016-12-08 09:35:27'),
(992, 740, 1, 2, '301-784-684', 2, '2016-12-07 16:56:58', '2016-12-08 09:35:12', '2016-12-08 09:35:12'),
(993, 740, 1, 33, '408-347-656', 2, '2016-12-07 17:15:51', '2016-12-15 15:20:59', '2016-12-15 15:20:59'),
(994, 952, 1, 1, '155-346-791', 2, '2016-12-07 17:38:19', '2016-12-08 17:40:46', '2016-12-08 17:40:46'),
(995, 740, 1, 101, '624-982-776', 2, '2016-12-08 11:46:18', '2016-12-08 11:46:18', NULL),
(996, 740, 1, 31, '138-797-201', 2, '2016-12-08 11:47:31', '2016-12-15 15:21:03', '2016-12-15 15:21:03'),
(997, 740, 1, 4, '198-917-629', 2, '2016-12-08 11:47:40', '2016-12-15 15:21:06', '2016-12-15 15:21:06'),
(998, 952, 1, 6, '269-206-215', 2, '2016-12-08 17:40:13', '2016-12-08 17:40:46', '2016-12-08 17:40:46'),
(999, 952, 1, 1, '480-752-393', 2, '2016-12-08 17:40:56', '2016-12-08 17:40:56', NULL),
(1000, 952, 1, 35, '899-401-537', 2, '2016-12-08 17:41:10', '2016-12-08 17:41:10', NULL),
(1001, 88, 1, 1, '886-021-397', 2, '2016-12-08 23:00:54', '2016-12-08 23:00:54', NULL),
(1002, 88, 1, 2, '683-801-530', 2, '2016-12-08 23:01:12', '2016-12-13 16:43:21', '2016-12-13 16:43:21'),
(1003, 88, 1, 4, '995-524-007', 2, '2016-12-08 23:03:10', '2016-12-13 16:43:09', '2016-12-13 16:43:09'),
(1004, 740, 1, 23, '171-108-939', 2, '2016-12-09 09:35:56', '2016-12-15 15:21:10', '2016-12-15 15:21:10'),
(1005, 740, 1, 17, '336-109-632', 2, '2016-12-12 15:13:34', '2016-12-12 15:13:34', NULL),
(1006, 740, 1, 69, '845-951-857', 2, '2016-12-12 15:20:35', '2016-12-15 15:19:17', '2016-12-15 15:19:17'),
(1007, 952, 1, 4, '349-374-149', 2, '2016-12-12 15:42:45', '2016-12-12 15:42:45', NULL),
(1008, 952, 1, 5, '808-182-037', 2, '2016-12-12 15:43:16', '2016-12-12 15:43:16', NULL),
(1009, 952, 1, 17, '576-613-734', 2, '2016-12-12 15:43:44', '2016-12-12 15:43:44', NULL),
(1010, 952, 1, 24, '343-264-932', 2, '2016-12-12 15:43:55', '2016-12-12 15:43:55', NULL),
(1011, 952, 1, 27, '092-044-411', 2, '2016-12-12 15:43:59', '2016-12-12 15:43:59', NULL),
(1012, 20, 1, 26, '415-509-337', 2, '2016-12-15 10:43:04', '2016-12-15 10:43:04', NULL),
(1013, 740, 1, 2, '062-524-395', 2, '2016-12-15 15:19:56', '2016-12-15 16:34:11', '2016-12-15 16:34:11'),
(1014, 88, 1, 17, '664-187-505', 2, '2016-12-15 18:08:07', '2016-12-15 18:08:07', NULL),
(1015, 18, 1, 1, '189-717-812', 2, '2016-12-16 09:49:57', '2016-12-16 10:09:37', '2016-12-16 10:09:37'),
(1016, 18, 1, 17, '619-580-752', 2, '2016-12-16 10:09:01', '2016-12-16 10:09:01', NULL),
(1017, 18, 1, 1, '632-485-141', 2, '2016-12-16 10:09:45', '2016-12-16 10:09:45', NULL),
(1018, 5, 1, 103, '664-598-283', 2, '2016-12-16 10:25:50', '2016-12-16 10:25:50', NULL),
(1019, 88, 2, 1, '704-135-990', 2, '2016-12-16 15:34:47', '2016-12-16 15:34:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Township`
--

CREATE TABLE IF NOT EXISTS `Township` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Township`
--

INSERT INTO `Township` (`id`, `name`, `lat`, `lng`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ahlone', '16.783093291113005', '96.12885833710936', '2016-03-28 18:16:19', '2016-03-29 01:59:38', NULL),
(2, 'Bahan', '16.814358350245598', '96.15746885158694', '2016-03-28 18:17:57', '2016-03-28 21:52:59', NULL),
(3, 'Kyauktada', '16.774409546269684', '96.16232161802975', '2016-03-28 18:22:47', '2016-03-29 02:00:15', NULL),
(4, 'Kyeemyindaing', '16.80902819222963', '96.12216329644775', '2016-03-28 18:24:06', '2016-03-29 02:01:00', NULL),
(5, 'Lanmadaw', '16.780498112527116', '96.14419246569832', '2016-03-28 18:24:50', '2016-03-29 02:01:19', NULL),
(6, 'Latha', '16.778081823285174', '96.1509437645874', '2016-03-28 18:25:31', '2016-03-29 02:01:32', NULL),
(7, 'Pabedan', '16.7760326', '96.1516678', '2016-03-28 18:26:24', '2016-03-28 18:26:24', NULL),
(8, 'Sanchaung', '16.806296764682514', '96.13405655952147', '2016-03-28 18:27:14', '2016-04-17 20:49:59', NULL),
(9, 'Botahtaung', '16.899727110617103', '96.05964378999022', '2016-03-28 18:28:02', '2016-07-29 11:16:33', NULL),
(10, 'Seikkan, Dagon', '16.77182253890538', '96.14870530444341', '2016-03-28 18:29:30', '2016-04-17 20:53:43', NULL),
(11, 'Dagon Myothit(East)', '16.923943390909912', '96.22453540468746', '2016-03-28 18:30:21', '2016-03-28 21:59:32', NULL),
(12, 'Mingalartaungnyunt', '16.7940612', '96.1385457', '2016-03-28 18:31:46', '2016-03-28 18:31:46', NULL),
(13, 'Dagon Myothit(North)', '16.8863243', '96.1217423', '2016-03-28 18:32:25', '2016-03-28 18:32:25', NULL),
(14, 'North Okkalapa', '16.901217', '96.1246412', '2016-03-28 18:33:24', '2016-03-28 18:33:24', NULL),
(15, 'Pazundaung', '16.775991297448083', '96.17381742543944', '2016-03-28 18:34:02', '2016-03-28 21:52:08', NULL),
(16, 'Dagon Myothit(South)', '16.8911462', '96.2083026', '2016-03-28 18:35:12', '2016-03-28 18:35:12', NULL),
(17, 'South Okkalapa', '16.8491092', '96.1654757', '2016-03-28 18:35:44', '2016-03-28 18:35:44', NULL),
(18, 'Thingangyun', '16.8299756', '96.1622029', '2016-03-28 18:36:48', '2016-03-28 18:36:48', NULL),
(19, 'Dala', '16.753382550478666', '96.14723615683602', '2016-03-28 18:37:58', '2016-03-28 21:50:37', NULL),
(20, 'Dawbon', '16.784541244627174', '96.18542046464836', '2016-03-28 18:38:17', '2016-03-28 21:58:40', NULL),
(21, 'Seikkan', '16.767962259367092', '96.1642841599853', '2016-03-28 18:39:13', '2016-04-17 20:51:39', NULL),
(22, 'Seikgyikanaungto', '16.756406177946605', '96.09709932194824', '2016-03-28 18:40:18', '2016-04-17 20:51:04', NULL),
(23, 'Tamwe', '16.823377749243893', '96.17841471284191', '2016-03-28 18:43:49', '2016-03-28 21:51:53', NULL),
(24, 'Thaketa', '16.7973423', '96.1781674', '2016-03-28 18:44:24', '2016-03-28 18:44:24', NULL),
(25, 'Yankin', '16.83464593983054', '96.16683284458009', '2016-03-28 18:45:04', '2016-03-28 22:06:05', NULL),
(26, 'Thanlyin', '16.75515951598059', '96.2477008837891', '2016-03-28 18:45:43', '2016-03-28 21:50:59', NULL),
(27, 'Insein', '16.885357207889673', '96.10716400292972', '2016-03-28 18:46:15', '2016-03-28 22:04:13', NULL),
(28, 'Hlaing', '16.849342221008197', '96.12065589113763', '2016-03-28 18:46:51', '2016-03-28 22:01:09', NULL),
(29, 'Hlaingtharya', '16.898084621714727', '96.0699434726074', '2016-03-28 18:47:23', '2016-07-29 11:16:39', NULL),
(30, 'Kamaryut', '16.82742109865292', '96.1262993646485', '2016-03-28 18:47:54', '2016-03-28 22:04:50', NULL),
(31, 'Mayangone', '16.8658965', '96.1019765', '2016-03-28 18:48:22', '2016-03-28 18:48:22', NULL),
(32, 'Mingaladon', '16.9870346', '96.0644933', '2016-03-28 18:48:54', '2016-03-28 18:48:54', NULL),
(33, 'Shwephythar', '16.9786009', '96.0417073', '2016-03-28 18:50:39', '2016-03-28 18:50:39', NULL),
(34, 'Dagon Myothit(Seikkan)', '16.9201454', '96.2172647', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(35, 'Hmawbi', '17.1276797', '95.9858959', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(36, 'Hlegu', '17.0969853', '96.197941', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(37, 'Taikkyi', '17.3145861', '95.945792', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(38, 'Htantabin', '17.017578', '95.9731077', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(39, 'Kyauktan', '16.635112', '96.315261', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(40, 'Thongwa', '16.7656711', '96.5154717', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(41, 'Kayan', '16.9007307', '96.5427015', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(42, 'Twantay', '16.7092041', '95.921223', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(43, 'Kawhmu', '16.5366932', '96.0285108', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(44, 'Kunggyangon', '16.4344311', '95.9498255', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(45, 'Cocokyun', '16.3095972', '95.9381823', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL),
(46, 'Dagon', '16.8979469', '96.1896272', '2016-03-28 18:16:19', '2016-03-28 18:16:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `township_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL COMMENT 'date of birth',
  `activate_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'for first time registration to activate',
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=956 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `name`, `email`, `password`, `api_token`, `phone`, `profile_image`, `address`, `township_id`, `dob`, `activate_code`, `facebook_id`, `facebook_token`, `twitter_id`, `twitter_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '高橋恒平', 'armn7guc.supbs.3@softbank.ne.jp', NULL, '8xiapIXmudDtovdYVF1Vlc0YSzxDbJeKUKeCZGcg', NULL, 'https://graph.facebook.com/v2.6/921968807928859/picture?width=400&height=400', NULL, NULL, NULL, '1', '921968807928859', 'EAAPMa6cPYRkBAANZA6RwxsKK8R9AqVZA90qiSjX8QIrteNNepflGpacYu8jOWt4lgCdbiThDGigmdfBH7dg9OtZBkHnVCozbsBBR2jqE5SoZBj27wFvSVyHOYGfSkpvFPTaRVMB7CUvORfs11gqj78E2ZCf7PgzFirU4s5pkCPAZDZD', NULL, NULL, 'h7K7RGxcHVI7GMir3YMtDpqXevtH7o6Qu46IhWmOnkrtopV64Aub3el2s0hS', '2016-08-26 05:55:20', '2016-12-01 03:04:02', NULL),
(4, 'あきら@白猫垢趣味垢', NULL, NULL, 'Az62LsR7gRph7AhfKA9JXdtiTQw1TOSj7oGT5mNS', NULL, 'https://graph.facebook.com/v2.6/126252431193538/picture?width=400&height=400', NULL, NULL, NULL, '1', '126252431193538', 'EAAPMa6cPYRkBANcJChCKez3NddbZAboRDmsoiNEHnbEbjQZAf2XO4xvZBrR9nZCRgfoXKzrOpmg0USZCBCZC89lnf8htMNMVL2SnAOujDsvZAXZCfPSS92MiTFfbYNdVafIiQCoYh6lIckQlIcygeDCnAZBw1I8dwS5xUCkuTRYddBQZDZD', '612262460', NULL, 'zGpK2pTRfrOX9RfCkmhlXocsdlRMtQzUKY6xIrePTjEF8Kx30SgPRlCyDfwF', '2016-08-26 06:04:59', '2016-11-29 10:51:27', NULL),
(5, 'Rooking Rooking', 'takahashi@rooking.co.jp', '$2y$10$hkMyK5LPjwdtM0thGCoPdehwixY3ZAenVYMgNwE5MMZ9H0XRz5HEe', 'w23vHEdx0FlToZCee1fTgAItG3CTjQd911ea9sNPzDYsOvbANh3DYXOJ8nHB', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/10354686_10150004552801856_220367501106153455_n.jpg?oh=f14511471d0197d2b40888cab19927de&oe=58C30250', 'JAPAN', 1, '2016-08-01', '1', '113195325801458', 'f14511471d0197d2b40888cab19927de', NULL, NULL, 'f0AFRZydIlW0Fa6ZmmIITwNqiDJRXKQtJ8RkqUVzE4wXM3fwvAxbVAjgoXEA', '2016-08-26 12:35:59', '2016-12-08 16:45:01', NULL),
(6, 'Akira Udagawa', 'jac-road-everlasting@ezweb.ne.jp', NULL, 'u2CpyPj1UVjNJoL1quKq7cs8NHYnntlFWWtzQ5bM', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/546116_366903453385237_1560370493_n.jpg?oh=f4b43e3e64edcf2d3cae3b105b825620&oe=5892A8E9', NULL, NULL, NULL, '1', '1077381449004097', 'f4b43e3e64edcf2d3cae3b105b825620', NULL, NULL, 'cP0SDYAY2CCwdD56PTT2x2A9LPQltPPGFLYfAcVc1LkI06E8O3mjEwQBzxhX', '2016-08-26 06:13:08', '2016-10-26 16:54:39', NULL),
(7, 'AKIRA', 'udagawa@rooking.co.jp', '$2y$10$5HjzStoesjGtfbXYCEqvausiE4bMO1mABaPAFUMZOcgRkZ8XbQMf6', '1BlhhTdhL0I7Dx2ForKhYYGi5izw0TJXWeBtyQPagFlJwDKdwinM4tryoVee', '', 'thumb_124421403551.jpg', '', 3, '1985-05-20', '1', NULL, NULL, NULL, NULL, 'v9TuJttTfzzIlqO4yOYX9briChiuoTX4N8KH5kXxxjqLZlAOznIh8IX8OGCi', '2016-08-26 12:52:55', '2016-08-31 08:47:24', NULL),
(8, 'AKIRA', NULL, '$2y$10$7T07iuR8A9MBP0Kvizma.Ow3pAHCFDBB.oTIKLV75rbeGHHLJafJm', '8iptijBdNKTm47hVRp8sF8YaRtrzzvbEVRGgxrRPmvW7ifrY6H7H4zTVVEv9', '08040095507', 'default_member.png', NULL, 1, '1985-05-20', '9538a04d6ac3d388e82fb51a93e6c8f8', NULL, NULL, NULL, NULL, NULL, '2016-08-26 12:57:41', '2016-08-26 12:57:41', NULL),
(9, 'Akira', 'udagawa+test@rooking.co.jp', '$2y$10$epXfgQrW31YOlzq5a3g5VOyJKlOP0yTmA0.9o3HyQe9X3Vv.SceOi', 'baeIaLWmcXjHzUuD7tfRlI7hhc4AfnzWf8Cp6b8v1g10MaRh3v4n2jDzwoip', NULL, 'default_member.png', NULL, 1, '1985-05-20', '6d301716119164479b07b9d71856f3bb', NULL, NULL, NULL, NULL, NULL, '2016-08-26 14:00:27', '2016-08-26 14:00:27', NULL),
(10, 'Maynaing', NULL, '$2y$10$KBFzpK.vrDFo37/tH2adIuUnz/eZOtHdk6EjMzugef/fYuWJhyCKq', 'JmAWH5RywchjErUGalc5kC1kcizBO7wq1nvzr2k6DCcnKTe0kqQqjKprkFxZ', '09262348275', 'default_member.png', NULL, 2, '1986-01-23', '1', NULL, NULL, NULL, NULL, '3HMtrk1x1fPwKXYajNlwHFUSRicc3k6S4Da5WFFV6yjCjZtokGpxtn4q2IfM', '2016-08-26 14:38:21', '2016-08-26 08:08:50', NULL),
(11, 'Thant Sin', 'media.thantsin2015@gmail.com', NULL, 'NyBATdU04sIwT5fjLJDir2LeEEDD9XXq4V8K9PmK', NULL, 'https://graph.facebook.com/v2.6/1643221205991136/picture?width=400&height=400', NULL, NULL, NULL, '1', '1643221205991136', 'EAAPMa6cPYRkBAHHItyAqhG1RaHZAL8F0SEmAQn4FqD4fQ3a7RhinWZA6LiZAuij2C50TybolSVJs2IhE2tktNVXVLURZBD0Dsb0sPDY7qw6UwjHxNetZAHhDZCn3aovyMCJfmrXbX9Wx2iLfJv8QfyoMIfyRdHDZB9BgGcYWNmynH0umueDhsAs', NULL, NULL, 'D93rwjxjIbkoZABzrJ6BozWBZWhIne3dWhiqlwRYmD6wEmsXCBwNDEte1hgx', '2016-08-26 08:43:41', '2016-09-01 22:13:02', NULL),
(13, 'Win Naing Tun', 'mrwin1992@gmail.com', '$2y$10$n.BeBi8ueP3R0oquXGZzlONCgmF4HfmFgaaIPG9Kiw4bzp1g70uE6', 'YzVxFm0NTLuAhDFe09PKfif0Z6AiauA8m3M0tG9rmF5RbjuhdkNiIdvWFqLI', NULL, 'default_member.png', NULL, 28, '1992-11-18', '1', NULL, NULL, NULL, NULL, '2Ktwbd3Y9eqG5Wfldh3LQCeA45KGSIzAnAcXsprSB2Zt2tw11gFiAkAXmk8K', '2016-08-26 17:28:21', '2016-10-04 15:51:11', NULL),
(14, 'Nilar Aung', 'nilaraung151@gmail.com', '$2y$10$N8IILyZzssFB5cGQ2GxWMuROo3zAf0Rk98LKyaISkxragunGGiar.', 'AveTCYhQPMgCbMmaI8ZuAro18QOV85QXE7JKfmI9uaS75BtcKhRWTo00eSKV', NULL, 'default_member.png', NULL, 1, '1992-04-04', '1', NULL, NULL, NULL, NULL, 'oApxhu2syyHY1rZpG0SV0s7w2TDQokfnH3nscC83xNokUv3ypvsg2ciiHmmQ', '2016-08-26 17:29:16', '2016-08-26 11:00:07', NULL),
(15, 'Thinzar Thu Zaw', 'redthawkaflower@gmail.com', '$2y$10$SXWgepClugeNykdx431gq.goOcarTqhbnKQwstKutJwTpGLLpccj6', 'rdxbiLG12XMt6N5uDMuLDoQBYkDzF95oiFDHXHSq', '09795748184', 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/14068187_617051601809718_7887303951812383962_n.jpg?oh=92035dd373ca04129c1fd4f47588931f&oe=587D48B8', NULL, 30, '1994-04-15', '1', '615912691923609', '92035dd373ca04129c1fd4f47588931f', NULL, NULL, 'ixMNtiBzykBDoQaGYuUc4Ii64Xk2xaDoHrJTHxzW2yyI2e5sVIVlfLkx0JdT', '2016-08-26 11:13:04', '2016-09-12 19:22:52', NULL),
(17, 'Aye Myat Mon', 'challenging89@gmail.com', '$2y$10$Z5jLHfCW4M7rls/det2pSexyeHePb7Nl3HEDCre5eMTsaw4qfyZ0a', 'VO9p3uEuYYyUt63woLu7f7k5JlNXTgjGTpOCQLK7', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13418903_1047118138656944_840047685026898407_n.jpg?oh=b25a3b81977c046509c456ed369e27a1&oe=58407F42', NULL, 31, '1989-03-19', '1', '1101568429878581', 'b25a3b81977c046509c456ed369e27a1', NULL, NULL, 'Vxz8xHokncyKG1DYeASBl4HuBaWh5FZBm4qJlmb6x8XCT9PGUNY9KxBIV59B', '2016-08-26 17:47:25', '2016-09-12 14:49:21', NULL),
(18, 'koolpon admin', 'cookpro.rooking@gmail.com', '$2y$10$ERpTDTXMuOR/osxvWxPQSOteVuVQJRo0LESQjVvNidqRE.FJNWkwq', 'OtpuZsphqrT9mEOMnoyXXiL45fCRRkvkbo1HEg70', NULL, 'https://graph.facebook.com/v2.8/330302967357479/picture?width=400&height=400', NULL, 9, '2016-08-26', '1', '330302967357479', 'EAAPMa6cPYRkBAGiKVCAZAO0P0nnzDyfCiYk9OFq49UyrZC3NvkHDV6JXv9iWdq1UshPafiP81SViO8u2CmqWXkKpl2ZAFjZADZB7ZBjjQDEO3LOF5LUrZB20cbZBV3TsFyK10GU4sKTpCzqXzbk2tSwIsrRhr21nvRcZD', NULL, NULL, 'woY4Y0xPfzzNsRGdg1rCv2TXYnmrJvvUb77erBm72mFR6jM4k3w4lKALc8PW', '2016-08-26 17:53:28', '2016-12-16 09:46:46', NULL),
(20, 'Wyne Phyu Cin', 'phyucinwyne@gmail.com', '$2y$10$IwX0aKSl7h5nzDBVpi3AgOTUGQ5gdumKgxynTlz.fwBtsjMasaB.S', 'lQtRQ72muFWhmPwkwb39TGeKwbq8yhJ240dnp6To', '09979206900', 'https://graph.facebook.com/1754078648164971/picture?type=large', NULL, 1, '1991-01-02', '1', '1754078648164971', 'c609ea4128a743c4ea9e9fb91dacc732', NULL, NULL, 'c9fmuTuy35GdarhnO1GXoSNOhktxJNmXkcm7bvP50zWowUwrwdplUmXqrURR', '2016-08-27 07:39:10', '2016-12-08 11:05:30', NULL),
(22, 'Zar Li', 'zarlithanwin@gmail.com', '$2y$10$beUJIZv3.2IKydA1U.TmTuRi5Ae24DoMSJ6o5to3gND8s9o4oeuFO', 'NR11IyGJ8Ropq9vOkxyKlofuVAaxZyClfLZ9kw68', '09975648057', 'https://graph.facebook.com/v2.6/10154007000927637/picture?width=400&height=400', NULL, 1, '2016-08-29', '1', '10154007000927637', 'EAAPMa6cPYRkBAHl5bRuZBhVPSvk2hA6wsZBlJzP7VGQBNktLcG0yReZAVV0Rf5gMfgPN2ZBeYZAeCbmyL8Mb2Va0n4GgIW8Ekj4P6689oSGDSBBwWAomKFXKh5NkpsGlPEanuOaxyas4aEphpXvRNR9Ps27KtfxkZD', NULL, NULL, 'pNOnSr1SV9CXNK49FnGvAfYTWX8rTuhWiWKld0QcbauaDgP7XAl3PCc0JMvV', '2016-08-29 09:50:58', '2016-10-10 10:19:07', NULL),
(24, 'Mary', NULL, '$2y$10$jJxOmvjIiq6lFwVjEECmZujX03.2qwOBYErcjYPWli/pxqKezr5BK', '368wvu3eYUBv2aciczr8g4VZeIsWC0oZ5J6DASkHYGnGxwBfIvHhGu3wxDt5', '09420097796', 'thumb_3460174727548.jpg', NULL, 30, '1990-09-09', '1', NULL, NULL, NULL, NULL, 'bvnBhaHUJ5NycqgZyUXoEVVHggZC8Ko93eySt1UVktp3StWTnGkuiGagnb7l', '2016-08-29 13:19:32', '2016-08-29 08:10:09', NULL),
(32, 'Win Mon Swe', 'winmonswe@aceplussolutions.com', '$2y$10$8MHhLETC/6ZUSVPevzfDxONgdXpSbaBa9S.IyEwUBPaCRyjH3GXLe', 'AKwmw5TqMA5agL31nu76UYFELcDAegexoqbAZrMhtvnZNFkPHHkzoSESsYSw', NULL, 'thumb_10759463364182.jpg', NULL, 25, '1988-07-23', '1', NULL, NULL, NULL, NULL, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36', NULL),
(33, 'Green', '', '$2y$10$1uFUm0oKLUqoFIn6XCbV8e618PENQ97zWjsqmX9tXnBvv5Wj60X/K', 'eWWEIaTt5MRUCR58568tkpP8i2GqKNNoFYjM0NKa5NAFEHCrjn4S6TBEt7Bn', '09252799882', 'thumb_1126047584943.jpg', 'address', 1, '1991-11-12', '1', NULL, NULL, NULL, NULL, 'FXojDBrxA8hF0XoTwYyTX0rnA2zmIls7PqDn87R0XlYdpXDxQ6oxZiuN9N7F', '2016-08-30 10:52:02', '2016-08-30 11:04:37', NULL),
(34, 'きよし KoKoa', 'everforhnin@gmail.com', NULL, '2B2jJ4A2oiVzV7464LIXVC00xtb52Noa18tW9gnA', NULL, 'https://graph.facebook.com/v2.6/521939034662179/picture?width=400&height=400', NULL, NULL, NULL, '1', '521939034662179', 'EAAPMa6cPYRkBAG7JYyoJM0EznXsKqdNegCSMcIY08Y12zZB8uhRlhSplTVp7FtlATXWMFVfnx3v0ZC3cFBb4Nl1zYEjPStY1Jr4ua5gVtIhBR6DTnqjCbHL6PELiP9RoWBk6LrT8khci4jHArgr4mKA0LdHkEZD', NULL, NULL, NULL, '2016-08-30 04:31:26', '2016-10-28 08:40:48', NULL),
(35, 'tezeth', NULL, NULL, 'PnrwvwAAAAAAwTPFAAABVt8FBYQ', NULL, 'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_400x400.png', NULL, NULL, NULL, '1', NULL, NULL, '3242328422', NULL, 'p8iAap2Oe4PHsoJmfG7TIHzRCGO51kfvryrV7hppaQu2GWc1Cp1IhhMF2W3x', '2016-08-30 04:41:10', '2016-08-31 05:14:28', NULL),
(38, 'Hau (Mary)', 'haudshwe@gmail.com', '$2y$10$2T2i65/QzoKTEv.XmhtTmuA056LMngd8S6RcOUJRfYI3cftolCBAi', 'bv2pBg8h0F8veCWLIsYXADEgXapMx44QEsvo4jtnzuXlpPKZnm1I5fUdF8s6', NULL, 'thumb_3619919211048.jpg', NULL, 30, '1990-09-09', '1', NULL, NULL, NULL, NULL, NULL, '2016-08-30 11:50:39', '2016-08-30 11:50:39', NULL),
(39, 'Tin Moe Lwin', 'tinmoelwin.tph21@gmail.com', NULL, '64Mq6J9XLV4HqIEsSizEBqbPNIUboNfN66G3ZE6J', NULL, 'https://graph.facebook.com/v2.6/1213210788709232/picture?width=400&height=400', NULL, NULL, NULL, '1', '1213210788709232', 'EAAPMa6cPYRkBANHsZCq9Q0ShIbwq9vf6dmEqSkg28Pzz1PLtcnkVXWxuE8OWPP72nywZCk4mCsfwyaNuLQRMEz8aMZAsgnrr7gDScvRg2Afga0ehXZCFSop4dXxpMyIls1wJg4EKgrobn636HYK38A9fWoiwhZAmGrbJkZBHZAnawZDZD', NULL, NULL, NULL, '2016-08-30 07:13:46', '2016-08-30 07:13:46', NULL),
(40, 'takahashi', 'takahashi+1@rooking.co.jp', '$2y$10$8s5IjBmRgd3dd7.qNzlALumCK6ygCLv0WEihRbdrvpT6RcYZCThTe', 'btLv9W53s9FjLgcQnMvJbCYeLDfPLOW6XLnddWmvt4hVFwTXfEQEaWxK3omI', '', 'thumb_5098347060691.jpg', 'Japan', 3, '1992-08-30', '1', NULL, NULL, NULL, NULL, 'fFKaeeesdff2voUv0gNK8KhhpsaZIogBpeKiaPjA7s9PhCwXLhcfqrAUQJDS', '2016-08-30 14:03:25', '2016-08-30 14:26:43', NULL),
(41, 'rooking', 'takahashi+010@rooking.co.jp', '$2y$10$GUen2cQdwjLoAltiOMQRru5.8QJO4ynw4h8BBaY0xbSfL9mB1skAS', 'WVFON7h5x0QFCSTczT8NZyj0rBq4nLAZroQyRnfUlOdjnrUu0LhWK4EgivfP', '', 'default_member.png', '', 2, '1989-08-30', '1', NULL, NULL, NULL, NULL, 'IgLo1zoM5xeH7cK2TKW9qejaxvarLrIlr5fB0vzoG6G4rgr6loly5GYxSPJP', '2016-08-30 14:30:06', '2016-08-30 14:31:27', NULL),
(42, 'rookingtest', 'takahashi+11@rooking.co.jp', '$2y$10$5nHc0AwyfKdQ1WHKx5nw9OZBMCL28WkW9tmCMSxG9gjLm3tGSFSfu', 'xOC7452OBZB3M3X5XcmugWogkZlOAZJ82iAPj35HzY9K9snfG6EfHxiFB8uY', '09012345678', 'thumb_74766743670082.jpg', 'Italy', 3, '1990-01-01', '1', NULL, NULL, NULL, NULL, 'y57Q6MUoNxuaqeGrmNEWmguLfc7fzBaMBj8CMtDtXG6OnNwda4tp79wTDVv2', '2016-08-30 14:33:03', '2016-09-02 11:13:20', NULL),
(43, 'hayase', 'hayase@rooking.co.jp', '$2y$10$ljgsK.mL53bCZDPYZW2WxOGJjlMFhWzAZdC12hTDLjCPmQ7/Z3DvW', 'ChxR5TTWkHQqEysUOM1PTRCaLZnNVErg6wCIi3yteMNa0W17pN07EQ8XCSn1', NULL, 'default_member.png', NULL, 1, '2016-08-30', '1', NULL, NULL, NULL, NULL, 'UekDTVrjGI8HupZbKx1FpXog90RrqNCZP1Tuq5uQfmYx7z19Q0mUSHG2fshA', '2016-08-30 14:59:25', '2016-08-30 08:47:06', NULL),
(70, 'Wyne Phyu Cin', 'wintphooag@gmail.com', '$2y$10$TOFdMe.uBLEgkAXTjxnhEOY4jZYgHcDjnfh05MPliks.6B24e44qu', 'UC7DDQAsavZIVAL5QaMLKMpfAdF5SlV5P2V0Qp3lIabG42GEC0Qlm5ODaj5n', NULL, 'thumb_2223575400778.jpg', NULL, 9, '1996-08-27', '1', NULL, NULL, NULL, NULL, 'M6GuTcQFf391OT5yBE2paqDMV0kwwejqq3gOhpq65aOr2C164UZ04UypDWhJ', '2016-08-31 03:16:20', '2016-08-31 03:56:42', NULL),
(73, 'Su Pyae Thandar', 'supyaeluna@gmail.com', NULL, 'nHLLWHimMglKFUDtDLOSZhPA1RidmF2OUejvPlU5', NULL, 'https://graph.facebook.com/v2.6/946490695460912/picture?width=400&height=400', NULL, NULL, NULL, '1', '946490695460912', 'EAAPMa6cPYRkBADRoAs6bFo3e9VMoNjsqH3e2MYGhzVurfeAUem2fWGebZCrkHzwpUjgycvTocYMGIRXvese9FnvC9pR6KWFjaxDxEqqLxM7VJve31xZCm72KsuomNZBNe6fymFfEjxhDRMlvGW8aPvTM0wdKkfXsWhRcnG89QZDZD', NULL, NULL, 'qfWuOb0ef6YTAGbXBDaHQSPm4oxz2rvMg2YUR7QWnbebz2EXtohzg1dIQqF1', '2016-08-31 03:16:57', '2016-08-31 04:26:06', NULL),
(74, 'Thirisandar Oo', 'thirisandaroo.tso@yahoo.com', NULL, 'XnQBjYWv0morPMdh8kP4ep42bPTK2KJeLq6xxdh7', NULL, 'https://graph.facebook.com/v2.6/1737375593179245/picture?width=400&height=400', NULL, NULL, NULL, '1', '1737375593179245', 'EAAPMa6cPYRkBANgMW80NX1ArEpSHaMshwdqRiyTPqtkxBLtZC8YRwnZBzZB0dqyCtcZBismdWLh3Upxm4oSw77eW6QZAyZAaVJoRwyw4n8VscdtZCQVEd6U4MGCeMXWkWDtbZBxpkvmLyKjnFk3bTyx9NvSX5Y2NNEOyOf7yOqG6JDhpwoS8ELvO', NULL, NULL, NULL, '2016-08-31 04:22:35', '2016-09-05 02:58:54', NULL),
(75, 'koolpon', 'koolpon@koolpon.com', '$2y$10$1won5BMfJ23o73VRIelLseTlQkjfqhA438GEnSUPl2zjH0uA1hOIm', 'qEldmYfvrX4teA71xdHYEfgVkJBIQInP8JW0NSyqUn3NpMUlMKiqjAmRB1km', '', 'https://graph.facebook.com/v2.6/272698916436189/picture?width=400&height=400', '2016-01-01', 1, '2016-01-01', '1', '272698916436189', 'EAAPMa6cPYRkBALMAPX9iXYLa3KMejguHP7XCJOMAcj6U7GAUfYzwH6n5DAmUUWhXlBoK16GAPqd5YRgNgPBvCnP3yYUqWnpORka8ZAotNWx3SlnL4SOQzxWNZCoTGLbDyt7wxbOeJCbIazA5FNn2LGhJPQb3wZD', NULL, NULL, 'll1mVOUlt0T8QhVnciQbWRMBI8fzypcE3rsjPUHo8EOxstKXlSMjXp15Wbp6', '2016-08-31 04:23:02', '2016-11-07 11:18:21', NULL),
(76, 'Thiri Soe', 'thirisoe911@gmail.com', NULL, '1xWC2yysB7wxfRybbNRPMt8l0jFxxeatklYiZgUe', NULL, 'https://graph.facebook.com/v2.6/1390157901013469/picture?width=400&height=400', NULL, NULL, NULL, '1', '1390157901013469', 'EAAPMa6cPYRkBAKEEKq9X1KAyXrrB8kUb3t3WyuYaRrQfTV9oSyTp2cDHcaxwee0TsEBEUjbGPiVZCDUyx2tqwtR2jOnQcliNXO34dUcoW7UyaE99aP8hDhKrgdWZCWQZB06BceO3CcStmGrxA5qZAZCv9o9ZBhv61HZB3knRMKCeBHPBuqL5P91', NULL, NULL, NULL, '2016-08-31 05:01:31', '2016-08-31 05:01:31', NULL),
(77, 'Thwin Zar Hein', 'tezeth@gmail.com', NULL, 'b4fabSsg2ON9XGd55XFR4vvHc8fL8Uzfvh34Ldhn', NULL, 'https://graph.facebook.com/v2.6/10154042241503795/picture?width=400&height=400', NULL, NULL, NULL, '1', '10154042241503795', 'EAAPMa6cPYRkBAE7Qb6z6uYaI0qv6uW2oretttTvZBmpXdA9ni55Sp4YoG9xXyWRbNZCbGz1nMGtcKsAxs8PZCfqpvZB1ZCO8C1DMlGy8QN45abRHZAEsj7k1PKrwCVDWg6FUBFkdXCVxZCDrQZCUoBlIWZBVkOUS79KUZD', NULL, NULL, 'ogz2QHuJ6zXVeE8Z0Zc4nCcitkHDiLvJU8f4wiKckQECSo0KgwcGpg28KlNE', '2016-08-31 05:22:56', '2016-10-07 03:45:08', NULL),
(78, 'ႊWutyikhine', NULL, '$2y$10$fvr0A08gN8ooLavf3lTeteTKrR5o2q7axDJoal4ZyKrYYQUQWL3se', 'YGEOXdOkGoMQRvmoFmECAKRytY4zKhVDBUTIOhMOX1XgiNTs9xPCgysuMAzq', '0943113517', 'default_member.png', NULL, 23, '1985-11-27', '1', NULL, NULL, NULL, NULL, 'ZlLbOujY3687aHcyk5cSb66WeX8a0CaQ1rFFCbXsJpiR6q6FRoxY71Xcu2hF', '2016-08-31 13:44:11', '2016-08-31 08:58:50', NULL),
(79, 'たかはし', NULL, '$2y$10$fgkP6IlpZ/WnQ9u0I.R5qOw6oAZ/XG0UCAPAIe.cgU0qqLw5QkfhW', 'iuYaoDi0MvFjQH2fX7V8hztJQOEfVwhcw1nUI3X4TpETV7Oax21scRmdGJIb', '0312345678', 'default_member.png', 'japan', 45, '2016-08-09', '0fe46ab155c0766beedf34424155d989', NULL, NULL, NULL, NULL, NULL, '2016-08-31 13:58:47', '2016-08-31 13:58:47', NULL),
(80, 'Htet Su Wai', 'htetsuuwai@gmail.com', '$2y$10$xyrPYZl.AfJZeOSPE4f6e.ARIXi95T01WQxeHibJWranmrS82Pkyi', '7o0H6FcmgH9NBgeYB4cGy7TF8nNm6wtziOsZjlLugVazpgDdjSC6pyI4OFeX', '', 'thumb_9853922568961.jpg', 'Tarmwe', 23, '1994-07-27', 'e25aa7f74d5f501362070c4ab3ba763c', NULL, NULL, NULL, NULL, NULL, '2016-08-31 13:58:47', '2016-08-31 14:15:05', NULL),
(81, 'Yinmin Thu', 'pymthu90@gmail.com', NULL, 'hf2WP1prVegr9Os8tBjiLlW0LzW32KxOT5di4wPr', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12246655_521407371374302_5056447360386855416_n.jpg?oh=f7b60f6424745ce6ca8589308209f933&oe=584B2142', NULL, NULL, NULL, '1', '643692352479136', 'f7b60f6424745ce6ca8589308209f933', NULL, NULL, 'ZiEJd935cbRCKOZgnqfqQXY0o4u8G1x3sNvsQDYiRbvjbqixTbkV9n9TvKNi', '2016-08-31 08:05:55', '2016-09-02 11:09:58', NULL),
(82, 'Pyae Phyo Aung', NULL, '$2y$10$Lmjydc/OhgqkcX2BpllJZOYjTUEqachMadgdAD/rtZUJRjNUHSGce', 'R7ifb5lierVYxAi0Sve7dcQh9PpW2aYYpWoUbEv08EfqxzlgCM8psKF5oToj', '09975086750', 'default_member.png', NULL, 28, '1993-03-11', 'ecc734d3ce0e2d469fd776aafaec6155', NULL, NULL, NULL, NULL, NULL, '2016-08-31 15:42:24', '2016-09-01 18:04:26', NULL),
(83, 'Yethu Aung', 'yethuaung54@gmail.com', NULL, 'VecwCjejELRMZKzFoEQpcFct8iM5CmxS7kTIa59s', NULL, 'https://graph.facebook.com/v2.6/1235849819800296/picture?width=400&height=400', NULL, NULL, NULL, '1', '1235849819800296', 'EAAPMa6cPYRkBANhZBEompKe9xF9NUZBx0sxBEmaRFBywcGBIoyADc8O0dJzpCHBLIeoZAnFpLXuobygH7WdDZAe9NYqGPwJMh00xqo1cNpBbZBmktQZCvOJqK50HTgQOYUF6q12MZCbuUpbWxoMgxAPrzd42yZCDZABT00iG6BLY8bAZDZD', NULL, NULL, NULL, '2016-08-31 09:41:44', '2016-08-31 09:41:44', NULL),
(84, 'Ange Kaung', 'emostorygirl@gmail.com', NULL, 'L4fPVXOGvs6TEWb7okvwsECSh3MiiMzDXw2vHfMz', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13315263_1183619321650885_90966194333686449_n.jpg?oh=ff6f2178682970aedc8bc7dd2b693d8b&oe=58467BAC', NULL, NULL, NULL, '1', '1248644055148411', 'ff6f2178682970aedc8bc7dd2b693d8b', NULL, NULL, NULL, '2016-08-31 09:58:58', '2016-09-02 11:29:58', NULL),
(86, 'Zarchi', 'honeymomoko@gmail.com', '$2y$10$4vsqPZWbwjGYUhm53g.osOi8o3RTiXXyreM4clK6lL51eHnOZDtTS', 'ilRiaEOpjonDn7aa9WH641aCZ5t7ThO3nlwZY7HqPyiGMgcoYcIaYuMLimsT', '0925550999', 'thumb_47480377817268.jpg', NULL, 28, '1981-01-23', '1', NULL, NULL, NULL, NULL, 'XKFAMJBI0SWU9nAjUobI7nRMvROeqJuTb60uI67yTnLFxV69hOylVzv3sgoi', '2016-08-31 17:01:02', '2016-08-31 12:04:32', NULL),
(88, 'Say Say', 'evergreenshee@gmail.com', '$2y$10$tKu2fi25Un6yHAtrSvO4PubKtQQX/vzjFKH9YL9Jv5sZQguBPHRde', 'IT2ZQUitKETnJfzEBDXy77R4QuafDhk2xcVElL0hrCFoUroH2nWr0QWn6nUL', '09971665453', 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/15073552_1166463646765247_1659869888567439579_n.jpg?oh=76583bc60c97e43faee08bea4d41a615&oe=58EB219F', 'My Address', 36, '1991-11-12', '1', '1078711722207107', '76583bc60c97e43faee08bea4d41a615', NULL, NULL, 'uLrZXs0nIAQ9rySIBdPGLUd8SVT1WFcDQmBPPo0lUG05JEnKe7JQ8NM61t4F', '2016-08-31 17:31:06', '2016-12-16 14:58:08', NULL),
(91, 'Tomoaki  Nagai', 'tomoakin-9@i.softbank.jp', NULL, 'WjsB9foaIAhXhBh0j1TtpOm5L7IZnHU6nTKog047', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/418096_121141981346665_703742505_n.jpg?oh=2714ae7e6c2f600b118b11c3b202adb6&oe=58459EBE', NULL, NULL, NULL, '1', '924822567645265', '2714ae7e6c2f600b118b11c3b202adb6', NULL, NULL, NULL, '2016-08-31 11:19:44', '2016-09-02 07:51:50', NULL),
(94, 'Hein Soe', 'heinsoe.ucy@gmail.com', '$2y$10$JFCFmqvH5WqvJPycvOEh0eFWyooCRMsj9h1GOuv7KJkP1lmVerUdm', 'gk1NrLRLbUxH0uw1o8WqpvSrUnxsualNAPkrArP3tPXtWAmIH7NP2Pb4yqjk', NULL, 'thumb_26897271535701.jpg', NULL, 14, '1986-07-11', '9511c10df0e5ccd0c873b8de2cef33ed', NULL, NULL, NULL, NULL, NULL, '2016-08-31 19:18:15', '2016-08-31 19:18:15', NULL),
(96, 'Yudai Suzuki', 'suzuki@rooking.co.jp', NULL, 'Vw9umXacFegm6B1pWvVbkwU5EiHoaxgxMT74TQqQ', NULL, 'https://graph.facebook.com/v2.6/1203102586407601/picture?width=400&height=400', NULL, NULL, NULL, '1', '1203102586407601', 'EAAPMa6cPYRkBAMmYoq6RkJs98DQz6ZBuHbKO8BONnP3t9wLvTw82MRNP80xBrpWClORkTqhDLKpZCKNDcpH8OpbaPqz7xosVMsZCYuBW5zJ0vItq8pHCo99aT3Ohx5pZBf4JmTn7ZBBlUFri7PvkC8peuB7YwTtEZD', NULL, NULL, NULL, '2016-08-31 15:00:06', '2016-09-03 12:48:13', NULL),
(98, 'Saw Le Ya Gaw', 'skyleyagaw@gmail.com', '$2y$10$WlLfXUKm25cShl.O9hEFnejC56oqLcWhAlmJD68D4CpwNbOWDWtcG', 'UM66I1VN3cnPwMnd5meJfDye5opzZuZ95oAkEjGdFfeVIJktbJscPiWBc7bK', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13615254_1122142494495963_4937984589567148521_n.jpg?oh=ace0dd6b3fb868593ef7dd70c3371255&oe=589C4A7D', '', 3, '1992-04-22', '1', '1182039118506300', 'ace0dd6b3fb868593ef7dd70c3371255', NULL, NULL, NULL, '2016-09-01 00:29:33', '2016-10-29 11:56:53', NULL),
(100, 'wynephyucin', NULL, NULL, 'luSjyQAAAAAAwTPFAAABVuJAaBQ', NULL, 'http://pbs.twimg.com/profile_images/534564761501855744/AMUjIV4t_400x400.jpeg', NULL, NULL, NULL, '1', NULL, NULL, '2602814132', NULL, 'hhFRBzKahq8N649aj5UC3RAMqkhoqxld3dinBmMpv36WFrHPbgTX9moCART8', '2016-08-31 18:17:03', '2016-08-31 20:18:09', NULL),
(110, 'Bone Pyae Sone', 'bone.burma@gmail.com', NULL, 'RfTpV9EKo170X8NBux4lOuv4UET09JIwnTsmiBIT', NULL, 'https://graph.facebook.com/v2.6/1455485354469001/picture?width=400&height=400', NULL, NULL, NULL, '1', '1455485354469001', 'EAAPMa6cPYRkBAJn9WxLZCPbBRPQ5aYxA1TZA1TtToMHZBZAuaOnTqrN2aWt5POHlQjddb5yRS2HqZClrDHtgvokd2h6S787ZC6vgYYoaz3sdx8HkKqgCfuwGAhT5tVtPzGjyeehkpZAyGBZCOUJeAmmyIqht8pFLRRMZD', NULL, NULL, NULL, '2016-09-01 02:16:49', '2016-09-01 02:16:49', NULL),
(111, 'Thet Aung', 'thetaungkhaing@gmail.com', NULL, 'cGv4WhlNXBCVj5f44Q7WFYBNVoAtEdqLPLdrDVlV', NULL, 'https://graph.facebook.com/v2.6/10206733140356439/picture?width=400&height=400', NULL, NULL, NULL, '1', '10206733140356439', 'EAAPMa6cPYRkBAFdbP70AjsegJlrJiXJdSAoYU9VPZCc8PfdvVytcZBWnxJOkAJaZCUWtRid6VXEOAvLpjrFmqx9H2nLhpd0ZBYtTFEIrVdYdc4lRjIAN7WBai30qybT2F3WXzxN7ZB93q7UuhLP7iRYn275vdCKAZD', NULL, NULL, NULL, '2016-09-01 02:42:56', '2016-09-01 02:42:56', NULL),
(112, 'Linn Htun Oo', NULL, NULL, 'n4wl1QAAAAAAwTPFAAABVuO6xlI', NULL, 'http://pbs.twimg.com/profile_images/671333121871118336/vmT6hnRQ_400x400.jpg', NULL, NULL, NULL, '1', NULL, NULL, '3282546564', NULL, NULL, '2016-09-01 03:11:54', '2016-09-01 03:11:54', NULL),
(120, 'Thwin Zar Hein', 'thwinzarhein@gmail.com', '$2y$10$/XBI2.1zp0gfVXDVNy7YF.uzE6HWFO9hFNTst1XQJvjXSM5b0KuMq', 'QK5iBTbVzeMMuA5ncOh3PG9GJWJXsSaiNkZ8pQ9H0pOLcmSUrM1WhQhWqnkq', '', 'thumb_64919898566652.jpg', NULL, 28, '1981-01-23', '1', NULL, NULL, NULL, NULL, 'T5nEM9WRXKHcOfRDbD9dCX9ktjGU6QWy826QPOMPkLBHhglVGRc2rRPczSPz', '2016-09-01 11:21:26', '2016-09-01 11:39:39', NULL),
(121, 'Aye Thwe', 'ayethwe25@gmail.com', NULL, 'KP8Q4nymSZuPJzBE52nfEm8pQBsPg4FKj90ZcWSm', NULL, 'https://graph.facebook.com/v2.6/10210582718744307/picture?width=400&height=400', NULL, NULL, NULL, '1', '10210582718744307', 'EAAPMa6cPYRkBALevzgyNgMTiJNMH6mlPHDBKM3ecaVzpIqtL2ZCF9N1MlanHI5fxO3TKfsJT5sOeX3XzQ726zKk6N1br6jR20dkphhjvVLZBzGau6yxXg5nEDhW6Y0BODIqfZBQlJZBV6GZByhBJTDXoHUjJ4PgUZD', NULL, NULL, NULL, '2016-09-01 05:51:02', '2016-09-01 05:51:02', NULL),
(122, 'Mg Aung', 'mr.aungaung95@gmail.com', NULL, 'O78tIT1XMBRRi4cqBV1ScRfQAxHAaoKtkwMU6sBZ', NULL, 'https://graph.facebook.com/v2.6/1033043456812541/picture?width=400&height=400', NULL, NULL, NULL, '1', '1033043456812541', 'EAAPMa6cPYRkBAMxDfKhFZCrAqZAlnZBMnvVMLSYBQzZAlKkk1BnWl9pqAEo3jitkFIBtrZBZCe9CZC5I4ZByLOB1vnC2RLRNQCibtsqqKgioiwbUQqbWLpS9M0RCp8InYnQyIYo6xUcYa8fzubHnJWaHH1kBkdCrGyAZD', NULL, NULL, 'A9eqdxQNtFZ8pKzVU08OgZUqIYCKxLgtU9HYElnXVTah1RSeSNHecoOqmAS2', '2016-09-01 07:14:01', '2016-09-01 07:17:21', NULL),
(127, 'Text Fakes', 'hlaingtinhtun@gmail.com', NULL, 'PBgESILPcpqI8BcNGYZpYPns9D6zD3CeubVs4Pfa', NULL, 'https://graph.facebook.com/v2.6/352946178370450/picture?width=400&height=400', NULL, NULL, NULL, '1', '352946178370450', 'EAAPMa6cPYRkBAJ2ZAEZBj5JmFTwa7V968epvINH8GZCXl7mF3kGYDxC5ospbG1csdAzlGiTVZAQQAwVWS5cwZBHGTJ3S9CETkJt8gWkQyXmUElFzLngxlj94RuAxiFNLWMuydYq3Kr1ZCknExNcyUDJkD62hvNnQ3ZAcxUuowOqQMlfWbITv17A', NULL, NULL, 'A2VWZHqR2ItkxrhnYGmuZnOLZ2P87VKNfb2bzgOSHN4ccJskcqJZc6AUzPzZ', '2016-09-01 07:44:25', '2016-10-12 04:29:13', NULL),
(133, 'Myat Su', NULL, '$2y$10$vc5dNPPPRcMonGeR8HB8VerML9/mCgj4G7xWZFs70L9AaTqN3sEdy', 'fClSLeCxLRoszOmknq3AvutBMjVJDigzkACPu5bJBYvmoK3OVC9PrB30WQ01', '09252793523', 'default_member.png', NULL, 14, '1988-06-09', '1', NULL, NULL, NULL, NULL, 'mwXPrGMuJ7TC2AP6LP131wg9bG3ltNfnFs42Gn7GVk02CSzHC2S8rBysbPgI', '2016-09-01 16:52:52', '2016-09-01 10:26:55', NULL),
(134, 'Myat Su Naing', 'msn.myatsunaing@gmail.com', '$2y$10$SuDGJlCWCAS5sfJ5Q4gDzuSbNRZYK27Av33DCS9Ql4t1wnyJ7RZpC', 'Y3qpvjYFrwOy1Pa0wxV19DBaTuarQNXREUD3bgO3w5Z3dkHlJLyXYl3v8DsI', '', 'thumb_79605576115065.jpg', NULL, 14, '1988-06-09', '1', NULL, NULL, NULL, NULL, 'z7DYJrmVCW2dLh4cTShjCdF6hmp22LklXX5YWTDCsToxSksQpavpzVh857ib', '2016-09-01 17:03:47', '2016-09-01 15:41:44', NULL),
(136, 'Soe Thandar Aung', 'jassicagugu@gmail.com', NULL, 'Z3iBSJksyYbZwVauK3UFj380fJ6j5wCmXbTYntJy', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/14079953_1056117921109658_8577206216156656105_n.jpg?oh=5a0edb07e307eb842f34acbdb04a9a4a&oe=587EE044', NULL, NULL, NULL, '1', '1056997957688321', '5a0edb07e307eb842f34acbdb04a9a4a', NULL, NULL, NULL, '2016-09-01 11:21:46', '2016-09-14 14:57:13', NULL),
(137, 'Ohnmar Soe', 'zencool21@gmail.com', NULL, 'coVBB5T3IhiCgTSLYRouvqqdvifC2MqwG1eI6fcK', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c104.118.550.550/s120x120/12096521_1061197680571787_6469745479543029527_n.jpg?oh=7899ba8b0161a7c2987b30be4d845058&oe=587F9460', NULL, NULL, NULL, '1', '1267792209912332', '7899ba8b0161a7c2987b30be4d845058', NULL, NULL, NULL, '2016-09-01 11:23:14', '2016-09-02 11:01:23', NULL),
(138, 'Teady Bear', 'cherrywin88@gmail.com', NULL, 'jr8CMATHzRWrhlvEHPuMpLWteb1L6fodTsBoHncU', NULL, 'https://graph.facebook.com/v2.6/1268708666495122/picture?width=400&height=400', NULL, NULL, NULL, '1', '1268708666495122', 'EAAPMa6cPYRkBAPIVoZBZBqMnR5Tmlu3adrsPySl4QSL5bXjFFrmTz5qAv8kBJVjZAjxZBx70pOfRCPPcx16Y129X1FKt5fUhY6SXJaqIo3Xw2006EZCKwC4ZBD5u45BdgYcsX5Tn8KwoGTp6fnJkX0aAMQsDyZAFy9pxZA4VSz7doAZDZD', NULL, NULL, NULL, '2016-09-01 11:26:04', '2016-09-27 08:23:47', NULL),
(139, 'Thet Naing Soe', 'thetnaingsoe457@gmail.com', NULL, '7R1wiTfpqVmZz1sRzEnIgnNnyDUbzeuGjuHASwoM', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/14199398_968594219929446_3481495513547046094_n.jpg?oh=3ff78cb87ab88fa32f75c22fe2b3b1af&oe=58439465', NULL, NULL, NULL, '1', '962294840559384', '3ff78cb87ab88fa32f75c22fe2b3b1af', NULL, NULL, NULL, '2016-09-01 11:28:05', '2016-09-12 14:53:57', NULL),
(140, 'May Oo', NULL, '$2y$10$YeGXwsfRnjBxZYEQdh3w3OMw3Y.fKDU8speIYN5LsCrtitXQd.3Ke', 'lA6REU0dC6Hh4vLOb6UtVOsbWidQlKCHdGXUI8rSMIBLkcmE6Ek3hzSq9aXk', '09451055428', 'thumb_51220678233800.jpg', NULL, 14, '1992-07-06', '1', NULL, NULL, NULL, NULL, 'vUDDNlSLe7dTu4FyumiUE1C0VTVVddM7PsMcz7GFObYyjkTtePIB28bj1BkW', '2016-09-01 17:58:29', '2016-10-25 11:47:19', NULL),
(141, 'Pyae Phyo Aung', 'babyboy609@gmail.com', NULL, 'LSy9VPL9eGMoteHcAxPC2NYz78DA0CXZDgN7Brka', NULL, 'https://graph.facebook.com/v2.6/927278054084519/picture?width=400&height=400', NULL, NULL, NULL, '1', '927278054084519', 'EAAPMa6cPYRkBADXEUQIZCLVcCOXqIwZCZBMXcVdJffm1Q235h7DPZCHWIkkW5t585J7c2ZCmvijILPvGWcTIQKoBz63ahaYfZCzvj5O841jUHjGf8F7XMfBMCCmzpJQNYWfZCHPb0LbRSjakqpUM17eY420ZCWv9UGhH6MoMgp700AZDZD', NULL, NULL, 'wvdbxGri9pGGtXy1roPd9TMrPY6pzXR3lFE6VLYvuwDDT41Sme8r1ihJLAw2', '2016-09-01 11:29:20', '2016-09-02 03:06:11', NULL),
(142, 'Thawzin Aung', 'thawzinaung94@gmail.com', NULL, '5SCqme6Cf95fnDCkPl9HTSIFJYX4sWLNGyswVyMx', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/12196320_842922225825461_3566407200241897775_n.jpg?oh=1329706c575cd4eead4c19b6db133f5f&oe=58B8954E', NULL, NULL, NULL, '1', '1025480764236272', '1329706c575cd4eead4c19b6db133f5f', NULL, NULL, 'A3iSIFZkh4DzVYQmkZW0d026V3YYoJsnzyzKYUixKOd0gTq6Zs4BvtAJIJpZ', '2016-09-01 11:29:22', '2016-11-21 13:49:42', NULL),
(143, 'Hla April', 'yinyinkhine1993@gmail.com', '$2y$10$ES0tiisBI3C9kGDTmXZMSOCfoHIl9W/r5J0q5HOMQul8/Zzq6yHTW', '2ITdF1WTGGmVhjE80lSNMRIJKWRGh1xvvn7isd5IHp5NOjI2HkZYOV2NiD3Q', '', 'https://graph.facebook.com/v2.6/601914893324343/picture?width=400&height=400', NULL, 1, '1993-04-14', '1', '601914893324343', 'EAAPMa6cPYRkBAOvK2CqvjBNZBkoLB6JogM1tCf6SJ96EZARtJALKA7VSIkgQimQba4F1re0douItHAW4ltZB3Htve3ZCnqPOiSG1bmat8E3YiFzl1TLj3toRGDtz4ZA3yr5CZBxpcwB4BDtc9b2Ej25CLstvN5VPrfjB7p9fGcDwZDZD', NULL, NULL, 'QoI1iaSjKhRkUnpNmsuus4y7EixzDoCTCrHxPPCWRIP2tCJKJjlcx3G6ip28', '2016-09-01 11:29:35', '2016-09-01 11:36:33', NULL),
(144, 'Ei Lay', 'placidgirl.2011@gmail.com', NULL, '7vdRlvzDcFazblJjH0yvJryKLeNlS5zocR6En8cp', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11536133_718609484931152_2370732639409330684_n.jpg?_nc_eui2=v1%3AAeE5QlgB1BwoRqc2qzayELLhLtf08TKZL-BVgBIngOsOpU5RENPnOUcfwcTHxmMOlYZLhZZw1SuiQHdnuU3A1OVMVTiXIoqDUWPJlZs4n5gTEPhIHcLP2_HA0rhQKdyXRig&oh=e806c45', NULL, NULL, NULL, '1', '974911605967604', 'v1%3AAeE5QlgB1BwoRqc2qzayELLhLtf08TKZL-BVgBIngOsOpU5RENPnOUcfwcTHxmMOlYZLhZZw1SuiQHdnuU3A1OVMVTiXIoqDUWPJlZs4n5gTEPhIHcLP2_HA0rhQKdyXRig&oh=e806c451480cf28d0ad0f6aae95d66b1', NULL, NULL, NULL, '2016-09-01 11:30:25', '2016-09-18 23:30:52', NULL),
(145, 'Tin Zar', 'tinzarkyaw89@gmail.com', NULL, 'wZOK1tBUUbixiq9Ln3nTWGuXOZ05fcJ3zKFFy0iC', NULL, 'https://graph.facebook.com/v2.6/1142824039145273/picture?width=400&height=400', NULL, NULL, NULL, '1', '1142824039145273', 'EAAPMa6cPYRkBAKCKX1S2fSpaokHTLOaNGPwkqdEpkMZBoj0uOIZBrqxFDI49j2zHA0wHo0nFBABMoZBXv2HPa9gvqTJngtZA5JTgQWlJ4KXaJEAZBsZCNIegMZBtG1OZCKnGQNRBlxTziPAJkVtWmPyeQ0wXu38VcPoZD', NULL, NULL, 'MJBnNm6TYFh7BY23V1s7XwoRikZDslbSB8r2fCiTLD2bWaaLOjBCQj4zZPgq', '2016-09-01 11:30:36', '2016-09-01 11:31:34', NULL),
(146, 'Yinmyo Kywe', 'yinmyokywe2011@gmail.com', NULL, '0ozdjLl0l9h2cd4J2UN2ADPCzkrS73jOnm3dI1at', NULL, 'https://graph.facebook.com/v2.6/1024174464366430/picture?width=400&height=400', NULL, NULL, NULL, '1', '1024174464366430', 'EAAPMa6cPYRkBAGiSZAKektuvC9hxi5udXCROftrJ9SOy6ZCeHMQVfBtMmisexuZBwytKUtDJbSQjRIsMLPZBVgiqCa8vhyO7Bi2pgjLQEUZCLiOIAFl6hkg4acZAxlLTqgAGOYXMLzqrbYKnBS9mZA8XmbVYPNQhcSiaZCjhl696OAZDZD', NULL, NULL, NULL, '2016-09-01 11:31:15', '2016-09-12 08:17:50', NULL),
(147, '123', '123@gmail.com', '$2y$10$fUiPpK9EfZipCI57dgVxo.hzv5rDNSMmf6CqdCsUOn81ZypIq/xCG', 'oUSibMREAY1k7mtIEr2jWZuVAQ7bsfIy4PVBOAVwC8S0E8Upvv04rt0W6B3j', NULL, 'default_member.png', NULL, 35, '2016-09-01', '89e88f159b29f0c61ecb80632201a4e8', NULL, NULL, NULL, NULL, NULL, '2016-09-01 18:01:54', '2016-09-01 18:01:54', NULL),
(148, 'mitinzarkyaw', NULL, '$2y$10$tdcSVI6mLdq15Xura0GXDO3JUaDTGINq8vN4fWuFf4zJv.F699fs6', 'yBfXGyAvoiNjpVLIi96TF4MkXc5f6OFWXXSMMSC7kwOEb2QAeYJrO3phk7fr', '09425316988', 'default_member.png', NULL, 28, '1989-06-10', '1', NULL, NULL, NULL, NULL, '1xoir1Ce3C6qFSdMSadcCzuIt4GTdEvCbQTkOsV0KgktoaaVpSo2oxZbFnG5', '2016-09-01 18:02:45', '2016-09-01 11:33:58', NULL),
(149, 'Aung', 'aungtrt@gmail.com', '$2y$10$royUM7zRP7THUT7HrTwOse1fAefmPxpRNaxbxd.ysNzEqP0j34EQK', 'rYOL9YPvyYWFy1o1z0VuXCKG2VifHP36PCH0vOu9jXNJtunLxNi7nf415prA', NULL, 'default_member.png', NULL, 1, '1986-02-16', '1', NULL, NULL, NULL, NULL, 'l5Qzg3QvaS6KDsWcgjj3jq58ZjqFhNxE2VfS4qd9HZKatdT3Swj0A71cLFRa', '2016-09-01 18:04:06', '2016-09-17 13:45:21', NULL),
(150, 'Khin Zarni Wint', 'khinzarniwintt@gmail.com', NULL, 'FHIMvsrLL65cO97wGjxy7X3v5w0FIqlFAwj6utZ7', NULL, 'https://graph.facebook.com/v2.6/1783101918634593/picture?width=400&height=400', NULL, NULL, NULL, '1', '1783101918634593', 'EAAPMa6cPYRkBAAS3kVOArYt7jpfQac7mYANhZBQc7QTdsWMdHxfMxazzugVw7cJo1g9ZC1GUzAuAaWjdjLKt9TH6zvtRVoLawdyPcrrp6GoRm2ZAMjqI89nO7ZBf162Pz19yNyUcllJgPx1b0HOtfZAxaZAKlydqVlA39J3srK8AZDZD', NULL, NULL, 'UvBi1CBxBE3UZk5hMNFrxEErkageA8wn4XOTArZuYphJQtJPU346bzBWeW7y', '2016-09-01 11:36:44', '2016-10-08 16:05:00', NULL),
(151, 'Zinmar Kyaw', 'anselmzinmarkyaw1993@gmail.com', NULL, 'IhtelVQi0uaJ7RiRozjAaBRhBUfgE1Li8HyDhCxO', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.160.160/p160x160/13178832_274449686232395_5439523752968190802_n.jpg?oh=12047a2c84203c5abf8f300c39551d45&oe=588823F8', NULL, NULL, NULL, '1', '325932017750828', '12047a2c84203c5abf8f300c39551d45', NULL, NULL, NULL, '2016-09-01 11:40:12', '2016-11-01 14:56:36', NULL),
(152, 'MIn Kyaw Thu Aung', 'dizzgizz.lizz@gmail.com', '$2y$10$pfgqeULnIi8CfhzVXNtUtuS3JvKRthMQhQy6394/0Ax6cA5iW5FLG', 'jsmd4IbDLMZDGYxd5yBABCoqVDQEKomzuD8StgdLJoxLc6TK6bw8vwZIMi2c', NULL, 'default_member.png', NULL, 46, '1996-11-21', '1', NULL, NULL, NULL, NULL, 'HxRdoBrlL64Mm0GpwaOzbVlHeXd1ZPP2Nwzz4pXN61LUJFFcVEQW136eUckP', '2016-09-01 18:22:01', '2016-09-01 11:53:03', NULL),
(155, 'Htet Su Wai', 'babymunky27@gmail.com', NULL, 'RJv2lNZO7kHPSi6y7OjJthB6s2pV5fpgAOoqxZ4f', NULL, 'https://graph.facebook.com/v2.6/910801169064449/picture?width=400&height=400', NULL, NULL, NULL, NULL, '910801169064449', 'EAAPMa6cPYRkBAExTjifz6zUgzICQQ0yGQAZAEnu99UNzD2JY8VNvDL0SL6URYW5OWBTvYGJ7HylNsGsMW9ykhTfoOclKlRoydlp2obPBLXA47Ifft9ZBNsjzh8tNSlZBIicj9UAo9y3DxPMsBC4ZAvGhN7qZBc1sZD', NULL, NULL, NULL, '2016-09-01 19:08:26', '2016-10-17 04:25:10', NULL),
(157, 'Ei Mon', 'skyscraper.em@gmail.com', NULL, 'r9Wt8DSGTuGtr3kokzAMYPZS7r8ryrmKMc6TB7k2', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11130182_1374702646193935_1349344107531547782_n.jpg?oh=dad1500630c335f08ad58e214aaba69a&oe=58474C8F', NULL, NULL, NULL, '1', '1634719263525604', 'dad1500630c335f08ad58e214aaba69a', NULL, NULL, NULL, '2016-09-01 13:00:06', '2016-09-12 14:48:51', NULL),
(158, 'Suzuki', 'suzuki+001@rooking.co.jp', '$2y$10$5nPaG2TaVe3x4Z6g3nuM8eDnZ.nTi4c2Bm7FG2fO56ZkqJhUJ2fO.', 'msS8yHjhvW93EkjUSfVgDap1TO376g9cZyDl6FJ2MRTlE51UxhzZVCd78A4S', NULL, 'thumb_81880795410522.jpg', NULL, 0, '1983-03-30', '1', NULL, NULL, NULL, NULL, 'JHmoNo4qSeuRJWuxknUv74pX60bUvJOuXj1iIqsbuAe5xQKczAwgFmK20B48', '2016-09-01 19:40:25', '2016-09-01 14:28:14', NULL),
(159, 'Su Htet Win', 'suhtetwin2702@gmail.com', NULL, '7B5hXoVHt307PJwdcQLSC4DQKeXsBrbWv3uBLGhE', NULL, 'https://graph.facebook.com/v2.6/179349095828759/picture?width=400&height=400', NULL, NULL, NULL, '1', '179349095828759', 'EAAPMa6cPYRkBAA5opSyUU7kcB7sZAXrwkG81retOhiFoZCmkFos33fSZBBkKfmWx990uZAlFNhC1GeRZAHjErpOXQ1z0JpZBwHnkSChAkMKT80P0KR6bkqMkfDRZC6r1DZBj5bAWnYnwOf5gbH1N1r4iwi8Wlmn3rIyxY2r2wR0O5QZDZD', NULL, NULL, NULL, '2016-09-01 13:30:01', '2016-09-01 13:30:01', NULL),
(160, 'Zarni Phyo', 'zarniphyo197@gmail.com', NULL, 'NIBe9aMF5ajJdQbiz8I81fl3J2fUUIEd8Ug4QJd9', NULL, 'https://graph.facebook.com/v2.6/1784389265177423/picture?width=400&height=400', NULL, NULL, NULL, '1', '1784389265177423', 'EAAPMa6cPYRkBAMlqbKZCUAcuNZCqLBEGIV23nDss0TTq0zJz2LkrPJ6AWujaAb3UyekTdd5xJspG5FhNBXAymFYO6Q33RMRf3qpzGc1dzhUgT6BmLD6iqs4j7ZAXMoCyntGerFoT23nkuiBtvTGM2ZBKMZBaGvNHNrGQjxMBoQAmWZC2r6Xq4C', NULL, NULL, 'Siti13uqTbQR7En63D57PNsl6FmcF5VXZIujk81SwDRcUxf6MpJCKWOZe6wn', '2016-09-01 14:19:31', '2016-09-02 05:41:06', NULL),
(161, 'RookingRed', 'udagawa+red@rooking.co.jp', '$2y$10$NH1A.5I8sv4/xtoE1PEgO.p3P9cxb0BIaua0WcrRawU2gWBOUqTm6', 'M1FqwBtyxfz0X3sNJbV2niURSGn7yaNiapIh9eS8rHkKzzuyfZsNQHslcoyp', '09440768200', 'default_member.png', NULL, 1, '2016-09-01', '1', NULL, NULL, NULL, NULL, 'cU2UfvrG1kh1QuwjtpT3kRhWk5Cr65ModhE4JOEGSdeohRab0y2bSdfqTlf8', '2016-09-01 21:00:55', '2016-09-01 14:48:58', NULL),
(162, 'Mon Mon', NULL, '$2y$10$A4q2kWDFj/4yzWtZanw/.Os7eIr3SGM47mFjK3F9vB2kGpYntytpe', 'jte9xKhjCFqKN1IHOSzzcH0J6n7HsYbv6pxbk0ZLuMtrWP7yBApjDUvV6CRV', '095078492', 'thumb_94182533188399.jpg', NULL, 23, '1984-08-16', '1', NULL, NULL, NULL, NULL, '6Oz6zOo46IDVRThdmXBVX87no4sWzT57dWncFEVTKDVxZ4ot7vFPPFlxTvh9', '2016-09-01 21:05:23', '2016-09-14 11:10:59', NULL),
(163, 'Phyu Ei Zaw', NULL, '$2y$10$Dv.DZmJ49nW.sIU3WU2sCOVFCaQ8PXaAQE1rWqGXO5cEw5EmG0Oxq', 'dyFjYBavG4BO0h7WkBqJCvkyIUyGnesUyeQW2uublLEAZ4SCPMtDSEaLFfAg', '09420044748', 'default_member.png', NULL, 13, '1991-12-19', '1', NULL, NULL, NULL, NULL, 'c7wdjs5ZyqLYJKcED8oaMYztvzAgGBpytXq99cGGs00NxSCzPqdL1zew94CT', '2016-09-01 21:17:40', '2016-09-01 14:48:19', NULL),
(164, 'Kyaw Soe Htet', 'kyawsoehtet421@gmail.com', NULL, 'KCjvLbR6v1I3lb4tmqJ7ThxdrgPVkMDDx4kXh5H4', NULL, 'https://graph.facebook.com/v2.6/10208884401760564/picture?width=400&height=400', NULL, NULL, NULL, '1', '10208884401760564', 'EAAPMa6cPYRkBACRTgSmwmiHkgnHRaf54BxQ4oyaA7EbhKcD3soHD0iskezZBApZAbM3PNIsYmKIZBg3TtUokXJhZBKYVlmIPZCwN2UjILMLBmPCqWcNTPHHLnxinc3QevZAhmIuAVwQQ4c5DC2qb3jBOrd45rNcZB8ZD', NULL, NULL, NULL, '2016-09-01 15:29:43', '2016-09-01 15:29:43', NULL),
(165, 'Myat Su Naing', 'coffeechittu@gmail.com', NULL, '4R5fWe8fI12dPsoqqhGMkSKRVR15kAAkaBb2HMFQ', NULL, 'https://graph.facebook.com/v2.6/10206938489166869/picture?width=400&height=400', NULL, NULL, NULL, '1', '10206938489166869', 'EAAPMa6cPYRkBAE9PS7aJpeSznhJab45KNth75cIkzDSZBdZCZABsf6QE4rpSloU1PAlT8muCPq20OwO8LSgd6As0DsWa2DidOfB12DoVOUHOD6eZBCew3cy9sux3gJ0QiwfqvZAc6cpb7gqfACzDP0KVCZB8IZAJMoZD', NULL, NULL, NULL, '2016-09-01 15:43:40', '2016-11-23 07:02:12', NULL),
(167, 'Thîñ Ëi Šâń', 'maythazin91@gmail.com', NULL, 'lcl19pewThKjkYgytxM6LGiAyEskHwjWHDOjXapT', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12342550_987996974579258_6515307283941023620_n.jpg?oh=1778679f1ea993de66e018a0fda63fbb&oe=588429F1', NULL, NULL, NULL, '1', '1146228255422795', '1778679f1ea993de66e018a0fda63fbb', NULL, NULL, NULL, '2016-09-01 16:12:40', '2016-09-02 13:15:56', NULL),
(168, 'Yan Naing Win', 'yannaingwin22@gmail.com', '$2y$10$GaOGMPBSKyY5hThSWIJcWeiZ7gSHTAnt8Ilq2RfBHIchsKVTKpdna', 'jHcsUTLMYwZCTC2Sl2HR3RGJuiXuL2zprK9Mc7NIMyeAzp8c7tXhGe3ezoZ4', NULL, 'default_member.png', NULL, 5, '1994-12-21', '1', NULL, NULL, NULL, NULL, 'RA7BN0B2lUpMkKn3Xcb8u6si7kUcTAq2rf4cmn0EHaVaNEFQPiztPSfOxQt3', '2016-09-01 23:21:13', '2016-09-01 16:51:31', NULL),
(170, 'Phoe Htoo', 'ph.phoehtoo.ph@gmail.com', NULL, '2GIzU5rVTCktDclB93gQQBho0Frwdc1LUa3eC1Ten07n7Ku2u8nbjfwPPTEO', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10606528_1569871736630415_566718007087640180_n.jpg?oh=d917899d4b58ed816bcf99dc34b1210d&oe=58851B06', NULL, NULL, NULL, NULL, '1780174822266771', 'd917899d4b58ed816bcf99dc34b1210d', NULL, NULL, NULL, '2016-09-01 23:30:16', '2016-09-01 23:30:16', NULL),
(171, 'Mon Mon Myint Thu', 'monmonmyintthu@gmail.com', NULL, 'Aw3bKCRmk1CFr3I28wt2ESETBE6MZMfcf8xkUkEOTGAhgSNewFGHNqVve4LA', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xat1/v/t1.0-1/c0.0.160.160/p160x160/13087890_10154095773966838_269680588058034197_n.jpg?oh=a91da761ff10809744bf59aaa3f34eb7&oe=58A503FF&__gda__=1483328491_ea92457b16132012201554160e3344a1', NULL, NULL, NULL, '1', '10154418021156838', 'a91da761ff10809744bf59aaa3f34eb7', NULL, NULL, NULL, '2016-09-01 23:39:29', '2016-10-06 23:20:53', NULL),
(172, 'ksw', NULL, '$2y$10$.IgbqgFAobvHMZs2.EY39eSMAIHW4OU2SeWmu/Sk5o9e1LLd75ota', 'iasbuHDlceTqQd0ImLt1cLFCgL9C5YVzawgMBCJi5IHezE3VjuKbecoqmAHk', '09972649150', 'default_member.png', NULL, 29, '2016-09-08', '1', NULL, NULL, NULL, NULL, 'Qbf635pJt8s1bgfPVSMpIIzAr4AtlR5ciyUbaWzwwD8Mc5H5JwnffjTbftbZ', '2016-09-01 23:43:04', '2016-09-01 23:43:36', NULL),
(174, 'MMMT', NULL, '$2y$10$ChGl/IhzAvbRhk3PttT5quiGQyTnyNrSSDINDbflJNKPuiIxq/mqa', 'gtAMUv97CQGuzPivjKujjtlNVku00413o2fwoDwgiPSGstF0SpO1KNP2ZS8d', '09969120317', 'default_member.png', NULL, 24, '1984-08-16', '1', NULL, NULL, NULL, NULL, 'meq6CyUaQJzU38qXuy7ihrTO5qyRknWLCQfbg8rOxNMbaoSuNnq9C6nPJ1oX', '2016-09-01 23:46:06', '2016-09-01 23:46:43', NULL),
(175, 'မင္းမင္း', NULL, '$2y$10$q6m/3WocMUMGBR0X3kTI8u/g1riJ4OCc/dlkTJEb2FERjjvxhY7dm', '2dHDUbKUxsRzjD60n7RfSzfcw8lfKaeMD83PTciDHjwM4ea41LrKegVX97vU', '09777100141', 'default_member.png', NULL, 24, '1990-03-24', '1', NULL, NULL, NULL, NULL, 'ccVWOREvxYY1kZGNV8OLTCoqh36ii2V5YSD7IPa0sgbeEgaKD4893oN18lem', '2016-09-01 23:46:29', '2016-09-01 23:46:59', NULL),
(176, 'Mon Mon', 'mayjulywin19@gmail.com', NULL, 'Vw0F58IvHjBT8OhiegBSq6N6AkXxU452wV8kEyMA', NULL, 'https://graph.facebook.com/v2.6/645441092273407/picture?width=400&height=400', NULL, NULL, NULL, '1', '645441092273407', 'EAAPMa6cPYRkBAINdC6UFMT6GTtO1pWMIO9NnGRJZCVcZBZAaYv7R9Co3T5EU8O4egzDUJVxpEJ6P5QAC1EcNZCZAJmNCgOrlQHMs8IwA1fwoeQFqZA9zTN9RfVFmJmZB01YdUnMFpUgZBpTlFsd2l2oZBSAyTkeANgChFfNf9skgL2AZDZD', NULL, NULL, 'oi2ghhbydeYil9tUBC2fOMJQO6v48lh7wvYdyLRafzBqXzXERKaIlVoXBkub', '2016-09-01 17:21:04', '2016-09-01 17:27:11', NULL),
(177, 'Datha Min', 'dathamin90@gmail.com', NULL, 'GyEZs9iBgzecEdbH05VL9pLeKjNwVYakYo2MtYuw', NULL, 'https://graph.facebook.com/v2.6/105106709945400/picture?width=400&height=400', NULL, NULL, NULL, '1', '105106709945400', 'EAAPMa6cPYRkBAA4PjuV8kw2DmUDhpZAmxjVvIUZCgY6y651os5TSRZC26EuW3zaFfWGjgZB04zhZBusn10CffflfUsSidyJy4KO80rba1OXPsZCmilMgZBrH8XfQZC7tWepJ0oWE3DomYqcqmLommlBlhrkimkb65owXaAAd8j4kBwZDZD', NULL, NULL, '7bZJJzWgu4AqTsOnQynkiyjdp4l0i84bXlzfleHM1rCbVwy2vAjngMBKTG6k', '2016-09-01 17:25:36', '2016-09-02 03:17:25', NULL),
(178, 'Kyaw San Lin', 'kyawsanlin25@hotmail.co.uk', '$2y$10$90p3lBYZI/J2ODRT6Ue9JOa6eigpUIa3eODg06BR/DHG096IMK/B6', '4Debn3UrVdLSBkenuDlOXqIxrKq9xUZxmFvVs3MFtLt5MGAbSRscBK8UlSRs', '09254140844', 'https://graph.facebook.com/v2.6/1086868471366944/picture?width=400&height=400', NULL, 5, '1994-04-25', '1', '1086868471366944', 'EAAPMa6cPYRkBAIQUWa9m1Rl7sZBZBv64g0RjeWMvWKfyr5mubki6FSOldAAUirLAZAy1XVZARHB342h3i8DezZAZCXRHgragnIYuZAPolJjPxfv80J1wpZA2cl7pZCL4UHjU7S9gPTZC7DToVJIzlZCOB1JOkJZAw8zVCZB9ayfWE8UEgVQZDZD', NULL, NULL, NULL, '2016-09-01 17:45:10', '2016-09-03 01:21:07', NULL),
(180, 'Sai Num Town', 'hesseboy.08@gmail.com', NULL, 'vU8W7jHHIvchbDKdUW13o6jKeXEtHrtNwr2CMUyJ', NULL, 'https://graph.facebook.com/v2.6/1277481612276291/picture?width=400&height=400', NULL, NULL, NULL, '1', '1277481612276291', 'EAAPMa6cPYRkBAIUYDI00BBF36IwMRB7wOxrUS6fdMWPxZCmwCdKTZA673qjCV0gBdJ32z2tfbxKj5oQNvCjsmvMtN7bZBHjqoC9aPWkp9ZAbfY805hTzGKXuyZCyZAYpJB0mcNAei5jAMZAAbD204OZAJ2qbZCdThZBgWxwYE34qwL9QZDZD', NULL, NULL, 'mED9tI8KsXoqY4R0oNQBQqG1KV9NbMLxyRHY7YYPmAtZ7hwLUOtXZwVOjk1p', '2016-09-02 01:13:59', '2016-09-02 01:15:00', NULL),
(181, 'Kyaw San Win', 'zues88@gmail.com', NULL, 'Cd6TXvfC6YVmrgH1jrOH1t4JVLuB9h1BO87AXJRRqpcjtJMgsy3iWMMENYfC', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12920403_10207597064137449_258204673153983260_n.jpg?oh=19ea420cdc1de1dadbed9a78e6b2303c&oe=5868EE67', NULL, NULL, NULL, '1', '10208746941403662', '19ea420cdc1de1dadbed9a78e6b2303c', NULL, NULL, NULL, '2016-09-02 09:15:39', '2016-10-06 11:57:13', NULL),
(182, 'Meat Su Moe', NULL, '$2y$10$UelmS.qCaB/OzpjfynXIyeUBeqIwYquuRfLBnhw.8H00MNkkuNZWS', 'qebr0J3qrWr6FFsqgocTils9ShbeICiRhn8YZrCKrGIepkWXs9ttlDVwtbd3', '09250057448', 'default_member.png', NULL, 16, '1991-02-28', '1', NULL, NULL, NULL, NULL, 'kQBiHigBgXd4njW4x2yifeQL7nK6PMNdAR3pxaYR5oe4Y9Gxwg4em0jp38j6', '2016-09-02 09:48:56', '2016-09-02 03:20:42', NULL),
(183, 'Nu Nu', NULL, NULL, 'n5ASnZDOaDRvFkOmLEwY5yjp8XjDwIIkYSf2LYceQpEfCyY8ll8Dq9vBMtUX', NULL, '', NULL, NULL, NULL, NULL, '661922147318078', 'd1e482632330a904e173d0adb3857151', NULL, NULL, NULL, '2016-09-02 09:50:04', '2016-09-02 09:50:04', NULL),
(184, 'htinlynn', NULL, '$2y$10$VVEWrsUFM2sF..1MJegt4u0iHunkZ0GAX6zkQwNRlnr0gOH9bPEo2', 'eoI7defTW24wQbZF4U3bCg48KFesncj6OD8lnv4oYbwXuzm6w9GfTbnqM0Ru', '09785360975', 'default_member.png', NULL, 46, '1994-11-12', '1', NULL, NULL, NULL, NULL, 'ViBpya7VgOb0ery2a8qYs4abgW3x5rBF4PymWrlSKGsDts4y36kVU2zrUP7N', '2016-09-02 09:52:09', '2016-09-02 03:24:02', NULL),
(185, 'phyu phyu that paint phyoe', NULL, '$2y$10$U9/khdd0nP4RG.IowRxg7uMfY9654.5pppcfsb0eCQy4jB0zB0p/q', 'AVNooTEISM1poALbPJjdXyXmZdo5G6SaN42uBrj39BfuBHx3q7mUfKr9G8pI', '09975293407', 'default_member.png', NULL, 8, '1989-10-05', '1', NULL, NULL, NULL, NULL, 'KTRLNg1YDO9I1u1ISlfn42jXKKfmi7aq7brf6u11HTcOOWcQC8ruUChdQBrh', '2016-09-02 09:55:52', '2016-09-02 03:30:47', NULL),
(186, 'Kyaukfuu Lay', NULL, NULL, 'ReU6YpG6mZYG2nWAF5K59TA0f0Xyk1qFFbLzGvNuoMCF0H82qIeS7vcy6SV8', NULL, '', NULL, NULL, NULL, NULL, '184107698678617', 'z-m&oh=97761f435434ee18bd3a3bf84f9da05f', NULL, NULL, NULL, '2016-09-02 09:57:26', '2016-09-02 09:57:26', NULL),
(187, 'Naywar Lulin', 'byatta.2011@gmail.com', NULL, 'fmBP2Mi5ObSTLsslsjVyim9OKZ76ua5BCL80f8V8MEk8WFBxZzr2zx59ikqO', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14088428_1029190610513083_5355832904946828986_n.jpg?oh=e79d4f5a2b21ce31435e93f13e36d6ea&oe=588151B8', NULL, NULL, NULL, NULL, '1039117756187035', 'e79d4f5a2b21ce31435e93f13e36d6ea', NULL, NULL, NULL, '2016-09-02 10:03:11', '2016-09-02 10:03:11', NULL),
(188, 'Kyaw Zin Thein', NULL, '$2y$10$vYiJa9ulXT4uj8q7IX5pCuQKjbH1KEeBA/o2HFwko1AXdMLDIdS9i', 'gpYbzlMz4RV9SGo4NBQ255OyiY3XcwF5YqjLiklZ0iBH5hcKw1ycPSAUoFYY', '09792008187', 'default_member.png', NULL, 1, '1987-08-01', '1', NULL, NULL, NULL, NULL, 'kTzIq3Ryy9wIbzknm63l4JctJvOh1bHblbKFByu9wjXmVOa3ouXu3pSj4tFi', '2016-09-02 10:07:45', '2016-09-02 03:38:34', NULL),
(189, 'Myo Thant', 'surveillance1991@gmail.com', NULL, 'EbzoqsbwLNIWOrZZXHY9OYEYDNijcXd84flhNzCZ87ZwBE7mjUcrUFVGYcZ3', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/10320483_792727944164566_9086400837876148590_n.jpg?oh=f41046d21cfd5f87a45f0e6d6cfe3794&oe=583DFE20', NULL, NULL, NULL, NULL, '890729277697765', 'f41046d21cfd5f87a45f0e6d6cfe3794', NULL, NULL, NULL, '2016-09-02 10:07:49', '2016-09-02 10:07:49', NULL),
(190, 'Arkar', 'chitthu90@gmail.com', '$2y$10$zW8B4jFw.ebSEFDJwf7jOu2PWoVWXl8qkvjn1pFFovkx5K0rtHYZe', 'TYgMitwGOrNB2JgEiV6nb9AzexrkesMLzWQKByrYNbXOBHd0SRwCcvhmbNVx', NULL, 'default_member.png', NULL, 9, '1990-02-14', '1', NULL, NULL, NULL, NULL, 'zHCKM1Y7bBCzKMKK7Dvtxq9Yw7YQ7Iu2uEbaNDHn2CLrOxGIqjYsrryNtOEo', '2016-09-02 10:08:30', '2016-09-02 03:42:38', NULL),
(191, 'Htet Aung Kyaw', 'iamlovingherr@gmail.com', '$2y$10$aiPD5AQ0Mu96tEHGl9ODb.VnBFYUyyoN86DKf70a9n0pEDhU/f39a', 'z8l4BPPkRIfLiFF9FEoCiahw7SfbFfp2nUwATOmJmxgWflzgtMtxgqo5TJCs', NULL, 'default_member.png', NULL, 28, '1992-08-01', '1', NULL, NULL, NULL, NULL, 'MTi2VJHNwwwNVkIMzRzPoXYGvLB54jtUr4YD5vHpS1q5PoVnRPyc5U6dr1bL', '2016-09-02 10:11:01', '2016-09-02 05:20:18', NULL),
(192, 'Himiko Harumi', 'nanpwintsyp@gmail.com', NULL, '9K4R5u5VFyVrcsWvVdPmxbUzUf6EOajmZRm4jBSM', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xtp1/v/t1.0-1/p200x200/13775987_511800229004741_4307281687740793567_n.jpg?oh=904bb577ea47c2dd371b109a7ac218ac&oe=586A2351&__gda__=1483261085_e79f6f1660ba4d2c581d1b306cada5a7', NULL, NULL, NULL, '1', '526802314171199', '904bb577ea47c2dd371b109a7ac218ac', NULL, NULL, NULL, '2016-09-02 03:45:09', '2016-09-28 20:18:49', NULL),
(193, 'ႏိုင္ေထြးဦး', 'nainghtwe002012@gmail.com', '$2y$10$kUNdRv2CIZag0VSEjuWskOCgO.PQp82Cb8FWe.FxAJF1/Mo84ApYC', 'OEgtUk8JOdGykDK772HDHbXWD43WMhNEgy04n6x5mcLDut8cEkJzX8a60hBU', NULL, 'default_member.png', NULL, 1, '1990-10-13', '1', NULL, NULL, NULL, NULL, '201M3nRwDmNPTc4e9lr7ntWcoq69UqJZurq6uDNaoa2IEe7bmxD31ZqdLANl', '2016-09-02 10:18:43', '2016-09-02 03:49:34', NULL),
(194, 'ZM Thwin', 'mikachan86@gmail.com', NULL, 'udqYw2qsYm49yZYnXfeN2f97iEOf8XL7bSkKgSAk3zWWnwjFrN9893aOitj7', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/13891795_10207214029575770_2817340276612656083_n.jpg?oh=a4994773e771911dd4e8815eee5f6651&oe=5838636E', NULL, NULL, NULL, NULL, '10207497134933227', 'a4994773e771911dd4e8815eee5f6651', NULL, NULL, NULL, '2016-09-02 10:32:11', '2016-09-02 10:32:11', NULL),
(195, 'KyisoeThant', 'kyisoethant@gmail.com', '$2y$10$1DJk0nPkz3CUbrHpIPTEGulVagCR.guzfRf3/kODZRtS/GFUYvSbe', 'yNMweyl0gaVPrHnFl24ZbA3CsP3uO1WBOX3ijpM6a0WvdvFoBiRF3iVfyQpU', NULL, 'default_member.png', NULL, 43, '1994-08-25', '1', NULL, NULL, NULL, NULL, '9gW1rGP1sAFlhyjHyhgsrURSz7drYgysT7G0LtYIy64ZhaEQ6KbhqdE82sBp', '2016-09-02 10:40:27', '2016-10-31 04:42:35', NULL),
(196, 'Yoshiko  Suzuki', 'dearestyts@docomo.ne.jp', NULL, 'UMf9Q015IIuXqGnxVGNChUtoauHpRPSXn8DmrH32', NULL, 'https://graph.facebook.com/v2.6/670302259801438/picture?width=400&height=400', NULL, NULL, NULL, '1', '670302259801438', 'EAAPMa6cPYRkBAMwrEPfluKZAy6fEVolVT9mkaXis1xMwcpZCZAIVZAKfGWbYlSraaXsm9OZBLnGMw3DZB6Ko6wFTyOOOKcfeJgK9UVlEMJdtZCJYFFTCWH2IzxBlb5kXIKcYpYK8E7jDe8Q05iFZCQNxeCmT2xsVwyicxeBBBX7mZCAZDZD', NULL, NULL, 'qF7fLt2OArrzbYWaOghqXxWf9a4Zz0xMr6QEg8VZmDMyxpCrrYEVk2lFebjL', '2016-09-02 10:46:01', '2016-10-27 01:48:54', NULL),
(197, 'Khin Myo', 'cryfallrain@gmail.com', NULL, 'OPV9DksdzxC4sdRKfMHsUGZySqGFOFqBghBsiXnWSY89Bg57uP56nOB6kXm8', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/1913875_888635761233473_6392199172827724034_n.jpg?oh=21a40b4e029c4ccf29a7a19301f3f014&oe=5841A76A', NULL, NULL, NULL, NULL, '1041828942580820', '21a40b4e029c4ccf29a7a19301f3f014', NULL, NULL, NULL, '2016-09-02 10:46:36', '2016-09-02 10:46:36', NULL),
(198, 'Maungthein Khine', 'chiteihlaing@gmail.com', NULL, 'ZFhQNZ4T0olRNAuBGNaRSwJjIstcFBYcUdQ4WrCi7XJB4NgLCmHyKQOLTjrd', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13669703_535873879929653_996748364995980257_n.jpg?oh=a51ab2b0d152fa9a6f553af13746d21a&oe=5842B85F', NULL, NULL, NULL, NULL, '551202321730142', 'a51ab2b0d152fa9a6f553af13746d21a', NULL, NULL, NULL, '2016-09-02 10:52:19', '2016-09-02 10:52:19', NULL),
(199, 'baba', 'sileltlove583@gmail.com', '$2y$10$cUULwXEtYUOgRjFQyqkpD.Bdy/MOFsTsurRjYYeyPc.osn/kI3KHa', 'Th6zBb4dkx1b7LXjXXBhzMd4aIydX8EbfFKXaTI0x3FKPRLEI8JsKaBMYvND', NULL, 'default_member.png', NULL, 32, '2016-09-02', '3ba2259d867c9fc9819132da6195567b', NULL, NULL, NULL, NULL, NULL, '2016-09-02 10:55:57', '2016-09-02 10:55:57', NULL),
(200, 'Ko Lin Paing', '13stringsbayluwa@gmail.com', NULL, 'vDZGvHMa604tHdn0OzNHBNTD1ZbxHvq5XsT2ZVtMl8PA7ncS4xbnE3FvtmLl', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13512189_858235507643855_7644577650354910811_n.jpg?oh=5c78e1bf8f3bde4133de725b69956eeb&oe=588601D1', NULL, NULL, NULL, NULL, '894496247351114', '5c78e1bf8f3bde4133de725b69956eeb', NULL, NULL, NULL, '2016-09-02 10:56:27', '2016-09-02 10:56:27', NULL),
(201, 'May Thu Tun', 'columbia556@gmail.com', '$2y$10$F.8jde381PvCrxWeRX5sV.VdteCO9rsZk/5EsaHdvirQVJXydYo0W', 'lJbC1YrntVd2M0o5YoR1GqLJenqb8ow13i7Pz4m9oYZhKS9rtPL2lCXiGtVl', NULL, 'default_member.png', NULL, 14, '1994-05-27', 'a4dd9138e9058eb50482769004819540', NULL, NULL, NULL, NULL, NULL, '2016-09-02 10:57:33', '2016-09-02 10:57:33', NULL),
(202, 'Thein Khine', NULL, '$2y$10$9LB5.WTpLwaj9KzVE04M..kPysSLYR/EUjHrKErtQrHR5pXB7XhbW', 'z1bciyEGShR8jivVAOr0BNgUHAu7geMh3flDnx8lZMleqUVSk7S6lVCFlkD4', '09250830035', 'default_member.png', NULL, 29, '1994-09-13', '1f6336c1b91c38d60505caf66a8da114', NULL, NULL, NULL, NULL, NULL, '2016-09-02 10:58:52', '2016-09-02 10:58:52', NULL);
INSERT INTO `User` (`id`, `name`, `email`, `password`, `api_token`, `phone`, `profile_image`, `address`, `township_id`, `dob`, `activate_code`, `facebook_id`, `facebook_token`, `twitter_id`, `twitter_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(203, 'May Zin', 'mz.ucsy@gmail.com', '$2y$10$otXRPjQ819sUYm/MJaNBVO77jNchA/6dOE1d6Oq.TfcyA9JiC43by', 'Hd9LuJw8FRFnWH47eW9XAQCvgHCmrIJyV5prchrDiRlSHFuGCnKqCuEYZlG6', NULL, 'thumb_89482372936804.jpg', NULL, 37, '2017-04-27', 'd5e5e0cb6e0acbdbb0557a697fa3d350', NULL, NULL, NULL, NULL, NULL, '2016-09-02 11:07:30', '2016-09-02 11:07:30', NULL),
(204, 'May Zin ', 'mz.ucsy2011@gmail.com', '$2y$10$xcMkcmhoCLtzrYRy4I955ux74DGTirlVaZBAaeXV1tXQ4oskodAuG', 'yGdERbCrlFUVCaOkX6zZE3YXGeUnNJ2y0Kb654OtyDeZkOZfjbPn4tJI0Qy7', NULL, 'thumb_562144158372.jpg', NULL, 37, '2017-04-27', '23657318f89804261b3f896ac2931fe0', NULL, NULL, NULL, NULL, NULL, '2016-09-02 11:08:54', '2016-09-02 11:08:54', NULL),
(205, 'May Zin', 'mayzin2704@gmail.com', NULL, 'gR02UTAzxdQ7seJNAOvLySRid6RejOxWjPneAXii', NULL, 'https://graph.facebook.com/v2.6/323243081344179/picture?width=400&height=400', NULL, NULL, NULL, NULL, '323243081344179', 'EAAPMa6cPYRkBAPkZAZAM2xFI4jA8UYhD1ONIIvHeZCvDrhPzU15ZB7GaM53qnnnZAP9POlB9pbRSho0Mxnj8IQ3VwTCEj1KibP0LZBJ1LezLOBRyQL9Di8StjZA0uI2AN9NxrCZACpQ3ay1NaicgqOSPmhkoeZBjmn3hm2aGZC081C0gZDZD', NULL, NULL, NULL, '2016-09-02 11:10:26', '2016-09-02 07:33:06', NULL),
(206, 'Myint Myint Soe', NULL, '$2y$10$YKyIIaTIvceGnGqV/hXWX.qQgRnADlhTY/Bk6lTiJJlN7pEJp5gZ.', 'HVJFmG9mt1ysln46cOmMgXLxt8WxSmNlZpTAbl3Oa4TjcPfsENoL0M6QsjOh', '09965173197', 'default_member.png', NULL, 25, '2016-09-01', '1', NULL, NULL, NULL, NULL, 'UrbuU9e9lp7lbKnx2taWATQWMcL4awanyq3coUiH5rdjmUg0gE7JxpFWyCU6', '2016-09-02 11:11:47', '2016-09-02 04:43:45', NULL),
(207, 'Takayuki Ito', 'takayuki0116@hotmail.com', NULL, 'NwaNjU24L9DOQgFOmpKLk5pIIjIry3Bu8nQbYsMiUAC1vwjtuDP8mGzv6x9a', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/10593102_577536609025046_4436336808028737322_n.jpg?oh=15564fb71c43e2de7b052249e9ce26e3&oe=583F051A', NULL, NULL, NULL, NULL, '914719691973401', '15564fb71c43e2de7b052249e9ce26e3', NULL, NULL, NULL, '2016-09-02 11:11:52', '2016-09-02 11:11:52', NULL),
(208, 'Yuta Mukai', 'ym0110@softbank.ne.jp', NULL, 'BEnR3MMFgd6axL9E554vRQ1pxXjLg5OKXyF20zJ3zi5BOiKzuC2IdFjsMyHG', NULL, 'https://z-m-scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14022137_976688452453650_8692323527732326490_n.jpg?_nc_ad=z-m&oh=53aea37545955a408ccb5f3967c109b7&oe=58530BD1', NULL, NULL, NULL, NULL, '982979775157851', '53aea37545955a408ccb5f3967c109b7', NULL, NULL, NULL, '2016-09-02 11:14:30', '2016-09-02 11:14:30', NULL),
(209, 'Htut Myat Min', 'sacrifice.joker@gmail.com', NULL, 'Cbnoz34VQBxmKEoIq7gxI67HshwswZ7E3dgE0fw8hkvAaTrFD9xSE5dkwHFn', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/13240602_10208044202477408_2099239447031708377_n.jpg?oh=ded9b965a3c602551c44b610c85214ee&oe=585178F4', NULL, NULL, NULL, NULL, '10208867878908804', 'ded9b965a3c602551c44b610c85214ee', NULL, NULL, NULL, '2016-09-02 11:14:32', '2016-09-02 11:14:32', NULL),
(210, 'Satoshi  Tanabe', 'pma.kemuri.1209@gmail.com', NULL, 'Fh1s4wJf97laPmtAoVxZMUyU68zvoyRhbzT7dGjzhe6nnhmqrcUlnnsI4vMp', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/381846_211457115612430_1185162055_n.jpg?oh=4104bd2d8b0749638c33d11a1fae430e&oe=58524934', NULL, NULL, NULL, NULL, '1109425325815600', '4104bd2d8b0749638c33d11a1fae430e', NULL, NULL, NULL, '2016-09-02 11:18:15', '2016-09-02 11:18:15', NULL),
(211, 'Su Myat', 'sumyathtun@aceplussolutions.com', '$2y$10$2wkv6fkuKsv6YMqVSPL4XuVxFOfkHm/jE/Y59f0x3Tfe8hpugshUu', 'KioSUyhgmXR4dH9ZNDXAqXdx7lvoZQ7moQTnOtyLo83A2HEwAcFWBFjs89Ug', NULL, 'default_member.png', NULL, 28, '1994-06-23', '3165942f0e3ca4bb94cdaf5096c30314', NULL, NULL, NULL, NULL, NULL, '2016-09-02 11:20:29', '2016-09-02 11:20:29', NULL),
(212, 'Zawhtet Aung', 'redlion371372@gmail.com', NULL, 'nf03AYz7r5I1wqkqx7WoERxOXs83sWl4TnhJj9lUWdz86ZMxvJdAkKCWw5Uv', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13528654_515972505262314_5702484572281082517_n.jpg?oh=1c905a2913bc268bc719e28faad9fd32&oe=58433386', NULL, NULL, NULL, NULL, '543104625882435', '1c905a2913bc268bc719e28faad9fd32', NULL, NULL, NULL, '2016-09-02 11:21:33', '2016-09-02 11:21:33', NULL),
(213, 'ကို ရဲ လင္း', 'yelintun.maymyo@gmail.com', NULL, 'osQgcH2DzVRZud3qummtU79utrHHWVCshWuBgreiAgzZobeH7dRRkYLdkihV', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13307199_228873170830350_622413885848357173_n.jpg?oh=7054247c76920b0700956b40294e0752&oe=5885BC50', NULL, NULL, NULL, NULL, '282306155487051', '7054247c76920b0700956b40294e0752', NULL, NULL, NULL, '2016-09-02 11:21:43', '2016-09-02 11:21:43', NULL),
(214, 'SAWYANNAING', NULL, '$2y$10$35n05Uav.xRyG0pcDZkqj.FTXdGbHSkuqKOGcGNCs3JIhcHvd.HAG', 'Wfyk8oJ6Xr3W418WiZC6ZiKCBWnhfLtJoSvIU5vz1Ofu9ceskeg95EW0Jni8', '09792117105', 'default_member.png', NULL, 7, '1992-04-17', '1', NULL, NULL, NULL, NULL, 'tIb3WiTX0jKlswVmh751Uyb4SznfQe8HXRdDNVNDAEP2HViA18sZvS6dR4iT', '2016-09-02 11:22:02', '2016-09-02 11:22:24', NULL),
(215, 'ေအးေအးေအာင္', NULL, '$2y$10$CE/UgcDnacu4aBem3yt/5O4wZgtDtzhfaXsg8FuzY3.swv9YO3mSG', 'oT0dkKVCUtrjYFBqSx9ndu2HJdi2zosnSmL36IDREnLBEjN1gMTFpPXtJSit', '09250066019', 'default_member.png', NULL, 11, '1980-09-02', '1', NULL, NULL, NULL, NULL, 'NeX86btiPO0w7ZvHaYenvnhacwSFaVASY3DCsH89FsejyUuKR8mnqnicOCtv', '2016-09-02 11:22:19', '2016-09-02 11:22:54', NULL),
(216, 'Heinlatt Pyay', 'heinlattpyay@gmail.com', NULL, 'SyLwwpQFeu6gckAK0YduPKfJHMhyqSnU0iMIepIcriCc4vxDOZSRR5rI5yKn', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10628165_1607450976149215_5646645377165424861_n.jpg?oh=4bd69866ca8fef4b3eefa5abc03dc90d&oe=587E7B54', NULL, NULL, NULL, NULL, '1912625418965101', '4bd69866ca8fef4b3eefa5abc03dc90d', NULL, NULL, NULL, '2016-09-02 11:22:34', '2016-09-02 11:22:34', NULL),
(217, 'Ye Htut Kyaw', 'yehtutkyaw89@gmail.com', NULL, 'gFqk7WovnJrKpanZuZCqFziALxolINqbS6JFJ8ILUsxF7NI2ZyALoEdBb7GD', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpl1/v/t1.0-1/p120x120/14102460_972474926208235_5259124961845003871_n.jpg?oh=4ed247aec3dbebabd67eb8e14ba87b1a&oe=58539D7B&__gda__=1480490249_1f19c4e6f078e1db7ab2a1c0716b1ff0', NULL, NULL, NULL, NULL, '978041308984930', '4ed247aec3dbebabd67eb8e14ba87b1a', NULL, NULL, NULL, '2016-09-02 11:22:43', '2016-09-02 11:22:43', NULL),
(218, 'Lal Zir Lian', 'lalzirlian@gmail.com', NULL, '7QKN6KYCJSazkOAx2YDcbEHwXV3zC5FenWanc0tD4iGu8H1pWkTR3xgWAjlp', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13254133_1373770109303646_8223309783545428147_n.jpg?oh=cda811c8f0071c09db63a37e725366de&oe=58449C14', NULL, NULL, NULL, NULL, '1486058604741462', 'cda811c8f0071c09db63a37e725366de', NULL, NULL, NULL, '2016-09-02 11:22:55', '2016-09-02 11:22:55', NULL),
(219, 'takahashi', 'takahashi+0@rooking.co.jp', '$2y$10$iG87WTTS.97y/qJQNuLgBeAYZpcYUcUIONHuaVRl.TOOC5xFCgpRW', '9OhLddBJsuVFfiHeooVVRmnSKQv0EtdkXh0NhWXZzGMouJvcoYTeV4iSIlXn', NULL, 'default_member.png', NULL, 3, '2016-09-02', '08435233d22638eeda10334c507111a6', NULL, NULL, NULL, NULL, NULL, '2016-09-02 11:23:39', '2016-09-02 11:23:39', NULL),
(220, 'takahashi', 'takahashi+0521@rooking.co.jp', '$2y$10$vSCR5HmEydaN3SYByqm6n.n0yLQao5Tc/rr0C3PpZaGOAKoS5IbVO', 'QivTmTCTdFWapbvqetiOHNzfxjWrWRX3W2Q82wpK4fO4XU2EH8o0UqRykQIa', '', 'thumb_87333735148093.jpg', 'japan', 5, '2016-09-02', '1', NULL, NULL, NULL, NULL, 'OSi36p2Hl7Tvt4AXSeNutvTbYTTsZl4OlHpPjeLsKEVNvzB4NWXFJHKxTO4B', '2016-09-02 11:26:27', '2016-10-28 12:30:28', NULL),
(221, 'Hsu Mon Nyein', 'nyein.sumon2012@gmail.com', '$2y$10$l.QfYK1e4d3.//iACrldUuOstFcaKXf1MOVaprpmo4cA/3jTt.U3i', 'SxyIaIknTpu6RHwuTtRBZRiWc2MWKb10iG4kgP2dAAAbSxFiVeVnUBhhoHMf', '09254868852', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13164379_592583757583330_6115747770863567774_n.jpg?oh=189aa9f6f2acfa36971f4350c53c5c5a&oe=58536C9A', 'Kamaryut ', 31, '1970-01-01', NULL, '655804341261271', '189aa9f6f2acfa36971f4350c53c5c5a', NULL, NULL, NULL, '2016-09-02 11:31:04', '2016-09-02 11:47:37', NULL),
(222, 'Gloria Khine Soo', 'love.shadow90@gmail.com', NULL, 'vVMWkSDSn9jesjHwDfu8GNWqxgcuufK9rbDUQ48P7UFfOyoZ67A7SBxteoCs', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10952542_402299769929063_5144903273170093707_n.jpg?oh=b629c1442b3c3228c56845b1aebec07d&oe=583A0E21', NULL, NULL, NULL, NULL, '642393742586330', 'b629c1442b3c3228c56845b1aebec07d', NULL, NULL, NULL, '2016-09-02 11:32:12', '2016-09-02 11:32:12', NULL),
(223, 'Gi Gi', NULL, NULL, 'jUoJKRGdH9vqjvSzl9SejMFcIe8HICuWCamz9SRYiwdeuf7VWQdXGysLmeuR', NULL, '', NULL, NULL, NULL, NULL, '1072486806151488', '681296566104aacd961a4dfb07a643f6', NULL, NULL, NULL, '2016-09-02 11:33:39', '2016-09-02 11:33:39', NULL),
(224, 'Nyi Lurn', 'nyilurn7@gmail.com', NULL, 'SN0chNGmgKTxyE1Y5GPvizbduAs0FUgESipgfTkwTrfPNWFEH5uQZJPc4IEV', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/13912670_902545313211369_4404343357151609294_n.jpg?oh=4dbbb949c63baaeb4eeaf5c0c8b33cac&oe=584292C8', NULL, NULL, NULL, NULL, '918635531602347', '4dbbb949c63baaeb4eeaf5c0c8b33cac', NULL, NULL, NULL, '2016-09-02 11:34:41', '2016-09-02 11:34:41', NULL),
(225, 'James Ray', 'myokhantwin9@gmail.com', NULL, 'lqlGaMeLiIYDAUdbq4tLXEa4N1adxtsVge9wvIpxBuvXdLAqUWkPTTjDFNCs', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13906885_522279274649276_1877292897566499481_n.jpg?oh=fb6121c147a7a116fe5fb918e3e21b34&oe=584DCF19', NULL, NULL, NULL, NULL, '535358673341336', 'fb6121c147a7a116fe5fb918e3e21b34', NULL, NULL, NULL, '2016-09-02 11:35:23', '2016-09-02 11:35:23', NULL),
(226, 'Thein Soe Min', 'kotori.min@gmail.com', NULL, 'Yjgj6neeM8pA8r7dL5kbHELhM5To7q3v95bHFggrXRmpmy4OzuJUZN7xPNKs', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12376438_10205650109477129_7911075936314987135_n.jpg?oh=05773b1c78cc40593cf86225e29bb7b4&oe=5879ABA7', NULL, NULL, NULL, NULL, '10207480953687090', '05773b1c78cc40593cf86225e29bb7b4', NULL, NULL, NULL, '2016-09-02 11:35:37', '2016-09-14 16:58:28', NULL),
(227, 'Myint Myint', 'eversmile.smile555@gmail.com', NULL, 'p5K7rNQybsqKRS29pVFaa7IeaqK7Ck7P018gMcerJuGkEMIyxRVcGGiCyJwi', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12733374_1250116948334971_5409323479589810762_n.jpg?oh=2a50e3a171921360d156cd3dbd6259e7&oe=58497566', NULL, NULL, NULL, NULL, '1408824425797555', '2a50e3a171921360d156cd3dbd6259e7', NULL, NULL, NULL, '2016-09-02 11:36:38', '2016-09-02 11:36:38', NULL),
(228, 'Kyawt Lay', 'kyawtkaykhaing104@gmail.com', NULL, 'WdcxRkWcP20c4RITMeP0X5TZJjpqPPUZkKutEr8shPxOxqC6OOc0IRj7OMI3', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13263820_1628638170788442_2514855600651460882_n.jpg?oh=816c81aaccd9c3118b21226129b34f1b&oe=5881F997', NULL, NULL, NULL, NULL, '1683999598585632', '816c81aaccd9c3118b21226129b34f1b', NULL, NULL, NULL, '2016-09-02 11:36:59', '2016-09-02 11:36:59', NULL),
(229, 'Ya Kauk', 'yphyufacebook@gmail.com', NULL, 'uKBVktjhSnM1Z43qThomsLNv1D7CcKwx1TDX7aWmtG6Kycbc2orzbIMKjlRg', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14089301_1092514367468672_2051085615623039109_n.jpg?oh=9274a7ebbd9e652514ef6688f9ec3124&oe=583FB396', NULL, NULL, NULL, NULL, '1105307176189391', '9274a7ebbd9e652514ef6688f9ec3124', NULL, NULL, NULL, '2016-09-02 11:38:58', '2016-09-02 11:38:58', NULL),
(230, 'Eint Thet Khin', 'eintlay1055@gmail.com', '$2y$10$KWB5s5rY6XafGM2ijXBrmenudlOa6bWThf1KVS3fJkwcC.Mtmbrg2', 'QCUYqOoyu2yQ0EPHYEvy1iuxZUNhqbqeJLbmgZuNVKtydkljwHERHQSSsahS', NULL, 'default_member.png', NULL, 23, '1994-04-17', '65d2d4b66e433fa4e93ad9df634ef4b4', NULL, NULL, NULL, NULL, NULL, '2016-09-02 11:42:04', '2016-09-02 11:42:04', NULL),
(231, 'Khin Chawsu', 'khinchawsu47@gmail.com', NULL, 'oDU5XgMCwmpSkWhPdV4lG7SFQh9uicENmYR9UiPpcc8J5MmGTKOjaCoaNBW3', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13962743_679207255565366_8503652855403154471_n.jpg?oh=43f8e4a7eb177b5d46ac135391ea7c6d&oe=58429FA0', NULL, NULL, NULL, NULL, '686818294804262', '43f8e4a7eb177b5d46ac135391ea7c6d', NULL, NULL, NULL, '2016-09-02 11:42:45', '2016-09-02 11:42:45', NULL),
(232, 'Iqbal Khan', 'iqbalkhan123123@gmail.com', NULL, '4OwH5dWhdK61Npo0hYOetc8U7AhxKgKiJonfuEOsUpZAzjkGAeeCCCIJzCDD', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13962499_1767295393518415_4663701857546363040_n.jpg?oh=db8ad1490a5f7a93fa346b9ad5d0f65e&oe=58448147', NULL, NULL, NULL, NULL, '1774331712814783', 'db8ad1490a5f7a93fa346b9ad5d0f65e', NULL, NULL, NULL, '2016-09-02 11:43:17', '2016-09-02 11:43:17', NULL),
(233, 'AungPhone Mo', 'phonesone63@gmail.com', NULL, 'R95GmZxUklSUKbnSP462HrCQu0BYk9ezB1raCpsTak4E4iIjoV1khA3vFadC', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10388184_765597646895595_7174579466751590107_n.jpg?oh=e69b1a09a019048f83e557646715eb69&oe=584E97B9', NULL, NULL, NULL, NULL, '980292672092757', 'e69b1a09a019048f83e557646715eb69', NULL, NULL, NULL, '2016-09-02 11:43:21', '2016-09-02 11:43:21', NULL),
(234, 'Sakura Kay', 'myatmyat975@gmail.com', NULL, 'j9E9GXjbILGUmQVGoWPzaRtFygix1WEf7woghctscpjRRvN9Lm9OBLA1LWZo', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13962771_1851916808369638_4509101336599149637_n.jpg?oh=4864cc1300bd845d930181ccd0fa88d4&oe=58852D1D', NULL, NULL, NULL, NULL, '1863734670521185', '4864cc1300bd845d930181ccd0fa88d4', NULL, NULL, NULL, '2016-09-02 11:43:43', '2016-09-02 11:43:43', NULL),
(235, 'Alibaba Myanmar', 'alibabamyanmarteam@gmail.com', NULL, 'FHl8hBjCVPF4Lpm755KqXMjhw9v00XL8K4Y4WEemMjcBgSCG6QPPzXN6Ggpi', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c35.0.120.120/p120x120/13781726_129600094142559_1932732462977514963_n.jpg?oh=7c20ad27e0490130ec93f63c14687614&oe=5846BE1A', NULL, NULL, NULL, NULL, '169566616812573', '7c20ad27e0490130ec93f63c14687614', NULL, NULL, NULL, '2016-09-02 11:44:57', '2016-09-02 11:44:57', NULL),
(236, 'May Lay', 'mr.july.july@gmail.com', NULL, 'OLgCbH7ERwXDB6HwgcipHAVl3b0XbjRFwiod7idDaGchXDt5JRhANtf2fbZq', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13882240_660199917464065_788904452737565371_n.jpg?oh=67f5e979ddc431afcfab9e2a50c3cc94&oe=58462F1F', NULL, NULL, NULL, NULL, '676569719160418', '67f5e979ddc431afcfab9e2a50c3cc94', NULL, NULL, NULL, '2016-09-02 11:47:15', '2016-09-02 11:47:15', NULL),
(237, 'Thin Zar', NULL, NULL, 'ZLDaFSYTQR1hWdeJi8gVLc2jy4osDXTE0LRvdBsVRg1qnxxwz6MN6joES8MY', NULL, '', NULL, NULL, NULL, NULL, '1736281723298794', '26c776e55280413bf00816060bb77e8b', NULL, NULL, NULL, '2016-09-02 11:48:05', '2016-09-02 11:48:05', NULL),
(238, 'Lae Lae Swe', 'laelaeswe16@gmail.com', NULL, 'ejp4WZlvF1s7PaX2b74ue8A4iBFDO9alnCDhvEe62QYONfYLgsXPVJX84QH4', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c35.0.120.120/p120x120/1379841_10150004552801901_469209496895221757_n.jpg?oh=2a95f65991f2f94828103a43dde73af7&oe=584C9342', NULL, NULL, NULL, NULL, '255046788228078', '2a95f65991f2f94828103a43dde73af7', NULL, NULL, NULL, '2016-09-02 11:49:27', '2016-09-02 11:49:27', NULL),
(239, 'Aye Myat Phyu', 'ayemyatphyu2015@gmail.com', NULL, 'Q2VgsmLycQcUMlK8WjJNcf9EfKiKImwN4KFs82hGqL5mykZbsoEkJvJYXxkr', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/13912883_310339072647087_1274943625609905204_n.jpg?oh=a582b4ce3628f91d990e82f80b30d416&oe=5844F7D2', NULL, NULL, NULL, NULL, '321405844873743', 'a582b4ce3628f91d990e82f80b30d416', NULL, NULL, NULL, '2016-09-02 11:50:34', '2016-09-02 11:50:34', NULL),
(240, 'Cho Lay', 'taninne@gmail.com', NULL, 'KE7BNxBh1Dg3OpIUPXXsXCPBTiAs0Bcj7x6ZV4vMHNh0dWXejP6Vu43A3x9Z', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14102396_1166456990060136_5236758061247423785_n.jpg?oh=7401e681c8fd287eeb90babeb686324c&oe=5837FDEE', NULL, NULL, NULL, NULL, '1168285329877302', '7401e681c8fd287eeb90babeb686324c', NULL, NULL, NULL, '2016-09-02 11:53:15', '2016-09-02 11:53:15', NULL),
(241, 'zayar', 'iveraction93@gmail.com', '$2y$10$soK/4F7EQmUtWMp0D4/Kn.A.RME/NiDzRf5oLlHy.ZyleqSILgY/i', 'N38DWc32PZvM8rO5wjSpOhaUPOdr3UXtTZasI1CEE33BThRAYrSZJMDA2MMY', NULL, 'default_member.png', NULL, 11, '1993-03-04', '3f0cac60e2483fddf71d7ec3619fa366', NULL, NULL, NULL, NULL, NULL, '2016-09-02 11:56:34', '2016-09-02 11:56:34', NULL),
(242, 'Thinzar', NULL, '$2y$10$1f2Q39tLqseaqMz3b7G1aOmrSdpx1kyC02ybF7xzvkF9B/PSeyoNa', 'cLAl3scAU9fFwnbjHCDSor8aBdcdXgh54ZMzD6K9pEOmZ86LOY846iBrOUuX', '09799888813', 'default_member.png', NULL, 32, '1987-03-06', 'd144624ebb94b0347b72a96378c8af1b', NULL, NULL, NULL, NULL, NULL, '2016-09-02 11:59:17', '2016-09-02 11:59:17', NULL),
(243, 'Phway Su', NULL, NULL, 'Ki1GisllkCQHNEzVoJ0exGCX097Lm8XDEuBGQ317GYYHMvhezHAA3kI2BWx3', NULL, '', NULL, NULL, NULL, NULL, '322528798092664', '5cbec5099b54fe85c09325008a12b113', NULL, NULL, NULL, '2016-09-02 12:01:06', '2016-09-02 12:01:06', NULL),
(244, 'Myint Zu', NULL, '$2y$10$gTZlhgWkhEx/asYQO1lSyuz7WDW.mql.yjh2iatdFxWL4tgdZ8HhC', 'peVSh8wKzid9fddGLc8PiagKjb55BHmLZdbQrzDmTkPsDk4u6VxoS0LZZafo', '09799692791', 'default_member.png', NULL, 1, '1993-11-04', '1', NULL, NULL, NULL, NULL, 'YhsRw6ogYrfC6oDyqLWbQYqs39g8BJscCiiHNAFBChtPxZrLd7a25hDpv9Dq', '2016-09-02 12:01:35', '2016-09-02 05:53:12', NULL),
(245, 'Ye Yint Htoo', NULL, '$2y$10$RFFXH6RESWRoWE.KegY0VeIlWZieNrWWvOsy.mNArRiApt7OcTelu', 'dby6Y2t115Y2LprAVA8KAwPNCvPzUsMPQvs24oaaQ0nNzCvgDlBSUoPtGi4z', '09257186986', 'default_member.png', NULL, 24, '1992-10-13', '1', NULL, NULL, NULL, NULL, 'wucPvaYgTS5Sq3aPeFBfP7eHJVUFnFaEIuOvvZ0RbVh29TmV9SHFGTVPUmUO', '2016-09-02 12:05:35', '2016-09-02 12:06:12', NULL),
(246, 'ye myint', NULL, '$2y$10$P7hXX67bFkH87Rc2i9CUtea5K8i51mTo9V6sMACdsGIUIIY.qGZEK', '6F1tOua77cFcplDw36xtt0Q7wnrAbFz4BZ4IoYHDROv8mACtt7TmYfUloHCi', '09965005842', 'default_member.png', NULL, 2, '1968-07-24', 'b3d69b3dc63e1addbfd91cefc947e359', NULL, NULL, NULL, NULL, NULL, '2016-09-02 12:07:57', '2016-09-02 12:07:57', NULL),
(247, 'Mar Mar Swe', 'marmarsweapril@gmail.com', NULL, 'wEodxrsBypU7Yp3HWBzUiOYjOKQbgR5ZF3bskNM2', NULL, 'https://graph.facebook.com/v2.6/172941673139044/picture?width=400&height=400', NULL, NULL, NULL, '1', '172941673139044', 'EAAPMa6cPYRkBAO6HlxIE98yopyp9eXDCT7k837MmHoT06bmHYD3L61eSXHObfIqBniI6WVNsmc3uKHRZBDCP2Y3eOiS2y2zaTqxGfnxZCop1GnlFqVo95pq49kqZBip72iWwtNt8ZBgpfW1H3HrBqCk6bQHq2UcZD', NULL, NULL, NULL, '2016-09-02 05:38:08', '2016-09-02 05:38:08', NULL),
(248, 'Zarni Phyo', NULL, '$2y$10$YtHHn95tf4vWiljQLCZHPex.rTlS8FK0mZorfBsp/Tuce/5H31.sG', 'uqcKCqZTSiVEWemR9CeqUSRRQHsMhAOzzMZcxBpVU1ElUUmjT2sB2wKeDv9t', '09791409450', 'thumb_38298934009623.jpg', NULL, 28, '1994-07-19', '1', NULL, NULL, NULL, NULL, '33szDGLKdhhNnx0Bn7N1paVJiePITOLg5cKhZ99te7sX0VZ6aP9CscvEdyQw', '2016-09-02 12:12:42', '2016-09-08 06:35:13', NULL),
(249, 'ohmar myint', NULL, '$2y$10$QMgTmXf/PzqvOE69fH5/qOGqAuiJmH.GCl4kW/RZNTM9G7sjoUhr2', 'SsgBpz4MW2VMhzlFivgeK4e8F1usJUuAF9kHwGY9yXdMDwrnpKSJw2kTGlM5', '0930020575', 'default_member.png', NULL, 43, '2016-09-11', '1', NULL, NULL, NULL, NULL, 'QT1e1o8f98yGfiTjXM2zV8zJh6KB2R59rFKkLiDACwlAnX1bGggsfLqyDMSB', '2016-09-02 12:12:44', '2016-09-02 12:13:15', NULL),
(250, 'Aungmyokhine Khine', 'aungmyokhine1976@gmail.com', NULL, 'MGnVIBsJfNyzSdWX0UtK9c8WBGVIdQB3aAwkCOslYsNoTn7QaPGVwQxOENhz', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/988829_480878215362129_1557313214_n.jpg?oh=9a8a28d69479d3a5480f8ee4feef6e93&oe=58400872', NULL, NULL, NULL, NULL, '1006578686125410', '9a8a28d69479d3a5480f8ee4feef6e93', NULL, NULL, NULL, '2016-09-02 12:12:58', '2016-09-02 12:12:58', NULL),
(251, 'Shwe Yi Tun', 'shweyi.arrow148@gmail.com', NULL, 'Fdtv7aBtAFHpEFRZZtcNXtvfEVfC7f7tVIFIFCjQ', NULL, 'https://graph.facebook.com/v2.6/924301744365206/picture?width=400&height=400', NULL, NULL, NULL, '1', '924301744365206', 'EAAPMa6cPYRkBAHjUb5GyVnp99znHYxILX0ZAk3UciGTyAsuH6yZB8UQOtetsiKRb4JBZA2iOxM2A17bQPYPxHMnDrPi4eDnOrfqCsW9ufoW3MK90E1iZAumerTv1OcSnks6357UpR6v6M7hR725DlZCIdEZAFq02l4KbUOZCUh5jyUeMeBH2aIQ', NULL, NULL, NULL, '2016-09-02 05:48:07', '2016-09-02 05:48:07', NULL),
(252, 'Wai Wai Mon', 'waiwaimon92@gmail.com', NULL, 'JjTbMIsnpX3wRxggcu6ckuKrX1bDwidGxrJvN22x9VoiubFSmZEQgt3YmyJ0', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c196.85.522.522/s120x120/12799046_1257236047625015_2079152069664812866_n.jpg?oh=071c0998f3c1750f2d7b8a6a99a329b1&oe=58568706', NULL, NULL, NULL, NULL, '1411210172227601', '071c0998f3c1750f2d7b8a6a99a329b1', NULL, NULL, NULL, '2016-09-02 12:18:51', '2016-09-02 12:18:51', NULL),
(253, 'Aung Oo', 'aungoo1812@gmail.com', NULL, '9cwoRN8kod7QGUsFSolMmINTs1W3cPSCVdRAViuL', NULL, 'https://graph.facebook.com/v2.6/1756900731251457/picture?width=400&height=400', NULL, NULL, NULL, '1', '1756900731251457', 'EAAPMa6cPYRkBAJNeZCJW7q3ThSza3M4AZAN6n1CcCHAZA6QuurXjD3q8S35OIKEXWVjThqjpFZAmOJEJD8H6GTKpudpMnJhzISshL8bEGK628nRUeLvSwtg4x0A3ps5WQu7Lt0wTPP8jwzA9E49ZBR2OuIP1S03V4qC2SZCZBACuwZDZD', NULL, NULL, NULL, '2016-09-02 05:50:46', '2016-09-02 05:50:46', NULL),
(254, 'mg mg', 'mgmg23766@gmail.com', '$2y$10$iALfreG/Pk1ls9mKreTXFudS/s8w4e48tH.bTtRjI7u0BmBbR4Wy.', 'uuEvjemcHPn2dF8MJcDQkcCRm09z4Z1bZXKdRKFfA8TyzHG41cUPEaXjX0YR', NULL, 'default_member.png', NULL, 1, '1964-10-22', '1', NULL, NULL, NULL, NULL, 'e7Fo0Z1lL6uzdtQy617auuhVmBMaEYqBSLjOvBZpM975vQ2dutDk1W90u7QD', '2016-09-02 12:23:04', '2016-09-02 05:54:19', NULL),
(255, 'Thuya Hein Soe', 'prison.tyhs2090@gmail.com', NULL, 'gVBZGyupqjRnLx6v6GHneRit6fon8O2gRPMPUAaiV7whwr657yz4dKLnl1ug', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13690579_1216409855076618_2267390705237247903_n.jpg?oh=fab4d3f346c29f4ebfa9ecba7d0af00e&oe=584610DC', NULL, NULL, NULL, NULL, '1255712577813012', 'fab4d3f346c29f4ebfa9ecba7d0af00e', NULL, NULL, NULL, '2016-09-02 12:25:14', '2016-09-02 12:25:14', NULL),
(256, 'Aung Lin Naing', NULL, '$2y$10$3NJm8INqchHmEnYD1AnBDeN3HD/IMQsPEs7LmP7eYlTN6Eb4bF8ky', 'U71ApbxtfB6rqsYTzn4o8xx8CI75bynOfs6fFUHpiVfK1zk74qC0HoblZxRO', '09421180582', 'default_member.png', NULL, 45, '1983-03-14', '1', NULL, NULL, NULL, NULL, 'cOBR5EtlEcT7okJkxqdlaynXX8bzu0uxOlbpoTD5AxMs3Gfu2rOwuJQbxamW', '2016-09-02 12:25:31', '2016-09-02 12:26:04', NULL),
(257, 'mmmm', NULL, '$2y$10$21QumRRyVnW866kCan51S.pXSm4YWotShqQ/mGnwoeRHZDIE84d4q', 'uxgd95Uvpj1rbkL9CqWg1PFqhxTIZDUC6OqDbF1a4lGcR9v3P1pITYg2qxjZ', '09450021589', 'default_member.png', NULL, 11, '2016-09-02', '1', NULL, NULL, NULL, NULL, 'WARBmqkEKeiOGlb3eaI3iG17tXXfC6mm3bbCJiHYDqOulpvryv1xfAy6lSZM', '2016-09-02 12:28:15', '2016-09-02 12:28:38', NULL),
(258, 'Aung Kyaw Zaw', 'mail.akzap@gmail.com', '$2y$10$nqoZFWBt23IXi4/GL5a3YeLTw6z1/6d9lmfyIP6/V57Z7VldwghhS', 'pELcCa2QykkAc090F24KF3bnbg4CJ1mKGPCbYkLlp8SDooFqSjBPO3kkSjND', NULL, 'default_member.png', NULL, 1, '1987-03-23', '1', NULL, NULL, NULL, NULL, 'Vz4CRH7B8V69GAI86ghFA7E0pqs41skaCyXDfbASBGFWBesXFBEasQa2RC4a', '2016-09-02 12:28:58', '2016-09-02 06:00:49', NULL),
(259, 'jud', NULL, '$2y$10$K2Tp5AVMGlrCYTbsT5KEq.EuPqJJZAWiMkQj.mks3zzZd1x7.honC', 'oAL3U6rWIPu3cSJqlVKaJOuUvEshafDfGWDQ7DaB8hGes6pgrKirXPkCa3Uu', '09254007422', 'default_member.png', NULL, 2, '1991-11-09', '1', NULL, NULL, NULL, NULL, 'PB6syTQfuf4r28g5WDo25HUBwz1eWUFkLLmNpnnppa6lsCNcRsRfGIZpQ5Qx', '2016-09-02 12:29:41', '2016-09-02 12:30:14', NULL),
(260, 'Pwint Phyu Thet', NULL, '$2y$10$IFKCTG9d98oBaTCvEGNVde4JEjKQ6anbvCUq.HrI/5HHjmWydV62G', 'NViuItStLwOqq7mAcB0zsFW8eBMdAUdhFuExjzFdDwMGDxRmcSyD0lYtMae7', '09420077853', 'default_member.png', NULL, 38, '1977-08-25', '1', NULL, NULL, NULL, NULL, 'Hde3rKVmCj6oOzxPIFzLADoNz5RmdJvOgZpxRbdOJkdIiDzWVhQce1pybPr4', '2016-09-02 12:29:58', '2016-09-02 12:30:34', NULL),
(261, 'Aung Thu Tun', 'kyarlay21@gmail.com', NULL, 'EbMcayGqsp9Zu4dK8r9TF86dFcLrae8XW6rk3clZCbcBcPLrSQThxbLaf2PQ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c35.0.120.120/p120x120/10354686_10150004552801856_220367501106153455_n.jpg?oh=866e0f66bfb396b96bf42183920c382d&oe=5854B68E', NULL, NULL, NULL, NULL, '1771094616480221', '866e0f66bfb396b96bf42183920c382d', NULL, NULL, NULL, '2016-09-02 12:31:27', '2016-09-02 12:31:27', NULL),
(262, 'Than Than Maw', NULL, '$2y$10$v0pLHqIvsrtdBST0/24GseJXvTmvQ5JRZqVB1m1xOfV1IqHxzDVpa', 'w2Z9hlx7BhCRfu3WJA4Dg19ibVZAQFtZniR6yUr4DCD4oRFmYTpwJrA7pThW', '09253047008', 'default_member.png', NULL, 3, '1976-07-01', '1', NULL, NULL, NULL, NULL, 'EBNt8LpxeijhNz8V0msAqPKD3EWMaiiXdGpVyxQANDIcYp0BngJ7yXqnMpVx', '2016-09-02 12:33:50', '2016-09-02 06:04:21', NULL),
(263, 'Myo Min', 'myomin19756@gmail.com', NULL, 'NckCwKmthDfs76kyw9ZGdEYkuPBmekx6IiZpEfEoUfJW8P4a0IG8hTYprqWw', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14102466_1161605220544269_6919372400903554468_n.jpg?oh=80bb22674be8cc978d16381463c21a9b&oe=5855B68F', NULL, NULL, NULL, NULL, '1166060486765409', '80bb22674be8cc978d16381463c21a9b', NULL, NULL, NULL, '2016-09-02 12:36:04', '2016-09-02 12:36:04', NULL),
(264, 'u mya khin', NULL, '$2y$10$ZHX8SZ0/p.Uql4NeTCL6FencAL70DQ10/N6PIzdvaGEjM8LYpC7Pe', 'V7vrsp6q1ggC7ICWbr3Bv1UUyp8FFoV3eu3k3uKV8dL8FCMBwgFNyw0cKd6n', '09971803544', 'default_member.png', NULL, 2, '2016-09-02', '1', NULL, NULL, NULL, NULL, 'Ro8yo40Ov55ScrU4Trz49GkMlkWHNXQXB6bavITFSmc51u8YFYeNyuqsehtk', '2016-09-02 12:36:28', '2016-09-02 12:37:52', NULL),
(265, 'နြယ္နြယ္', NULL, '$2y$10$8Qkq94d61dedxNnCsJbOLujBRTcL1ird1.LxAyg9jfqX0nHAkx4CO', 'Gk9zJvdpsnTpMBUk2I6jsjuxOKxcb6g3S7epYr5AEVnQkNigvDdv1bQJ8emg', '09780558112', 'default_member.png', NULL, 31, '1980-09-17', '1', NULL, NULL, NULL, NULL, 'rmuluQ63jdqRfzx5vmpGNj33ZruiJwWrlcAZL5yl8MhkoomdguvsQFSPdHry', '2016-09-02 12:37:02', '2016-09-02 12:37:50', NULL),
(266, 'Thuzar', NULL, '$2y$10$awsTav2hVJILJ.5nzEnoTOyfa/1rzRbvhLIlIUzwlNgrYGRCXi6vm', 'WpCyrlad8wYX5qiSTlAcL9vfcff1YsjARJ9vtPELMCqdejDz3mpWHVG6K57o', '09781373405', 'default_member.png', NULL, 28, '1991-06-27', '1', NULL, NULL, NULL, NULL, '8SQomAhMo67V2kAHkjDn0QKWy7Eb7BgMkEP1QjGYed64VBO7eeJ6KHLjZHhy', '2016-09-02 12:38:27', '2016-09-02 06:09:24', NULL),
(267, 'khine thizar oo', NULL, '$2y$10$9H2nz2JSNETuSqtRE2DkgOgnz.aZhE7JoQZPXW9wg9WI89YqIa6g6', '1CL4lPiRHJj7iOvLtEYkLPYaJJRNBO1H03OHTy4nFxTqEdFPENK21KpAfuYB', '09778555733', 'default_member.png', NULL, 32, '1987-03-06', '1', NULL, NULL, NULL, NULL, 'y9KbMKM4CdUs2Zq2glXlkhBjF7cqa8hKCov8C6QTt1lxHzckJZrOFiTOE5IB', '2016-09-02 12:42:35', '2016-09-02 12:43:45', NULL),
(268, 'Thet Phyo Kyaw', 'tkyaw14@gmail.com', NULL, 'lW6RBtnDNCygL0mveevJqs0RFlbDbqSxOQiGGadG', NULL, 'https://graph.facebook.com/v2.6/1177915548897541/picture?width=400&height=400', NULL, NULL, NULL, '1', '1177915548897541', 'EAAPMa6cPYRkBADMr8gQbrgjnADNoz6oZCyCYrZC143NkRJTeav8onYD2AxQSpNrTN2xN2oZBtxo85VRuAdNxHY7VVQyZA2t4ZBlmLOVP1Gxfw3zMHBBLdA8UL2XNMH6sZAcEvIcYjKOBAIVd0RyitYkoZAKX2dI1EboVSeJnvxeKHb74QnQoxjV', NULL, NULL, NULL, '2016-09-02 06:12:59', '2016-09-03 10:10:39', NULL),
(269, 'Kyawminn Thu', NULL, NULL, 'AJ1gnAasUhBicpCDTXA89cIUTCLVrMg0GI5Tp83N5aeXCfiMB2Curby7Mhv6', NULL, '', NULL, NULL, NULL, NULL, '287392588284930', '4560519c3310d2b686993374d8a79575', NULL, NULL, NULL, '2016-09-02 12:44:16', '2016-09-02 12:44:16', NULL),
(270, 'Mirei  Hayase', 'eds1275slash@gmail.com', NULL, 'E8wGUwJLg9BcRLMQ1zfzH8TPqtvDJxX2q1MAkKRlVcPFkKMZIsYfAgkBIGK3', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/10402497_637135343044977_2996007305361697603_n.jpg?oh=220cda5d83bc68689f34f4aa43cca683&oe=5837BC5E', NULL, NULL, NULL, NULL, '1086547678103739', '220cda5d83bc68689f34f4aa43cca683', NULL, NULL, NULL, '2016-09-02 12:46:11', '2016-09-02 12:46:11', NULL),
(271, 'Yê Yîñț Ãĝ', 'kaunghtet2102@gmail.com', NULL, '2iutZgbTLNQ9MzGS7ctv1rQaHyRoZfwhwdZKcjiFTW9jEiqfnY8ngIWKYsWE', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13606808_596620183832819_5513244463705449955_n.jpg?oh=397e46431b4ea5cbd712cd9534706d67&oe=5855C9F6', NULL, NULL, NULL, NULL, '614308895397281', '397e46431b4ea5cbd712cd9534706d67', NULL, NULL, NULL, '2016-09-02 12:46:32', '2016-09-02 12:46:32', NULL),
(272, 'Mg Lay', 'mglay9410@gmail.com', NULL, 'C1wJmKvQ4zSjbmKx02lKxeGfNK0XYO25eYvsmvh1dCO4H45JiMUPYvZxpvrO', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13886936_117678662007324_7520969118362097840_n.jpg?oh=3f31b3bce61bd904fcb77c6827923cca&oe=584CEF0F', NULL, NULL, NULL, NULL, '159610984480758', '3f31b3bce61bd904fcb77c6827923cca', NULL, NULL, NULL, '2016-09-02 12:51:37', '2016-09-02 12:51:37', NULL),
(273, 'Fall Lay', 'pfalllay@gmail.com', NULL, 'z4CbyOth2MmiFWh2pOPS70DjpmhK8LgzQi7CZSSE2GKSdlB9kcahSQAKF9dS', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12688244_989476544476511_8119677118866279153_n.jpg?oh=aacc9424580c530749ee55410cd4dc1d&oe=58803AD8', NULL, NULL, NULL, NULL, '1123399807750850', 'aacc9424580c530749ee55410cd4dc1d', NULL, NULL, NULL, '2016-09-02 12:56:43', '2016-09-02 12:56:43', NULL),
(274, 'Sabal Phyoe', 'khinesabal@gmail.com', NULL, 'rWHaypIhd65ndCsXcaSYamlWHqsoUPW4Im7tWy0ofCjoosFvJTtcJspryU8h', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/12572943_1290539384305453_891695275515105718_n.jpg?oh=289f40e276e84dd2f7dc08e2b30c5d83&oe=58CC6E67', NULL, NULL, NULL, '1', '1496394757053247', '289f40e276e84dd2f7dc08e2b30c5d83', NULL, NULL, NULL, '2016-09-02 13:06:57', '2016-11-02 13:26:35', NULL),
(275, 'ye nyunnt', NULL, '$2y$10$cJ990stebH3w3VO4Wf82ouVqVjQY9wUHtkBLVNy335ITnH6O.IVHm', 'DV7kyp5CUls8ckOvNpfSrLBHnwm3jthZxyjt06dqVJ5nmJLav1QYz5Wqvb81', '09971805937', 'default_member.png', NULL, 18, '1953-09-23', '1', NULL, NULL, NULL, NULL, 'AgNMiU1PGnBf7Mh6cBZGUs85hmJZvYrbpkD8phRYUYx0NFHkzUJ5i4uOSN8o', '2016-09-02 13:07:55', '2016-09-02 07:00:05', NULL),
(276, 'Ye Thiha', NULL, NULL, 'gPtJctxM9ptdIvU0YYACJXiDsvyoMhnT5SCDXDRZvXMlmptC6202nNrn6rlu', NULL, '', NULL, NULL, NULL, NULL, '536074836577733', '7b1a8fd2079da22c3d2e2a24a44b9faa', NULL, NULL, NULL, '2016-09-02 13:08:21', '2016-09-02 13:08:21', NULL),
(277, 'Thin Thinn Hlaing', NULL, '$2y$10$611o0zdh3g/fYc/Pkatvk.Sf2kl.OMEJ8X5VHFIgjk0qoxQzs7Qhi', 'VHmD7lYl5BooupZHXJRART7rV3UF2DFpCRI29vDzwoe8d5fs4PPpXkuxNnpo', '09977214968', 'default_member.png', NULL, 25, '1994-11-26', '1', NULL, NULL, NULL, NULL, '7Ln8EY7EPN9zw0rQVJTAozoYFDeZ3KvlBIpdz65b4kDz7c3in98WIrqApz2e', '2016-09-02 13:18:30', '2016-09-02 06:48:59', NULL),
(278, 'Tharthar', NULL, '$2y$10$TVdKP31ShhZRfW5NwO1nAuGCn58/IKa5V2QgfJgAdY3coK/gvX9zq', 'FsFkAp0TSdkmWHHyXQaL96Qdqbj151VpUnd5WlJcqp5BMi6gHdQrJBD3iCwG', '09771010134', 'default_member.png', NULL, 24, '1984-07-21', 'ea1c4a3c2ad1d9bb6a7e37ea9ed7276c', NULL, NULL, NULL, NULL, NULL, '2016-09-02 13:18:30', '2016-09-02 13:18:30', NULL),
(279, 'Myo Thi Ha', 'thiha.myogyi@gmail.com', NULL, 'lREYgVbKHy5EwP5GGMCJrnKFKnFPOqAcLwUeRpywdL861tSpFpzGiNEhwIYE', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14100257_1054178758029621_2930188648019769186_n.jpg?oh=4b5d4399d509a0b6a6b87ffe1ff0f6dc&oe=5838A9D3', NULL, NULL, NULL, NULL, '1056088721171958', '4b5d4399d509a0b6a6b87ffe1ff0f6dc', NULL, NULL, NULL, '2016-09-02 13:21:33', '2016-09-02 13:21:33', NULL),
(280, 'Than Aung', 'thanaungthth@gmail.com', NULL, 'P1oX9qWiD0WFkU9G7YW1zOrNCXXCo09xtbIxkNJ8CbP3NuW9mA83RXuKyIma', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11998895_1639567912983036_9143042709478971023_n.jpg?oh=0151258e97c9123a66df715a3e45c472&oe=584128E2', NULL, NULL, NULL, NULL, '1780348548904971', '0151258e97c9123a66df715a3e45c472', NULL, NULL, NULL, '2016-09-02 13:28:25', '2016-09-02 13:28:25', NULL),
(281, 'Wai Yan Aung', 'waiyan.office@gmail.com', '$2y$10$M1VaiAe6QQQ0ZkFaZKynu.VrHzvF1nlf.2z920oDWzWDzkWbP9eQC', 'VpLjtNbn94BPWnT2r5wQaviHQaDSteCBubpMlbR8regwHdD3nrMbxVI5Bys1', NULL, 'thumb_90005722789008.jpg', NULL, 14, '1987-03-11', '1', NULL, NULL, NULL, NULL, 'TpqYIxvh7raCNNThJ2kevrHO5Ysq2yLEZBVNX6fyjTFREpyRI73ig2YZ9sRX', '2016-09-02 13:29:37', '2016-09-02 07:00:38', NULL),
(282, 'Wai Shan', 'waishanphonemyint@gmail.com', '$2y$10$aJihJwNtj.0ZplTMiBPnzuyemjNgK8I7.OPJHp1y3qI3xpWd3o/zW', 'tF0mInP5BP3w3fjtfn2JDdWQIq12gSdmYI2UUCCjSjafcdFL9hTvC6CV4tDO', '09798122675', 'default_member.png', 'Yangon', 31, '2016-09-02', '1', NULL, NULL, NULL, NULL, 'waaUXTCoLlQUYWjpRID1cPSonM6cuvZPL78xM7ksgZQsrw4W57kWeGXuUhk5', '2016-09-02 13:30:53', '2016-09-02 15:06:14', NULL),
(283, 'Aung Aung Naing', NULL, '$2y$10$M01COFJ366HpnkmQVrjDYeyUFYT41K/2dOVZCw7EdAjDFIsF2cfuu', 'jPpPWk2JGPOSozHXGHeSqgnQpwXAAneA0AaMHmuQOsoZMIXq1QFhN3GKALNc', '09450006636', 'default_member.png', NULL, 23, '1979-03-11', '1', NULL, NULL, NULL, NULL, 'le3UH83y9yR2iaTwTmQAhsyBbBsKElevvOUkpyYlymgXcva2Vm5nslTpWDOY', '2016-09-02 13:31:40', '2016-09-02 13:32:08', NULL),
(284, 'Moemoe Khaing', 'moemoekhine1@gmail.com', NULL, 'J1EsZdRf9ZKGq5OfNO4pZyb5Iqs57z7kqgDlLFPbvv0J10d4bzwcOuiWPW6t', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c20.0.120.120/p120x120/1424508_379459912186144_723647551_n.jpg?oh=3c39456114fd4e3068aa04c275a85576&oe=5847A9E5', NULL, NULL, NULL, NULL, '860228957442568', '3c39456114fd4e3068aa04c275a85576', NULL, NULL, NULL, '2016-09-02 13:36:50', '2016-09-02 13:36:50', NULL),
(285, 'Thazin Aung', 'sweetthazin20@gmail.com', NULL, '0Ye55pgLGjjIRxi3Q9stq5DDVuVSkumf7c8da8SZSAWrmymTlyZ6ermbQGLa', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/10888785_1068374659855651_5984772378560876859_n.jpg?oh=5a314928b7e699f6197cb3cd29fbbf01&oe=583882DF', NULL, NULL, NULL, NULL, '1483654984994281', '5a314928b7e699f6197cb3cd29fbbf01', NULL, NULL, NULL, '2016-09-02 13:38:15', '2016-09-02 13:38:15', NULL),
(286, 'Hla Witt Yee Lwin', NULL, '$2y$10$vtGwtPv5UMoiTB5k6Vp.x.xFe5AK/XhHXTuOXI3pb0S3EFECh9UHq', 'ylAOBDddvXnU01mnlZI1jXtToFDeuzk2x46RjB1N5Tkq7pGyQNRmXZb9lthM', '09401561684', 'default_member.png', NULL, 29, '2016-09-02', '1', NULL, NULL, NULL, NULL, 'Hshl9UaqIBMLcWj4rjCmgBG97kvYR0NHzRdP9fbDpc7j0QeRDkFK9O8eoY38', '2016-09-02 13:39:55', '2016-09-02 13:40:32', NULL),
(287, 'Myint Thein', 'umthein15@gmail.com', NULL, 'rnk4hFcMkrMtKrY8C2Jq15Kk9BPFRBDkNANEkl8PsGfESNAiJOwt0nOEwbCZ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/1780683_361661530667123_8892791302468173452_n.jpg?oh=72d16177597ee89e4527a413fb53e302&oe=584D7CE7', NULL, NULL, NULL, NULL, '643132492520024', '72d16177597ee89e4527a413fb53e302', NULL, NULL, NULL, '2016-09-02 13:40:14', '2016-09-02 13:40:14', NULL),
(288, 'Marvin Skiller', 'marvinskiller1993@gmail.com', '$2y$10$/wGaZLI3qb67CFfYvtP1T.f51VLdT6R4X1kwJ6BN.sZ7f9demFSJS', 'zMdFtsvECoaKA7VkAYSp6O7su7WTlZI7ehJa6IzhstBvIXJB5qye7e7PDZlF', '09796823538', 'thumb_16029220002.jpg', 'Sulay ', 8, '1993-05-17', '1', NULL, NULL, NULL, NULL, 'VzXtGgQlUkrdISeDJA59Y9rBXTGhX7q2YLWPoEegLAP4WnLFIwJdBF2WyxA8', '2016-09-02 13:43:15', '2016-09-02 17:22:38', NULL),
(289, 'Thukha Pyaesone', 'thukhapyaeaone174@gmail.com', NULL, '4VYgtirg0SgHZTkZDxJOLkfQqUswyPU5OFJFGTxA1RgGFcYfqnvkO9KJ7TNk', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13895454_1679578315700344_1724024786339639217_n.jpg?oh=c9d9409b2ae2bfc244764022492dbfa0&oe=584BE0D6', NULL, NULL, NULL, NULL, '1700054653652710', 'c9d9409b2ae2bfc244764022492dbfa0', NULL, NULL, NULL, '2016-09-02 13:44:38', '2016-09-02 13:44:38', NULL),
(290, 'u taung myint', NULL, '$2y$10$zEM.5DnM.FwWHpWYxq/2gu/A.R7d8FZ8DLeOv2mz27hqNINg8uBx6', 'aGJ577Lst6FERPfNejw9ETtnX5VXmNwTPAEoqM6XDxi4UJ1Z4leoI1tshNzP', '09778959591', 'default_member.png', NULL, 31, '1962-02-02', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-02 13:45:13', '2016-09-02 13:45:13', NULL),
(291, 'Xhaka Waw Gyi', 'yadanarkyaw.newmen@gmail.com', NULL, 'bkSFtiqbY8tczobV8fKdN2JjQ9YHXfzVskgnf48i', NULL, 'https://graph.facebook.com/v2.6/519869374869823/picture?width=400&height=400', NULL, NULL, NULL, '1', '519869374869823', 'EAAPMa6cPYRkBAOTDOU8JpNZAZBM00Or4UveY45XbvHDChgZCkhmT0F1tNyCErYUBQ67JpbjyhIGxSEB9duZBXUy9viYIFTVB5CDDK8YCI7eEAxtZC1eHlSQGvBqjmAWjH5J7N7iklvcvZApKZCEJ7iu8Ov0QZBjaKSIZD', NULL, NULL, NULL, '2016-09-02 07:20:57', '2016-09-02 07:20:57', NULL),
(292, 'U Kyee San', NULL, '$2y$10$hbl6HMtbc49KSbZmrjmzaOPlHMosK.NriE/qpAj1tp6ceSHxxdvIC', 'BuSKHFYGHZviBa14v7nXGUR7WcUVYbJpU9AxHq1gZ8xlpbs7Yky6sqVkbbaX', '095147126', 'default_member.png', NULL, 23, '1960-01-25', '1', NULL, NULL, NULL, NULL, 'zCDOfaMl57XVHydDmxxejlVE5lrNWvWjQAY4UVPCtkZkPQrf4LYLn2589Q8J', '2016-09-02 13:58:46', '2016-09-02 07:29:31', NULL),
(293, 'Htet Htet Aung', 'chozinwin990@gmail.com', NULL, 'ept62XqDWl6ezQVGpUxi3Sqj4Qrf7Py6IGJi0P3XtdWydWQnj0KIpEu9o3Tk', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14141594_299294053779619_2441858370512700399_n.jpg?oh=37769a79b568356d43e2ab3a1f61040b&oe=584FCE7F', NULL, NULL, NULL, NULL, '303837326658625', '37769a79b568356d43e2ab3a1f61040b', NULL, NULL, NULL, '2016-09-02 14:00:50', '2016-09-02 14:00:50', NULL),
(294, 'Nay Naing Tun', 'naynainglin@gmail.com', NULL, 'ftjvJZAXIRAlic30AWSvqrT3dhXO2Sk8HHmMKoPvjbE6zPIg2q8NN2fbMiLE', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12391268_1158970520798586_7262944577083296981_n.jpg?oh=31603fc2271da2cf7138e60f12a4cd9d&oe=5884DE01', NULL, NULL, NULL, NULL, '1350970021598634', '31603fc2271da2cf7138e60f12a4cd9d', NULL, NULL, NULL, '2016-09-02 14:03:30', '2016-09-02 14:03:30', NULL),
(295, 'Ko Khin Maung Lin', 'khinmaunglin22@gmail.com', NULL, '3ATt3VFwU1nG2rTtJeP8krPDXpFmAOxhNxD0TZLl6qmN0FnuVvU84lFxsjEY', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/14199554_630591123771447_530165308879831999_n.jpg?oh=a97da8ef79d23dcf63f70161529e8cd0&oe=584C4434', NULL, NULL, NULL, NULL, '631564417007451', 'a97da8ef79d23dcf63f70161529e8cd0', NULL, NULL, NULL, '2016-09-02 14:07:44', '2016-09-02 14:07:44', NULL),
(296, 'Mg Snap', 'snap151268@gmail.com', NULL, 'JxkCFd6tGgK3Cqh4O4luagS7XsXinVzBGXbf2PDBCCxjHynOOtKCUDem3j7V', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13051728_1091276754272942_6210217477754893857_n.jpg?oh=d229c61ded6cd4c01dc2ed4e4a5b1d8f&oe=584B9A2A', NULL, NULL, NULL, NULL, '1188004731266810', 'd229c61ded6cd4c01dc2ed4e4a5b1d8f', NULL, NULL, NULL, '2016-09-02 14:08:02', '2016-09-02 14:08:02', NULL),
(297, 'Wendy Nyo', NULL, NULL, 'Xg5hHXuATDnBp9z6QPVrNgaYWiAdxGs03G5cYTslo9Jp0aUHT9Lv6Gv9pPxn', NULL, '', NULL, NULL, NULL, NULL, '1141676589259861', '49d81f4858f1505143a63f5cd41a717e', NULL, NULL, NULL, '2016-09-02 14:10:37', '2016-09-02 14:10:37', NULL),
(298, 'kyawsoe', NULL, '$2y$10$4ew.wY7fpSi1q7dGq9jsieFnoVWJWt5ooxEnv.wGXTp0Om6H1X4kW', 'IpCtMxkDuc4xwZEWdU2A0o7ygjpgfeH6uyUvdRjM1Awba8xjbllUGbDdbnyd', '09795008177', 'thumb_77392537069721.jpg', NULL, 29, '1982-09-02', '1', NULL, NULL, NULL, NULL, 'tV3BvrjHFtvoB96WAoy9cG4fICznAreW4dPGq2b4d1maBfpFv3YpQo6ELggT', '2016-09-02 14:11:50', '2016-09-02 14:12:16', NULL),
(299, 'Kaung Htet', 'boybody123@gmail.com', NULL, 'VCgLy4SAWhcRbYdtHRSYT5OjfUy7MjPlDNFpGhOCWDYqgoqp9S8cNgTTA3AX', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12311232_920952774650838_8491578482771328196_n.jpg?oh=53f671211ebe627e94d43ec208ef4458&oe=58381105', NULL, NULL, NULL, NULL, '1086311381448309', '53f671211ebe627e94d43ec208ef4458', NULL, NULL, NULL, '2016-09-02 14:15:08', '2016-09-02 14:15:08', NULL),
(300, 'Khin Pann Ei Mon', 'khinpanneimon@gmail.com', NULL, 'KztqaKGxtFbu42pSM1P4dp9kVA15ymMO21Mw1CEJ', NULL, 'https://graph.facebook.com/v2.6/10153894492726239/picture?width=400&height=400', NULL, NULL, NULL, '1', '10153894492726239', 'EAAPMa6cPYRkBAGzZBZC3ZAKKrsKM0xc0NuCBx8RfToZBTirreZBVU5fOacFWr98G2g2CqMMjLTEgFm3ZAG5bb1XbGkBTIKC5ofCzDDJYUA0STVIRVc1ZBbJt6ZAlfStGEjexixR0Ic4RH6BMP6E2fUV3Avjk9X1ZAqM4ZD', NULL, NULL, NULL, '2016-09-02 07:49:06', '2016-09-02 07:49:06', NULL),
(301, 'Seint', 'seintaprilzaw1996@gmail.com', '$2y$10$GCCln.5Y1QedKTfy2iiDy.WUO9Lqh5rpgHmwLKXQcY1EKzu0IQPje', 'HOywVGXRhJ068Zazisy5TcASIU1RtI2vqM1HeJu4nOLansVY8YpGnn94BAnl', NULL, 'thumb_97032499751883.jpg', NULL, 8, '1996-10-29', '1', NULL, NULL, NULL, NULL, 'spZ29967TMMj8bsmz3hyTxB5v2Pb1hqpViC6NzIHDZ5MfiImsDo3gXNVB6PI', '2016-09-02 14:23:00', '2016-09-02 07:53:22', NULL),
(302, 'aye myat thu', NULL, '$2y$10$qyLFcZXbQkTwxBM3lviJkO8IY1adXoK36zra0daVonIqS/J.BpvRq', 'wWHjL2Xj9xJ5TIZPmLHH1s6aiVAcEDke8vx1FpnkhYasABBSFRPn63WvSrub', '09796827562', 'default_member.png', NULL, 5, '1988-07-06', '1', NULL, NULL, NULL, NULL, 'ke4Bh6x2FEcOQLnqzA6U9sZtzghr8uFx3ubjHnYn7qeg2eUYOPxASSR9kRpx', '2016-09-02 14:32:39', '2016-09-02 14:33:24', NULL),
(303, 'UAungKyawSein', NULL, '$2y$10$yRQUXXwhCXzuihliondh9ezkspGLm7ZlYR0Sy0ehG4LAR/wd/pzxm', 'cs6Y7HGBnDitrGwdLEIz7Jjqv9WIffxXEqFhcwwu1DAMshSLmUlfISOT73lw', '09972885477', 'default_member.png', NULL, 22, '1990-11-22', '1', NULL, NULL, NULL, NULL, 'VVg4exOmPOCtS2Ymmt6nyFq3A4iX2kIK4TtTlyez7yk0O5FBY0YLVYz21uXA', '2016-09-02 14:37:42', '2016-09-02 14:38:20', NULL),
(304, 'Pann Phyu', 'dynotab@myanmar.com.mm', NULL, 'L041EPiYJGwuCz6OzPRf5DQhpI6KMZruIT3c5y7M', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13935041_1151099051627962_1254399394775569121_n.jpg?oh=ed4d4b0faac917730df15907c782c962&oe=5844E016', NULL, NULL, NULL, '1', '1176306715773862', 'ed4d4b0faac917730df15907c782c962', NULL, NULL, NULL, '2016-09-02 08:18:13', '2016-09-02 15:00:12', NULL),
(305, 'khinkhin', NULL, '$2y$10$dhxqKzQCoHeW2XgabXnKxOPWPsIp7LBwF74Lf25y.4I2QqZ2t2O/W', 'xe2mDn25StOsJj5NepidnRf8S1Ie3o3WU2oM9BR4kXDbRiAI47EviK0Ot9DZ', '095155177', 'default_member.png', NULL, 6, '2042-01-09', '1', NULL, NULL, NULL, NULL, 'dt1mPP7QQqPgnLYJzpwMyttySD0osyhHhkNth9ezQtfJD7m63xOPvOwqDcj3', '2016-09-02 14:58:26', '2016-09-02 14:58:50', NULL),
(306, 'Be Light Mimi', 'nicky2425@gmail.com', NULL, 'kRzJymvWecsLfdraUwbuSJ96o50bKBlQmCx7atF2RSVn97EgEmNGd5pYvUYY', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13566909_1065768970166356_2269412836866647092_n.jpg?oh=c57975a0bc3bd843f3212ddaf3e0966d&oe=58852602', NULL, NULL, NULL, NULL, '1111913388885247', 'c57975a0bc3bd843f3212ddaf3e0966d', NULL, NULL, NULL, '2016-09-02 15:02:21', '2016-09-02 15:02:21', NULL),
(307, 'ZayBo', 'zaybohein@gmail.com', '$2y$10$iaSaMKbXmUJPqgdu6liXUe8b0ubAUg9nuw0h8SLRRtJaoR/XeDWoK', 'Uxqb3tcdJn84hLFoPICdUk3F91UOAswDwz0pDMPLKqXr52hJ1NTaPTPTc0cE', NULL, 'default_member.png', NULL, 1, '1998-10-13', '1', NULL, NULL, NULL, NULL, 'aS5o6Eenwr79jzwQRy8WB1AMv2Vifc5JsIGmhjzU0H9af6weCtNPjq58Dbun', '2016-09-02 15:08:41', '2016-09-02 08:39:03', NULL),
(308, 'Zinnwe Win', 'drzinnwewin8@gmail.com', NULL, 'nYRHPYTuiGuJVku3mUznEJeEWscQzbijVZ0Fp1Vpr3z54qKxfDKc99QUtDTL', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11905758_523092064514665_1314343371895375215_n.jpg?oh=0664fd2d83d6b8866d1139d4219e3e36&oe=583EFB0F', NULL, NULL, NULL, NULL, '698122413678295', '0664fd2d83d6b8866d1139d4219e3e36', NULL, NULL, NULL, '2016-09-02 15:08:51', '2016-09-02 15:08:51', NULL),
(309, 'Aung Khin Myat', 'aungkm96@gmail.com', '$2y$10$tciNTMRGBj0SEQk9ske1TeHic2cEvdxl/s7TR/ed0DpEZnTz0oNlm', 'G1sx8chrG10G2NGIjwOwNyeHQjv3sAKi7fZ7FfKM0pUIbzQoDGrW62egXreP', NULL, 'default_member.png', NULL, 18, '1996-01-03', '1', NULL, NULL, NULL, NULL, 'nUIofX0JfixTPsMzAxbBh5OlvO6SB5YiJOOedVg281DbGZ4H2j2wkttK0nZH', '2016-09-02 15:16:39', '2016-11-16 07:11:32', NULL),
(310, 'Heart Present', NULL, NULL, '4kmok48kIzZsYAnDdNgXrdNFNY9OA31g3mjfCygG9hBVfQ8L00Z9KxTP5Yo8', NULL, '', NULL, NULL, NULL, NULL, '1678521705803331', 'f577017f82e5750a870c3929e5ab8554', NULL, NULL, NULL, '2016-09-02 15:17:16', '2016-09-02 15:17:16', NULL),
(311, 'Ko Nay', 'nayngenge1989@gmail.com', NULL, 'lnctggLCivaztK7jM9vlvsGZ7mz9VMnF5A9YfMANhTnbA8PZ4fqBUb28ieMX', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14021708_1248648785179562_655953108496117609_n.jpg?oh=22a5224d7e4d1df2e6a2312d2f541717&oe=584182DB', NULL, NULL, NULL, NULL, '1256755237702250', '22a5224d7e4d1df2e6a2312d2f541717', NULL, NULL, NULL, '2016-09-02 15:20:15', '2016-09-02 15:20:15', NULL),
(312, 'ကံေကာ္ေအာက္ ကလရိပ္ခ်ိဳ', NULL, NULL, 'py7jC5FAxFmiArIHSymJBc5UdwfmLoXR57BmOmaPYTvZvnw79VYeedn5Zidc', NULL, '', NULL, NULL, NULL, NULL, '255861538141355', 'z-m&oh=c857d3fe6fbe825fd974539c643b62ab', NULL, NULL, NULL, '2016-09-02 15:23:18', '2016-09-02 15:23:18', NULL),
(313, 'Thant Sin', 'thantsin9999@gmail.com', NULL, 'rDCE9zT5yfnKqIlSxkAOOSpo4DBLowKswKEKzsbf', NULL, 'https://graph.facebook.com/v2.6/880506942082149/picture?width=400&height=400', NULL, NULL, NULL, '1', '880506942082149', 'EAAPMa6cPYRkBANGwj7bUr6cjTyU3kL2Tuafb1DXkTJruYmEQpRZCA4ym9ZBbc8qyrZAgMW05Jl4S8KT78D3TdksQCX78yXhe4bihus2ZBM3cQHZBbGdF1P5nZAHxYnzuaLMKrtwbpMcuwZBpmc2ezCK7WwD75ZCiLKmodj4COweSZBwZDZD', NULL, NULL, NULL, '2016-09-02 08:56:37', '2016-09-02 08:56:37', NULL),
(314, 'Khincho Cho', 'makhincho@gmail.com', NULL, 'l5vsYAb2ojhQUF3GNpBeY4chdtwmWDs6dDzCzYKFq9RtehPYk5SwoPC99ikL', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14224926_594061217441856_3010894949860868186_n.jpg?oh=7f554ef1023277d5bc9ce65b055b6fb5&oe=583F7AFE', NULL, NULL, NULL, NULL, '594807054033939', '7f554ef1023277d5bc9ce65b055b6fb5', NULL, NULL, NULL, '2016-09-02 15:28:32', '2016-09-02 15:28:32', NULL),
(315, 'aung myat', NULL, '$2y$10$fT8SNjEAWGF9PHngNHC4muw6v42dpj5pKupZaP8Bl2kqzhE0FmF0y', 'XHanrVw7dtPEGQ82ZfLrv80DgNJlb86kpRevKbXh5tz3StyyOiMjRhrbgcGD', '09420056752', 'default_member.png', NULL, 1, '2016-09-05', '1', NULL, NULL, NULL, NULL, 'DIOdPnr26Fs8jwB1nAf98lB3NfoW9Dft8F1R3JgAfMCL7BIK3zR5DjQO6pqk', '2016-09-02 15:31:16', '2016-09-02 09:01:59', NULL),
(316, 'Myat Thu', NULL, NULL, '7YCWbzJIvnrWkTE9lq29XPLXuHdqNQ3PbUEuTGbD5j3aKHqXr4bHaE9xNExc', NULL, '', NULL, NULL, NULL, NULL, '1777577369156148', '68a674ee308c5ffa847f21ad4848f6e8', NULL, NULL, NULL, '2016-09-02 15:38:09', '2016-09-02 15:38:09', NULL),
(317, 'James Khora', 'boaung.kyi2012@gmail.com', NULL, 's58gsCCuG4e3WHeEpzybNh4GdnjhCuzrpF0wYiPlubAS0dTs46UKkvYRxMaK', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/14142023_939545709502167_8246834109800462533_n.jpg?oh=a288fa3ad1930323d65bf0f1c67f9402&oe=588340C8', NULL, NULL, NULL, NULL, '940931672696904', 'a288fa3ad1930323d65bf0f1c67f9402', NULL, NULL, NULL, '2016-09-02 15:43:05', '2016-09-02 15:43:05', NULL),
(318, 'Phyo Ei Nwe', NULL, NULL, 'eBCjKdvYFgMtESR9BRNNcwtTYw85vP7BLPnmFizmfSrKcQ7LG8Fku6w4vDC5', NULL, '', NULL, NULL, NULL, NULL, '169354120167199', 'e31b5e6907bee720d458deb870a94228', NULL, NULL, NULL, '2016-09-02 15:46:19', '2016-09-02 15:46:19', NULL),
(319, 'San San Nwe', NULL, '$2y$10$ZOP0ZxRMoDvMLZtlyZZgtefItL8Pt1aX8Qk2EpLON5Z8P7TbczRTm', 'RmLzNs6oqLIRGzkyyScpUrhNkuD0reYDV0ENXOwMJK8s1xNpmirW0jyabvXm', '09253868116', 'default_member.png', NULL, 6, '1973-11-28', '1', NULL, NULL, NULL, NULL, '2VyWVA3Qg2I5zpyLm8mOgz44ySGjygxPdYNMY1ktv7bCHuxFHsNLYoDu41A7', '2016-09-02 15:46:39', '2016-09-02 09:19:37', NULL),
(320, 'Tin Zar Win Htut', NULL, '$2y$10$Uztjwx5O/vMUtsfLD9nX.uGVe.99jpfuhRZQ3PDtjVOciDexHUK2S', 'rl1179eyDrGuluSyatoAnsejV31PI9bGiXut6Ufd502Ay6XTWxV8C2OR9EQX', '09797814509', 'default_member.png', NULL, 13, '1994-10-15', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-02 15:54:22', '2016-09-02 15:54:22', NULL),
(321, 'U Mar GA', 'oomerga@gmail.com', NULL, 'hQLzlFDQI3TdncSaz4kvAeV3LUFTy8No3goGFePzL5MIhkTXxuqxFzs5Shmv', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12592766_1691899634397394_7149408735335411207_n.jpg?oh=eb07fb37176ecdcfad026d11ad083587&oe=584ED576', NULL, NULL, NULL, NULL, '1778577032396320', 'eb07fb37176ecdcfad026d11ad083587', NULL, NULL, NULL, '2016-09-02 15:55:12', '2016-09-02 15:55:12', NULL),
(322, 'Jason Jason', 'myatthuramaung@gmail.com', NULL, 'AusjNd303rA2LWvGQSXngSViJMNsk7QCd7WgbgdI', NULL, 'https://graph.facebook.com/v2.6/1432898640060938/picture?width=400&height=400', NULL, NULL, NULL, '1', '1432898640060938', 'EAAPMa6cPYRkBAMBUYMXZCASv65ZBSHq9wOSHe6WZBrVjxoTwpcsuQCsZB2O4glcTY2oY8k3dIeWBZB6fWtfw1TKQmLaF4SCZA80DUZAz1Ap6fZCzTHKUicyxDecItFn9jeX62VOwjFoCxm2IZBtgBeR8qW2CI76C8JyAZD', NULL, NULL, NULL, '2016-09-02 09:27:21', '2016-09-02 09:27:21', NULL),
(323, 'Sandar Kyaw', 'sandarkyaw14@gmail.com', NULL, '2oIy97zPTjzxEjax8L6C2xsDVVcfCNT9Bs9AgqWsEcLE56exQNoAvwf00QCK', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14117792_797276653747754_2198526778256105365_n.jpg?oh=cd9c447867ddfe5ac0f765a919a01c6a&oe=583AC5EA', NULL, NULL, NULL, NULL, '798881066920646', 'cd9c447867ddfe5ac0f765a919a01c6a', NULL, NULL, NULL, '2016-09-02 16:15:57', '2016-09-02 16:15:57', NULL),
(324, 'Zar Ni Aung', 'z.n.aung7@gmail.com', NULL, 'qfsRzyOOs13NTvVJupje0fwOXCOZrHE466kyWwGVl8zMTAzBvVliz3SOT5f8', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14045987_1082726471795791_336811150840028406_n.jpg?oh=9bcaa2de1b182ee2e1d596688d9f0438&oe=5837B9CA', NULL, NULL, NULL, NULL, '1092119344189837', '9bcaa2de1b182ee2e1d596688d9f0438', NULL, NULL, NULL, '2016-09-02 16:21:54', '2016-09-02 16:21:54', NULL),
(325, 'Sein Gyi', 'cbc.usa61@gmail.com', NULL, 'hb7kxCUe0zTUDp0WdvpVHYGwBxtYwArXIXIZKpQCOZNWgxOVOJGaTPnXelTR', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10885554_382241091946976_6521660221683353494_n.jpg?oh=382e42570340f1e35a7cbb48d5d5a524&oe=583810F1', NULL, NULL, NULL, NULL, '627961654041584', '382e42570340f1e35a7cbb48d5d5a524', NULL, NULL, NULL, '2016-09-02 16:31:38', '2016-09-02 16:31:38', NULL),
(326, 'Solemn Solemn', 'solemn2014@gmail.com', NULL, 'ZafmswZr03Yn3621KylMWBlX5xq4KyasMTsRFfTD8rptKVTDma4aCRxQKZ9g', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c24.24.302.302/s120x120/301138_103468173141549_965924591_n.jpg?oh=c272e4023ad0fb0c37fbd719c191daff&oe=587E4EBB', NULL, NULL, NULL, NULL, '706708746150819', 'c272e4023ad0fb0c37fbd719c191daff', NULL, NULL, NULL, '2016-09-02 16:50:03', '2016-09-02 16:50:03', NULL),
(327, 'Zeyar Aung', 'dr.zeyaraung@gmail.com', NULL, 'A6Ut1kqsZtoYZdnLvCTTN8UMhYlHPITwZBna9mrq0Yz0TNrR0hlnkIRPQfvu', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13516629_1190413141011178_7954077877927768934_n.jpg?oh=44883ab3e6a97dfe777d95e4e93aedc6&oe=5851D99E', NULL, NULL, NULL, NULL, '1238503486202143', '44883ab3e6a97dfe777d95e4e93aedc6', NULL, NULL, NULL, '2016-09-02 17:15:37', '2016-09-02 17:15:37', NULL),
(328, 'Ta Ra', 'cheesypotato000000@gmail.com', NULL, 'd62UuEwORJBAf1Gw8ZbdjsaiNuVGoB3RHUHSSknF', NULL, 'https://graph.facebook.com/v2.6/302664350125434/picture?width=400&height=400', NULL, NULL, NULL, '1', '302664350125434', 'EAAPMa6cPYRkBAC0BNvZCZBjWzbceOXHFQu1ivkPn5kJ6aSpTVjbXSbPVITu6H6ch28U7vDVlbDGVHQPbjntvoFRZCUbEBNoCBezIzKpvLO6dNgNXzq4bXoSyEyoVK7Mz74ZCAVZAn8krdlXIbW7COhbwGmh06qNpO72UVtvQP0AZDZD', NULL, NULL, NULL, '2016-09-02 11:32:56', '2016-09-02 11:32:56', NULL),
(329, 'aung pyay phyo', NULL, '$2y$10$SNHs/eddlAvwibcDwPQ1TuH5tWcUgDKEbvVwr7PKS1Ece2VeuDL.G', 'Z1H6vVpW0pOzKXqPov6nU5PrT5K8NMiLqkHJnfOLcXV8BstSk3FRvwvUNzKl', '09451821623', 'default_member.png', NULL, 5, '2016-09-09', '1', NULL, NULL, NULL, NULL, 'Rldcdc6gzZj3X0YFPQIRClWyCwwW50j8fGGEFqehcujz2GpQGGk2EDu2HZ4M', '2016-09-02 19:02:05', '2016-09-02 12:32:45', NULL);
INSERT INTO `User` (`id`, `name`, `email`, `password`, `api_token`, `phone`, `profile_image`, `address`, `township_id`, `dob`, `activate_code`, `facebook_id`, `facebook_token`, `twitter_id`, `twitter_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(330, 'Mg Zinbo', 'loyasay@gmail.com', NULL, '1hEL4qd6QvKDVZlP5pwLWVx2mpTj9xn624PX8zMnPhU49gOowJ7xOVeq5fDg', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13925042_10202063275499865_7138548227598768100_n.jpg?oh=ee6c604f9e4c2e72d5051d68c2ba5191&oe=5853AAAE', NULL, NULL, NULL, NULL, '10202143761391962', 'ee6c604f9e4c2e72d5051d68c2ba5191', NULL, NULL, NULL, '2016-09-02 19:14:54', '2016-09-02 19:14:54', NULL),
(331, 'Pyae Sone Oo', 'perfectzsaxena.mgc@gmail.com', NULL, 'G70SQ2gWZFAZog5NUlMR6gb6wig1AArvg9OZI4AkWHmsVdILQM11KdVp0qX7', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12985390_214193112292384_2320017564784538126_n.jpg?oh=56f13154af40756c830b3cec0278200c&oe=584D1778', NULL, NULL, NULL, NULL, '300164810361880', '56f13154af40756c830b3cec0278200c', NULL, NULL, NULL, '2016-09-02 20:59:04', '2016-09-02 20:59:04', NULL),
(332, 'Thukha Pyaesone', NULL, '$2y$10$C/qUuOkTCMHz0RdsG7F0juZU73ocPjtyqtcd.fhJvSjhxfLcpTo7u', 'qBs14cqjZS6iVQf6QzJB1jB24dQkRyxy6fxSFjcbce2M2jkspRU71oJZEs9x', '09456542928', 'thumb_22195581344535.jpg', NULL, 43, '2016-04-17', '1', NULL, NULL, NULL, NULL, 'wjjOOQT8njOzQNIV35lsbxCkLtfNQIECll2oAFaJaRCipQgVF2hcJQznl3Mj', '2016-09-02 21:01:26', '2016-09-02 21:01:51', NULL),
(333, 'Kay Koko', NULL, '$2y$10$g5dgyah1pMPrz8LvV9QXuOzcIOg0PqVU.kyT/k1fCJMDwKPSW3yHq', 'jOQDcRI4tivX3GbQ7dcGFJL9Yv1iDM4pizCmQuLJ1YmnHnmsTIbHfMJohqqn', '09421051739', 'default_member.png', NULL, 43, '2016-09-02', 'cbb0d804ca98a261858e5d811459881b', NULL, NULL, NULL, NULL, NULL, '2016-09-02 21:12:33', '2016-09-02 21:12:33', NULL),
(334, 'Kay Koko', NULL, '$2y$10$mDXEh.AXRjcxVTw83o09FOzayLicVuhyMVpmhcGIFGzeaz16hOI1K', 'WYgAsysQAaRBNCK8hoGqx2zKHJDSoKdBi1i0kUDhExMEaBukfvjnRS5vqK1v', '09799864116', 'default_member.png', NULL, 9, '2016-09-02', '1', NULL, NULL, NULL, NULL, 'NNHALlYDXejdyY927Vt6pXvStZIbc9tJ1yCion60gIeT7rjfHpB2C33zqJZz', '2016-09-02 21:19:35', '2016-09-02 21:38:01', NULL),
(335, 'Crystal Lynn', 'triplep.skyblue@gmail.com', NULL, 'NLO6xqG0lBafbiZfQQTlzj5wydNOIelwzoBgqdfK', NULL, 'https://graph.facebook.com/v2.6/1095194880560703/picture?width=400&height=400', NULL, NULL, NULL, '1', '1095194880560703', 'EAAPMa6cPYRkBAFtKMbgiXloIdyZBr0PlH3wqI3wyTkT2aNTVqjDltmoh25hgL4HpZBvwbcwDLsu2ZAlV3ZBKzKGGZCcEDNEdBRCNkj9qv1RSNWWOOSOxtuxRrq2yta7z6ZCMExjrnGVssbma1kWZC2vxSpLKwpiTp4ZD', NULL, NULL, NULL, '2016-09-02 15:33:36', '2016-09-19 08:23:16', NULL),
(336, 'Min Thiha Zaw', 'minthihazaw@gmail.com', '$2y$10$vzqEfdNAvKoQUjGr7iT02eOM9CgHLnH5Q32pum4b52A63q8IkeJgC', 'I5Iaav9m2JQ9JPxlyxeQolghG6LdGVTsaOZo2nof0sYf9LfjLPL638Rs2pmr', '0943142020', 'thumb_58197412613586.jpg', NULL, 14, '1983-07-22', '1', NULL, NULL, NULL, NULL, 'OkuF12bcjZxdWi2BoN1vyDl23TMbrttSh5CpwQaGnu20X9lI9FlwEIaapsqo', '2016-09-02 22:19:48', '2016-09-02 22:23:50', NULL),
(337, 'Punnya', 'Monhongsa09@gmail.com', '$2y$10$lVQFaszJWDtRG7qfLxvoJ.BoNr3iCK/JPnajiTCKdDfBWDjkpYD6K', 'kmlUNANoaNwAIoTpVsMkCmoSGzI1tKR6ctvoCyocoHNBtAqQswefanixUc9j', NULL, 'thumb_18571288171746.jpg', NULL, 2, '1970-07-30', '416fccff35884a2327c115b1a8b9f432', NULL, NULL, NULL, NULL, NULL, '2016-09-03 00:11:02', '2016-09-03 00:11:02', NULL),
(338, 'Myat Htut', 'qkaunglay.2015@gmail.com', NULL, 'xN6jGiUtvgSKIMhznfCZEN3K9lgsbDdNr5X7Gjzf', NULL, 'https://graph.facebook.com/v2.6/904741829632560/picture?width=400&height=400', NULL, NULL, NULL, NULL, '904741829632560', 'EAAPMa6cPYRkBAGFOWwDZAJEZBPSSsYfxKZBPklzuEc2fXLAml50Lsi5y4dS9EDCVFtky9HTR7eUIA3xnO4hEOtXvjOYorrS24YFiHdRZBLL6l9b7ugca1jHwZAOFNI3dFq6XTfLiG7eqSWbbkalNxzC4HlB88gZBDC60hRXEn7yAZDZD', NULL, NULL, NULL, '2016-09-03 01:45:31', '2016-10-31 08:25:57', NULL),
(339, 'July Moe', 'julymoestar@gmail.com', NULL, 'JVoZYuZRHLfpTmyq8MZa6aWQJ0KdK4B2oEVZ2mikoV0KY00NhnEsLahqKWMP', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12932904_983193058440964_8208016174699195262_n.jpg?oh=66542e2098a00dd61a4a106bc2bc38bc&oe=583E75E7', NULL, NULL, NULL, NULL, '1084213045005631', '66542e2098a00dd61a4a106bc2bc38bc', NULL, NULL, NULL, '2016-09-03 09:41:15', '2016-09-03 09:41:15', NULL),
(340, 'Win Nwe Oo', NULL, '$2y$10$mqKaxVoTlC/vwRqYUBucLuiA9xH/OhEmqH4uk/yiU78B5AeITArxK', 'WEl3xQsYvHiIjERw4lEiLnY3TdoekAZu8xG7A5mnmEGRjM0uzYSoAWkDoAa3', '09797781490', 'default_member.png', NULL, 2, '1987-09-03', '1', NULL, NULL, NULL, NULL, 'FRdDF0tL4ww2DkWK3IetT7nGxNcp6XauMkdnP2sUPnuzaCb779Jdt2S9gfr7', '2016-09-03 09:47:04', '2016-09-03 09:47:32', NULL),
(341, 'Winlai', NULL, '$2y$10$.2HBLPaduG22RXjqTCgR1OB0IkbpP2rNtnp8HfC9lkiHfFMT3opue', 'Q9uIwuFR2iGVfzsPVrB93DlVx6ceAbR2QbzxKb5aXHZ6LeRwNMPZ5KZHFpvB', '09795862611', 'default_member.png', NULL, 28, '1994-05-18', '7a1ff2b1f0a97b3ee2b135eea7a3d095', NULL, NULL, NULL, NULL, NULL, '2016-09-03 09:47:42', '2016-09-03 09:47:42', NULL),
(342, 'Winn Lai Lai Aung', 'kiddymoony@gmail.com', NULL, 'Q3pRRRolApmN7KNyoZTqwLV278mKUJPeVEXllOvl', NULL, 'https://graph.facebook.com/v2.6/1658667917780968/picture?width=400&height=400', NULL, NULL, NULL, '1', '1658667917780968', 'EAAPMa6cPYRkBAIEaVHSwVp57WqxF15VkkOhIMqpkhpSkvmXcKuSZB6kzbkVJuTsCpb9Gd0S0GE3OPwwJxIwTm8281twRZB8OZAGyZBZAqgwQnJN4vlaGxAlBE1U7e522OiQ6QbKTZAbiLrjdPqHFwFfZCAPvSyPHuoZD', NULL, NULL, NULL, '2016-09-03 03:24:51', '2016-09-03 03:35:04', NULL),
(343, 'Hnin Oo Yin', 'hninooyin1996@gmail.com', NULL, 'XsZ6QnoEBik5PQWFQawYUTGA2Qkq69wSrviSPElE', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13932915_569982093202438_2733107077637028657_n.jpg?oh=d8d088b346321ca64d884c68230f5dce&oe=584B5A93', NULL, NULL, NULL, '1', '582758048591509', 'd8d088b346321ca64d884c68230f5dce', NULL, NULL, NULL, '2016-09-03 03:26:51', '2016-09-04 20:37:23', NULL),
(344, 'Oo Lay Gyi Khant', 'bagyikhant255@gmail.com', NULL, 'RU1XVCYDdRSVEaO1lIlHJWNNDXk3FiQQS0CNaqFE0qxysb1gj6frpQ2dhDUH', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13335576_249734338734353_1534344656821032966_n.jpg?oh=06579f015dd3f64859fe41dc695800c8&oe=5844AFF1', NULL, NULL, NULL, NULL, '301012000273253', '06579f015dd3f64859fe41dc695800c8', NULL, NULL, NULL, '2016-09-03 09:56:59', '2016-09-03 09:56:59', NULL),
(345, 'min', NULL, '$2y$10$YMs07ojifY37GxWF5Yr.JO2eYMlplg8bj4ajqQ0iQe//5TavyIRFy', 'EXcLrpduXE56mEvvi1MXbtx1R43q6Sz3TgSxaAtOuIWzmNjReJXdsGadwJGJ', '095008909', 'default_member.png', NULL, 24, '1977-04-13', '1', NULL, NULL, NULL, NULL, 'hAOy0oWYGmYo3d5BCLoxubEjtZ9x4jCj8a8swe0NaPsfx8bp4WDNKt3gNeqY', '2016-09-03 09:57:15', '2016-09-03 09:57:40', NULL),
(346, 'Diana Lim', 'lin.diana6@gmail.com', NULL, 'uclXqyvxLMxavnf04v501pH6pwOfN281fphiBON1PEcGEIWTLLZXwtDigosg', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13754423_1244103278942327_6454013245273506880_n.jpg?oh=5a39497caa6a4f3b71802842f8d01633&oe=587FE6AA', NULL, NULL, NULL, NULL, '1283668358319152', '5a39497caa6a4f3b71802842f8d01633', NULL, NULL, NULL, '2016-09-03 09:58:49', '2016-09-03 09:58:49', NULL),
(347, 'Ko Naing', 'thantunnaing242@gmail.com', NULL, 'xgdYtIwhqM9D5naNnJ0BoqVxjaepNNUXqn1mtLCcFlaJIXJz3oWlonj76LcG', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13906791_263051167414396_4086631906850106856_n.jpg?oh=5a7b2e3bae7dbac1dd58b3c1cb659c29&oe=5838A2D7', NULL, NULL, NULL, NULL, '272984189754427', '5a7b2e3bae7dbac1dd58b3c1cb659c29', NULL, NULL, NULL, '2016-09-03 09:59:37', '2016-09-03 09:59:37', NULL),
(348, 'Hom Yin Htun', 'homyinhtun@gmail.com', NULL, 'kzfmMvtEdr0cQevJzg3qK3hneFeP0rTORL2iZyFF7wMIRABjWZS0du7FDqqU', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12299159_963699887036513_1672687773599001020_n.jpg?oh=12eb40df64444a409bdb37a9d2e68ef4&oe=58859031', NULL, NULL, NULL, NULL, '1170171739722659', '12eb40df64444a409bdb37a9d2e68ef4', NULL, NULL, NULL, '2016-09-03 10:07:39', '2016-09-03 10:07:39', NULL),
(349, 'Arka Htut Naing', 'johnsk8erz@gmail.com', NULL, 'ItS2dNeNcjFwk7RISbq0GpaNLOLENTIDKVGeCgQX', NULL, 'https://graph.facebook.com/v2.6/1172087489524785/picture?width=400&height=400', NULL, NULL, NULL, '1', '1172087489524785', 'EAAPMa6cPYRkBADvNZBeOt03994s5vSZB4eyPRbuodZBHZATiXwZBPiqH0RWEclnVeo2WMKyrZCYjuVN5oMHIOgRm9FUKO4ZAZBcVNDvGF9YnMG7WwEGFaf73iGO5ldzFIjtJ22aKxPQbOln2rSy1CV1OLytD5CtabL310WRJZAE9tagZDZD', NULL, NULL, NULL, '2016-09-03 03:39:52', '2016-09-03 03:39:52', NULL),
(350, 'Saw Hlo', NULL, '$2y$10$c33X7QuJz.gpgDDZXInlEucezIXjd4IiNkuB41F0B8IdYa7ke30du', 'nsLFTVbCo15jY4KANrkwTRwOFBTBAqoGtfNnQJKGqNZ6J2D37EoxYJlZah2Q', '09785143515', 'default_member.png', NULL, 0, '1996-11-19', '1', NULL, NULL, NULL, NULL, 'o1hSljcD99WAbh6wQ8LRdvknm9QzikCpim3f5NS9WOi1i4jCAIJLWWJJy2g6', '2016-09-03 10:12:04', '2016-09-03 10:12:32', NULL),
(351, 'Kyi Mar', NULL, '$2y$10$aQUtowHaSqMXbrxE0MarbeB5DgJTCDveCu72gnCHQSYXggz9n2mhS', '0VhO1z94N3VzxdajdxYvsU8B1VOgwFC7OnsNNZfve9R8ULABIzODntb8DPY9', '09785109471', 'default_member.png', NULL, 32, '2016-09-03', '1', NULL, NULL, NULL, NULL, 'Qw95cF8Ex6iMX3ABRPCLq7b16lACC6ifchZj1XHcff0mdtPqzIUCTy32qjaH', '2016-09-03 10:12:49', '2016-09-03 10:13:32', NULL),
(352, 'Htin Healthcare', 'htin.clinic@gmail.com', NULL, 'fgpyIlX3T0ntf7uDd6zCf2NHTrFL0AJF6gwScHDjXCDiPNPJGXkH6risRaIl', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c8.0.120.120/p120x120/13770400_1058206230938976_2337455463139327986_n.jpg?oh=f4c25964b1f728275c81c64401fb2dfd&oe=5883FF8F', NULL, NULL, NULL, NULL, '1093409980751934', 'f4c25964b1f728275c81c64401fb2dfd', NULL, NULL, NULL, '2016-09-03 10:17:01', '2016-09-03 10:17:01', NULL),
(353, 'Aye Aye Htaik', 'ayeayehtaik6062@gmail.com', NULL, 'IBWyYJMs4bwxtpEng5nho517FHIQS4sBSI0QMiqhii75xxeIC97r88YlfrRx', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c47.0.120.120/p120x120/11694899_130649307267417_2074832754580695375_n.jpg?oh=c9c947d206eb65172e3843a5ba8f8803&oe=583C81A4', NULL, NULL, NULL, NULL, '340926646239681', 'c9c947d206eb65172e3843a5ba8f8803', NULL, NULL, NULL, '2016-09-03 10:20:34', '2016-09-03 10:20:34', NULL),
(354, 'Khwar Nyo Thin', 'khwarnyok2@gmail.com', NULL, 'kjuSXg1MqkyDt7PU3rosyytBxWvKfpyTHfhCF1jhw10ryz4iM0bhuaboed5i', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13592751_1213503612046875_833987716609353863_n.jpg?oh=e39745bd0472b37512deb4155d1c33a4&oe=58847A37', NULL, NULL, NULL, NULL, '1261883573875545', 'e39745bd0472b37512deb4155d1c33a4', NULL, NULL, NULL, '2016-09-03 10:23:12', '2016-09-03 10:23:12', NULL),
(355, 'Zin Maw', 'zinzin8558@gmail.com', NULL, 'a9MO2uZcW3yTLLxYeJ0fL5rW7JAhZsSekfOYE4kn2848kGDKPHnSNlZwLJH1', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13769383_1730200260580461_1938606791852494410_n.jpg?oh=6149ea0bf33aef3f1f3592473efe58e1&oe=5885716E', NULL, NULL, NULL, NULL, '1751237885143365', '6149ea0bf33aef3f1f3592473efe58e1', NULL, NULL, NULL, '2016-09-03 10:40:03', '2016-09-03 10:40:03', NULL),
(356, 'Mar Mar', NULL, NULL, 'kOswVXHIQQnzRX0V0rn2jsDKbt88pBQz3wfTrlBAeajtZiGfdqWDMVPCdEYz', NULL, '', NULL, NULL, NULL, NULL, '146491395798866', 'f2c6e923f9ee69a5574d510a0bc822ae', NULL, NULL, NULL, '2016-09-03 10:43:30', '2016-09-03 10:43:30', NULL),
(357, 'Si Thu Kyaw', 'sithukyawtint@gmail.com', NULL, 'afGa4KvoJzyHWbfWaDspV4gvHm1mMDE7HNUnwpPT8PUWC7XnDZQFBUdwRPPw', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14202513_10207141927967941_7771747277142024537_n.jpg?oh=018f161860cdadc778be284fae2303d2&oe=584A79DD', NULL, NULL, NULL, NULL, '10207165767563916', '018f161860cdadc778be284fae2303d2', NULL, NULL, NULL, '2016-09-03 10:46:03', '2016-09-03 10:46:03', NULL),
(358, 'Ko saw', NULL, '$2y$10$5JSb06vqa.BkZ1GEQM5mbeDvHwSL0ZNpPfnm/EAecyHaLdG2X8lZi', '88LLmxqWF2US5pSi3ZaQX2c3i8IqaJiqnZIyWKL7bXURimRnk6p4oyyZn6oq', '095157755', 'default_member.png', NULL, 1, '1962-09-26', '1', NULL, NULL, NULL, NULL, '3vdLaSRicxcfHE7mYreUhOzE62875nodGfIpmDHw7iG8bFcV76n5C7bK4dmU', '2016-09-03 10:51:29', '2016-09-03 10:52:02', NULL),
(359, 'Tin Zar Phyo', 'tinzarphyo2010@gmail.com', NULL, '2fWbWg9gXJigcrJEDjPlKDJnqMYxen0uX4SPXlUBeMmkSWxoYgeQBm78PXfo', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13920623_10206911601217197_8424733852066557137_n.jpg?oh=ed8cd4df2ce2ec0a356faf3ff2231dce&oe=587378F1', NULL, NULL, NULL, NULL, '10207096166751220', 'ed8cd4df2ce2ec0a356faf3ff2231dce', NULL, NULL, NULL, '2016-09-03 10:54:18', '2016-09-12 12:34:23', NULL),
(360, 'April Aung', NULL, NULL, 'lnLYEXXjMmNSboCJZZBShnQc5AAjoaeYGJUWdCq2BqMMdFriEKKg0A6zOCOi', NULL, '', NULL, NULL, NULL, NULL, '299886883719037', '7ae47fc29a6a5180b108d75d9d4a0afc', NULL, NULL, NULL, '2016-09-03 10:55:02', '2016-09-03 10:55:02', NULL),
(361, 'Hnls Fatso', 'hnls.fatso@gmail.com', NULL, 'jsNgPWdmp8beNlshNIBv5V2ozVyvot4KKaAWsvd08ECKarcX9o7fGun3UUjV', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13082_950087668342776_9187421680222400984_n.jpg?oh=5b68617358cd9fd2d3a3da99ff97bea7&oe=5851BB70', NULL, NULL, NULL, NULL, '1285053704846169', '5b68617358cd9fd2d3a3da99ff97bea7', NULL, NULL, NULL, '2016-09-03 10:56:01', '2016-09-03 10:56:01', NULL),
(362, 'Zay Hta Soe', 'zayhtasoe@gmail.com', NULL, 'SrRaiGegWo20ZpEjkOES2HD2kJH9rgQave8tXSo6hgef4H5hqdS0W4PCYZbg', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14183807_1115055211942935_6574432905327627051_n.jpg?oh=636e321318ffda8571ed2d50b54571eb&oe=58381FE8', NULL, NULL, NULL, NULL, '1117532468361876', '636e321318ffda8571ed2d50b54571eb', NULL, NULL, NULL, '2016-09-03 10:56:30', '2016-09-03 10:56:30', NULL),
(363, 'Chan Myae Thu', 'chanmyaethu08@gmail.com', NULL, '1TNAxJNiDfZhWlBsPYH5uYIFi19ztSwHkek3vPN2rG5iyfqYsrpc3Hrb7dXK', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12063436_963981617028826_2505080587213243563_n.jpg?oh=6ecfb299f8501efbd4a94532da290ff2&oe=5839636D', NULL, NULL, NULL, NULL, '1176602032433449', '6ecfb299f8501efbd4a94532da290ff2', NULL, NULL, NULL, '2016-09-03 10:58:49', '2016-09-03 10:58:49', NULL),
(364, 'Hpone Nyunt', 'bagyiphone@gmail.com', NULL, '0p5GsgcwfieSEJqbxc8DY0QHBGJ7lcDpNoSfvaPB', NULL, 'https://graph.facebook.com/v2.6/1187929084592760/picture?width=400&height=400', NULL, NULL, NULL, '1', '1187929084592760', 'EAAPMa6cPYRkBAJ2OEjc3drTqDQTpqTiQMABywlU2oZCyeONoH5NhZCwIBGSDfaAwhrZAoMAfH3HSLiKpZBQ4yQFSICadFZCYeXojx7i5qKMRAM4zUZCnsrj8wTPshiBNzmWm0uNYFGKF0DdK57ZBr5r20ODCYZBKpiKkfmiddMBYpwZDZD', NULL, NULL, NULL, '2016-09-03 04:32:22', '2016-09-03 04:32:22', NULL),
(365, 'kyin', NULL, '$2y$10$/eaUcxQm1H8LEn6C0ny36.jWp8B79tKHvWF7ljNiuaFgEtLEGsvPK', 'XWU3MzHhegArNg0OE03qBMLycQOjJUASCt0FA5CG4WGBOLHcRy7EMxfWIuKO', '09799878633', 'default_member.png', NULL, 17, '1980-06-21', '1', NULL, NULL, NULL, NULL, 'NrzXhtF3BfzHjcsFNkk2ndZbrXP1EADlHwot7z0CEkr6KGNORillLfKWny67', '2016-09-03 11:11:04', '2016-09-03 11:11:29', NULL),
(366, 'Zaw Win', NULL, NULL, 'VT1rmNenYrRZMAJCT1EAQfyDtSvHGE8DXTAUm5Ps1pcIuGnQyPxyP8OZgQIK', NULL, '', NULL, NULL, NULL, NULL, '329411637402548', '35af022e08196151ecaaf9dc3d6688a3', NULL, NULL, NULL, '2016-09-03 11:12:33', '2016-09-03 11:12:33', NULL),
(367, 'Phwephwe Zin', 'phwephwezin@gmail.com', NULL, 'Op7nC5XTu1MgKA30YnnXZPyviKB0qy1JU4PqlAXXnIFoHKm4f2YHfN1R1cCW', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c49.0.120.120/p120x120/13754297_1389101644453028_9170948641920324780_n.jpg?oh=917ade1b7409283f0afa95347259e02b&oe=58517DA8', NULL, NULL, NULL, NULL, '1431541226875736', '917ade1b7409283f0afa95347259e02b', NULL, NULL, NULL, '2016-09-03 11:18:43', '2016-09-03 11:18:43', NULL),
(368, 'Thalsu Mon', 'thelsumon7@gmail.com', NULL, '0VRzAJHdr4eBP7zTrc4kxMWSBY6hipfZ24XBc90kzPNjEI2LfpL0RjQJKaHH', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/8189_539703606204877_6000203395216273142_n.jpg?oh=7fa7cc35dbc69330daf0ad07988e7095&oe=583F7BA9', NULL, NULL, NULL, NULL, '634903610018209', '7fa7cc35dbc69330daf0ad07988e7095', NULL, NULL, NULL, '2016-09-03 11:19:26', '2016-09-03 11:19:26', NULL),
(369, 'htoothetzaw', 'htoothetzaw20@gmail.com', '$2y$10$PtmwZb6KuAEQFvKFkvHmEO2D1Lm23KNJ.aGIpCe9Ziedy6VzMHTPO', 'BEPVWXA52uuRWXglxlGUViMUzjg9tY1D2coMFUWKm50x3oPdiTR0hVvG7xFN', NULL, 'default_member.png', NULL, 31, '1991-03-27', '1', NULL, NULL, NULL, NULL, 'x5RMZoSBDPyyS9m13JfieoWRpiEUIaZ7gXifdpGfdUPYQhPIDX3ziHev4xnr', '2016-09-03 11:23:30', '2016-09-03 04:54:35', NULL),
(370, 'Lai Yin Kyaw', 'lai.yin.kyaw@gmail.com', NULL, 'WqvOP3UXKf4WyKUDspcBmWodBKGNIkk8VMLFBfP8Ewag0HeXH2JozZOpuUcY', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14141507_10206751890746865_7920839137279724255_n.jpg?oh=098cbcd37c0e8ee17170bde977aa0454&oe=58810C5A', NULL, NULL, NULL, NULL, '10206758640635608', '098cbcd37c0e8ee17170bde977aa0454', NULL, NULL, NULL, '2016-09-03 11:23:34', '2016-09-03 11:23:34', NULL),
(371, 'KyawNyunt Thein', 'secretlove.lover1500@gmail.com', NULL, 'ZfPiZdkf7qNarxN8va8AEc9ME3aomJz0Xj44ejXboJNSZwOChsKw9sKBMYL8', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14222101_533190323539038_6070168981134071236_n.jpg?oh=73cf70f3e0a456e42aa47316d187f878&oe=587EE741', NULL, NULL, NULL, NULL, '533911930133544', '73cf70f3e0a456e42aa47316d187f878', NULL, NULL, NULL, '2016-09-03 11:23:52', '2016-09-03 11:23:52', NULL),
(372, 'Aung khine min', NULL, '$2y$10$FuMUqIWdlIaodkkxKaQK4.hPvMPP3SUtYbd01GeX0x03JoQ3TgVHq', '11E0kUb102EgTBQVkFwc0LOTTTFqk0dW4BMWGCwN6OEofTENuMhBNb3XcbNo', '09254180730', 'default_member.png', NULL, 16, '1989-08-13', '1', NULL, NULL, NULL, NULL, 'tY1s9fUamlLDq8O9QmEMHAktRH4Yk3bfdvr1yuMYQA4kJZxPYPAworYv5zyD', '2016-09-03 11:31:43', '2016-09-03 11:32:11', NULL),
(373, 'Saw Robert', NULL, NULL, 'Kse7gMQ8xxQyfBE1HF15jKsL5SlTxOJgLfUyI6GszIgLj3b8evCzrt94CAVF', NULL, '', NULL, NULL, NULL, NULL, '294995854203228', '428be1954ac1fb941aeb0ad2c6d6a705', NULL, NULL, NULL, '2016-09-03 11:38:58', '2016-09-03 11:38:58', NULL),
(374, 'Min Min', NULL, NULL, 'vBm5G3Rg6QFx1WgqIwearKApjAgaAqoJBEx2ZfKsvkDG2UGlLdK7aNb2O2yF', NULL, '', NULL, NULL, NULL, NULL, '171579003267233', 'd0f5790577779bc049fae20ded446a8d', NULL, NULL, NULL, '2016-09-03 11:39:08', '2016-09-03 11:39:08', NULL),
(375, 'Thaw Zin Oo', 'thaw.zin.oo12@gmail.com', NULL, 'DYwmDcz4Wd80RsS9ZjP1INZvHgF4Hgu50kRebqkIifWJLNlCJIbzWPTDPpp7', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13925171_1351413544878161_626082065132835908_n.jpg?oh=638489417eafa3cc45eaf502f91c1984&oe=584435A0', NULL, NULL, NULL, NULL, '1375492952470220', '638489417eafa3cc45eaf502f91c1984', NULL, NULL, NULL, '2016-09-03 11:39:16', '2016-09-03 11:39:16', NULL),
(376, 'Tin Aye Lin', 'tinayelin14@gmail.com', NULL, 'HLUrBatNzBiUlWBNarTlYLwAa6lI5UHTZyh7EtYpnur0DHRj474TcM0numfV', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13346949_1704217889837700_7727759560232957945_n.jpg?oh=fe74e8997dfdf17a40b9657bf64aaf1c&oe=587F41D3', NULL, NULL, NULL, NULL, '1739406136318875', 'fe74e8997dfdf17a40b9657bf64aaf1c', NULL, NULL, NULL, '2016-09-03 11:39:56', '2016-09-03 11:39:56', NULL),
(377, 'Shwe Sin', NULL, '$2y$10$yzEZ/EDYTBfvXTNCk3w.MOeNFfTwiVr0zMPimGdQAbAGTVGfTul4O', 'aMhEoc0qB8DdJvDSOsWjyWgHKukmXOS4T4b6h8WcCVcs5mm0un6P3nacNmQo', '09795578727', 'default_member.png', NULL, 23, '1999-10-04', '1', NULL, NULL, NULL, NULL, 'MpZjMugy1yPUCl5Y8215hIikez95EgU5Oi2maj3Z7hxNuK6PdPxPCnmiWryk', '2016-09-03 11:44:21', '2016-09-03 05:14:55', NULL),
(378, 'Sithu Khine', 'sithusoe442@gmail.com', NULL, 'Z8lLdm9x28rQKDJcfvDMKtWHE9K39oA0l8Peg74gtQIm1kWie0SC05rnkpa5', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.2.120.120/p120x120/12919857_1669296869990858_6724280916886013818_n.jpg?oh=761f9ba0397be29a951c1dd1940629f3&oe=583C4DCB', NULL, NULL, NULL, NULL, '1728701384050406', '761f9ba0397be29a951c1dd1940629f3', NULL, NULL, NULL, '2016-09-03 11:44:23', '2016-09-03 11:44:23', NULL),
(379, 'Chan Nyein', 'channyeinthu34@gmail.com', NULL, 'qKCKo83ySkBHyd86BMQl17roaoHMDu8cMmVYH1w1NdLz9yVbpjDeMpfsClHp', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12376669_483652815151871_2797549725692176163_n.jpg?oh=1d5a386b567bbc607f7a1d41938fbe8c&oe=587E5EF1', NULL, NULL, NULL, NULL, '549879391862546', '1d5a386b567bbc607f7a1d41938fbe8c', NULL, NULL, NULL, '2016-09-03 11:45:19', '2016-09-03 11:45:19', NULL),
(380, 'Maythu Naing', 'maythu.ucsp.1991@gmail.com', NULL, '5fYfw0OR2JirHNLt0sXyjBZP9C69gmbMZYhSUYNFk0pI4lZ6sjtpY34T7IA6', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12047043_924674674285799_4535511265724026648_n.jpg?oh=3fa963fea65731df8103d44acf972a13&oe=5853C6C3', NULL, NULL, NULL, NULL, '1132302013523063', '3fa963fea65731df8103d44acf972a13', NULL, NULL, NULL, '2016-09-03 11:47:30', '2016-09-03 11:47:30', NULL),
(381, 'Kyaw San', '87.kyawsan@gmail.com', NULL, 'XQJS8APAy4A2vUvErtE4gvj4mmMPGMO41CXgeUbrOhfNjOwCO5U1DcKnkMUb', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13925191_10153778336277011_3558079765738542801_n.jpg?oh=343029550e847a6b2e4de5120ccef8a0&oe=58521079', NULL, NULL, NULL, NULL, '10153836887687011', '343029550e847a6b2e4de5120ccef8a0', NULL, NULL, NULL, '2016-09-03 11:49:10', '2016-09-03 11:49:10', NULL),
(382, 'U Thaung', NULL, '$2y$10$5A7lqzOD97ZdP3pKMCOBfetNN1fBOTnoQ2om9lprLtbbi/OeL22n2', 'A7FJYjLeAVnQl5kldOK386IlXwywPzejiLb4kBubb1bbyGyDGAsDgGEu7cL1', '09254204835', 'default_member.png', NULL, 28, '1962-02-02', 'b02049a9b04650a45287d58dca13382e', NULL, NULL, NULL, NULL, NULL, '2016-09-03 11:50:51', '2016-09-03 11:50:51', NULL),
(383, 'Hnin Chan Myae Nyein', NULL, NULL, 'aYf9Iwd0r6Evvj8ohB8OIkTmeoQf1yiC48svEfGM1bPgTRjToKEk5e44Yh7q', NULL, '', NULL, NULL, NULL, NULL, '336225093376914', '324b5dd44c8adea7cdf773f4022f2cf7', NULL, NULL, NULL, '2016-09-03 11:52:12', '2016-09-03 11:52:12', NULL),
(384, 'Ko Cho', 'uphyonecho@gmail.com', NULL, 'QEyDwOrLTRm9KaJDKMlvXoINKWWdunjcraKN6fY8AntHHYADaLxZsvcrbWZ2', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10372081_473222522821687_996360703391715677_n.jpg?oh=1b3037d7c98cf96f0a1aa08ad715a123&oe=583C7291', NULL, NULL, NULL, NULL, '918901011587167', '1b3037d7c98cf96f0a1aa08ad715a123', NULL, NULL, NULL, '2016-09-03 11:59:29', '2016-09-03 11:59:29', NULL),
(385, 'Nann Thin', 'nannthin88@gmail.com', NULL, 'SDhQdnTOyAKTu6CoDOhgvUgNcAQY6Y5BEvjUwDN7ZnaVGO8X08cq1pGpF1gR', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14212607_1199516200119691_1790902228677280772_n.jpg?oh=9f87b169a86ed2e9d9363cbf812ec6bc&oe=584FDCEF', NULL, NULL, NULL, NULL, '1202256596512318', '9f87b169a86ed2e9d9363cbf812ec6bc', NULL, NULL, NULL, '2016-09-03 12:03:49', '2016-09-03 12:03:49', NULL),
(386, 'Khine Thandar Oo', 'khinethandaroo@gmail.com', NULL, 'p1Mi6yROd9h5SjQbuhreM1qWvBZNTx8CE0r0RX1A2si0IQsbf0IHX41n6NO2', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c9.0.120.120/p120x120/13177324_10153570987473862_2771227673765091335_n.jpg?oh=4a01de5b2d4b3f04a49887b2b1798eb5&oe=58405D49', NULL, NULL, NULL, NULL, '10153836526513862', '4a01de5b2d4b3f04a49887b2b1798eb5', NULL, NULL, NULL, '2016-09-03 12:05:05', '2016-09-03 12:05:05', NULL),
(387, 'U Htut Lyin', 'linnhtutoo83@gmail.com', NULL, 'rrqfQLzRftnikyI6RNq8X5AqBJ3wBmEStOYEGU4j', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14203305_601174653384376_8663228650692550175_n.jpg?oh=329dffd14406e77fe126ad799e543132&oe=583D4FF8', NULL, NULL, NULL, '1', '602574646577710', '329dffd14406e77fe126ad799e543132', NULL, NULL, NULL, '2016-09-03 05:38:46', '2016-09-03 12:12:29', NULL),
(388, 'Winpapa Lwintuu', 'winpapalwintu@gmail.com', NULL, 'K8MG2R8tEtpCNnnYuHG6DJimK6JjUaP491oPem2kcAL7TdIHFvcCc6HjZ7DS', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14102165_677108625775349_2740941647561498965_n.jpg?oh=d75221e6ba26db57c23c6df884545d55&oe=5843E956', NULL, NULL, NULL, NULL, '678481905638021', 'd75221e6ba26db57c23c6df884545d55', NULL, NULL, NULL, '2016-09-03 12:10:48', '2016-09-03 12:10:48', NULL),
(389, 'Noel Noel', 'noelnoelhan90@gmail.com', NULL, 'npxYhGd8PyDISnqEWltC8l1WUDXzwF5kjV4LL7qTlbyvJ3AOTSbsu8HsDggJ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.26.120.120/p120x120/10525669_355874314559938_5917668232500462574_n.jpg?oh=1ccbfad3cd5530f31310938ecff04562&oe=58529824', NULL, NULL, NULL, NULL, '683623295118370', '1ccbfad3cd5530f31310938ecff04562', NULL, NULL, NULL, '2016-09-03 12:14:11', '2016-09-03 12:14:11', NULL),
(390, 'Win Win', NULL, NULL, 'Vqdf2JjOXUw0mZ79cC9snnhh6C4LgZegGXMq7wRxFr75mCVOlUmxMoToo0sr', NULL, '', NULL, NULL, NULL, NULL, '515961621933934', '986e9f0e459c25b769f32d142b758db6', NULL, NULL, NULL, '2016-09-03 12:15:38', '2016-09-03 12:15:38', NULL),
(391, 'Daw Zin Mar Ohn', NULL, '$2y$10$MHQoEciOHp6RWkjegQPu1u6RFTQREvIwToCqHIT0tyyKPlL.37yWq', 'Ti00tBm5urQZ0qICKpWJCFQV0008nJZaYLQ9hoTpSkAGcDqVi29UgAddHqIw', '09250993615', 'default_member.png', NULL, 6, '1958-05-20', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-03 12:27:10', '2016-09-03 12:27:10', NULL),
(392, 'Ko Myint Shwe', NULL, '$2y$10$2ZCGmg.8HhQs6VMS.ASyW.pXqlXw.lpN3CqGmEheye3EcFl9MSJP.', 'wZafcrv0LEqPtfSO39Zixo0GiZz4XLhYun4X577sMEnnOlycLLr0CRUXCVL0', '09777636755', 'default_member.png', NULL, 1, '2016-09-09', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-03 12:33:52', '2016-09-03 12:33:52', NULL),
(393, 'May Thu Myint', 'try.pancakes@googlemail.com', NULL, 'tTa4E6jrPXR61XOVhxdSbx8FVP7ddYbfKo932DRDFI8tm2SHTqrftaxvC0Pg', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/12366394_10153164002640404_3678986362119949242_n.jpg?_nc_eui2=v1%3AAeFo9K3DrIgdQ4-B43uKImk-Dpn3WO-lS8EikDn4gzd4Ynxoq4DzrL7X2530uFiCuQdTHUM3f0ABMUppBJ1K76lvVLgm-mGV6zKl3dDVc87k6Q&oh=ae26204b32e7d341acd4212208dc5c9b&oe', NULL, NULL, NULL, NULL, '10153733517340404', 'ae26204b32e7d341acd4212208dc5c9b', NULL, NULL, NULL, '2016-09-03 12:38:14', '2016-09-28 12:41:14', NULL),
(394, 'Yin Yin Myint', 'marywenwen.work@gmail.com', NULL, 'tnzO3DIjuv8Z5Z9ixzbQnaMPEXHPj08d0y7rSUqh6lqgeyB594a8M64NUG3S', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13407330_136384043447149_1463681001233801342_n.jpg?oh=20914412df6d426af63113b64cde1ec4&oe=58438C35', NULL, NULL, NULL, NULL, '195664984185721', '20914412df6d426af63113b64cde1ec4', NULL, NULL, NULL, '2016-09-03 12:39:58', '2016-09-03 12:39:58', NULL),
(395, 'Nyi Nyi Min', 'nyinyimin2007@gmail.com', NULL, 'GcVaD5XxaUGS4w9IsMxVhi4N1uLGgCsgM4UQyM7jHRuqSPAYjAVur1oeqALj', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c17.17.207.207/s120x120/206209_3431027210801_1824893297_n.jpg?oh=b4432b96b2d47d6eac35410a2bc99c85&oe=587E5FFA', NULL, NULL, NULL, NULL, '10207404516567479', 'b4432b96b2d47d6eac35410a2bc99c85', NULL, NULL, NULL, '2016-09-03 12:40:15', '2016-09-03 12:40:15', NULL),
(396, 'Tre Za', 'tinzar.myatmon@gmail.com', NULL, '1hQBfNRvQJkDl8q2N52mndoDxDPhc6olPF4wUy3NgCjBE5b9U735vo06vmBn', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13239991_10154816035281258_6833692919373971826_n.jpg?oh=744d1761155a3855550afa101fcab891&oe=58469893', NULL, NULL, NULL, NULL, '10155140785101258', '744d1761155a3855550afa101fcab891', NULL, NULL, NULL, '2016-09-03 12:40:26', '2016-09-03 12:40:26', NULL),
(397, 'Hla Oo', 'hlaoo.8843@gmail.com', NULL, 'EMEgA72dnQKzguMWIEVpW5NdEmrCBgqVsZ30pCFm', NULL, 'https://graph.facebook.com/v2.6/1761621647435876/picture?width=400&height=400', NULL, NULL, NULL, '1', '1761621647435876', 'EAAPMa6cPYRkBAP57umwHdmdLhZBSkFx41JuCZAvpTzEAYyYidbGnssFF3m9xruOTaofLhzcwdRYnpPc0Hxn4CmEkX3Up36u8K7VPTFAE9RVHg7x9nZB6G3ljPYhRAsqOosaWHsBfh29QNtzRZAgondJEHta7vDjSthacOzKSpwZDZD', NULL, NULL, NULL, '2016-09-03 06:10:27', '2016-09-03 06:10:27', NULL),
(398, 'Su Nanda Latt', 'sunandar008@gmail.com', NULL, 'Xsx72dKIrrDBJvimBBik5Ry6LoxEAlo580c1H4G3zllYOfOfWXY6Q93MydFD', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14095744_1349438355086224_6079306000955925580_n.jpg?oh=1a4cd6acc8af71728f21b5e75f18ae03&oe=58461060', NULL, NULL, NULL, NULL, '1352383108125082', '1a4cd6acc8af71728f21b5e75f18ae03', NULL, NULL, NULL, '2016-09-03 12:41:18', '2016-09-03 12:41:18', NULL),
(399, 'Laminn Kabyar', 'mg.mama95.mm@gmail.com', NULL, 'VU1dyY8SjegSLtJHZmRQhglGlcOX6resenQfYFA60iQSgxiYrO11VpY9BAeN', NULL, 'https://z-m-scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14225542_648647971964576_4498062923205411511_n.jpg?_nc_ad=z-m&oh=2e0f7dbc2b08dbf25d3d0806950b344d&oe=584EACEC', NULL, NULL, NULL, NULL, '649196805243026', 'z-m&oh=2e0f7dbc2b08dbf25d3d0806950b344d', NULL, NULL, NULL, '2016-09-03 12:47:33', '2016-09-03 12:47:33', NULL),
(400, 'Su Myat Yadanar', NULL, '$2y$10$GbFlY9PrTSMy.IztWmEnBuZTXTCnNuZfygxcMUSmHUZjrLNCp7DeC', 'jerV3QJq5BkAw1PUdvCqahnWcx4DlKgyezuOJo1ad8WnYVZEr1u8QTWpd8p1', '095115673', 'default_member.png', NULL, 5, '1976-11-30', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-03 12:50:01', '2016-09-03 12:50:01', NULL),
(401, 'Aung Myat Hein', 'championboylay@gmail.com', NULL, 'TAEnWQ9ZHM1ruzixw7Zx8BBt0BucStgB1Vhd9vtGPXw9vJWyNfjWfUQGXd1s', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/576600_340071742714562_1518469996_n.jpg?oh=8f336fa96937a470c546046d1ac3aa35&oe=58419954', NULL, NULL, NULL, NULL, '1046243048764091', '8f336fa96937a470c546046d1ac3aa35', NULL, NULL, NULL, '2016-09-03 12:51:13', '2016-09-03 12:51:13', NULL),
(402, 'Khinhtet Aung', NULL, NULL, 'AVbBY5BDLmSu2xtcXsY1RoSOkTM5XRu9ZyolTvdmAuQxXOFoTqCNp99U4tQI', NULL, '', NULL, NULL, NULL, NULL, '1997324030493968', '8cef8e6c8c28e229952a78f5c320d5ed', NULL, NULL, NULL, '2016-09-03 12:56:01', '2016-09-03 12:56:01', NULL),
(403, 'Thant Thinzar Nyi', 'honeymya60@gmail.com', NULL, '0RAkQx6z2hjeyUi5pvjpI6LXFSzOnox5VRfklhrj', NULL, 'https://graph.facebook.com/v2.6/1754682644746505/picture?width=400&height=400', NULL, NULL, NULL, '1', '1754682644746505', 'EAAPMa6cPYRkBAJvXdK0ZBDZAGxTbaIvGY1sUsR4ZAGPw55kXea3Q6oFEZAJcyA6PzSs1NlTtHcmZCRt8AvNAxBReFPxChqwNfkv1ZAhqgXxda3ibRsFJLcAtmLdGLXj2K9aOfgo8kokvsR9elw3nSJ2AZC4MaopOUIZD', NULL, NULL, NULL, '2016-09-03 06:33:46', '2016-09-03 06:33:46', NULL),
(404, 'Phyothiha Zaw', 'thihathawzin@gmail.com', NULL, '23MnNiRWWBBJYmveVPt2oPTHM7pom5fjseO0cN09tZMXRhr2LswjevltAH1q', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13412992_1175836772446771_8645372654610402092_n.jpg?oh=2137d5fc83f85763ba34034ba2cb9f65&oe=584AB33F', NULL, NULL, NULL, NULL, '1232011073496007', '2137d5fc83f85763ba34034ba2cb9f65', NULL, NULL, NULL, '2016-09-03 13:13:01', '2016-09-03 13:13:01', NULL),
(405, 'ကိုကို ခ်စ္', NULL, NULL, 'FrfcQlTalgS4X8Oh47mX5WP6y1cHYx8c7Oe8LakjGvze6b6dP5EUNk3ovKWp', NULL, '', NULL, NULL, NULL, NULL, '334776616857287', '32f49e33d21950be7f15a6dd7208a263', NULL, NULL, NULL, '2016-09-03 13:15:41', '2016-09-03 13:15:41', NULL),
(406, 'Nay Linoo', 'naylinoo004@gmail.com', NULL, 'DAJ4XHaSonK6BUVnMQ5SzZlX6oaZRIs3vhy167oJBwULBgat3GIiZEGHBV5j', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12809740_211674115858990_5908943327776456373_n.jpg?oh=0e7281fd8d9c22b1f8e5bf6597579029&oe=583D210E', NULL, NULL, NULL, NULL, '309383919421342', '0e7281fd8d9c22b1f8e5bf6597579029', NULL, NULL, NULL, '2016-09-03 13:26:16', '2016-09-03 13:26:16', NULL),
(407, 'Sitt Aung', 'sittaung07@gmail.com', NULL, '1Q4zA362rKP8Kv5TT6EBdlgKv7B7z9laY7o2b95O3t6waayUuuXi2TQc6oAZ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13754549_10208693357264112_1384870005135722558_n.jpg?oh=511e4973506387b0c3fa5c39e8b66ebb&oe=5854F78F', NULL, NULL, NULL, NULL, '10208963892867333', '511e4973506387b0c3fa5c39e8b66ebb', NULL, NULL, NULL, '2016-09-03 13:29:48', '2016-09-03 13:29:48', NULL),
(408, 'Po Po Myint Than', 'popo.bear312@gmail.com', NULL, 'aS4gfh0ccrNEvyCQy49RvBEm4y7Suc4DiWPCP0E3FfndWsEhEJDdWCfqouV9', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14102603_787011964775352_6608480639646222980_n.jpg?oh=755e1794b3d90a48111248644e8a12a3&oe=58510AB7', NULL, NULL, NULL, NULL, '788800427929839', '755e1794b3d90a48111248644e8a12a3', NULL, NULL, NULL, '2016-09-03 13:32:35', '2016-09-03 13:32:35', NULL),
(409, 'Khin Lay', 'galaxy.khin@gmail.com', NULL, 'FDNvfIRFLIQzehdmJTcM8xdVz76Ffx9icBLepVNgWM0FNMDOmiJJFlRoPti9', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.8.120.120/p120x120/12507098_10208637355235009_3811208819166574865_n.jpg?oh=98ec00485b8a6bebf57df8739dbc8665&oe=583C7EB0', NULL, NULL, NULL, NULL, '10210612117242825', '98ec00485b8a6bebf57df8739dbc8665', NULL, NULL, NULL, '2016-09-03 13:36:06', '2016-09-03 13:36:06', NULL),
(410, 'FC Lion', NULL, NULL, 'aMu8LNsGgoXtRpdsEOgJ47b93pC6sI2mx4Ff25KLO2abqYwDeufohFtA0ZHs', NULL, '', NULL, NULL, NULL, NULL, '339866359736675', '34924dc9c142eeb711558974b3f5824d', NULL, NULL, NULL, '2016-09-03 13:40:53', '2016-09-03 13:40:53', NULL),
(411, 'Kyaw Min Oo', 'anotherluu@gmail.com', NULL, 'LsfuJNfBiSX4h7PVbuur6l6rECfBbM8R0ea1VC4VoTCyDcyB4M77VIB1nr3D', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13903293_1350740701620925_550507651605135594_n.jpg?oh=c5b531ee268c5be52f507bd59bb019f5&oe=584D8CFF', NULL, NULL, NULL, NULL, '1383049891723339', 'c5b531ee268c5be52f507bd59bb019f5', NULL, NULL, NULL, '2016-09-03 13:41:59', '2016-09-03 13:41:59', NULL),
(412, 'Alvin Swan YI', NULL, NULL, '6if26tNPjo8irNL3jjCF6hdb4VCOkM4PSaJNvbxaah1Zps4jFz0gh5FA3x6h', NULL, '', NULL, NULL, NULL, NULL, '610542752460145', '7619cddad845f523d0e105aa02d0b40c', NULL, NULL, NULL, '2016-09-03 13:44:22', '2016-09-03 13:44:22', NULL),
(413, 'Ko AuNg', 'heavenkingosk@gmail.com', NULL, 'M8HTVgq7aWrrT45QvYNglkGKbdolZbWVG3z5HacCyf4GDkQrvOC34P3IRCX5', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13260286_1291797247501489_3675035802294823582_n.jpg?oh=06e75f27ead372161ad24042bfebe77c&oe=58471AC5', NULL, NULL, NULL, NULL, '1371549262859620', '06e75f27ead372161ad24042bfebe77c', NULL, NULL, NULL, '2016-09-03 13:46:05', '2016-09-03 13:46:05', NULL),
(414, 'kyi lwin', 'ahkyi2411@gmail.com', '$2y$10$jS3gJFLjLiAB4y9BsIfn/OvKFj0qXEfsYIO21eWEkmO0umd0TI1DC', 'rDn9jt7BXanvCKnbfuZH4z9TUS2axWdaeGJMnavvY9gPhBaSscYpyqYx5eeW', NULL, 'thumb_3791468294382.jpg', NULL, 1, '1986-11-24', 'a6431bd42c9027d57e5d81bc70b0f710', NULL, NULL, NULL, NULL, NULL, '2016-09-03 13:48:46', '2016-09-03 13:48:46', NULL),
(415, 'Mmgl English Class', 'mmgl.englishclass@gmail.com', NULL, 'io63zd2wbAjXWt6OFl7BPtX6sVKZyysCCe4TNQAy1DtoPCN4kaFTM7Y2tG0Y', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c30.0.120.120/p120x120/12341334_786209394857636_6345366565698191359_n.jpg?oh=d8d6b9935fcb884fa8238f00ae5fb83f&oe=583A608B', NULL, NULL, NULL, NULL, '956776404467600', 'd8d6b9935fcb884fa8238f00ae5fb83f', NULL, NULL, NULL, '2016-09-03 13:49:27', '2016-09-03 13:49:27', NULL),
(416, 'Oscar Myo Min', 'myominoophilippe@gmail.com', NULL, 'D4NrX4FiHZ9V1mDEnIlyp3mTZcQy0oRRiz4nQRRoai8pBfv3oMVVEz3ZuVQw', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14141591_513086678887368_6021129478567072569_n.jpg?oh=88600752096a2b8e65a622a30b2d2a87&oe=587FD533', NULL, NULL, NULL, NULL, '514141785448524', '88600752096a2b8e65a622a30b2d2a87', NULL, NULL, NULL, '2016-09-03 13:49:50', '2016-09-03 13:49:50', NULL),
(417, 'kyi lwin ', NULL, '$2y$10$oFG.MjcdLxkzoLf06O6e5OyLYR8tpP/oanBFH1NIeH0AkIxuusNcu', '9KiyCTm7MtJ9cChoV5PZiteNnlstZk9VBNEhyvXu72TbpPnnuxygujm7LvgX', '09420778578', 'thumb_52001367781932.jpg', NULL, 1, '1986-11-24', '1', NULL, NULL, NULL, NULL, 'huwo5INQ3DZI8yZYIkh2vw6cJFd12XoT2vxS6BLrcHfLW4oEZILiN7vZeCDW', '2016-09-03 13:50:45', '2016-09-03 13:51:07', NULL),
(418, 'ashinawbasa', NULL, '$2y$10$vZ4viM.Nex2P/bquc1mim.x70V7hR1vprT7zmyzRqLriWFIXjJXcC', 'nia4J2JWlCM3G6FRQs6TMtfbpfjgAjo4kY4CC2z5Ll8lpP50Mkgsrcpvdklw', '0943082655', 'default_member.png', NULL, 7, '1952-05-04', '1', NULL, NULL, NULL, NULL, 'STAjirzxqtbt5PGcC095iepy9fbLwz5XMitU11tAa2peREdXeT1g46aoigOA', '2016-09-03 13:55:47', '2016-09-03 13:56:13', NULL),
(419, 'Anthony Than Kyaw', 'thankyaw4694@gmail.com', NULL, '7MgmlEmmyLaE4fiJkim3m5cJ5DUZ9E7cBulZWYh5CyMp3nanZbihcj2own1l', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/14054982_666604086825796_4464382911004833575_n.jpg?oh=6bfe8e6848c152da46fb637d38310eb1&oe=583BB51F', NULL, NULL, NULL, NULL, '671041519715386', '6bfe8e6848c152da46fb637d38310eb1', NULL, NULL, NULL, '2016-09-03 13:58:28', '2016-09-03 13:58:28', NULL),
(420, 'Nyi Nyi', 'kyaingtong18@gmail.com', NULL, 'U34ORsZBmQzLsmCBHX5EgNVBLXTX7hZHi2IXTn7XcGVo9OM6wtHJZfe3tXvI', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13700135_598839280289509_8819197588547744075_n.jpg?oh=081238235e813bd9c00e6fd78be604bf&oe=584C60A6', NULL, NULL, NULL, NULL, '620911861415584', '081238235e813bd9c00e6fd78be604bf', NULL, NULL, NULL, '2016-09-03 14:03:32', '2016-09-03 14:03:32', NULL),
(421, 'Lamin Phyu Thwe', NULL, NULL, 'c9Rm0ozF3OYckTQHISsJvzTXMQ2EHJwzyJ8ITebV45K5dVvU1S2gfCWQWNc5', NULL, '', NULL, NULL, NULL, NULL, '352015465186040', '23e7e0cee73f2e75b13cc386b1c89609', NULL, NULL, NULL, '2016-09-03 14:10:21', '2016-09-03 14:10:21', NULL),
(422, 'Kyawmin Htet', 'kyawminhtet241192@gmail.com', NULL, 'ILeWXv3sIwNxbPpU4lEcF5LeiRkBoDKQoN4DGqTp7SFUPvl447H8HyqWxGyD', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13782014_168754553538279_1400367875407227153_n.jpg?oh=fe5155abaf8ec03b035b29b61df42342&oe=583B6544', NULL, NULL, NULL, NULL, '191176571296077', 'fe5155abaf8ec03b035b29b61df42342', NULL, NULL, NULL, '2016-09-03 14:10:26', '2016-09-03 14:10:26', NULL),
(423, 'Eros Eros', 'aungzayyaaungzayya67@gmail.com', NULL, '2SsjkKSeQ8Ytke4g1LDQcWQPGQsboC6QkfJZ7WWe', NULL, 'https://graph.facebook.com/v2.6/306199376410231/picture?width=400&height=400', NULL, NULL, NULL, NULL, '306199376410231', 'EAAPMa6cPYRkBAEZCIcZBzwFlvHjQ20Oc9ZBjAcPAR8CcCumvqFOZAA8s2VdACZB2vVyjG5X4dfzpb0IgcxtiFL1WzNK4CWBMZBti5eOiqwMC6PCmheIhri9ePEZB2pLq3VcrBS3huqULVqPTIpTrZA4VpW1FIzD11TaMv4IEFxtwuQZDZD', NULL, NULL, NULL, '2016-09-03 14:10:30', '2016-09-03 07:48:40', NULL),
(424, 'Ko Phyo', NULL, NULL, 'PL2HsS6ksM73mBtMRhMWyOZ4v8bxFpZA60QcWsbWaJ5OwF5vzQwmmFKHWUHw', NULL, '', NULL, NULL, NULL, NULL, '326679587679039', '52a5bd492517820810b36d68be41fc25', NULL, NULL, NULL, '2016-09-03 14:14:15', '2016-09-03 14:14:15', NULL),
(425, 'Ma Lik', NULL, NULL, 'oudcgtPChELWzWTNvskoRBj7hDNBE620DSdWvUHJompL4KaEBizKO9fmySD3', NULL, '', NULL, NULL, NULL, NULL, '1644993809145982', '74477990f8a31eb6ac71d7703556956c', NULL, NULL, NULL, '2016-09-03 14:20:50', '2016-09-03 14:20:50', NULL),
(426, 'Yin Mon Aye', 'moonangle57@gmail.com', NULL, 'Sp7iRrjJxPBb6wxQYpZfO23Q6IHLcLYI1P1IDZ6puX8Fr1uW2sKrSHriq0wH', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11230728_1632149357039566_9211587405146590563_n.jpg?oh=b5143e54ab5f5644366233aaf3113a26&oe=584539E0', NULL, NULL, NULL, NULL, '1736093536645147', 'b5143e54ab5f5644366233aaf3113a26', NULL, NULL, NULL, '2016-09-03 14:22:13', '2016-09-03 14:22:13', NULL),
(427, 'Tun Lin', NULL, '$2y$10$yjriCxZOPzWG1CjFZ1K9nexhrdf8XuJiIRVSedmG9k5HPXELqIFwC', 'e5xOk2XhEsr44MwOODIruMCGJ4WkWSY2Sj657YdE29E8gSTi8Tx11Gw3P6Ie', '09421021926', 'default_member.png', NULL, 2, '1975-09-08', '1', NULL, NULL, NULL, NULL, 'VBXPValCqLhW0LxHgJ6UzvAXmijGbST2AVNRNCeWR8EMagVlNZaKfKZpPs2u', '2016-09-03 14:23:33', '2016-09-03 14:24:04', NULL),
(428, 'Aung Win Tun', 'aungwintun990@gmail.com', NULL, 'PLPsYw3ZXotZor5LsrUixBMHv81WLMGd24jq2uG57onmwpQVxHg3sm2fBQHR', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13265871_1785883181652813_6831430818776848795_n.jpg?oh=93fd06892db8d6ebe59ac062cb574a00&oe=5884C2B3', NULL, NULL, NULL, NULL, '1827464257494705', '93fd06892db8d6ebe59ac062cb574a00', NULL, NULL, NULL, '2016-09-03 14:25:02', '2016-09-03 14:25:02', NULL),
(429, 'waiyanpaing', 'waiyanpaing.wyp19@gmail.com', '$2y$10$xYTE0HCJ9gkmcX0ZFXJvY.57K6mlg5GahUpvZxSzpU1Yf9w8G4PzS', '5wyYY8hgcHLGLfw7MYial5YUTiDlKRjNeZFnOdOSR1WdMDMQ2kVyExCxOKor', NULL, 'default_member.png', NULL, 40, '1996-11-12', '1', NULL, NULL, NULL, NULL, 'dKRhLvL0aUtjjNNzYkijeXYWvg3NA5n0xrDVHvtq9hKJcLaexPqv62Ty9P82', '2016-09-03 14:26:26', '2016-09-03 14:40:29', NULL),
(430, 'Aung Min', 'win2kyi@gmail.com', NULL, 'ED1HJIjzxAnG59JSqqufeLd2gdU2TmAiaf1QcMt82PQXE8bLGLpLWoV1crok', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c21.21.259.259/s120x120/429880_3154261074184_2031768897_n.jpg?oh=396dd0df72492b1d5599de6c6afa94cc&oe=5849FB39', NULL, NULL, NULL, NULL, '10205386941711732', '396dd0df72492b1d5599de6c6afa94cc', NULL, NULL, NULL, '2016-09-03 14:42:27', '2016-09-03 14:42:27', NULL),
(431, 'Thet Paing Kyaw', 'thetpaing@gmail.com', NULL, '226W5ETzpXKZAOoa877Vv1QL2ynn3YEuinfkwVwRegiuamXdjx3uhPeUyt6w', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c205.44.550.550/s120x120/400827_2825899562312_1201683069_n.jpg?oh=2b808e66f77cad28f046e7f33184e125&oe=583FAD38', NULL, NULL, NULL, NULL, '10209283888189919', '2b808e66f77cad28f046e7f33184e125', NULL, NULL, NULL, '2016-09-03 14:58:10', '2016-09-03 14:58:10', NULL),
(432, 'Pyae Phyo Maung', NULL, '$2y$10$KvTDQB34PA4fRmgGruYxp.AV5H.HQ8ClIAReKapV0boZNIUckImGW', 'LHwWMtwv0mqx0m69XvooqqBP8Uwn9HyZr0kO5aYBZ0ZXYFQ0zGhNtq4TQVzY', '09421088579', 'default_member.png', NULL, 2, '2005-10-13', '1', NULL, NULL, NULL, NULL, 'mXCiV1XHKNch5sM3z9MoLfSQxtzyeFb0EdTYIHuns5z9lEOEdsWWr6qOeKz9', '2016-09-03 14:58:47', '2016-09-03 14:59:15', NULL),
(433, 'Thein Ki Kin', 'sawtun407@gmail.com', NULL, '5k9A9ClhRSL6WfyEkQ4dzTTvgwTy1QdT46NdabLSNj0toNUtPflS5OHg19S9', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13912314_635967466561085_8219947780214392199_n.jpg?oh=95065765d9d0851c0b0951597b878a26&oe=583A97B2', NULL, NULL, NULL, NULL, '651207201703778', '95065765d9d0851c0b0951597b878a26', NULL, NULL, NULL, '2016-09-03 15:01:00', '2016-09-03 15:01:00', NULL),
(434, 'Mahar Myanmar', 'oo.adv.mm@gmail.com', NULL, 'HCJXtjrBSusBmEjw509ezxERPVbgcxkyPItlZ5XS88L6UBxmSW7X6zpvsF5l', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14102708_1764224350492374_7788842228091605491_n.jpg?oh=510dc2bcd08cee3d5c4599b5a0096476&oe=5849DE88', NULL, NULL, NULL, NULL, '1769812379933571', '510dc2bcd08cee3d5c4599b5a0096476', NULL, NULL, NULL, '2016-09-03 15:01:05', '2016-09-03 15:01:05', NULL),
(435, 'Snow Angel', 'thellay177@gmail.com', NULL, 'DLLXOt0jD38kFsQx5Ow2yVobSAc8ZelIpfaexXvzGAd99P75gRzd3jpEohWB', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13413567_710036145802448_558697128438867448_n.jpg?oh=00ff3ea26a56e4738fc329e63ed90d13&oe=5842AE8E', NULL, NULL, NULL, NULL, '751480861657976', '00ff3ea26a56e4738fc329e63ed90d13', NULL, NULL, NULL, '2016-09-03 15:04:55', '2016-09-03 15:04:55', NULL),
(436, 'Mya kyu thin', NULL, '$2y$10$BoTK3CH1JujvNOrZ06Ry3eqQGxzm1d.4ziC75GnfFf09Y8ZaurTbG', '14ZYsyQw0bUQ06lQ5N89jkb8oK95ftU6CUfAttHoNRd9frccHdehdDPuzNkA', '09965095963', 'default_member.png', NULL, 5, '1989-09-06', '1', NULL, NULL, NULL, NULL, '1OLrjRYhZCuW2wLyR8q1B6wGJqG0SItJyZY94uouzu8dD08yQXQ9XL9U4hec', '2016-09-03 15:05:05', '2016-09-03 08:42:45', NULL),
(437, 'Mya kyu thin', NULL, '$2y$10$7RANfE78fHmLdLjYSes7JuiyXTAVDoj/w8tVTmAf5EoFFJDRoBphm', 'hbxTl6FsjEpob0lJfsIupbeUCiy2A4QV1NxLyHbWdckYGEtJzF07XNkjEd2p', '09965095963', 'default_member.png', NULL, 5, '1989-09-06', '61714cdc3317625ff62f3c408bb6f47c', NULL, NULL, NULL, NULL, NULL, '2016-09-03 15:05:05', '2016-09-03 15:05:05', NULL),
(438, 'Took Took', 'sithuhtun177@gmail.com', NULL, 'w848Oj2ILqEW5tMLX8WTowkCqsO9Lf0coVMVcPm1rWwKqHIn6jzQ6vvrYnO9', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/13557706_716944921777003_6076381053432266014_n.jpg?oh=177557dd83742869127fcac99a61f3d8&oe=584C32EC', NULL, NULL, NULL, NULL, '748001288671366', '177557dd83742869127fcac99a61f3d8', NULL, NULL, NULL, '2016-09-03 15:09:11', '2016-09-03 15:09:11', NULL),
(439, 'Kyaw Min', 'ber.kyaw@gmail.com', NULL, 'qqu0J8sn6cRBlxkygh7frcFH3wcPPyZHiVjSgI97st7zyQOQkhC3h3NstR5g', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c170.50.621.621/s120x120/255597_342880269168662_1189413462_n.jpg?oh=2a5b25370153d0fc990a94b56e1a9f05&oe=5853C3E9', NULL, NULL, NULL, NULL, '955706984552651', '2a5b25370153d0fc990a94b56e1a9f05', NULL, NULL, NULL, '2016-09-03 15:16:18', '2016-09-03 15:16:18', NULL),
(440, 'Soe Nyunt', 'soenyuntmepe@gmail.com', NULL, 'uYj4wxKksPl7C4TG8EMjBxKJfCd7JxKp6puHrpc0VJz7w5RBm5oRbOSF840l', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13245_477520779068463_947721266772155699_n.jpg?oh=c6b7389979d1f2c4d11d80d9e5478b10&oe=5838DA37', NULL, NULL, NULL, NULL, '704119683075237', 'c6b7389979d1f2c4d11d80d9e5478b10', NULL, NULL, NULL, '2016-09-03 15:17:02', '2016-09-03 15:17:02', NULL),
(441, 'U Aye Zaw', NULL, '$2y$10$JscR2FAnaDZku/ElyGIiXOq3YqIZm3nAwOZxW8nJTCo9BReeCn2EK', 'Px7HJIioywiZ5jt3Pc2Afu1MMkJ6Pyn8hrPsgFm1pArkBIz8K73oarbVy4yn', '09254028992', 'default_member.png', NULL, 2, '2016-09-03', '1', NULL, NULL, NULL, NULL, 'b9M2TwBvZJ3hW35wzj2uqBMJ6lzI2sos8kPm4PJZpJZk5rEDqdgIIyAz2Ip7', '2016-09-03 15:20:27', '2016-09-03 15:22:22', NULL),
(442, 'Ngwe Lwin Aung', 'ngwelwinaung@gmail.com', NULL, 'GThuPuh1rxDvoAGpKczNQSPdAQZ81SjuJXkqYQrG4YkR1havr61Cx6oSoyJo', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13895582_10205519981118749_947671784701479825_n.jpg?oh=857a9a6963b999b2d704c57fc5763a68&oe=5854E9C0', NULL, NULL, NULL, NULL, '10205723442165148', '857a9a6963b999b2d704c57fc5763a68', NULL, NULL, NULL, '2016-09-03 15:23:37', '2016-09-03 15:23:37', NULL),
(443, 'thein win', NULL, '$2y$10$Fxd.dufxjUTiz2kX7DaWieBHvYGlK36QYpJYAeh0c9es3i04rpBBK', 'FbsXaTG28lUAVrm2hOK0yLg5Ys5tYqYTsaoNo96SJgGidv8wKYSMw8RMM0Yl', '09785105327', 'default_member.png', NULL, 32, '1970-11-10', 'f4090641efbc558b5bf53ad1c340e37a', NULL, NULL, NULL, NULL, NULL, '2016-09-03 15:25:28', '2016-09-03 15:25:28', NULL),
(444, 'Ă Nyěįn Thū', 'nyeinthu29@gmail.com', NULL, 'R9VEh82RQ0bBXLtdfBWzp5epHdGUHJJ8MOouOUbU5ThFIjvv3X5CAq2GCLrm', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12986941_821913821286528_757721422792590551_n.jpg?oh=b6a99fe600fcd6d967123d47f8dab224&oe=5843F96B', NULL, NULL, NULL, NULL, '900581110086465', 'b6a99fe600fcd6d967123d47f8dab224', NULL, NULL, NULL, '2016-09-03 15:29:03', '2016-09-03 15:29:03', NULL),
(445, 'Ya Da Nar', NULL, NULL, '9IDLWzhvbDubhcQbuVIIrSle0PxdNTMN6LOk43wR7NwoMJLvN8Mpl5Jl6ID6', NULL, '', NULL, NULL, NULL, NULL, '339176519752799', 'd17811a93a59a0386681c894d1654267', NULL, NULL, NULL, '2016-09-03 15:30:18', '2016-09-03 15:30:18', NULL),
(446, 'Aung Kyaw MinMin', 'mtkakmmm@gmail.com', NULL, 'oSq04T7QReKOb0QyPH91PJomiCDLZYKjUp3KbomyYi3UYU7h4f0XYTYZuzdJ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11222350_733057300157113_3708649192018943091_n.jpg?oh=dba41e68cb7f9b0e2ba5fa6ceeb966b2&oe=5884FC41', NULL, NULL, NULL, NULL, '945271252269049', 'dba41e68cb7f9b0e2ba5fa6ceeb966b2', NULL, NULL, NULL, '2016-09-03 15:31:28', '2016-09-03 15:31:28', NULL),
(447, 'U Nay Myo', 'honeymaung.6696@gmail.com', NULL, 'weKOfYThpeF2WyCO6g0fNnuUteRxToI1kYJHysv7DMjYuZbtlvrBuUs03hTh', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13754186_312832899105151_5377026679142739729_n.jpg?oh=09968ded7ecb145ac40af0f9f04ad883&oe=5846FDDE', NULL, NULL, NULL, NULL, '348156482239459', '09968ded7ecb145ac40af0f9f04ad883', NULL, NULL, NULL, '2016-09-03 15:34:06', '2016-09-03 15:34:06', NULL),
(448, 'No Ven', 'novenpale@gmail.com', NULL, 'npedMwE92saoL5Ja6LxzU7Qp2aIFAU1qedWAkOUHp0tuVkTbkxkZpbqoLQSf', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13692562_1731936487085965_7799720908268330136_n.jpg?oh=74412565dc55348b49a8e0a1f51d87f7&oe=5844D896', NULL, NULL, NULL, NULL, '1753688171577463', '74412565dc55348b49a8e0a1f51d87f7', NULL, NULL, NULL, '2016-09-03 15:36:35', '2016-09-03 15:36:35', NULL),
(449, 'Oo Thiha Min Thu', 'kothihaminthu222@gmail.com', NULL, '4Wsbz2eHRk5RwDfRp8ttfDHZPeycsNPCKcLCGxflRtuISGfzGJvobQ9Wryhz', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13445628_260527020972703_6145027063521183793_n.jpg?oh=be46265662d10ed6af420f96a0affb5a&oe=584F12E9', NULL, NULL, NULL, NULL, '297865560572182', 'be46265662d10ed6af420f96a0affb5a', NULL, NULL, NULL, '2016-09-03 15:39:27', '2016-09-03 15:39:27', NULL),
(450, 'Nay Lin Htwe', NULL, '$2y$10$2fkCtYNNXMB.Jmi0XChhX.i0kk.KR.49xin3ffVjkS/M46pdaEiwG', 'irMMm6GE6u16r11DkpCu0g4KQcpznBjZEVuecPLfShKq1xLqMQlouvMl2qk8', '09250335369', 'default_member.png', NULL, 31, '1997-04-05', '15d95fc587bb40254abd34778550aee1', NULL, NULL, NULL, NULL, NULL, '2016-09-03 15:39:45', '2016-09-03 15:39:45', NULL),
(451, 'Saunn Hnin Phyu', 'saunnhnin@gmail.com', NULL, 'ZcSAKOFVB637cq5yBcLombELbajueEv3PL325lA3qsuP07E0FwqNMEsREIqB', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14067670_630364333795666_7464511378857400636_n.jpg?oh=8fa5bd493022605c7b51f0ded8d16c78&oe=584D7A53', NULL, NULL, NULL, NULL, '637853303046769', '8fa5bd493022605c7b51f0ded8d16c78', NULL, NULL, NULL, '2016-09-03 15:39:50', '2016-09-03 15:39:50', NULL),
(452, 'Oo Kyaw', NULL, NULL, 'TOhuPxon4apHVYsenBBBBybYqP06NF1dRAMKmBneOPfmsUat8Nz1yLoNnk1B', NULL, '', NULL, NULL, NULL, NULL, '162810804158509', 'a990fe09ee5aa295b18bc1b616c2feba', NULL, NULL, NULL, '2016-09-03 15:41:32', '2016-09-03 15:41:32', NULL),
(453, 'Sein Thaung Tun', 'seinthaungtun@gmail.com', NULL, 'c0tNfNJSPqEf8mpwDCzLmqBDLlcG6PiZzNaAlq4EE4r0cgpxupsz5iFy4gwM', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c41.41.509.509/s120x120/420323_105175659612760_2108021733_n.jpg?oh=dfc706fcacb84a23022d1402953037c6&oe=58380D75', NULL, NULL, NULL, NULL, '860691627394489', 'dfc706fcacb84a23022d1402953037c6', NULL, NULL, NULL, '2016-09-03 15:44:51', '2016-09-03 15:44:51', NULL),
(454, 'Mg Mg Aye', 'kodakkodak2010@gmail.com', NULL, 'lNUPS6fN7Jf416WbESoO9KVOJiydaSSvsSw6BO7pKSnpLps5KWokEpaMW2jf', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10421365_715410395236906_289132711072441161_n.jpg?oh=136a8ec201691cb8aaaeeb324733e6cd&oe=583CB794', NULL, NULL, NULL, NULL, '986579691453307', '136a8ec201691cb8aaaeeb324733e6cd', NULL, NULL, NULL, '2016-09-03 15:50:18', '2016-09-03 15:50:18', NULL),
(455, 'Aye Thi Mon', 'ayethimon86@gmail.com', NULL, 'vLT70X0vFYxvtuGHkcVq9tDsDLK07E6REOXMKo7cjxOLOl6LMOSvQ5W1J97v', NULL, 'https://z-m-scontent.xx.fbcdn.net/v/t1.0-1/p200x200/1173616_1138498449517166_7694256780424745688_n.jpg?_nc_ad=z-m&oh=efb163a922908352f7f460f5762682f1&oe=583AC9CA', NULL, NULL, NULL, NULL, '1259591644074512', 'efb163a922908352f7f460f5762682f1', NULL, NULL, NULL, '2016-09-03 15:50:42', '2016-09-03 15:50:42', NULL),
(456, 'Aung Kyaw San', 'japan.gyiygn@gmail.com', NULL, 'Awgkyem8qiCL4wr0UCnk6AnoSYYHKnmfo85I9JOPHDy49O833SP7i4xxF6vI', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12809587_1750868718532945_2008221379961091055_n.jpg?oh=3c0cc4c0547e9fab821c0f0418a0628e&oe=584639F4', NULL, NULL, NULL, NULL, '1841269059492910', '3c0cc4c0547e9fab821c0f0418a0628e', NULL, NULL, NULL, '2016-09-03 15:52:44', '2016-09-03 15:52:44', NULL);
INSERT INTO `User` (`id`, `name`, `email`, `password`, `api_token`, `phone`, `profile_image`, `address`, `township_id`, `dob`, `activate_code`, `facebook_id`, `facebook_token`, `twitter_id`, `twitter_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(457, 'Ko Ko', 'diamondcakemote@gmail.com', NULL, 'jrJN4zZZEndvBcgZ36llkTx6wjd8i8WBs3mpPpaz11bfhWqVuXuTNfVxgGc5', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12239577_1673196062958820_5981769782119817535_n.jpg?oh=d09be13165e0e0344ddb3d3b3dcd9f79&oe=584BB705', NULL, NULL, NULL, NULL, '1788956068049485', 'd09be13165e0e0344ddb3d3b3dcd9f79', NULL, NULL, NULL, '2016-09-03 15:53:05', '2016-09-03 15:53:05', NULL),
(458, 'Kyaw Htet Lu', 'lu5987@hotmail.co.uk', NULL, 'dqNfoy1eEOmvaoR06GrRZbTt755k7He9hqy4DS8G3Nb7t9IoGNny5uKNvNKW', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/13265959_10209918189377332_6675593505326214979_n.jpg?oh=58f6b4fe6344ea2a76e68a937150ad33&oe=58523DC6', NULL, NULL, NULL, NULL, '10210818614327393', '58f6b4fe6344ea2a76e68a937150ad33', NULL, NULL, NULL, '2016-09-03 15:58:08', '2016-09-03 15:58:08', NULL),
(459, 'win naing', NULL, '$2y$10$ej3xMANabdAbf6INe98o1ugssR1gEb961yqA2tcJvP5/3AGkxT1YC', 'OFd4SS0iKY7dsNWjrkKnt4zaFaMKAiCMEAMJ9BrvJ1ar0Dd5V0IOkCNCZrnd', '095057323', 'default_member.png', NULL, 37, '1966-03-09', '1', NULL, NULL, NULL, NULL, 'YCpn8EXTCUoEV0gz5plSWRK4EWZcIQL36fGbtJLRzFo06LKHtOUs0C9t3wEm', '2016-09-03 16:00:25', '2016-09-03 16:00:58', NULL),
(460, 'Golden Fish', 'lovesoyin@gmail.com', NULL, 'hZtMScsC1HF1InubopiLp26diV53ACLHelCp7XcoKFLpPp2qs7Xs70nDGDUU', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c17.0.120.120/p120x120/38067_113270825391901_7482248_n.jpg?oh=58db1bb71cf51725bee3953d76c70881&oe=58540DF5', NULL, NULL, NULL, NULL, '1236146493104323', '58db1bb71cf51725bee3953d76c70881', NULL, NULL, NULL, '2016-09-03 16:01:51', '2016-09-03 16:01:51', NULL),
(461, 'Aung Phyo Paing', 'aungphyopaing.ucsy@gmail.com', NULL, 'qYtmZaxcHsx1PpWv3FArsWcIcwssHK7rZx6Vh7Q9', NULL, 'https://graph.facebook.com/v2.6/292208201149567/picture?width=400&height=400', NULL, NULL, NULL, '1', '292208201149567', 'EAAPMa6cPYRkBANa14SZAzEjGXxOVe1YNjamVGOQqfZBlZAUdPb0XncHNbpoldI3GI5sDP9iLMBZBDAkMfciYnHcAfTQzJZA7IUjV5H0qUd8Uz5XDIfWWZBMdeCy9oodeg6SdHHHmXCQVN8ZAUtLxtwPf4dFx1feaQ7blwZBEnS72L2Tx6dPvW44f', NULL, NULL, NULL, '2016-09-03 09:34:14', '2016-09-03 09:34:14', NULL),
(462, 'Cherry Chan Myae', '6day.11month@gmail.com', NULL, 'XBSzMlPBDm1i4uO7lcuNPqSZhlGSl69GjQQVGuc2dL1P3X78Q4MtIFhamCdd', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14046069_923223327805741_3026410313779581125_n.jpg?oh=60ce5ef99584b775581a7e4d66fc0982&oe=5838D5E2', NULL, NULL, NULL, NULL, '932705316857542', '60ce5ef99584b775581a7e4d66fc0982', NULL, NULL, NULL, '2016-09-03 16:06:35', '2016-09-03 16:06:35', NULL),
(463, 'MThu Rein', 'minthurein1998@gmail.com', NULL, 'sz9bCgjSVgiZGAbm6Wfaz2RJCxiKuoWBFj6GWreQdb5vZ4RuNFss96sgqrcI', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13557822_872476886214789_7747812727964778994_n.jpg?oh=d5fd0d0c1679b00f75d837c69c2742de&oe=583A1444', NULL, NULL, NULL, NULL, '914291875366623', 'd5fd0d0c1679b00f75d837c69c2742de', NULL, NULL, NULL, '2016-09-03 16:10:09', '2016-09-03 16:10:09', NULL),
(464, 'ခြာ ညိဳ', 'novemberlin2010@gmail.com', NULL, 'LtOGhA0EofIyHImqh0DAJCehHQr3g6bGxRrdoBPfWsMLaul9ay2U4odvcdVg', NULL, 'https://z-m-scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13935140_1163895107008794_6614315170983475488_n.jpg?_nc_ad=z-m&oh=5e823a88ad319d5efe52da5ee921aa58&oe=583FA2F5', NULL, NULL, NULL, NULL, '1182868231778148', '5e823a88ad319d5efe52da5ee921aa58', NULL, NULL, NULL, '2016-09-03 16:10:33', '2016-09-03 16:10:33', NULL),
(465, '李澤成', 'tsecheng@gmail.com', NULL, 'HcWL32yx8E2O6xHistbntI7qqCjMFsTquZYkPmDx6NKMohZnA1LRKMgPCbuY', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13103559_10154245968968291_6493365369937283494_n.jpg?oh=bda41485309b7c64cce32c7d79170077&oe=583EADFB', NULL, NULL, NULL, NULL, '10154591857583291', 'bda41485309b7c64cce32c7d79170077', NULL, NULL, NULL, '2016-09-03 16:14:20', '2016-09-03 16:14:20', NULL),
(466, 'Thar Phyu', 'tharphyu.zmh@gmail.com', NULL, 'WWyUM83FlJpg2MbRNL6apd6pVwPWje7iTxBHB8jd', NULL, 'https://graph.facebook.com/v2.6/10154514019575816/picture?width=400&height=400', NULL, NULL, NULL, NULL, '10154514019575816', 'EAAPMa6cPYRkBAIjZC4piGf2ruuETlMDgtaGUzZCS8ZC4EEgs2SH8tULtOZBQcMm6FJzz8qwRiCpC4lUpFWOdPDcw6hZBbUNl6vF0HimiFDG7TQSG0DLZAUtS6EUE38XmTFkQaENEhIVYZBDvhoZBtTN3amAe1evmGj8ZD', NULL, NULL, NULL, '2016-09-03 16:15:22', '2016-09-08 04:04:00', NULL),
(467, 'meat min htet', 'myatminhtet12@gmail.com', '$2y$10$aAoCth8MaGDJj4/IOs7XQuXImxKe.4LklIAhOVVK4JW.Kx8p.4j8G', 'cTcs8FQMMBOLLfsI1X6QMNyQImi62239pkjDjEeBi0wwR7PCpqkSDsSasG61', NULL, 'default_member.png', NULL, 9, '1992-12-24', '1', NULL, NULL, NULL, NULL, 'DcWHevp0I60vNDcc4fcnqfxNIzLCqgqXvwr7A52xQ8QokdjjCUvnfsLZBAJ9', '2016-09-03 16:18:18', '2016-09-03 09:48:58', NULL),
(468, 'NAN NI NI HLAING', 'nanninihlaing@gmail.com', '$2y$10$DEjSTW9aAczuZmWTiXSBE.mOOV3x2NMlaA6zzZ8PlqLgSKFpat892', 'gQOrrMqlkTFRTsU26kzMgRMarP11SDOwp92UJmdzJN9JZrg1S2iNDbICHh91', NULL, 'default_member.png', NULL, 42, '2000-09-03', '1', NULL, NULL, NULL, NULL, 'qMYYQ0PGSUONOvlyx8QsjQ7VTLRWVT4kGqy2UHmi0JmwC7v05Ti8Jo3MqjKJ', '2016-09-03 16:25:36', '2016-09-03 09:56:18', NULL),
(469, 'Hein Htet Aung', 'heinhtet.goldsmith@gmail.com', NULL, 'jM6BDqOWtNPtfz9bw8a8sVeVDec9RB61bLxhxku0NmhslXRFS3tlygpEJ2Ey', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14095972_339175216418887_6349009603207561329_n.jpg?oh=2f43e74d75e299aa59e6700e9a67372c&oe=5839DDB7', NULL, NULL, NULL, NULL, '345678905768518', '2f43e74d75e299aa59e6700e9a67372c', NULL, NULL, NULL, '2016-09-03 16:25:42', '2016-09-03 16:25:42', NULL),
(470, 'Win Ah', NULL, NULL, '9J8rVC59ie24LNcleVH2xwNZXyIJIPWifhHMa8Z48XO3n4oWbk9F7TIK8FlG', NULL, '', NULL, NULL, NULL, NULL, '124632501323618', 'z-m&oh=4e21be23826f7b2919d50816f165ac2d', NULL, NULL, NULL, '2016-09-03 16:26:02', '2016-09-03 16:26:02', NULL),
(471, 'Htet Wai Aung', NULL, '$2y$10$KHvIjiCHPjurubacUUGTLezdcW7xvncPKGUvrNxFi8qqCQDyQDRo6', 't6Ui2SDHWE9T8u61orOMF6NF2d5QpMqZ4ubEPnb9MFyYsDLGq3GNBmNrXTuJ', '09401558562', 'default_member.png', NULL, 22, '1988-06-18', '1', NULL, NULL, NULL, NULL, 'BiavoMPAnOJtZeWwMQEMfMCZmhkTZ4m9MswrQPHPvZ6oPP583faGXnDgk8M7', '2016-09-03 16:31:14', '2016-09-03 16:31:44', NULL),
(472, 'Kazushi  Okabe', 'okabe@ess-g.com', NULL, 'Q6ngTaFjPO1T2ha4J9kOF7rcFFjBxAzhBap31J7lo2nqIqExhIam2xJjwUYo', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12316486_619647738173488_5403314121595551625_n.jpg?oh=bd66e1b78fcb8f7e30c7061e2380e2ad&oe=5847B112', NULL, NULL, NULL, NULL, '737787323026195', 'bd66e1b78fcb8f7e30c7061e2380e2ad', NULL, NULL, NULL, '2016-09-03 16:32:46', '2016-09-03 16:32:46', NULL),
(473, 'Pyae Phyo Zaw', NULL, '$2y$10$mRXiFpqmLZ5GCaUnzPioW..7jO8oTUGLohE2M4b3FCY9mldqalOH.', 'MCwQRi2XWVniBNloU38f9PyrXzJ7FCLj9zVs3fN9thlpRzSCjPvFkb4Yro3r', '09795624112', 'default_member.png', NULL, 37, '1987-06-04', '1', NULL, NULL, NULL, NULL, 'sxRw041XinCSKRVTh2zeB33e7Xic5A6BDIGqpktgkwGTVCzMoJjnNj0LtZ7B', '2016-09-03 16:33:13', '2016-09-03 16:33:43', NULL),
(474, 'King Won', 'kingkingw@gmail.com', '$2y$10$uOR3sl5a6utBgfPOs9FOtOaS8pXiqCT9WYzJQQBHv8CcO/8bboA3e', '83IUmFZ7LqqjpIP5LRDuRA7ER8EDypEP0a0G8YvoaGX4QlVzAzaR3zmhsJBe', NULL, 'default_member.png', NULL, 17, '1964-05-01', '1', NULL, NULL, NULL, NULL, '9BK9hrEcAQqdXn3pWlKvcTEkgQhBeuMINUZoWgBUCekvbZ3iWfYvr1WLZwnG', '2016-09-03 16:45:35', '2016-09-03 10:19:38', NULL),
(475, 'Kyaw lwin', NULL, '$2y$10$veGSnev.QLk1Pvd.VFR7huZYmjlmXrgqC/hZidL6kxEST2Xp7X1oa', 'ABmw9hEJblnhTQJ0oRl33Nzo2HlR22bC1Jebosp61yrVEcUjwBj4yo1bmGq4', '09421033719', 'default_member.png', NULL, 24, '1992-09-03', 'be84692ada955761911cda00f8db0949', NULL, NULL, NULL, NULL, NULL, '2016-09-03 16:48:20', '2016-09-03 16:48:20', NULL),
(476, 'Kyaw lwin', NULL, '$2y$10$8nCYyOuiD4c.r5zJkdI1QeqWeahAvKeIZV1R3hbQqzS0lzrzyOczK', 'H0lLmQejlrpFhvRIXidfpckpeuXa1L7aQUICQBJyx5cQXKuwzkpxo2drSpkP', '09421033712', 'default_member.png', NULL, 24, '2016-09-03', 'd1b4bd99935e65670566472dad310c1a', NULL, NULL, NULL, NULL, NULL, '2016-09-03 16:49:56', '2016-09-03 16:49:56', NULL),
(477, 'DuwonSoeTun', 'axerevial@gmail.com', '$2y$10$zJddbHZ973etcNuuQtkDqOEvGiyYUx8xhVSIQaecMj9xCmmWdOrQ6', 'icrcsAdrFQFGrcG8D5Tw3MXVTCpOtrtbEP1vrdX5SRbOK5VQbjTpLjXNwrcI', NULL, 'default_member.png', NULL, 18, '2002-04-01', '1', NULL, NULL, NULL, NULL, 'tAZUBxkzzO24j1Ts0qawV34DmORzQZPD1noZGSGN4D7gP5xW2vYbzEPydxvA', '2016-09-03 17:42:18', '2016-09-03 11:12:37', NULL),
(478, 'Ye Kyaw Aung', 'hninwarthu@gmail.com', NULL, 'soxPRRYFrW8uMZrc1qV1WaQBO29w3W5WI4pXPTCK6QeJlnsPDMsiX3Cm738M', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12592567_785997241506894_9123580943088051012_n.jpg?oh=4c576aaaac6815565f50a8502eb18e00&oe=587F578C', NULL, NULL, NULL, NULL, '909384109168206', '4c576aaaac6815565f50a8502eb18e00', NULL, NULL, NULL, '2016-09-03 19:23:52', '2016-09-03 19:23:52', NULL),
(479, 'Soe Myat Mg', 'doctordsma@gmail.com', NULL, 'a6tgD6yD7mJ4djVYie4avmOU2AhRCDTNuLw6inP9716BxMxdHMXKwEScTLdG', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13511010_1051082941645267_7237227437029720692_n.jpg?oh=3ad6d9f7ab52bb49da4ebbc2ff0fc05e&oe=583C298D', NULL, NULL, NULL, NULL, '1105925742827653', '3ad6d9f7ab52bb49da4ebbc2ff0fc05e', NULL, NULL, NULL, '2016-09-03 20:28:15', '2016-09-03 20:28:15', NULL),
(480, 'aunggyi', NULL, '$2y$10$mWU6WhjDoG.m2PjEffLaZuwJ04TlDUhP1novH8RwEjmLmLORQR0k.', '9Abkoi4Yqo8QD99jtBmpNDwBhkMDcmHw7r6YgVfwDT7eASkKhDic67Y3m0BS', '09259291814', 'thumb_557055652740.jpg', NULL, 20, '1994-02-20', '1', NULL, NULL, NULL, NULL, 'E2HDoT8QhwruSbBz2eIyI1FUpa8xIhGbu59zHM7IDyJTWpekCrccjo5NNiSO', '2016-09-03 20:58:43', '2016-09-03 20:59:11', NULL),
(481, 'kaung myat oo', 'davidwynnthu@gmail.com', '$2y$10$zI7ewNXtG.3s0xW/12rLYuSCqmCvuEm0U3bEesqBO3lZ2uuXLqd2S', 'ONMnzQlGNVFdmqw5ubOzIy0jcpkLE2prVWWVlWH60tA8TVvNXLy2PDlbviQL', NULL, 'thumb_60478113555508.jpg', NULL, 8, '2016-05-18', '1', NULL, NULL, NULL, NULL, 'jcSgFRIjZUn1O4VF8zbUdqPd3VJljbOvL8IZ7Iawfzu4nsc0jzcAqSX5gw40', '2016-09-04 05:40:06', '2016-09-03 23:11:09', NULL),
(482, 'Tha Zin', 'tawinthazin7@gmail.com', NULL, '0iAeQdb4iypDRNh4ToSsqqAIHpuo8r5SrOnZ3qq89jlRdy92rHhQl4Lvs39C', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13612147_1586858528277458_7355870508349615650_n.jpg?oh=53dc64e22b1e18afc2fa3400af826176&oe=5881881B', NULL, NULL, NULL, NULL, '1611303465832964', '53dc64e22b1e18afc2fa3400af826176', NULL, NULL, NULL, '2016-09-04 07:23:25', '2016-09-04 07:23:25', NULL),
(483, 'Cyran Gregory', 'cyranpaul05@gmail.com', NULL, 'eVcE85KKKHZBvYr9tltRy6mNv0LcGOM3U7lwuRBl3YkvsGKcVehNtlEnf8Bw', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13096194_259438627738360_1181563613903232521_n.jpg?oh=e9d9ceddfd0a9a4134100d037da8896b&oe=5850E8F5', NULL, NULL, NULL, NULL, '323844661297756', 'e9d9ceddfd0a9a4134100d037da8896b', NULL, NULL, NULL, '2016-09-04 09:35:43', '2016-09-04 09:35:43', NULL),
(484, 'Sandar Lin', 'sandarlin.05@gmail.com', NULL, 'L9Y7kZEyI9elu8yAdFsp4SD7Z4q5SpqyRsndWEk1QVkptBZYTi80FVgPmvDx', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10514638_236047369922531_2396399040793803090_n.jpg?oh=d85e8adb3202a6759dbc0784c8d24dcc&oe=5883C68F', NULL, NULL, NULL, NULL, '486157361578196', 'd85e8adb3202a6759dbc0784c8d24dcc', NULL, NULL, NULL, '2016-09-04 09:56:21', '2016-09-04 09:56:21', NULL),
(485, 'Thin Thin Aung', 'thinthinaung08@gmail.com', NULL, 'YcnfmbE1AuytriRp3oZS2Y4yIz9NUnwKVMJLx5pUAMDiHDLEKu098RrVJnkh', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/1918955_1078034138919933_3963714103177814086_n.jpg?oh=60e5e01457daae009ae927133a9110d0&oe=584513B1', NULL, NULL, NULL, NULL, '1193165314073481', '60e5e01457daae009ae927133a9110d0', NULL, NULL, NULL, '2016-09-04 09:57:50', '2016-09-04 09:57:50', NULL),
(486, 'Sai Soe Thu', 'phosai.mdy@gmail.com', NULL, 'tSiKRKjNymW6ctItzbc8HxYh1MuVf8JQdMRYgae1xoAjyHZFcmxDaC7JboUg', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13566995_1214783555222058_796459563785061072_n.jpg?oh=36486b3909d3b5585748abe41373264c&oe=587DC11A', NULL, NULL, NULL, NULL, '1263517493681997', '36486b3909d3b5585748abe41373264c', NULL, NULL, NULL, '2016-09-04 09:58:32', '2016-09-04 09:58:32', NULL),
(487, 'Aiching Liu Thuza Min', 'thuzarmin07@gmail.com', NULL, '65ferfl2XJOBKLJgC3x4jn72WBiwUW7YOPBYFkas6mVKVlaNmwvhBeIF2ysl', NULL, 'https://z-m-scontent.xx.fbcdn.net/v/t1.0-1/p200x200/312273_2577678932024_692211495_n.jpg?_nc_ad=z-m&oh=908ca195e0e33afce237395d5a9bc4ac&oe=584CB04C', NULL, NULL, NULL, NULL, '10210658417487365', '908ca195e0e33afce237395d5a9bc4ac', NULL, NULL, NULL, '2016-09-04 09:58:59', '2016-09-04 09:58:59', NULL),
(488, 'Kyaw Htin Naing', 'nine@ecowboy.com', NULL, 'UZw3e1l1UmVe8lqBorBxmoVJpDDggHJMln1iW4su1MlDkuGKjh9kKKsHKB1U', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/13627067_10207150704913310_8627598235636412921_n.jpg?oh=4432b5c5c76909904ca6eb78cde6928b&oe=5850813F', NULL, NULL, NULL, NULL, '10207561261616971', '4432b5c5c76909904ca6eb78cde6928b', NULL, NULL, NULL, '2016-09-04 10:07:36', '2016-09-04 10:07:36', NULL),
(489, 'Ba Ba', NULL, NULL, 'zQfqcUWrP5lZ575pXxsw8535Cs78AaFkvH9JKRo1DVklj5Qwjhw8UnrM0cAO', NULL, '', NULL, NULL, NULL, NULL, '1768327940071898', 'e1d67ce45e8cd3db918ea1a19425c67d', NULL, NULL, NULL, '2016-09-04 10:32:53', '2016-09-04 10:32:53', NULL),
(490, 'Alligent Fever', 'moesatpoem@gmail.com', NULL, 'i8Fr2SjewVqOAfxdAt5fOiLW9ncvHKIHljnC86UGGb7hwx6Emu8DFffVupdu', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11057678_965836636793762_6355466836249327173_n.jpg?oh=50787553bf44fced54836c8bbfadd7b7&oe=587D8E82', NULL, NULL, NULL, NULL, '1238979656146124', '50787553bf44fced54836c8bbfadd7b7', NULL, NULL, NULL, '2016-09-04 10:35:54', '2016-09-04 10:35:54', NULL),
(491, 'Nay Htet Linn', NULL, NULL, 'Z23CvkHNngVhl0U7ILoqVnzd1tIYQDSerwjPV34SQPauxWu2T2FVw9OYAqz3', NULL, '', NULL, NULL, NULL, NULL, '1675308089455638', 'd5b6d6e1e62cd8eeb20269b3c38654a1', NULL, NULL, NULL, '2016-09-04 10:36:04', '2016-09-04 10:36:04', NULL),
(492, 'Kyaw Naing', 'kyawnaingchen@gmail.com', NULL, 'OnKtfK5BcPJOKngbPHL6r1nSuCoc8wJe3tTZvzMUrrgWbh0WwOjA4gQ107H6', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11078178_818396021588105_3760475599832842348_n.jpg?oh=01cd279e387e7bf4d2d27881e008cb64&oe=583FF48E', NULL, NULL, NULL, NULL, '1096655067095531', '01cd279e387e7bf4d2d27881e008cb64', NULL, NULL, NULL, '2016-09-04 10:47:39', '2016-09-04 10:47:39', NULL),
(493, 'Han Naing Oo', NULL, '$2y$10$rAkjdqtgk2IPXzhTG8Z4Y.IlazVvC/nvYDjDSO1DIeOCBIwkH.JAS', 'c78J8GAH16i8dUJTkhr2dEClvok8zGvOXZcxtNVdQRLBRbfpfC19ppsb5FIS', '09444072858', 'default_member.png', NULL, 1, '1989-09-04', '1', NULL, NULL, NULL, NULL, 'JB8q8z3a9Qh7WPoxO2QBEWsRJiDUmVFKq2OwgkaNNaXyvf4TqXbb5sPivHv3', '2016-09-04 10:55:13', '2016-09-04 10:55:43', NULL),
(494, 'Ju Jyu', NULL, '$2y$10$D.K1WpiwQWLG8F8jknKj8OxqpvInbLGHt3BZFV9V6NfmlO8hM.eUi', 'DVvgjfz5pBNeikZIPM1Sqxzv36WrwkMZv7iv6fHtZPsjpFXe0MXSlSvMwiuX', '09772962621', 'thumb_69088243835774.jpg', NULL, 12, '1993-07-12', '1', NULL, NULL, NULL, NULL, 'i6t0ZHykWhR5C7Nve1O32CWFZ6vqajrCWxFKb6M0iCdIRufoyL8GvDrNZTYz', '2016-09-04 10:59:56', '2016-09-04 11:00:22', NULL),
(495, 'Zinnyi Soe', 'zinnyisoe11@gmail.com', NULL, 'XDCQ2qODJ0UBEXvO7hnXl24QAUlju1STNfb2zxxsFroiL9GOytKfJQDayaba', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13007181_1130926203625253_720399142454543683_n.jpg?oh=9aa7215b1c37223c5b0ea18bebc3af9f&oe=58468EF6', NULL, NULL, NULL, NULL, '1240214809363058', '9aa7215b1c37223c5b0ea18bebc3af9f', NULL, NULL, NULL, '2016-09-04 11:05:40', '2016-09-04 11:05:40', NULL),
(496, 'Sandar Khin', NULL, '$2y$10$GuT.a7CDw8BLlgmwpuObSuJtD5SaySyJw3oRdl3fa390AdKztcg1S', 'C7IfbExOa9tn2A08zSmdoYHpXYh2LNrEnILriuBwVtfYy0JuQtGRSu7VkKo4', '09452334383', 'default_member.png', NULL, 28, '1987-10-18', '8bb9ec29ad5a33862dbafae36a618884', NULL, NULL, NULL, NULL, NULL, '2016-09-04 11:06:15', '2016-09-04 11:06:15', NULL),
(497, 'Nyein Wai Phyo', 'physiology14@gmail.com', NULL, 'iVY7ok5FHh5HDpnlM7Crkb5mKBexGydIVASfqtfZYl1buRk96gJvFSIw8cbD', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13233115_1218907044816534_598493409548158014_n.jpg?oh=47110ffa887dbd19ca7e67137c7a5d2d&oe=583B9BAF', NULL, NULL, NULL, NULL, '1322006867839884', '47110ffa887dbd19ca7e67137c7a5d2d', NULL, NULL, NULL, '2016-09-04 11:06:18', '2016-09-04 11:06:18', NULL),
(498, 'Lin Lin', 'casiocashregister100@gmail.com', NULL, 'JaWtUUrCJuxJsVQOZQ0GE3tJ2OvDKvSMX7AKsR4WEmogihzRT390JtYTW2xp', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13873185_264251730625028_6118361787795911912_n.jpg?oh=abdbcd80e937d323c88b7c3757d20ce4&oe=584BB6A3', NULL, NULL, NULL, NULL, '276335069416694', 'abdbcd80e937d323c88b7c3757d20ce4', NULL, NULL, NULL, '2016-09-04 11:07:05', '2016-09-04 11:07:05', NULL),
(499, 'htike ko ko zaw', NULL, '$2y$10$A/iSsGnheSC1RPS5c4dby.yPUkriMYMhGfA6Kc/65kkWKuR8PZ2f6', 'DETlhM4BXBzNd6gsbHisJlpbaSc1bKG1qF5QEH8cuE8EvQfi2dbozXPbJwIK', '09796617828', 'default_member.png', NULL, 9, '1988-11-26', '1', NULL, NULL, NULL, NULL, 'oApL78DO7PCnsXSYvHYe0rZQTJfDdWpeYTlUhRuQdmcGk6uDaBtkqMznMDUR', '2016-09-04 11:08:55', '2016-09-04 11:09:20', NULL),
(500, 'Myo Thura Lwin', 'lwin.whiteblue@gmail.com', NULL, 'Pyd2vFhWp7FkWgSeut2shSOlIsXwZ6F6OhK2674K6F6Wc3ufdZRLOhPS8H4i', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/12803071_10208917964410616_1203469773293339318_n.jpg?oh=4a914b768ccc11e6c3b803f4d7c5f073&oe=587D3684', NULL, NULL, NULL, NULL, '10210499446706685', '4a914b768ccc11e6c3b803f4d7c5f073', NULL, NULL, NULL, '2016-09-04 11:10:13', '2016-09-04 11:10:13', NULL),
(501, 'Sandar Khin', 'sandarkhin1987@googlemail.com', NULL, 'RjpAc0aZ9qB3GErV9P3fMEkQOLOk9T77fGdyhHQ6Oc9znyWPj9JTK4GJc4QM', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/1934663_1211720232193399_8765814064101433259_n.jpg?oh=c9b7d111b498768613e6173628ba2855&oe=5851FCE1', NULL, NULL, NULL, NULL, '1331226726909415', 'c9b7d111b498768613e6173628ba2855', NULL, NULL, NULL, '2016-09-04 11:13:25', '2016-09-04 11:13:25', NULL),
(502, 'Nyein Chan Aung', 'nyeinchanaung65@gmail.com', NULL, 'VAjANSSwHSk3Juq456pv4Xn5snJE5JR2VG3diMooK9YVULK1MLpkucaNjUCA', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c35.0.120.120/p120x120/10354686_10150004552801856_220367501106153455_n.jpg?oh=8db9634a50cd2df85bd7d56eab522967&oe=587C438E', NULL, NULL, NULL, NULL, '662177687266552', '8db9634a50cd2df85bd7d56eab522967', NULL, NULL, NULL, '2016-09-04 11:18:27', '2016-09-04 11:18:27', NULL),
(503, 'Thin Thin Yu', 'thinthinyu2007@gmail.com', NULL, 'XhGVqannvD9GiHeoqJVUXlzlqIjx5iUPFFKWghNBFZN0qIcX0m8mIy8OOJPM', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/13173927_1039424862779416_6603246583388948930_n.jpg?oh=3b65044b135eb7c4b7c8863609268fe2&oe=5881F313', NULL, NULL, NULL, NULL, '1109184319136803', '3b65044b135eb7c4b7c8863609268fe2', NULL, NULL, NULL, '2016-09-04 11:20:54', '2016-09-04 11:20:54', NULL),
(504, 'Mar Lar', 'auntymarlar130@gmail.com', NULL, 'zZij3Y5G7Kv2W130UvMLfIAHdjGkTZEqeQIpr8MR4fJfLq6qwK523v4Td69G', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c11.0.120.120/p120x120/1503906_1378419179126658_979419391887585524_n.jpg?oh=ac7f97a368819f943a4645861dec808e&oe=587BDC80', NULL, NULL, NULL, NULL, '1580649142236993', 'ac7f97a368819f943a4645861dec808e', NULL, NULL, NULL, '2016-09-04 11:26:18', '2016-09-04 11:26:18', NULL),
(505, 'Aung Myo Min', 'uammdml@gmail.com', NULL, 'zZabKyuI60EIrwFjO0iAjOzSN1vZ0pDdu86HdzJzhpXe50F1QmzXRjRl2fDt', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12923085_1007953272593096_7224896553919374634_n.jpg?oh=1946be410167a2e48af92407a0f36ed4&oe=58851DF1', NULL, NULL, NULL, NULL, '1099051656816590', '1946be410167a2e48af92407a0f36ed4', NULL, NULL, NULL, '2016-09-04 11:27:02', '2016-09-04 11:27:02', NULL),
(506, 'Nyein Ei San', 'nyeineisan1991@gmail.com', NULL, 'unzKtnrOTvqAw05Q5vMFarNCIC97a4IExBEBAB40wihDvmPbckqtVF6sCmxr', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/13876541_945794692213308_7370466072248104831_n.jpg?oh=89249da8e4346cc1fbb03418465713c6&oe=5853B8C8', NULL, NULL, NULL, NULL, '969845333141577', '89249da8e4346cc1fbb03418465713c6', NULL, NULL, NULL, '2016-09-04 11:28:59', '2016-09-04 11:28:59', NULL),
(507, 'Zaw Lin Ko', 'ykz15608@gmail.com', NULL, 'h9K0XghNZ05tX3aeIqX03q23qfiOFkMtUL5THWWnXizJPtB2hf5CfM9Wk0Qj', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14102466_1251903341528939_4737833856703612659_n.jpg?oh=d7e358875b8ee560ffd8ad8bcf0de0c9&oe=587EF1B1', NULL, NULL, NULL, NULL, '1255768041142469', 'd7e358875b8ee560ffd8ad8bcf0de0c9', NULL, NULL, NULL, '2016-09-04 11:34:00', '2016-09-04 11:34:00', NULL),
(508, 'Nyi Nyi', 'pioneerml2014@gmail.com', '$2y$10$OvJ4lkzJEP3Jq4ENEVH2ousjnfNpWFnptj.T4x8MZOFo1wKqsDJCS', '3TRxDUlPyVArpGNfyjcVouMwkwniiKYKcHwx46TJUJCANwO0EivZKq6Nd2ud', NULL, 'default_member.png', NULL, 9, '2016-10-22', '1', NULL, NULL, NULL, NULL, 'T00Pr9sZhKJ9vuWVYJ09U0OIvcHNDs9g4p4sYwDRejDvRWw6azASCs3PemO7', '2016-09-04 11:34:36', '2016-09-04 05:05:05', NULL),
(509, 'Nanda Kyawlwin', NULL, NULL, 'IQyWWXRprwlUZ0NNF54VV7UUv87hSulH3FePYkauxnSUAR8yOfpyF1afX5ox', NULL, '', NULL, NULL, NULL, NULL, '347942318928340', 'd47a2f29e6ae54b6a98d72c49147963e', NULL, NULL, NULL, '2016-09-04 11:55:58', '2016-09-04 11:55:58', NULL),
(510, 'Ye Tay Zar Shein', 'yetayzarshein@gmail.com', NULL, '278P6GoQj8iHlwmXaKJOnkPqIJ2aMEum1y8wstdmhmOavLqkc5xv9VP6qdez', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13659202_1139113766161612_4095076336345402891_n.jpg?oh=03c194d407670f3f5243715a515d3203&oe=583A0971', NULL, NULL, NULL, NULL, '1176064362466552', '03c194d407670f3f5243715a515d3203', NULL, NULL, NULL, '2016-09-04 12:03:38', '2016-09-04 12:03:38', NULL),
(511, 'Myat Phyo Aung', NULL, NULL, 'oQDQlhs0WuHQ1a7MCuklqWc3aGCGKay3vRGYlFZGJcZ3Xd6vQLzehYhS7q0k', NULL, '', NULL, NULL, NULL, NULL, '1649152922042221', '137a4be34eb2c4e0d5314c66fb2f785e', NULL, NULL, NULL, '2016-09-04 12:09:08', '2016-09-04 12:09:08', NULL),
(512, 'U Tun Win Aung', 'utuntun80@gmail.com', NULL, 'zl6Va7NrMEqFZwsH9dh4IF81cYLdB0WXUL7Z1kNBmbVUg1zgiixSGF0zvovC', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12274723_559376930882440_8143169836603281080_n.jpg?oh=f2fe86a7e59bee0962d8ccccabd3dcc3&oe=584AE05A', NULL, NULL, NULL, NULL, '683427585144040', 'f2fe86a7e59bee0962d8ccccabd3dcc3', NULL, NULL, NULL, '2016-09-04 12:18:02', '2016-09-04 12:18:02', NULL),
(513, 'Richard Chan', 'chan.pho@gmail.com', NULL, 'afjQZAaR8on0ALmUsgzWeOhuavbDRfmFtq5693hhIc4AkZgujKn0jIQBZQ3B', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13001254_1308284585854418_6075794935160006982_n.jpg?oh=ba30bccc9a60a9956cfe6205bc1751b9&oe=584B939D', NULL, NULL, NULL, NULL, '1427156460633896', 'ba30bccc9a60a9956cfe6205bc1751b9', NULL, NULL, NULL, '2016-09-04 12:19:23', '2016-09-04 12:19:23', NULL),
(514, 'Aung Kyaw Nyein', 'air.aknyein@gmail.com', NULL, 'dL941QSWeRi7UDLrV5iS7LDVaKlE4mV3Uh4EmujW7mjl7U0nlRBfII0lLTsN', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/14100270_1151319074890997_2328675385927771583_n.jpg?oh=3d4e7800abcb3289c4843ca25fc3729d&oe=584C2FF9', NULL, NULL, NULL, NULL, '1153884777967760', '3d4e7800abcb3289c4843ca25fc3729d', NULL, NULL, NULL, '2016-09-04 12:23:41', '2016-09-04 12:23:41', NULL),
(515, 'Hal Win', NULL, '$2y$10$c2RXlFKaPonn/eqAqtV3KOuEr/bdVqTvWmmTiY65ofea3YiopIEle', 'p9h23bMcjdagZmrrQzvCu7V8YB3Yt79x3hvP3tWkpAoKN0ahhdHCIP1JrCP4', '09970687087', 'default_member.png', NULL, 4, '1955-01-19', 'b0b3186197d5e426f3c7c320a232cbe2', NULL, NULL, NULL, NULL, NULL, '2016-09-04 12:24:24', '2016-09-04 12:24:24', NULL),
(516, 'Hal Win', NULL, '$2y$10$mcs25TLyglg34Der5OTauOHixVi6Mt28iniSY3MOr5.4HGAtp5zRC', 'S5QwejNjmHR7jDsGZ1aCkBth1ieLx3kpwb5d6n6qxyPpXPEIPhjvKXTJXJrQ', '09970687087', 'default_member.png', NULL, 4, '1955-01-19', '1', NULL, NULL, NULL, NULL, '5ycfiSjiJHh4u2H9KjVHVBdGm3JPfWXw0QEq4v1FfewB6IA7PSeAJEVrlFSF', '2016-09-04 12:24:24', '2016-09-04 05:54:58', NULL),
(517, 'Thein Soe Htike', 'theinsoehtikemvp@gmail.com', NULL, 'DxEaEcDBdjPPNrLRjXXVMgduZ0dEXlVj15KV1XABEMzYZAx6fuMWSXhWX90c', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13094317_958086507623402_3668952340519278892_n.jpg?oh=5a3a1dae76471bf69fd3214a4bf6ba30&oe=584451A3', NULL, NULL, NULL, NULL, '1049370315161687', '5a3a1dae76471bf69fd3214a4bf6ba30', NULL, NULL, NULL, '2016-09-04 12:27:11', '2016-09-04 12:27:11', NULL),
(518, 'အာကာ မင်း', 'arkar.v.minn@gmail.com', NULL, '36hajee4AtC2t28EGJExppHOpZesS0gIdEQnTGMUz9V155h8ClLdsK3gPTRu', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13592760_1787575551478965_1469912296226683299_n.jpg?oh=7599ded785ecb65092fb394d2776b3a0&oe=5842BFF9', NULL, NULL, NULL, NULL, '1812582035644983', '7599ded785ecb65092fb394d2776b3a0', NULL, NULL, NULL, '2016-09-04 12:31:44', '2016-09-04 12:31:44', NULL),
(519, 'Robin Aunggyi', 'akm.math@gmail.com', NULL, 'mPQq5ZnfM94rFcOpUDSRB8BDQBNjuAUh4KQ1scVXBHKRIi7EEj9NuXtin2OL', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14202756_10210446856750496_3999110274896445436_n.jpg?oh=0fafab54e661f5426c5ca9c7a324258d&oe=5838768B', NULL, NULL, NULL, NULL, '10210487602729120', '0fafab54e661f5426c5ca9c7a324258d', NULL, NULL, NULL, '2016-09-04 12:36:34', '2016-09-04 12:36:34', NULL),
(520, 'AUNG MYAT MYO', NULL, '$2y$10$t81c6lNAh7nd2grOR.27uO9scd0nQpt7NQAuNY56QBfi4H9zADGaK', '0RdWE5nXHdXTSmqHsJoygYUUhjtzgMmio0kS1RCZojdu5anjq33t63d6sHYk', '095069227', 'default_member.png', NULL, 1, '1966-01-12', '1', NULL, NULL, NULL, NULL, 'dM6QoV2P5pidUTVrYFdinyysWlI5Hp68hqWqLuq1cv5aJuThgAo8BN0EKvCj', '2016-09-04 12:37:42', '2016-09-04 06:11:16', NULL),
(521, 'Thuya Ko', NULL, NULL, '610oPpVqUAogrTzdxi426UgH2pPTbkibJP2cR9jlEDaPbW47Hembz9nFW1Ki', NULL, '', NULL, NULL, NULL, NULL, '1767256800155957', '91586a284246246f443c7400034e94b1', NULL, NULL, NULL, '2016-09-04 12:42:13', '2016-09-04 12:42:13', NULL),
(522, 'Ruby', NULL, '$2y$10$Ujxn9fOJwn3Kh9AAwDaEGue4JDJdu5GCMnQka3Hr0ulEbWZCVBeX2', '2kUxkmuQRRUtHlBbdYleQsUmdieB6zQ0cg3eyVlEBjwSQ7SQu0I7xJKjhV9y', '09795092277', 'default_member.png', NULL, 4, '1979-09-04', '06e9dc11cbd7bfe9c80b09df5571e6d6', NULL, NULL, NULL, NULL, NULL, '2016-09-04 12:55:54', '2016-09-04 12:55:54', NULL),
(523, 'Aung Thu', NULL, NULL, 'VJ9F1TO9YgKdGgO2ccvolaHf83gwHd4jxV10Z6Z802gFBtghgwBlxOpOzhLb', NULL, '', NULL, NULL, NULL, NULL, '355799668141167', '2c3c36d3476bd8f2c62e83c9913a13d8', NULL, NULL, NULL, '2016-09-04 13:04:01', '2016-09-04 13:04:01', NULL),
(524, 'Koolpon', 'koolpon2016@gmail.com', '$2y$10$EUPpKXKJgobi8Bx/04RLoOEttqn36.zrsaGyI/uppoKbLztEMXyim', 'lQmxr3K8gcS7N5kugECfEWWou2raDBrheoWYqqNUJIOeZJiMTYpHSuuI1XWK', NULL, 'thumb_54147708980013.jpg', NULL, 29, '1990-03-24', '1', NULL, NULL, NULL, NULL, 'Jbk6xxbnDqCJ6S15BUPZDumChhRznRlDrIh4YeE4rnIUPjXNh3JNDce1Xlpt', '2016-09-04 13:05:11', '2016-09-04 06:35:41', NULL),
(525, 'Nay Myo Wai Lin', 'naymyo.wailing@gmail.com', '$2y$10$dd6N12Pr080BZUAFO2AEOujpwJLx3iRFn8RzRfoI9sZMsjPejxZkm', 'iPphstGWc5FduTQ13Di7UaN1tvdUtf0Q15MKWhl1bcmuY40ZUXE3SCia8Qm7', NULL, 'default_member.png', NULL, 6, '1990-04-14', 'acbfbc398d44a1992a6909b92b18f504', NULL, NULL, NULL, NULL, NULL, '2016-09-04 13:06:45', '2016-09-04 13:06:45', NULL),
(526, 'Riwic', NULL, '$2y$10$cvu/ZWjHkyKZSTeb4PEAletd2NVYe/uzl6YyTWRajcUcgxEMRhGTq', 'dBU2LHECKnf0c8VudEyXkRGe3WfKGxhbJGUwZFO5bF7DbTRQyKnghRE1bQAq', '09793123502', 'default_member.png', NULL, 30, '1992-11-19', '1', NULL, NULL, NULL, NULL, 'O9vflnewf66Xb1Fkta5nxbrY41zZHe5AdprYC9tVETA7e7Zlc9ED6wvssxYA', '2016-09-04 13:06:58', '2016-09-04 13:07:32', NULL),
(527, 'Peter Min', 'peter.min07@gmail.com', NULL, 'xPZCKn9G6l2dH4W0moGCgBOBiRfUnrS57k2PFS8A44OIbckHxthREK03KNIF', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/14238270_1169462569763850_7805787223780505285_n.jpg?oh=a631fb85f7d07c6a2895a32a166d4999&oe=583F63FA', NULL, NULL, NULL, NULL, '1169956196381154', 'a631fb85f7d07c6a2895a32a166d4999', NULL, NULL, NULL, '2016-09-04 13:10:57', '2016-09-04 13:10:57', NULL),
(528, 'Rebecca Gyi', 'maythazinthinn97@gmail.com', NULL, 'P8NkfyIDJFwUn81SbTbUAF463LteZ65cOpYOBCTg', NULL, 'https://graph.facebook.com/v2.6/1276899035664638/picture?width=400&height=400', NULL, NULL, NULL, '1', '1276899035664638', 'EAAPMa6cPYRkBACjrtgZCBVRjYzoRhNx0Jfqiqe19dAoXOQoZAN0NduCHW2ORIxiKuqB3DAfZBbSmeK10ufiOom5OWEZCH7tF6GZAYoSgtyZAMbVcIFgDLzGn3NTvu6sH9LmrwWWd5soxZB91WgN6XomEbtvlZBdTKgFIEQQ9yZAfHOQZDZD', NULL, NULL, NULL, '2016-09-04 06:41:46', '2016-09-04 06:41:46', NULL),
(529, 'Zay Zay Zay', NULL, NULL, 'wdBywIkqViSFyWWD1cdOt7dkgDoc0p0p3Bz7YLs37xuOVH6xH661QsjToPoF', NULL, '', NULL, NULL, NULL, NULL, '339461439730758', '3506e1285b1a21f8be109e78ce3c80ea', NULL, NULL, NULL, '2016-09-04 13:15:51', '2016-09-04 13:15:51', NULL),
(530, 'HL Htun Htun', 'htetlin.lso@gmail.com', NULL, 'EXbxO8kSylfE6qO1j9M86FK2mqjcM1fPvgFdfkxqHimAvtcYDgrQO7u7rA5m', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14079931_1018695654916003_5881576913575447728_n.jpg?oh=22d68751eda30b840da9e416ec3a004f&oe=584373A6', NULL, NULL, NULL, NULL, '1028871707231731', '22d68751eda30b840da9e416ec3a004f', NULL, NULL, NULL, '2016-09-04 13:27:39', '2016-09-04 13:27:39', NULL),
(531, 'Wut Yee Kayw', NULL, '$2y$10$bIujl6SYS8kk8s2MtK1hqeJa.aHgtyF2FG736ePMjqkZcLtiHbJWu', 'BADHw1WvCDnkkxdmpd7p8DlqoMmmZgrDdqON2m7oFDfg3IOlnnzAbedtg2fa', '09798711800', 'default_member.png', NULL, 1, '1994-08-24', '1', NULL, NULL, NULL, NULL, 'emLwWaWaIF4sbvhjJ5UcYR6Ns7DEfV9F9q7iIshPGn8VKp8RY92xmBafyrQb', '2016-09-04 13:31:15', '2016-09-04 07:09:34', NULL),
(532, 'Mya Thandar', 'myathandar27@gmail.com', NULL, 'Jgu9yxX0VI4bAhUIITyQn1jPrujQNUwqiA8G0ENqtzJaZLAAjZbWMA1Rc7Qc', NULL, 'https://z-m-scontent.xx.fbcdn.net/v/t1.0-1/s200x200/23497_336806459506_6040555_n.jpg?_nc_ad=z-m&oh=6e56cf23c74835d04e605021e60680b6&oe=5845B0C8', NULL, NULL, NULL, NULL, '10154533673939507', '6e56cf23c74835d04e605021e60680b6', NULL, NULL, NULL, '2016-09-04 13:41:15', '2016-09-04 13:41:15', NULL),
(533, 'So Ra Hoshi', 'zinminoo1990@gmail.com', NULL, 'x3tsUCRufpcu6CwPGQKXuZQOJXzsBy6s2VabjOT8YsMbNPJrwtNAk1LaJXYD', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13903264_10205356159341754_6727169460773700176_n.jpg?oh=935d6e719954871210c8523ba11f3dd2&oe=583B1BF0', NULL, NULL, NULL, NULL, '10205475662529259', '935d6e719954871210c8523ba11f3dd2', NULL, NULL, NULL, '2016-09-04 13:49:57', '2016-09-04 13:49:57', NULL),
(534, 'KyawThuHein', 'betterlifemmproject@gmail.com', '$2y$10$v/beGPp1w2BDK4fRqssCX.FIfBXZsuJrgCJgCL0NJ8z7mH8oRyo..', 'IL146fWHRQmFHQsnDMqGQYbYp9i4nWpZav1WcLHX7OQxCHu8lfeAd1bk9Mmp', NULL, 'default_member.png', NULL, 26, '1996-06-10', '1', NULL, NULL, NULL, NULL, 'z3n2MdRGafmH1XbMUt1E4e6HC7Ik54d9PrDUTTcM7fWNgkwAmNGBvHGyBZxb', '2016-09-04 13:51:11', '2016-09-04 07:22:05', NULL),
(535, 'Thet Zaw Htoon', 'thuyazaw916@gmail.com', NULL, 'b2ntpUeMg3Gnp1UwHoVpRacqWqNpd2Mf7Db52siOSNJ7LDY0SUgvpNvKj8Tn', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13900340_1788270261454665_2223245588918161969_n.jpg?oh=e0805138e9e7a585772d0740b680763f&oe=584CCFC0', NULL, NULL, NULL, NULL, '1805150463099978', 'e0805138e9e7a585772d0740b680763f', NULL, NULL, NULL, '2016-09-04 13:54:16', '2016-09-04 13:54:16', NULL),
(536, 'kaunmyatsan', NULL, '$2y$10$TMWqOc8.99Q0RN9JWPoLeOxuDa0m3s.KyUVwkYz6IPY12X3FQXMSu', 'ya5Ab2dGrH1uuZ6FpIwPVlvRbSkwEqgPf3REwWbbgMCQftMFxsHImBeIARRb', '09453111265', 'default_member.png', NULL, 8, '1990-05-07', '90a0204e3fea55d6bdd75813da8712c4', NULL, NULL, NULL, NULL, NULL, '2016-09-04 14:00:33', '2016-09-04 14:00:33', NULL),
(537, 'Win Win Htet', 'winwinht@gmail.com', NULL, 'AQsoXay9yZoJP1LySBx4ApHUxLp2Kh27TxqlOZjiLlMnt0zj39WybTb0jJvi', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13686743_1256943260985276_8783498150263002991_n.jpg?oh=24e5857d3d60306eb78b363e032fec46&oe=5842F6B5', NULL, NULL, NULL, NULL, '1285581394788129', '24e5857d3d60306eb78b363e032fec46', NULL, NULL, NULL, '2016-09-04 14:02:53', '2016-09-04 14:02:53', NULL),
(538, 'Zee Kwat', 'pattaya.bkk10@gmail.com', NULL, 'Kv0mr5EstEfcmo08LkBdZQEQZFZbt0yc9ptC8quOAC8SnijOFHK6ZgvhsVEy', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12004717_531259630372238_1829999705802569_n.jpg?oh=4dd7fcb9b1609ec63038dd9e6ad5cc03&oe=5885B160', NULL, NULL, NULL, NULL, '710797552418444', '4dd7fcb9b1609ec63038dd9e6ad5cc03', NULL, NULL, NULL, '2016-09-04 14:10:16', '2016-09-04 14:10:16', NULL),
(539, 'Ei Myat Myat Mon', 'eimmmon@gmail.com', NULL, 'LJSccmXKS6xBIfnLXcGmaqqKPHpQQbZBty13QnaBxV1IEO3VOecFoWnNIK90', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13439174_1197440916942307_1243227258685169295_n.jpg?oh=3951188caf521eff22099bf1573194b4&oe=583D86C9', NULL, NULL, NULL, NULL, '1249271665092565', '3951188caf521eff22099bf1573194b4', NULL, NULL, NULL, '2016-09-04 14:20:00', '2016-09-04 14:20:00', NULL),
(540, 'Mg Shein Kyaw', NULL, NULL, 'T0fPq9FGXfLNUJEoGhjuTrxooAhP9LemuwjXGQ07YgRfpga6BhDmSjW14AIY', NULL, '', NULL, NULL, NULL, NULL, '1774463786146133', '2bd04e0b57a119db701230e8ebcef5f1', NULL, NULL, NULL, '2016-09-04 14:27:40', '2016-09-04 14:27:40', NULL),
(541, 'Win Htet Aung', NULL, '$2y$10$pHR5WGH8obbhbVjCIaKJXe.8us09jhAh7a8tdOmiOr.UXkLC1KvxC', 'ukEHvWGMBiPRSENfQV9iUwqwZRD7KS3MW7RWgXc4lOUOtP8GOsH0nBECwX3j', '09254678986', 'default_member.png', NULL, 40, '1998-09-29', '1', NULL, NULL, NULL, NULL, 'tZCDcITCuSol2oFr8q6xVY21AQusLa0lwXG3JUbJK8jPHBI2N549day71LRP', '2016-09-04 14:34:26', '2016-09-04 14:34:41', NULL),
(542, 'Htet Aung Hlaing', 'htetaunghlaing309@gmail.com', NULL, 'ABcHzcATR6RgSYfc0YA5e8mqdC7gT66iV2t7afoVBwnWF2Yg3eRXUBS0kYoB', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/13654277_309646019374095_366137517935258285_n.jpg?oh=a5421e3b02da901438685f49078c4bcf&oe=5844B70A', NULL, NULL, NULL, NULL, '338820853123278', 'a5421e3b02da901438685f49078c4bcf', NULL, NULL, NULL, '2016-09-04 14:34:31', '2016-09-04 14:34:31', NULL),
(543, 'Sky Larr', 'maykahmg@gmail.com', NULL, 'CUpHgLZ1B7WofRUhOe0avU5XnaYw3SPEta4goM1jemq8p0mfRpeADMCqW2re', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c47.0.120.120/p120x120/14102485_941901455956408_2055976978911796837_n.jpg?oh=739fdb5cbac75b509409e9113b9a0657&oe=58405E6A', NULL, NULL, NULL, NULL, '951235605022993', '739fdb5cbac75b509409e9113b9a0657', NULL, NULL, NULL, '2016-09-04 14:34:41', '2016-09-04 14:34:41', NULL),
(544, 'Tinhtun Aung', 'tinhtunaung.banca.org@gmail.com', NULL, 'mvYhev8MxE3N8ZXvNl7bueQkvKBtU8mqH04WANMoYlUbYRdcaGTVlk9DZAoX', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13417527_492023614328058_8950951673954576379_n.jpg?oh=482a6e5829ca2118001323544b5ea375&oe=58844582', NULL, NULL, NULL, NULL, '522044591325960', '482a6e5829ca2118001323544b5ea375', NULL, NULL, NULL, '2016-09-04 14:38:13', '2016-09-04 14:38:13', NULL),
(545, 'Ye Soe', 'yesoe1975@gmail.com', NULL, 'ZnIKIOAFnKo4BOtQZEdlcFUQB9bPWJ2ljMlJV3S3sp3uPNfK5z8w5a5vVNUn', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13100783_606758029490057_5552769229477576302_n.jpg?oh=76eb95be7ed95bcee4a26a71f092888a&oe=58460935', NULL, NULL, NULL, NULL, '668720199960506', '76eb95be7ed95bcee4a26a71f092888a', NULL, NULL, NULL, '2016-09-04 14:38:14', '2016-09-04 14:38:14', NULL),
(546, 'kaunghtet', NULL, '$2y$10$PCgMUNcXBt7XZ7bSel.bw.Ce8Lp3hvQX17DaF1chEqMLiNzjsoVK2', '32UZ9RKEpHjU6SEH02SbJj4hKfu4ke52Zb9gXJYtLY2Az1HUzKKIPzwFtikj', '09795341763', 'default_member.png', NULL, 40, '2000-09-04', '1', NULL, NULL, NULL, NULL, 'AkWJB9hRER2O0QiWLMOKbZqGHcGk2zkwLzLQtKa5cDq7JtN1oi7M7hf4Lr7R', '2016-09-04 14:45:48', '2016-09-04 14:46:23', NULL),
(547, 'Ko Lat', 'minminlat1988554@gmail.com', NULL, 'GzzvTJL3XrqMN4XUBbYwDhEJcc7CuDrglBeycIgZaiuUqN41qbr2GPYBWNWB', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12108872_1488510324811882_3907290551271801472_n.jpg?oh=1650ee27ef5cfb783428e8538951878e&oe=5851C7F8', NULL, NULL, NULL, NULL, '1647781068884806', '1650ee27ef5cfb783428e8538951878e', NULL, NULL, NULL, '2016-09-04 14:45:49', '2016-09-04 14:45:49', NULL),
(548, 'Zeyar Winhtet', 'maukha.biz@gmail.com', NULL, 'Cye8dzIDNz6IwTnYZrZges3e4eLzIXtoAlV65FEZsFoqVNj9nmOjfEakqsFS', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13935010_10210048040741611_8299572171504613828_n.jpg?oh=2628c739faf13e671fb7b970d5ebcae4&oe=5846E67C', NULL, NULL, NULL, NULL, '10210313860906949', '2628c739faf13e671fb7b970d5ebcae4', NULL, NULL, NULL, '2016-09-04 15:04:53', '2016-09-04 15:04:53', NULL),
(549, 'ko naing', 'sweset.naing2016@gmail.com', '$2y$10$NWJwPAzLDbAtTUjSpnDdUO81BvYO64X8aKXIWj.OnLUaVLdWbsENe', 'HTkr9i0OnqB8qRgTblv8Gnoqbx1pIcmle4FDu180ve0OUOptfRuFA6PkOevH', NULL, 'default_member.png', NULL, 11, '1993-04-27', '1', NULL, NULL, NULL, NULL, 'tlLvDBTOa0TfrFdam4eRcs3fNMC5KuHWxur4OEDEfWRP8nZ15N53MG6F641H', '2016-09-04 15:09:41', '2016-09-06 17:01:53', NULL),
(550, 'Thet Aung-Goal', 'goal.tshirt2010@gmail.com', NULL, 'Nb0YdVhDbUHbNbknaEmAjnWVCnb7PgBxig8Wq5XhInXKvSdh3Q75ztF8vXhR', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13626973_1199072110127031_626508895258357770_n.jpg?oh=6984d8db7155435c0fe02548cbd16e25&oe=5848B39D', NULL, NULL, NULL, NULL, '1245586468808928', '6984d8db7155435c0fe02548cbd16e25', NULL, NULL, NULL, '2016-09-04 15:24:26', '2016-09-04 15:24:26', NULL),
(551, 'Khin Khin Thant', 'thantkhinkhin123@gmail.com', NULL, 'BGW4j1MZuySzyZdEyfVQjP4RC7d0J1zOtOGiCwkxKXvDqDNdkhFUev5NkzmW', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12376194_880538878729689_8883358670753238455_n.jpg?oh=a02627171b66849257814e28436825a6&oe=5852DCA4', NULL, NULL, NULL, NULL, '1031267373656838', 'a02627171b66849257814e28436825a6', NULL, NULL, NULL, '2016-09-04 15:37:37', '2016-09-04 15:37:37', NULL),
(552, 'Khin Aye Swe', 'khinayeswe@gmail.com', NULL, 'W7T8jUEkzVIlSGSj09tkC5RY9c7ohHO5wcqrVT9PzG6jzSxVAM25UAA8t9eH', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12072563_751562334971361_7524458610994474513_n.jpg?oh=c627adebd9e35ed709871434b47a09a7&oe=584444FC', NULL, NULL, NULL, NULL, '926798780781048', 'c627adebd9e35ed709871434b47a09a7', NULL, NULL, NULL, '2016-09-04 15:43:04', '2016-09-04 15:43:04', NULL),
(553, 'Phyu ', NULL, '$2y$10$FUXalRJEv7sAQTf1BLxNxuMQme5axF5f3T8GHVjfuYJNI1d7r3kI6', 'UBOOkA7TkugYiajGc2Ny4RqehJYn0W8ZRDJmZdoJQi8JR6HjaodlIPwBLw0w', '09795522880', 'default_member.png', NULL, 1, '1979-01-01', '1', NULL, NULL, NULL, NULL, 'DG651iJ88vxvQ4x1HBvhfGDBMGMvVvWbEMLKKt9rcdmo9Vjrt8tDV7ganGu3', '2016-09-04 15:53:34', '2016-09-04 15:53:56', NULL),
(554, 'Julia Thae', 'eiphyukhine.90@gmail.com', NULL, 'Nl2pCaGdSPSBi9rwpMyDW8Ktyd1XRRAICbl7tXFr', NULL, 'https://graph.facebook.com/v2.6/1163754100355235/picture?width=400&height=400', NULL, NULL, NULL, '1', '1163754100355235', 'EAAPMa6cPYRkBAMLFkMLahG719USip0g9goP5HEdky8NFx1A6tAGJyZCWt9R4EURj3tpGWoU2tLHYy5U2KyGrXxp9ykvrb9Pg1jH6lCkfRXDlzl63F3uH56kHhIZBqtiIiV9wYzBhLRCg6CFXbOF8C5oAtQ9psZD', NULL, NULL, NULL, '2016-09-04 09:33:16', '2016-09-05 02:54:10', NULL),
(555, 'aung naing', NULL, '$2y$10$Cc7zA/clw2KYevahCZACVeKfLqzmXgY/3oAn9Fnb8V0YissHltboO', 'xKmq0qJHCG4iBdHsMDJYaMCZySZaENdXczo1UTwE2wBa8Uj2wG2Kqtdg5pQF', '09977123132', 'default_member.png', NULL, 45, '2016-06-03', '1', NULL, NULL, NULL, NULL, 'T2v9Boic9xXF1iJZH3txphxBUD0jXrJd6MpIUpiIMfSZPL7Y3nboZBgrGakq', '2016-09-04 16:17:17', '2016-09-04 16:18:08', NULL),
(556, 'Soe Thandar', NULL, '$2y$10$ckJvrOTVASWamc86Vp0QUew4Ez645iEEAiaSstSONPcYacYtUGV3W', 'mqGhs2dtsjA59hYXer1lp673FewkN0VFVfXvNFarHrsZEQ36zIgjvJ5p6Vwv', '09448034320', 'thumb_68339468341050.jpg', NULL, 5, '1991-04-30', '1', NULL, NULL, NULL, NULL, '2JEND2qvkFMhWo4GYF20YopJlWIIav6g8Up5wgegxpwwzoNwugWyHaHLKMlY', '2016-09-04 16:21:39', '2016-09-04 09:52:45', NULL),
(557, 'Karim Szh', 'halbig9@gmail.com', NULL, 'CZ3THNR1cim1zY7abDIsNpRmpStasxgff2PPaTysDXvxSU5L3w2aY0r6YsXE', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14063737_10210318771876062_4073661177474643889_n.jpg?oh=737015dd7db957257174607c1ef460b0&oe=584BC48B', NULL, NULL, NULL, NULL, '10210447210446946', '737015dd7db957257174607c1ef460b0', NULL, NULL, NULL, '2016-09-04 16:28:16', '2016-09-04 16:28:16', NULL),
(558, 'Pan Hsu Htwar', 'kokyawhtut199@gmail.com', NULL, '3KtGHQolAfogDkvM8JBPawBCX956c1hMSCYygkAgNQHIzKhHzmLcyNhrKYrM', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13775472_1765096487038756_5820468165538980381_n.jpg?oh=169ce69d24aeca0be3588de1d74d6cc5&oe=584E2C3D', NULL, NULL, NULL, NULL, '1785455938336144', '169ce69d24aeca0be3588de1d74d6cc5', NULL, NULL, NULL, '2016-09-04 16:38:16', '2016-09-04 16:38:16', NULL),
(559, 'SI Thu Htet', 'vengaboy.boy@gmail.com', NULL, 'wLUtKGqszngU7l8qTjCV3LnUEFvDB7pHuKjixrAThNWdLcKAQMTcEZUqYtFE', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c35.0.120.120/p120x120/10354686_10150004552801856_220367501106153455_n.jpg?oh=8db9634a50cd2df85bd7d56eab522967&oe=587C438E', NULL, NULL, NULL, NULL, '1349224625105116', '8db9634a50cd2df85bd7d56eab522967', NULL, NULL, NULL, '2016-09-04 16:53:30', '2016-09-04 16:53:30', NULL),
(560, 'Rin Tomolu Fay', 'hninthantthitsar@gmail.com', NULL, 'X6wKTuWg3aL4KgvSMnrIcslGNoOXxS33oJ6wJ1bk', NULL, 'https://graph.facebook.com/v2.6/491453914392056/picture?width=400&height=400', NULL, NULL, NULL, '1', '491453914392056', 'EAAPMa6cPYRkBALcm6JAzOZAAvAyB7V4p0CUMeA2ZAzwZBCvBnWq1ZA59eNzGuvOt6RqHEGwlfuLPjScYs7wFzOqJGph3NxqCr3D2SWjB3TkyA1STYpXqbcwFlOUWMKaDcxdEFlkcfwvOJCnvwsfznhynecZCQAGr07NevhoY02QZDZD', NULL, NULL, NULL, '2016-09-04 11:30:36', '2016-09-04 11:35:55', NULL),
(561, 'Htoe Lin Soot', 'soelinhtoot@gmail.com', NULL, 'odZQDWsxgxJflk3ozN3zvbRcOqFJuYmfQiWBGQRQwoNyBH3O6av3V8E7z880', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12924431_10153386596235684_7391862657166374211_n.jpg?oh=2d7b9cb3523ec158438d1dc03643dc32&oe=5839C24F', NULL, NULL, NULL, NULL, '10153714800905684', '2d7b9cb3523ec158438d1dc03643dc32', NULL, NULL, NULL, '2016-09-04 19:17:42', '2016-09-04 19:17:42', NULL),
(562, 'Soe Tun', 'capt.soetun@gmail.com', NULL, 'QMs6gwSZZYDW4rbtM6ToOer1eh1LkCV9seTN7UVk4ww7TSTe0TIDLNOs1qqo', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c170.50.621.621/s120x120/10181_445124248908524_1070011962_n.jpg?oh=bdbb48a5358d53bccbf05138b7852f93&oe=5837E7A3', NULL, NULL, NULL, NULL, '1146969422057333', 'bdbb48a5358d53bccbf05138b7852f93', NULL, NULL, NULL, '2016-09-04 19:24:22', '2016-09-04 19:24:22', NULL),
(563, 'Chuu Lay', 'pt.snow.phyo@gmail.com', NULL, 'wsjl7rUwOsVCqrqwT97Xk52CnGosIm7SdoOAAhd6UmT3Rk2Dy8ayYPtOn1ec', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14102167_531311560393426_6609068977141406500_n.jpg?oh=9aebe0de11fa07fa5d638e29b8f12aa3&oe=5844ED0D', NULL, NULL, NULL, NULL, '535096040014978', '9aebe0de11fa07fa5d638e29b8f12aa3', NULL, NULL, NULL, '2016-09-04 21:04:15', '2016-09-04 21:04:15', NULL),
(564, 'Lwin Mar Than', 'malwinmarthan@gmail.com', NULL, 'EaHFmmyn2QNbcrnJeuvdnS68lerR92jokM84Uplkl5ptbBoRwLtRF0KZH3mr', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/1888551_10207421458128322_2485130259997490149_n.jpg?oh=7b4868e3ec69cde940a854d2081b38c7&oe=5840E945', NULL, NULL, NULL, NULL, '10209443855887002', '7b4868e3ec69cde940a854d2081b38c7', NULL, NULL, NULL, '2016-09-04 21:29:36', '2016-09-04 21:29:36', NULL),
(565, 'Kyaw Zay La', 'moonstarfighterking@gmail.com', NULL, 'wQXefDt1XnVPoV2DukICdWh8tUq0af7daFMJswni', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14333566_1752574831663153_3124388163426435175_n.jpg?oh=fcb2dfa03fe212b49275fc86c24979d6&oe=586C0619', NULL, NULL, NULL, '1', '1746675495586420', 'fcb2dfa03fe212b49275fc86c24979d6', NULL, NULL, NULL, '2016-09-04 17:30:56', '2016-09-26 15:43:21', NULL),
(566, 'A East Wai Gyi', 'sayargyizinwai@gmail.com', NULL, 'utYuC4GIwp5KqQn9g8atMcTaIme55dfiPE02G6g0', NULL, 'https://graph.facebook.com/v2.6/1658135171163174/picture?width=400&height=400', NULL, NULL, NULL, '1', '1658135171163174', 'EAAPMa6cPYRkBAPbmuqmBUZBOCCn0A7ZBJJxuPoRLkunTpR5A9uUFK5ykwZCtZBe1wWujX9ph5RiYgxkFhyFmZBRPFdcaqxdRcMBhFvY9YSgHuUtxc7bVIDuHotslVVzZAuuBZBSPKEZB30zRdUd1Vs86xY0vaMZBYKkIZD', NULL, NULL, NULL, '2016-09-05 01:42:28', '2016-09-05 01:42:28', NULL),
(567, 'Lane', NULL, '$2y$10$yGW8Z/T8CEOJob8geU4nSOsz1x7Q1j0Qs6HtdU46zhGkizvRHcXwS', 'sa386epUYMKHhqKAI0zcUt9Gbbxa7spEgbg75MTjwXtsliQGJSIGetXTXrRV', '09421087425', 'default_member.png', NULL, 14, '1990-10-29', '1', NULL, NULL, NULL, NULL, 'AyjalmgyPsiAnhErakkmXE3VNKXKuxBjYADRwOfoYUYKrd8cQA2YPeqfyVgp', '2016-09-05 09:00:47', '2016-09-05 09:01:16', NULL),
(568, 'Kaung Myat Thu', 'superkaung123@gmail.com', NULL, 'jaAftCWRosP6MKtSNul3qhAXNkGvKpTQZXTV0YYVh89lZMjAybW6TUG2iQrS', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10169457_953561854675926_1767940768221837783_n.jpg?oh=31a3664c84f791644234156a1344c1b9&oe=5851459C', NULL, NULL, NULL, NULL, '1255422674489841', '31a3664c84f791644234156a1344c1b9', NULL, NULL, NULL, '2016-09-05 09:22:01', '2016-09-05 09:22:01', NULL),
(569, 'Syunsuke Ichikawa', 'syunsukeichikawa@gmail.com', NULL, 'IjLSOXfIqZpjy5opFEH8cDY3TuptLCvW4pCBFTSQ', NULL, 'https://graph.facebook.com/v2.6/1092343207512626/picture?width=400&height=400', NULL, NULL, NULL, NULL, '1092343207512626', 'EAAPMa6cPYRkBADQnHfInhB2dIuOtGiwzOzpGepFxwSmuR5AWZAXcchYpssLZBXblwRnbl6A84LJyKhzFN9TDZCQGX9EgMSptNfK3a4DRKEMMPoknPAgZA5ZCqZA7ZALKRWF4NwyptKWWkv5xKXcr8nRJEIxOt11to5dNe6mhoBrQQZDZD', NULL, NULL, NULL, '2016-09-05 09:41:05', '2016-09-05 04:01:17', NULL),
(570, 'Kyaw Thet Win', NULL, NULL, '76PpuY0Vr4ZTF526AZ2H1pw47ZHtJN1GnKeMqD1Nrfm3yej2ijzQt3fp8tsG', NULL, '', NULL, NULL, NULL, NULL, '323605647974461', '854ff060e3ff598229bab68a43a5f727', NULL, NULL, NULL, '2016-09-05 09:54:33', '2016-09-05 09:54:33', NULL),
(571, 'Le Mun', 'lemun22@gmail.com', NULL, 'e1IAVdRRdS3Aw8PioKq376vwqfEzU2lHX922Qg54wf6p3wUTwEgw5Q6vuqdz', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xta1/v/t1.0-1/p120x120/13754171_1339054422790789_6693737452538682301_n.jpg?oh=70b4a389153c86820714a0cdfaa06fcc&oe=58814711&__gda__=1484704169_200179fbf2c5fd4750b39caac8d07349', NULL, NULL, NULL, NULL, '1375721482457416', '70b4a389153c86820714a0cdfaa06fcc', NULL, NULL, NULL, '2016-09-05 10:41:40', '2016-09-05 10:41:40', NULL),
(572, 'Thin Pyai Win', NULL, '$2y$10$Y4kde3wpPEOAzSz/UE/Qlu7mD3uXyw4lpLVMRCvH7FliSdhJEu7Cq', 'ultiD39gxwwhqod4aF2S58KPenTDJlGnDJ1ppgYWqsbqOj0NJBWCACg8Ahy4', '09448049142', 'default_member.png', NULL, 29, '1991-08-23', '1', NULL, NULL, NULL, NULL, 'vBFCjHR0OCvi7DgBikxlfmktCRD10AfJ8S3uU6wNSmKzeYZPVDZYI3o09bvU', '2016-09-05 11:19:21', '2016-09-14 18:57:40', NULL),
(573, 'Richard Shwe', 'shwethwe@moeyantrade.com', NULL, 'ZJEqmvEEXlH4B6nrafUTBR7FjTJUlMOoHr0bGDO9', NULL, 'https://graph.facebook.com/v2.6/274283042964824/picture?width=400&height=400', NULL, NULL, NULL, '1', '274283042964824', 'EAAPMa6cPYRkBAH5DDehR25Xvv4rutj7HYsmHPVdq6FvOERGNZA8RTZBsZAZCL79SZAD3sAZAZAdJYS8ZB1c0Ibkyn22p3s0Stv3oGuTTd75TV9wMQyfOJqlPtTRsCR0ev8Un4RXGmTbarbm3YzQtKHYBGzrJYBVyXYIZD', NULL, NULL, NULL, '2016-09-05 08:23:48', '2016-09-05 08:23:48', NULL),
(574, 'Zayar Lin', 'zayjoseph@gmail.com', NULL, '50VBwuIrRvFCjqD9gD42BOIs1ZXohJ8Mr5fKCcH1', NULL, 'https://graph.facebook.com/v2.6/1430897860270346/picture?width=400&height=400', NULL, NULL, NULL, '1', '1430897860270346', 'EAAPMa6cPYRkBAEzQV2PTWLJJy0XmFwwOFRalSt9UTUTc4pj39dqjYT9MK7m2zZC0FUf1Ppug6O39o0EsVOMCPlUc66C091ZBI0rUM2FeZCgVVgtCcG6GMLLuFrLFZAgUvI6PcK9DlWuLdCZBzZCLxtGrg9UuNsOUqfZCpHVS9LspwZDZD', NULL, NULL, 'LE2vbWomy1EB3DZpcMseEJCGuWWaFx58YBx0qXeYrNloOW8TsJJ9OUoMYHMW', '2016-09-05 08:45:46', '2016-09-08 04:20:25', NULL),
(575, 'Aye Thandar', 'aaa.ayethandar@gmail.com', NULL, 'PYBoYo8ewgF5IQ4YYyR5fRPP6w2kyMBGdKzHwPzM8cTXVqIKUg9QOw8DrToj', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/c0.1.120.120/p120x120/13932811_235823730146109_5413480796537911680_n.jpg?oh=2ec8c19cf54773378b0e9f96431957f2&oe=5841BED2&__gda__=1484559104_ace7b883d99c85e40195d620401c3734', NULL, NULL, NULL, NULL, '247613602300455', '2ec8c19cf54773378b0e9f96431957f2', NULL, NULL, NULL, '2016-09-05 15:17:21', '2016-09-05 15:17:21', NULL),
(576, 'Chan Sowr', 'chansowr@gmail.com', NULL, 'bVTdBU5LYHoFMYGZ5N6HQ7x4reJspHR4F2fIYG3H', NULL, 'https://graph.facebook.com/v2.6/1793864520831581/picture?width=400&height=400', NULL, NULL, NULL, '1', '1793864520831581', 'EAAPMa6cPYRkBALV6aImpau2q3j5ZAxvIYCO9GVjpF61ZCrFeYXGS3JeHlvqZCJDSAG81YOWouWXC1AdDwAUuiLJ688xPRNtsJ0tfg34HRtA5EdWEZAaetrfg9tYtqmyqEeBInZC3t1tYdZBcqZCLKPTJhPnWZAXdb04ZD', NULL, NULL, NULL, '2016-09-05 09:03:28', '2016-09-05 09:03:28', NULL),
(577, 'Polar', 'uopyaesone@gmail.com', '$2y$10$by1gpYmN4AXYkgxvqzDgEuvtJm.lyX9iCtRrl4ktFRKk.TfC42Xs2', 'RYrNdQujvBUuIKzhy4dPF3gkE2WegUem3vDBD6mjFvvguB0uAgPE0nPraSuB', NULL, 'default_member.png', NULL, 1, '2016-09-06', 'c3a391788ffb8f28860c53c560f77209', NULL, NULL, NULL, NULL, NULL, '2016-09-05 15:50:44', '2016-09-05 15:50:44', NULL),
(578, 'Polar', NULL, '$2y$10$2oJfHl/uA9Z6oX/p3zJWZOgSkJrGSJljd7Dxw/G7ZyOkDu8QHhJOe', 'RPjvmKBBph6OulBhK6WXBcaSfj9wSoOKiMt5g5oJbF17xtrEKU53jiMxYjzV', '09777770097', 'default_member.png', NULL, 1, '2016-09-06', '1', NULL, NULL, NULL, NULL, 'c0XGHWomx9WsOACJrRKxBJZRfo62bhs8RljsH1EMN1S2YjfUT30cxY5VzHFv', '2016-09-05 15:51:27', '2016-09-22 11:11:48', NULL),
(579, 'San Tun Oo', 'santunoo@gmail.com', NULL, 'rgd7h9ZhdyxHPqO64nftmHgWYLaCg4klJTV0YQLd', NULL, 'https://graph.facebook.com/v2.6/10209169171579949/picture?width=400&height=400', NULL, NULL, NULL, '1', '10209169171579949', 'EAAPMa6cPYRkBAGT6Sz4A0PQOoZCH0qCB8Gvp4ujYC5m4knIgA3YUACUPH9wCeZCxOWUo04B4phngR40bSHqdc98x93I3hOROeRfJPavmNbpmtE3ZCYHZB0ZBKwShxZChdnK95kZCZAwTmh4ZASubg2rhZCShT2hLQUaGThqWCWlnSPWQZDZD', NULL, NULL, NULL, '2016-09-05 11:48:17', '2016-09-05 11:48:17', NULL),
(580, 'Hikaru Uchiyama', 'hikaruuchiyama@gmail.com', NULL, 'li5Ucd2Rtzj9Sc077c0BK2FcOOzdgKhS4eN3luIQpHYwW1Ty6tdLJAel2mcV', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/1546301_648310205232941_453983343_n.jpg?oh=ac715e157c16755b0d76e2afde106e63&oe=58499EBC', NULL, NULL, NULL, NULL, '1195570260506930', 'ac715e157c16755b0d76e2afde106e63', NULL, NULL, NULL, '2016-09-05 18:46:05', '2016-09-05 18:46:05', NULL),
(581, 'Aug Khant Min', 'june9.isreal@gmail.com', '$2y$10$BiERSUu99nEpcfILUt5nvembHSCG9rIvQGZNSqLIHj26kCcSezP8G', 'gYgItf8ZUWyB9OfCW0sdIJVVb8dUGTcKzXEUQPfHJnBWyIUTI2JQ1tEW2lLw', NULL, 'thumb_37909839728417.jpg', NULL, 28, '1999-06-09', '1', NULL, NULL, NULL, NULL, 'Dxh0gUI2oI6NUYGwVCrwbAUlGXS8Tp2iuN0OYDEigJdb8synAqjKiqtArzzv', '2016-09-05 20:11:41', '2016-09-05 13:42:23', NULL);
INSERT INTO `User` (`id`, `name`, `email`, `password`, `api_token`, `phone`, `profile_image`, `address`, `township_id`, `dob`, `activate_code`, `facebook_id`, `facebook_token`, `twitter_id`, `twitter_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(582, '12467', NULL, '$2y$10$Bxoe7Os/VIAaCpCk9.tDMOBVCsiq89hw2guaHN6qynZ9FqU8bF5Eu', 'GlbM35zW2hKQVj5g4RJOx1433pqSkgwfCq2OnGIE8ztv59FRuUTrrdByKghO', '0979653247', 'default_member.png', NULL, 46, '2016-09-05', 'b83de6d1a18580c7bc72787c44f70a0c', NULL, NULL, NULL, NULL, NULL, '2016-09-05 21:52:22', '2016-09-05 21:52:22', NULL),
(583, '12467', NULL, '$2y$10$N2W86s8eDSYNpxeZSfvz7un2CvShtjVR8b3ONeLRbSu3eprkUA38K', 'yWGenU7OtIuK6NHH3GFa0eZL8qSt7GJhXpAf3bqoyDdsGeA6sH06zVBH9ANL', '097965324', 'default_member.png', NULL, 13, '2016-09-05', 'a06ea59a77a3b31104960148983e1f52', NULL, NULL, NULL, NULL, NULL, '2016-09-05 21:52:47', '2016-09-05 21:52:47', NULL),
(584, '12467', NULL, '$2y$10$Tj0ianND7v8fZ3krmpEmL.LgiEieJ1aodLJY.nFqQHMHUNSMOmOQO', 'EDNjCC6ThfFiw9sHv0F3x2JjfVzVEFcj9tTkQopkqmS3BIro3Ury1QDcK4jb', '0979655675', 'default_member.png', NULL, 13, '2016-09-05', '9dad5701157b829936331a87fd64a31d', NULL, NULL, NULL, NULL, NULL, '2016-09-05 21:54:09', '2016-09-05 21:54:09', NULL),
(585, 'tyi', 'example@gmail.com', '$2y$10$M5Uhviwi2chAlB6ndKHhsunW9Cj1iCeZ5TGA2yE1GemUuN/bwLTEG', 'FoiFHhASoIwWp85b0lit4QOSnjbUkj6lENW1O4tzzpgOp6sUJxjH8DNCRCUm', NULL, 'default_member.png', NULL, 35, '2016-09-06', 'bc03876665fbcf7d5c81c818306fbd41', NULL, NULL, NULL, NULL, NULL, '2016-09-06 01:06:59', '2016-09-06 01:06:59', NULL),
(586, 'phoo thet hter', 'frozencaprime@gmail.com', '$2y$10$5thrRhfRs1acp31KEtVUbOzB4cmgxsqqpe19NGJZRTdO8nzEU/rZO', 'hCMJ1rNC5eN2s68nov0gNoXXV4BgZ0SYYTbVdUOfQZM4lEYoTbJhcvTT7C77', NULL, 'thumb_6779749242473.jpg', NULL, 24, '1990-12-27', '1', NULL, NULL, NULL, NULL, 'IsHcDkcU81lXRTdPV2PoHYMrggPi1OsR0IE9ml9UTCuaAzdc1x0HESBHhY8r', '2016-09-06 07:20:50', '2016-09-06 00:51:19', NULL),
(588, 'Sa Ku Ra', NULL, '$2y$10$EvJRPGSuYeC7LeJtPDJsn.lPNbDM35kVirJAPkR.mJSCLZA57evn2', 'lCuRbnSWPzLRsxnGZsOxcDYpBq8yNYkedWZG8N1cwhetkC8Luh7Afarl5nOm', '09780358428', 'default_member.png', NULL, 12, '1993-10-05', '92b988a7ab8ef7927afd72ddd32dcf4e', NULL, NULL, NULL, NULL, NULL, '2016-09-06 11:18:40', '2016-09-06 11:18:40', NULL),
(590, 'aung kyaw san', 'aungkyawsan308@gmail.com', '$2y$10$YdYA1xPox8fz89hr2kWHjOMXZ6trNb0jMsC0ETY3ndgyK87UIXSh6', 'wyYoJKmV9pcVaTz5Ja5H9YfaI1Ltv3GNOr8YDRgsfVnHR2ZqvItl5GwxdoxJ', NULL, 'default_member.png', NULL, 18, '1993-08-30', '1', NULL, NULL, NULL, NULL, 'HWC4sfL0h3Ffi4rGftR0LGAeb6nXThKklKQ0CWIWMua98UYxt6qn6VvqG6LU', '2016-09-06 13:13:41', '2016-09-06 06:44:13', NULL),
(591, 'Aung Ye Thant', 'ayt.newdream@gmail.com', NULL, '0GCSBvZ5hhlhWuBoz6uITEhT8neCg2EA5WEKT4OqfqNxCwTAlsviNbzXOedT', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/14448961_1856670077885143_4898079807967624477_n.jpg?oh=7ea5b4212f95fe4a5bc6d8ddf16c3f13&oe=58A31856', NULL, NULL, NULL, '1', '1845428615675956', '7ea5b4212f95fe4a5bc6d8ddf16c3f13', NULL, NULL, NULL, '2016-09-06 14:51:17', '2016-10-27 10:22:36', NULL),
(592, 'Eaindary Mon', 'brunitte09@gmail.com', '$2y$10$wZJ2YbWaOnw4OM7g/jEsOeH09ha4zs8jWdqzhPn8iKdflU2mhEOdW', 'n5X4ivMsTZ5FhsBDfidGCvhX02LfeEwx2olnxy06DJSEx97OJWTSdsoZgfXp', NULL, 'thumb_70341592627415.jpg', NULL, 31, '1997-09-09', '1', NULL, NULL, NULL, NULL, 'Q0BHyhipy3rxf5jex49jRYnsFqmwxhsD1pL5JYvFnNfwmfPtVDA3MvanZBPd', '2016-09-06 15:05:53', '2016-09-06 10:52:47', NULL),
(593, 'Yan Naing Aung', 'yna2015.yna@gmail.com', NULL, 'lSvRIcRDmpHr6RLwY8ljmKtJQNSkOnqcvftTzgczzHLFhmf3xHrTQ8DIHTyh', NULL, 'https://scontent.xx.fbcdn.net/v/l/t1.0-1/p200x200/14232367_1674923142827184_4387381504925730655_n.jpg?oh=332d2979752c4fce884e7bfc5312d6d8&oe=5849BAED', NULL, NULL, NULL, NULL, '1676163699369795', '332d2979752c4fce884e7bfc5312d6d8', NULL, NULL, NULL, '2016-09-06 16:12:16', '2016-09-06 16:12:16', NULL),
(594, 'Min Tuu Shil', 'mintuushilkyawthu@gmail.com', NULL, 'oTly7LuTQw8fIR76veAZWvBEnbVLs73mdZdAgZozSteu9SyZ9MTXvAwAbfIY', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12418019_222418641428593_7486260220367793135_n.jpg?oh=f9f1d4224ffffac180fe64960986129d&oe=58479616', NULL, NULL, NULL, NULL, '322108741459582', 'f9f1d4224ffffac180fe64960986129d', NULL, NULL, NULL, '2016-09-06 17:12:36', '2016-09-06 17:12:36', NULL),
(595, 'Nan Ei Mon', 'naneimon.noenoe@gmail.com', NULL, 'VQxJlq1wEKXnAnkyITxw660vr37c70hZVCcILiks4ReVxZgOGy4Ojc67VnAH', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p200x200/13445407_490374731161578_9022607827294940005_n.jpg?oh=0539e99b34118a4066a3855f78a26f7d&oe=58499AEC&__gda__=1480398858_a27216773583159f4ae76d70260a4b86', NULL, NULL, NULL, NULL, '519720331560351', '0539e99b34118a4066a3855f78a26f7d', NULL, NULL, NULL, '2016-09-06 20:58:29', '2016-09-06 20:58:29', NULL),
(596, 'Kyaw Ye Min', 'kyawyemin.timeout@gmail.com', NULL, 'JeIZdNKwwt99WRlbEEfy6ktftASANErmTbiLsjDyuLy5ddjGMm3VUSO9urDK', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13138856_10153683510661376_3334352585426078768_n.jpg?oh=ced171907822d824d4e9563b81c6537b&oe=588390D2', NULL, NULL, NULL, NULL, '10153970726656376', 'ced171907822d824d4e9563b81c6537b', NULL, NULL, NULL, '2016-09-06 23:59:45', '2016-09-06 23:59:45', NULL),
(597, 'Thëÿ Čæll Mê Dêrrîck', 'derickjoseph007@gmail.com', NULL, 'HWaLvPYkVpGjesSIvYxicI0x45aAeSWNMhFqVhHOkPsiBzmJh7k2wjhMCL9M', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14202482_192228787863539_4186995465268059728_n.jpg?oh=766d477337502287ef75901477ad2669&oe=5846DE24', NULL, NULL, NULL, NULL, '195257440894007', '766d477337502287ef75901477ad2669', NULL, NULL, NULL, '2016-09-07 06:23:28', '2016-09-07 06:23:28', NULL),
(598, 'Cherry Thanhtay', 'cherrythanhtay@gmail.com', NULL, '4ZwuO6NPgSbUU6q7MzkEyhdINMseWN8tNNg6wVF26OumX06y07gSluWjxgJ1', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p120x120/12705283_905517059561712_5614232176917500160_n.jpg?oh=ea3ae4804bddb41710453f5d12fd9cae&oe=583FA71C&__gda__=1484396538_03e8534061ad4df2aa5a5bdc4d979fee', NULL, NULL, NULL, NULL, '1058442190935864', 'ea3ae4804bddb41710453f5d12fd9cae', NULL, NULL, NULL, '2016-09-07 13:36:35', '2016-09-07 13:36:35', NULL),
(599, 'Samuel Fong', 'zylo3140@gmail.com', NULL, 'x0AglmEsLokxuLiWFSBvZbmFBzyZT6qGqxDkYvZywKzICp7DDflkf26ZuP6s', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10478115_879948315362357_4981095856226124890_n.jpg?oh=4b54528c88505944e6f8d69f465f73c1&oe=583B23A8', NULL, NULL, NULL, NULL, '1279750315382153', '4b54528c88505944e6f8d69f465f73c1', NULL, NULL, NULL, '2016-09-07 14:06:10', '2016-09-07 14:06:10', NULL),
(601, 'May Myat Thu', 'maythu477@gmail.com', NULL, 'EYSDloZ9PZ8J6rbua648IYDwXkMHXLiqZObDUtxU', NULL, 'https://graph.facebook.com/v2.6/671689876316656/picture?width=400&height=400', NULL, NULL, NULL, '1', '671689876316656', 'EAAPMa6cPYRkBAKax4sDXz7JQCZAAACBvMVa0yX7ZCZBZAWUxxRsTcDD6aGLsTDSYFgHhpLzzjZANALjpuJoq9MBJQIwMxymTrerEMKxFSE8Mb8RTEwfgga47D9ahJ0jWKs6YTC5LySSamIoqCysfWSQM8nM5l0ZCr4CtfR3BfqLixWYFvo2xsl', NULL, NULL, NULL, '2016-09-07 09:10:48', '2016-09-07 09:10:48', NULL),
(602, 'Fiona Hong ', NULL, '$2y$10$WpL6xqP0swKndiIH4eUVE.BQPoeaYBzuHjGuJQBum6hUcnakX7NNm', 'SMHLF38or2I9BkqhsBTqe4tsY2RpBx2UVLUanW4dT77lrrUmnqhmflPiMZEM', '09961690999', 'thumb_15008656084921.jpg', NULL, 45, '2016-09-07', '1', NULL, NULL, NULL, NULL, 'gqdvSPYuWdDM7JC4CFG7NQktMizPAgECecDZCLuO8IWgJzP7cvjCGfOHvBh9', '2016-09-07 16:27:56', '2016-09-07 16:28:16', NULL),
(603, 'Nang Thun', 'nemmthun.baby@gmail.com', '$2y$10$ijG1W0/Ur8j8FgpTQ0giWuO.EgIpCs0ueAuZqrS/5AfZH/F/Oaxk.', 'YEtfSX5IJh8kV8fubbGT1WcOijYuPpK4rf1aijVxgPeFRHwxfQ9LaJhqA09R', NULL, 'default_member.png', NULL, 22, '1997-03-09', '1', NULL, NULL, NULL, NULL, 'nRiGvN0Pj050RBQPNMdh2keOAeecIVlz4kGi73n3dNnfV6NimylD7RTj4mOI', '2016-09-07 17:17:07', '2016-09-07 10:47:31', NULL),
(604, 'Kar Yan', 'karyancoco@gmail.com', NULL, 'MulBwMxPQMhdjoEanmLd7jUs7kppo3YjjcCrpYY8dtIwARbDbdLWXVO6P9Jp', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14199717_628997707269005_5934298467947375648_n.jpg?oh=54420fd11779800fc6957dbe2bfd8798&oe=583AA914', NULL, NULL, NULL, NULL, '632340786934697', '54420fd11779800fc6957dbe2bfd8798', NULL, NULL, NULL, '2016-09-07 20:41:39', '2016-09-07 20:41:39', NULL),
(605, 'Ko Linn', '2007linn@gmail.com', NULL, 'gsPpMq4x7XmejOrkzUDgzLM8RqLrenEqMa1RKU0VZ7AtPSNR6dzjcb4HPZ4v', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13254379_10208226639537438_5193996634631976493_n.jpg?oh=f48ff6b23ba81421327b3ed004d1712b&oe=58775E30', NULL, NULL, NULL, NULL, '10209129240061887', 'f48ff6b23ba81421327b3ed004d1712b', NULL, NULL, NULL, '2016-09-08 09:33:14', '2016-09-08 09:33:14', NULL),
(606, 'Su Thandar Oo', 'thandar.su93@gmail.com', '$2y$10$uN5Q6eSmGe.XYDrryZRFrOlMAaPrakyRw8wZFucr9tgRXR4lyuhUO', 'Pd1mnYa1FcKm8SLPrKeSSwGk5IC0TAaUpqOW3nPHm9IaBZEWpotwKA1dNHI4', NULL, 'thumb_2520038063321.jpg', NULL, 12, '1993-03-23', '1', NULL, NULL, NULL, NULL, '3p0NB1JonP6CA5xS4b8DellCdNyH3ygWqFlaxwYNZdiWgqMsHSU8WEEjjnI6', '2016-09-08 11:39:12', '2016-09-08 05:09:28', NULL),
(607, 'Imran Shehzad', NULL, NULL, 'AeU5wXiB8vo7NRTnrYqY6LzCq9eMxlWCaLlD9f1yXnTcC2Oe0D6K8try48iL', NULL, '', NULL, NULL, NULL, NULL, '10154338987890609', 'f989e9fad7df200a70e47d1da75968ff', NULL, NULL, NULL, '2016-09-08 11:48:56', '2016-09-08 11:48:56', NULL),
(608, 'Min Min', 'arie240814@gmail.com', NULL, 'bbKzNYwYVRTWwFZWvJ1a32f7WLheixtQiUwhky5pvM5PMEMmeLC5mrSd42ko', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xtp1/v/t1.0-1/p120x120/13312659_279385145740491_2803744902883388275_n.jpg?oh=ea3ee5563bff692e5950d8e194f51847&oe=58457163&__gda__=1484815023_7cd7f68ac6a0b04057cdec3d726e7c34', NULL, NULL, NULL, NULL, '324118691267136', 'ea3ee5563bff692e5950d8e194f51847', NULL, NULL, NULL, '2016-09-08 11:50:22', '2016-09-08 11:50:22', NULL),
(612, 'O Muu Taw', 'omuutaw198@gmail.com', NULL, 'Xczojw2Y0ZAQEx7AMH0hmGBdkFOJNYYrBZn6xQNBVP4tml1EFE1scu7oPi9g', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13599765_643539489145787_3650452945040684659_n.jpg?oh=5b2844db749e3d8e328ab7ec85915b1a&oe=587AB72F', NULL, NULL, NULL, NULL, '676507005849035', '5b2844db749e3d8e328ab7ec85915b1a', NULL, NULL, NULL, '2016-09-08 23:07:05', '2016-09-08 23:07:05', NULL),
(618, 'su myat', NULL, '$2y$10$u73AIMJBDZKYDS5dmSOLi.wKg3Ifsp2S.L480lmoOVFZanMJ6vEKy', 'ogrzHz0kRrrITIx1JNEHeHU9JIf6mgejjygWUVocNbnhd9qlENHuuJsn8xCA', '09250003474', 'default_member.png', NULL, 29, '2016-09-09', '1', NULL, NULL, NULL, NULL, 'BsUPdmjwNZSLUKoStkbtUMh8GeWul7TvQwwR6XSle3vXGmOVvssh08tZWGu3', '2016-09-09 09:31:14', '2016-09-09 09:31:48', NULL),
(620, 'Voilicneo', NULL, '$2y$10$3JnxRfmuBdDJw1Dl8QXo9OzE6L7De/HRUnUBBUBEcFqxE.xpZ4eKK', 'k0yin1rRmfvNwRMSNA81YFfo0SN8b3FM2yXDXE6QFiMXLNG4e9Neq74MAmQi', '09421164124', 'default_member.png', NULL, 26, '1992-12-28', 'af844d80ab24954ee607a323f36a9ccd', NULL, NULL, NULL, NULL, NULL, '2016-09-09 09:57:46', '2016-09-09 09:57:46', NULL),
(621, 'Voilicneo', NULL, '$2y$10$UI8EeiFqr9SLyQ7aRsTpReXQ/TQh0VKEke//8.aKQ./ocCHMt/kuO', '1UR89KpmgiWBmLviyFkM5UbKC0VLCgN7sJO3mY22WgnXh0XW2KAYW7TgsQV2', '09964264124', 'default_member.png', NULL, 26, '1992-12-28', 'd05dd7225fc0d128c5dcac6fdd5b1a7a', NULL, NULL, NULL, NULL, NULL, '2016-09-09 10:00:07', '2016-09-09 10:00:07', NULL),
(622, 'Win Thandar Kyaw', 'winthandarkyaw@gmail.com', NULL, 'Jyk6b1ldRaY86wkAOyd2XALBbxa4PoS3NObrHenw', NULL, 'https://graph.facebook.com/v2.6/10202238993294450/picture?width=400&height=400', NULL, NULL, NULL, '1', '10202238993294450', 'EAAPMa6cPYRkBAMbZCEgmfuF6cspFDUeHP2nJd7TfwRnyHKDU8G9ZABnsQEB3Xp7EsZC0yPt9tDyw9M5uo6doDmvMbnFeDnA2pZAKS1nESUMxeNOEkMZBkSXUFzNSEWxVZBQRboBGL8Q6z13pmZBwoH5SscFsRZB1hEAZD', NULL, NULL, NULL, '2016-09-09 04:12:19', '2016-09-09 04:12:19', NULL),
(626, 'PhyoWai', 'phyowaithan@rgbgi.com', '$2y$10$38k7WLXojzC6lKam11VOnuug4web9UZ.ft99oXs9gmpbktxvGBoqm', 'UTt8yfSEpSYBa2UJv5uHT7ToA4d2lndK8JrPUbtSwh5cxLc4BrPSlFfChcHH', NULL, 'default_member.png', NULL, 27, '1978-06-06', 'c4d7e2dc566945cb51111f0a7a55ab66', NULL, NULL, NULL, NULL, NULL, '2016-09-09 12:09:12', '2016-09-09 12:09:12', NULL),
(627, 'Mg Aung Myat Thu', 'foolgyi1996@gmail.com', NULL, 'nO4SITwNOHnM6CqmUf18THAoD3g3K0w3MLuYy8TlUF38Qlp0SngUCxsR66AX', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14203213_652309231594830_5417542813360078847_n.jpg?oh=73856ae442e1826a21adff2d4a14d055&oe=58482CD7', NULL, NULL, NULL, NULL, '655021427990277', '73856ae442e1826a21adff2d4a14d055', NULL, NULL, NULL, '2016-09-09 12:54:18', '2016-09-09 12:54:18', NULL),
(628, 'sss and chue', 'akn.nikita.akn@gmail.com', '$2y$10$zW8OEWSe4gXsiwUfrVlD9.ylvWs9U19NCThPmDodSyLh/0YVbC6Pa', 'CJH2vduadl1HC4391Fad2ONGgwO4BIyBdwMp7ULgHz2Brmx7xen867BcfCde', '', 'thumb_48804872437480.jpg', '', 1, '2016-09-09', '1', NULL, NULL, NULL, NULL, 'eq4ndzsKwDqEvUAhjQ7AEsOKEKdUmU8wx63RJt2WLStBd5fMPqv1wq4aep9A', '2016-09-09 15:13:35', '2016-10-14 09:46:53', '2016-10-14 09:46:53'),
(630, 'Soe Arkar Kyaw', 'stevearkar.dev2016@gmail.com', NULL, 'd72Pz8FT4ASKpdlWo04PG6qT6iBBYsAyiadNBliq', NULL, 'https://graph.facebook.com/v2.6/2094675234091568/picture?width=400&height=400', NULL, NULL, NULL, '1', '2094675234091568', 'EAAPMa6cPYRkBAHZAmXXeZASMsZA7zr3SALj3zotI8xMV4lnGt4j42T5SKKl8jKEiNZB4UhVtRvULfxek7WZBuRZBa540LL8suZA8ZCBzqeZCUpjsszaEaqLjYqUayZBNMJD0lPqd1b6aZCAulM9mZCku7Dq6IZBzjEh3WyTYZD', NULL, NULL, NULL, '2016-09-09 09:48:11', '2016-09-09 09:48:11', NULL),
(631, 'Theik Chan', NULL, '$2y$10$suUdObHYF2QJ9MYiToeixeM0NOdGrzQ8Nhtd7G1RN8F9oXkDmkgWK', 'Sz12MB2ZgMwp1nZe0Rfv2ZIEb2ShymW2hG2pukkzHPgzu5C2MfUNcr7JfrSK', '09795566375', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'xfI2Ib85Njyvrz0oypgfulg5I82NhDks7NIk0HAkSKipIsrp3GXss3DmLT36', '2016-09-09 18:05:12', '2016-09-09 18:06:05', NULL),
(632, 'Thet Htet', 'captainmario7890@gmail.com', NULL, 'm0uKgBw6OfiYY2Q0SU5SDhxDptgkGi3W2TeysxFkJOIX29kpX4QZ5SqELsGl', NULL, 'https://z-m-scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12994306_218880825152041_7607017651968293442_n.jpg?_nc_ad=z-m&oh=37c495091dc74e7aa8e61726c31766a2&oe=58458E29', NULL, NULL, NULL, NULL, '293716261001830', '37c495091dc74e7aa8e61726c31766a2', NULL, NULL, NULL, '2016-09-09 22:48:26', '2016-09-09 22:48:26', NULL),
(633, 'Myat Yadanar Sint', 'myatsint@gmail.com', '$2y$10$1eLkkVaE5NuV1KWk3TY.9e0rD2nAHtPoyoFZ7rTsG8I7bM1QfZRY.', 'P1gbdJxE7DFXrTNLulWIILrk6DcAHwJT4ZYt0wsvQoybN0FAGCljBAGwuBYg', NULL, 'thumb_71586569937604.jpg', NULL, 9, '1998-03-12', '1', NULL, NULL, NULL, NULL, 'VbV0qe0NPH8HABPoLtgtwYLAd5wdbSFth82TzKgzPUjkNEdBScbazQaIFW8h', '2016-09-10 15:44:20', '2016-09-10 09:15:30', NULL),
(634, 'ရ. တု', NULL, NULL, 'BsSvGyQ1lkzkSYU65Yar3sZZj8JZPtQ69BeAUR15pMlkpuMvhmnpXKIQWKzd', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14051701_130934527352678_7880903458029643331_n.jpg?oh=9ac27c7eed1a6c7a71ed2a64b0a703c9&oe=5838AA12', NULL, NULL, NULL, NULL, '155371654908965', '9ac27c7eed1a6c7a71ed2a64b0a703c9', NULL, NULL, NULL, '2016-09-10 16:24:45', '2016-09-10 16:24:45', NULL),
(635, 'Aung Myat Thein Oo', '095128482oo@gmail.com', NULL, 'zQl6pgqorzKxS82yMT2MrW3nResuFKFH34fwoCNxVdNUlzYs0j0Xzt6IkbMv', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/10897913_1591582957728322_811472248975556133_n.jpg?oh=cf2461d3e8c88e1a33d3da7e0f2d9383&oe=5880632E', NULL, NULL, NULL, NULL, '1832655853621030', 'cf2461d3e8c88e1a33d3da7e0f2d9383', NULL, NULL, NULL, '2016-09-10 18:20:30', '2016-09-10 18:20:30', NULL),
(636, 'Mg Mg', NULL, '$2y$10$FNh86/yKtJsufqddu3eZFODfnfGKXQ3GoOedR6FopdwiQEOsTcyDG', 'rV1kxB5bLH4DiHryXgcn86CiyyQztXiZJgileLEDwueOSrSJQPWuBDR5q2kR', '09975491386', 'default_member.png', NULL, 30, '2000-01-24', '1', NULL, NULL, NULL, NULL, 'Kw5TWtgiWrnrbHNmLXiBOHSXoHNsxsCB1eFo7QbijFsnEgKwnn8A9JNNTuwy', '2016-09-11 15:59:38', '2016-09-11 16:00:08', NULL),
(637, 'Shun', NULL, '$2y$10$y6QHY3giPbWUuAHI4nkjPO2LuvHfGDgo9C4rWzawklyeCryAqr0wK', 'qEaJtKzMqocI6utkR8ObhWKArtg6m24SkPLxAwonbX3wsu5iZfIhegdTxkcD', '09795814490', 'thumb_82284142155739.jpg', NULL, 32, '1998-10-28', '1', NULL, NULL, NULL, NULL, 'WRjLzSyU73W34ub4eYF8WfZeHjZpgXlPKwhYf0nPz1ijrstBAeAF78IRa0hu', '2016-09-11 23:13:46', '2016-09-11 23:14:10', NULL),
(638, 'Theik Chan', NULL, NULL, '4vVp1P0k68O7gBVaWvcpzP6tjBTZ6UrZuCYyvfpADRaeSxfqWTbJkaAubjJz', NULL, 'http://pbs.twimg.com/profile_images/672627616214478848/3iLYPHTZ_normal.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '4273992802', '4273992802-7bPoVFtQpVGnSU33cSx0iBaIM3mrI8HeYzRAa5s', NULL, '2016-09-12 09:57:49', '2016-09-12 09:57:49', NULL),
(639, 'Kyaw San Win', NULL, NULL, 'iV31awAAAAAAwTPFAAABV5h0x8M', NULL, 'http://pbs.twimg.com/profile_images/462598198/Picture0020_400x400.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '24857780', '24857780-JuWoWiNYein6cb0Hg5jVlcSoPLuON7OnuQ4pYI6E5', NULL, '2016-09-12 10:12:33', '2016-10-06 05:26:20', NULL),
(640, 'Mya Myint Zu', 'maramyintzu@gmail.com', NULL, 'RhP9QanEXyTxKpHdCBIOgR4MX5rPkD2dEdAHKSt3NDn7O5g4GGbkmTwB6oPw', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12523156_1046629422055856_3553597104618031462_n.jpg?oh=d12e2cb4333352ef81457393425aec6c&oe=587980CD', NULL, NULL, NULL, NULL, '1219068728145257', 'd12e2cb4333352ef81457393425aec6c', NULL, NULL, NULL, '2016-09-12 14:07:45', '2016-09-12 14:07:45', NULL),
(641, 'Su Mon Lay', 'whiteningstar81@gmail.com', NULL, 'NxjuUkWzNSHaRh04fBtLXu4ANve3Ffzw1mQ90G9D', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14292257_514395628753053_5673383324976443122_n.jpg?oh=c21b0dbcd6116faa641997f7c32803cc&oe=583C241C', NULL, NULL, NULL, '1', '515821775277105', 'c21b0dbcd6116faa641997f7c32803cc', NULL, NULL, NULL, '2016-09-12 07:38:36', '2016-09-12 14:21:27', NULL),
(642, 'Ju''s Mickey', 'sweetcouple1929@gmail.com', NULL, 'BERhIHwP5lOJgLpbLND5C00cXtmrdCbUCgd1CqqX', NULL, 'https://graph.facebook.com/v2.6/668654313300243/picture?width=400&height=400', NULL, NULL, NULL, '1', '668654313300243', 'EAAPMa6cPYRkBAHB2RyFrJ8JZCBJtOlNjK70pUZCeZC70ucyuZB2aPaqbbt8o2GZCZA1W4pZC5o0HPv8Q6JVkBVGEKBpZAZAzFjFGBNX3Mb4coq5TOWUkmZCqT2QHrZAG2Yk3VfyB9Hw5cD8ALRl5b1EPf1SPx4QZCVOZCcLdfjUJEmqwyWh9GK56XZAYd3', NULL, NULL, 'PivArhpUeXZ90B4g0ZuLBBbNWtz3U6xjYUQOeLtqhRppUw3QNe5JMZ8a1qKC', '2016-09-12 07:47:25', '2016-09-12 07:57:42', NULL),
(643, 'MadaraWin', 'tonykyawkyawwin@gmail.com', '$2y$10$S7lEoS7rqmcnOJJB1dUJlOI2yU5QsR.0lffR7fg.XS15JMC3hoCRG', 'aU0HUpfZC1qTDl4v6Tt3lgDAgCWqKwVasYC0fqXjMLlSajwW0wcsAoMUI8Vu', NULL, 'default_member.png', NULL, 10, '1989-06-14', '2daac3fdebd9f2f05fbc69fd8e87474c', NULL, NULL, NULL, NULL, NULL, '2016-09-12 14:17:36', '2016-09-12 14:17:36', NULL),
(644, 'Uchiha-Win', NULL, '$2y$10$xpdtJU1HImJ/zgU7CieXH.J5bpH8AVdlDKReeyZ2cICB1s5o9vXiy', 'RsYvPKH19cFvVQBW3H7kc9PDtoSrQHskWgq8p0Nymdo5XF3PGb618XqqTsiP', '09795399012', 'default_member.png', NULL, 10, '1989-06-14', '1', NULL, NULL, NULL, NULL, 'dPsol762svwhJdK75imuLJ4OAWTfejAnS8IHDzkxEnpSbX2L77yFtSTaKUC6', '2016-09-12 14:20:37', '2016-09-12 14:21:10', NULL),
(645, 'Soesoe Yee', 'soesoeyee.pku@gmail.com', NULL, 'k3RvJgwFhLtPc3uxGTN2ES65XtJg1Iujkyb3JDaG', NULL, 'https://graph.facebook.com/v2.6/1449948005022136/picture?width=400&height=400', NULL, NULL, NULL, '1', '1449948005022136', 'EAAPMa6cPYRkBAIIWOFrmNysBZBGZCCOBNZCBeClW9TLhtSZAgORtSoSxINKqZAbZAscRtaCN81aBiCeijgjtmAkAvDGIOUabV9FZAzsmJQfhO6KBghq1nPilJ9qiwA1iNs06gY7wG0Mz83q3zxFZCAXBbcSzcZCIM7M0ODlxAYlQgM8SajtEnYGCZC', NULL, NULL, NULL, '2016-09-12 08:01:38', '2016-09-12 08:01:38', NULL),
(646, 'Golden Fenix', 'kyaw.thu.soe@gmail.com', NULL, 'o4xIsljgG7aVNsY3BFW4NJeCXIAIKjLkl8Mz8j6rlcJL7jURR7yYit445uCg', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/993867_10154493424272366_3909127037921310428_n.jpg?oh=79ad5e97557f726253d359acdbbe9f44&oe=58774B66', NULL, NULL, NULL, NULL, '10155181914462366', '79ad5e97557f726253d359acdbbe9f44', NULL, NULL, NULL, '2016-09-12 14:44:48', '2016-09-12 14:44:48', NULL),
(647, 'Khine Zin Win', 'khaingzinwineco@gmail.com', NULL, 'BVa0ZehnCiV9VSPZnlCKncrZGqfMj8vd9ztORyS0ky2u9t1qp39tkGQBclhV', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.4.120.120/p120x120/13895275_1314318748593331_5117106593484824698_n.jpg?oh=8cdb8eccba8de85c786ad4899034f14e&oe=587F4B28', NULL, NULL, NULL, NULL, '1357877754237430', '8cdb8eccba8de85c786ad4899034f14e', NULL, NULL, NULL, '2016-09-12 14:45:57', '2016-09-12 14:45:57', NULL),
(648, 'Ami Myint Mo', '25.icecream@gmail.com', NULL, '1iTGBlIgTlb0QSb4uzprgAq0s9JJqRmh4apVsYh0OHOp18pzb2nmivwee8lh', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/13669218_10209781892364902_7930654384081701799_n.jpg?oh=537fac37f44429b8f2b69c19d8b2f527&oe=58471936', NULL, NULL, NULL, NULL, '10210300651013544', '537fac37f44429b8f2b69c19d8b2f527', NULL, NULL, NULL, '2016-09-12 14:46:07', '2016-09-12 14:46:07', NULL),
(649, 'Freddy Jackson', 'happyvirus21.yn@gmail.com', NULL, 'UIoAgese134rjbMLwUSEDqcU7gjS6A5wKlczClWOVVj1cJYJcEMpO8Mk9hu6', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14199312_319181391767802_838797766085557736_n.jpg?oh=4ef540482098baeda34b56ea62aad091&oe=5872B865', NULL, NULL, NULL, NULL, '320911571594784', '4ef540482098baeda34b56ea62aad091', NULL, NULL, NULL, '2016-09-12 14:47:31', '2016-09-12 14:47:31', NULL),
(650, 'Nilar Aung', 'msnilar1992@gmail.com', NULL, 'q6d9XvNbCzQvzKJFFHy4KK9c9ex43xYB7GPaqXDd', NULL, 'https://graph.facebook.com/v2.6/663217797178386/picture?width=400&height=400', NULL, NULL, NULL, NULL, '663217797178386', 'EAAPMa6cPYRkBAL5Y4Yq7G24HhZBFZA61RbBLOH5RdoSNnxYnWe4fWHXILSSczBjarh4Rdbwat0vJjLDPm8n1xZA1fMuxuhZA78WJjrlqMexhrkgmj6iTozQ1XZAAaIuUFFZAcdPmZB4Y7uZA9hoUJfcTrnHc4bG7nAgZD', NULL, NULL, NULL, '2016-09-12 14:47:39', '2016-09-12 09:33:42', NULL),
(651, 'Cristine Taylor', 'winterlady2012@gmail.com', NULL, 'cXANmnGLXf8qDq5Fo1QBrmLYZNMgZaNyslQDjVQv', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13709910_1052874431467498_5679854699927661887_n.jpg?oh=2de27920ea0542e0c9d369ff7b0ac924&oe=5862A5B7', NULL, NULL, NULL, '1', '1091377950950479', '2de27920ea0542e0c9d369ff7b0ac924', NULL, NULL, NULL, '2016-09-12 08:18:29', '2016-10-02 14:33:02', NULL),
(652, 'May Lwin Oo', NULL, NULL, 'sHIyRBh6VbbDE4oRG5cU3p0BZxmlQx97YSmHdvHNg3q6OO8X4gmPuPh8JCb0', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14192131_1689946567990839_8230932980718617197_n.jpg?oh=ffa21892186ce9c90013bc26561aaab1&oe=583BBEEE', NULL, NULL, NULL, NULL, '1695617640757065', 'ffa21892186ce9c90013bc26561aaab1', NULL, NULL, NULL, '2016-09-12 14:48:39', '2016-09-12 14:48:39', NULL),
(653, 'Khin KhinThet', 'khinkhinthet@gmail.com', NULL, 'uPOvc2NNRNj2RryEVnqLC9m3f9iaCafm3yOYc5t9tfT8uC0fXR7VrAnN1Pkk', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14192165_10206346943506426_7198598199536733715_n.jpg?oh=2317c087fda60f7619893ddde08ff46c&oe=588372AB', NULL, NULL, NULL, NULL, '10206432309080512', '2317c087fda60f7619893ddde08ff46c', NULL, NULL, NULL, '2016-09-12 14:48:54', '2016-09-12 14:48:54', NULL),
(654, 'Myo Min Khaing', 'ygnevil@gmail.com', NULL, 'cZid6fuoCCiLVVb3VJdsm44tADDEO2LdpRMxOHlrL0Giqu2wfXU95OWWEs2w', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13707620_829429770490015_6562914184449786530_n.jpg?oh=5586e54f0768d675817e56dbb6b596d7&oe=583CF321', NULL, NULL, NULL, NULL, '869561676476824', '5586e54f0768d675817e56dbb6b596d7', NULL, NULL, NULL, '2016-09-12 14:49:02', '2016-09-12 14:49:02', NULL),
(655, 'Su Thet Paing', 'greenrose1515@gmail.com', NULL, '0xwba8siMOesqNHps1BXKJuThoiSwhS9BAH776Tt7YeAu5PNOxqRz1bNeTRj', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c20.0.120.120/p120x120/13934862_1092717504155445_4174194742363095043_n.jpg?oh=ed034d367e6c818d05e47df1d545ded6&oe=5841E1F2', NULL, NULL, NULL, NULL, '1118251981601997', 'ed034d367e6c818d05e47df1d545ded6', NULL, NULL, NULL, '2016-09-12 14:49:25', '2016-09-12 14:49:25', NULL),
(656, 'Sa Lin', 'nayminkha90@gmail.com', NULL, 'vJoTCsYkcvSpguKAd5jcfPFLMgBIBbAdJzRILUWelSaDN71XfPckDLrp005j', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13680954_1072999192774179_4645081020403335914_n.jpg?oh=af28f106612ce712f57f9d4769e08e62&oe=5881B371', NULL, NULL, NULL, NULL, '1128786550528776', 'af28f106612ce712f57f9d4769e08e62', NULL, NULL, NULL, '2016-09-12 14:49:54', '2016-09-12 14:49:54', NULL),
(657, 'Chilli Chilli Phyo Lay', NULL, NULL, 'AesdfkBVurBtOtX8z4Inxyw4HC6C9MxRSjJoKFuOKCxcktC3NoLAVi7zF8Yc', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13445699_660449490797416_6940790895170575527_n.jpg?oh=a887a190cb03ed3cccec17b44759f329&oe=5840A9DC', NULL, NULL, NULL, NULL, '702589839916714', 'a887a190cb03ed3cccec17b44759f329', NULL, NULL, NULL, '2016-09-12 14:49:56', '2016-09-12 14:49:56', NULL),
(658, 'Hnin Htut', 'hnin.htut@gmail.com', NULL, 'Qb6VKAsrE4sAQwTS3wIKfrqnQ672Y79DQEGKrnfDd5gcK0aFy05OhqxCgOgJ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c1.0.120.120/p120x120/13450963_10209630562469782_4339846262464442180_n.jpg?oh=7af38ada2feb25a8d1fb9194c30d6c44&oe=583DDCE4', NULL, NULL, NULL, NULL, '10210396837186171', '7af38ada2feb25a8d1fb9194c30d6c44', NULL, NULL, NULL, '2016-09-12 14:50:02', '2016-09-12 14:50:02', NULL),
(659, 'Ei Hay Thi Kyaw', 'eihaythikyaw@gmail.com', '$2y$10$GbiRLbp8H6c7fkftNj4F3elpgoyHV59of2RmTdf6A5x2sqTfAPqvq', 'J9ieXC1ntKCogXAhf1bdAG6yMnjkUIU1b6qOBZcf4r4eZO4yifMFCACr7K0h', NULL, 'default_member.png', NULL, 28, '1988-05-15', 'a51bccafec3f2debd220857b54dfaca0', NULL, NULL, NULL, NULL, NULL, '2016-09-12 14:50:03', '2016-09-12 14:50:03', NULL),
(660, 'Ei HayThi Kyaw', 'maykhatmon@gmail.com', NULL, 'KjL8D4jtvlLMXBqy2Qsg1UzuD2B0jFKtGJGE7fhn', NULL, 'https://graph.facebook.com/v2.6/982416315213617/picture?width=400&height=400', NULL, NULL, NULL, '1', '982416315213617', 'EAAPMa6cPYRkBADtZBJh2Nl531Cxz32ucPBFaU8cHoHXOjtMpGxGoINyNj5qsOLuETG1ev7rHUkPZAMQoBOlVcGgYrQnaLzrC0JU98pep8z1VLmQ7j6wRsXiYWw08BH9XaRRdweYTGnyBAi7T0yEtZCQ8tgxb04ZD', NULL, NULL, NULL, '2016-09-12 08:20:35', '2016-09-12 08:20:35', NULL),
(661, 'Aung Ko Ko', '2aungkoko2@gmail.com', NULL, '0w99TI9GjscInCV1nx7BQubNNuq6NWehT6zbIu02yyKJXpcelOPL0z9x1Q8e', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11207283_733031040163137_3542762814579907960_n.jpg?oh=7e7308ee7483403c2e7e62a1c381c665&oe=58832F88', NULL, NULL, NULL, NULL, '892185660914340', '7e7308ee7483403c2e7e62a1c381c665', NULL, NULL, NULL, '2016-09-12 14:50:52', '2016-09-12 14:50:52', NULL),
(662, 'Thomas Moe', 't.moe84@ymail.com', NULL, 'tRx7shUwS7VvDNRR8ZTibJ5TZTyWLVzIQQAc32fvq47FOTwwQbPyfCzzg3IZ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13221646_1127470263942103_5225002332563488999_n.jpg?oh=cb3862eeb02d784a0cefae2533743059&oe=583B472F', NULL, NULL, NULL, NULL, '1208197579202704', 'cb3862eeb02d784a0cefae2533743059', NULL, NULL, NULL, '2016-09-12 14:50:58', '2016-09-12 14:50:58', NULL),
(663, 'Thet Su Win', NULL, '$2y$10$dumK647Szt6xpwcNJb8pt.TCYlyf.jDi48z46jputHgPpsIfIaotW', 'Wey6Nn1B5cesMYw3N4fNOGmhSlJP17RNrnhJNGrX80c0NnkUq5TQ155kVFs5', '09421037044', 'default_member.png', NULL, 31, '1987-01-27', '1', NULL, NULL, NULL, NULL, '0uLXjwefdUhgkwM0Dt7NigU1FpMvwzqT6vD1B8yEOP6P5pQHXD6lGCmixlUz', '2016-09-12 14:51:13', '2016-09-12 08:50:15', NULL),
(664, 'Su Su Zaw', 'rainlayeik01@gmail.com', NULL, 'EFXeeDoLsUfQKEksPXlDFQnF9o5LHFtP7uN8iVC4BkGVlx5Qx3YMnFjn4GhS', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12088540_832861273498613_5539553172151223966_n.jpg?oh=f1a24b4d3794b924387af9ba5534b932&oe=5877FB39', NULL, NULL, NULL, NULL, '1037977469653658', 'f1a24b4d3794b924387af9ba5534b932', NULL, NULL, NULL, '2016-09-12 14:51:24', '2016-09-12 14:51:24', NULL),
(665, 'Myo Pa', 'myopapaaye89@gmail.com', NULL, '2rtmCeArryXfj8W3pT80MqpiDh6sxn9d18oopctT', NULL, 'https://graph.facebook.com/v2.6/557239101151031/picture?width=400&height=400', NULL, NULL, NULL, '1', '557239101151031', 'EAAPMa6cPYRkBAIw3QtYGfWS9kvZBsXrMfNHw77CJxOhrKcOp1wGrP0o2lRypuo6EgvKoeRGtxTFdygTsmm0BkZC5CZB6ZByz6WMbKd4FNKni3sTZAYygyGQU6yqccR49tqVDsxHKZCenZBHzcrZAMZBFCUnPL38JjEgyWXUSZAjRYRQwZDZD', NULL, NULL, 'AZxwgsSWIigODKboaoQbLzw394fOROKAzcgxltd1eD9rsl4n3kS4Ssf3qUrJ', '2016-09-12 08:21:54', '2016-11-26 08:35:13', NULL),
(666, 'Boaung Din', 'boaungdin69@gmail.com', NULL, 'fgZ2MenMkuV6fB41CHp79Zb1tLFqxUOf2Qcp0pTliag5mPtZStF3nunQWVUY', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14265099_1091626497594376_6445332069574235189_n.jpg?oh=54d33c56a7e9bc6f814ed30889ea5e9d&oe=58719C14', NULL, NULL, NULL, NULL, '1095953290495030', '54d33c56a7e9bc6f814ed30889ea5e9d', NULL, NULL, NULL, '2016-09-12 14:52:15', '2016-09-12 14:52:15', NULL),
(667, 'Aye Thandar Khaing', 'athandarkhaing@gmail.com', NULL, 'Ow7rCyhomqbKmWgRcBXolKbvS4JfvTH4IFIjgp3kerMtG8RK1hr3XeGFeI1s', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13241154_10206371607476709_7911636182332518064_n.jpg?oh=ef35e30e84e50a64fbe2e9af9529257a&oe=58862DFC', NULL, NULL, NULL, NULL, '10207194140799528', 'ef35e30e84e50a64fbe2e9af9529257a', NULL, NULL, NULL, '2016-09-12 14:52:21', '2016-09-12 14:52:21', NULL),
(668, 'Kaung Kaung', 'thin9410@gmail.com', NULL, 'gYZ7XjBbeZOfkFtgM2hWaRtMcK8E0NDCQzpfHv4y', NULL, 'https://graph.facebook.com/v2.6/1664076103909953/picture?width=400&height=400', NULL, NULL, NULL, '1', '1664076103909953', 'EAAPMa6cPYRkBACwaLZAhPBaeZBGI87SiApGCDs3sE7RIxwYDPjP3VVfs5q1oA3paS3jHSFbTEYshwvUtvpHCZBHlOMVhVTTwZCHQKThZCQKJ9OLMksOycwYW8u3v2n7gaCZB8RntTGLfdAQYQun6glcB4oX8Pr9pNskpfNZAEIvZAgZDZD', NULL, NULL, NULL, '2016-09-12 08:22:47', '2016-09-12 08:22:47', NULL),
(669, 'Moe Pa Pa Naing', 'mppn.ucsy@gmail.com', NULL, 'GMzJW96VZossDaINmb0bhStXCL34TTpazJCM5ElUqjbAf91kpUX2bIo7a88G', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12670640_592361267606437_2253142985467767177_n.jpg?oh=984cdbc10cda836149b3b03b556c5efc&oe=5885EE0F', NULL, NULL, NULL, NULL, '664421120400451', '984cdbc10cda836149b3b03b556c5efc', NULL, NULL, NULL, '2016-09-12 14:52:54', '2016-09-12 14:52:54', NULL),
(670, 'KyiThar Thant Thant Htwe', 'kyitharazure@gmail.com', NULL, 'n7q9n2mQsA6FPnofmo51UfxmB2aFZ0O6H7q8O6WrIpz9vYXqU31DYcpC43mu', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/18813_368147270052990_6409978990407419054_n.jpg?oh=314345f62c603f8f78511223652ff51f&oe=587C0B5A', NULL, NULL, NULL, NULL, '565754740292241', '314345f62c603f8f78511223652ff51f', NULL, NULL, NULL, '2016-09-12 14:53:00', '2016-09-12 14:53:00', NULL),
(671, 'May Mi', 'zinnia.hinata@gmail.com', NULL, '0a1TSqt1wcebVdSelswBVT1Bho9jhb3UAKZFKH2ySp9tK2nXlRE0jg43l4SQ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14212211_547050528834308_8288710450997573218_n.jpg?oh=a1762bdb4184fcddd688a05134d447c7&oe=58404770', NULL, NULL, NULL, NULL, '550946325111395', 'a1762bdb4184fcddd688a05134d447c7', NULL, NULL, NULL, '2016-09-12 14:53:06', '2016-09-12 14:53:06', NULL),
(672, 'Thazin Aye', 'thazinaye.1991@gmail.com', NULL, 'mHwrrZjV0kMqBziKB8AG6kxy2MpYmlHPvcc3lOSC', NULL, 'https://graph.facebook.com/v2.6/1807475982861854/picture?width=400&height=400', NULL, NULL, NULL, '1', '1807475982861854', 'EAAPMa6cPYRkBAGDB375QNu6FQtWlILaZCViVnkcwxB7TXzestPh9o80Xy2pU3jE7XaxsKAD7nmMqrP6cGE2oL7aO67L0rUODu4d5vFpeW5frXmDeZCKwnkj4eTchNR5IVWwQFbsqzVErjSb2e6j8X2R6xL1zhZCavRXx3hEEgZDZD', NULL, NULL, NULL, '2016-09-12 08:23:08', '2016-09-12 08:23:08', NULL),
(673, 'Thinn Thinn Thu', NULL, '$2y$10$wWCOvuqVul/2x4NDCD7Yme6RMrCUrrBP4bClA5epMkgTopdHZOY2C', 'NNKvKtuADgRy5pcgZnWTZMbQU4c4P9wZItGKHVY42xuM8Uj6MxRF9bj5gyF9', '09798461507', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'FvBqnyEkqOej4GmCRKxTWQ349dgmhI9y1U79Al0nCG9PrItB0P6gfz0ImgVa', '2016-09-12 14:53:21', '2016-09-12 14:53:47', NULL),
(674, 'Hay Man', NULL, '$2y$10$y.uoS.q0TJ8zk/zSmY5fyuqmsehi0L/esN82aAo8w6Nqafd9sAIhW', 'JCKFzGxfZp5QDhhRg368rTubic0IS0oW6f32o3vlyLa7Jwx6EB8UlpLkzvI7', '09420059121', 'thumb_70127581638649.jpg', NULL, 1, '1988-12-10', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-12 14:53:25', '2016-09-12 14:53:25', NULL),
(675, 'Nway Nway Pyae Phyo', NULL, NULL, 'diJEZF0XY4WNt2j31jLD17707Y7M1EZ6NU5F8XSS4OW1V5apUQYGG0Fl7V4x', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14063917_1654991438151034_1282425578949883851_n.jpg?oh=e21f470e34a646687a342e62dd6e1454&oe=5876F891', NULL, NULL, NULL, NULL, '1667469970236514', 'e21f470e34a646687a342e62dd6e1454', NULL, NULL, NULL, '2016-09-12 14:53:44', '2016-09-12 14:53:44', NULL),
(676, 'Child Lay', NULL, '$2y$10$YJxccVZUT7gEwJQxMvWLCearbzYwhAfbRJ94aJIcGf1T4ALkoD8B2', 'PDdL4UqAYvn2xrWpeHcohpg6tpt3RtBJkGfDbGuFnVxKMe0AkbjHxIiSRd9W', '09798389771', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '2016-09-12 14:53:49', '2016-09-12 14:53:49', NULL),
(677, 'Aung Ko Khant', 'aungkokhantace@gmail.com', '$2y$10$P1p4Glp2BK/rviW.JQCDh.keMhkFeqLgiok8oKzoU28zDvVXUE76.', 'fwockVbdNYfyzzzEvY0XfzIxVrl1HviDI7Ozmq0oDMJp14um3nmjIuQ7QCDZ', '09400425594', 'default_member.png', NULL, 29, '1994-05-29', '1', NULL, NULL, NULL, NULL, 'EZR9nfdErrWjTJROSF0zpj4ylbygyWWysDJi7auWqMMAgbcxX4RuVeNLWSX5', '2016-09-12 14:53:57', '2016-09-12 09:52:55', NULL),
(678, 'Nyo Chaw Lay', 'chawtheinnyo@gmail.com', NULL, 'BQCcfxY0U6DXhcT0MWqitm8d5PeuR9MWjvCXd8k39Cfl3FfWfYQRFLsFBB5j', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14225616_1842012992677254_1141655759267721827_n.jpg?oh=d832813d24dc4d4d224a03e5ae744807&oe=58490A76', NULL, NULL, NULL, NULL, '1846812608863959', 'd832813d24dc4d4d224a03e5ae744807', NULL, NULL, NULL, '2016-09-12 14:54:43', '2016-09-12 14:54:43', NULL),
(679, 'Daffodil Hlaing', NULL, NULL, 'yPtJrncGNgVrW7hKuALfjTbpz2w4xrDia3tUUuaQAuzeTvDmpF2CTYTOTKBC', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14212814_163540767421862_4600888056242688931_n.jpg?oh=ca8ab9d934e1dd6135bb67c0cc579126&oe=583EC848', NULL, NULL, NULL, NULL, '164658913976714', 'ca8ab9d934e1dd6135bb67c0cc579126', NULL, NULL, NULL, '2016-09-12 14:55:03', '2016-09-12 14:55:03', NULL),
(680, 'Aye Myat Thwe', 'myatthwe.amt@gmail.com', '$2y$10$r9GKdEbZR9wtdy0/LSBAH.DHUwnUih.HIJyhezTFVuypqOVwgUamy', 'MEoheFe3FQvN8lteQ7J3adv220umQAc554Niim3D', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13707714_1345984322096967_4856336513937506664_n.jpg?oh=f6c8d7f589f4a8ddad7beafc78632fdf&oe=5837A04F', NULL, 23, '1986-11-16', '1', '1400961823265883', 'f6c8d7f589f4a8ddad7beafc78632fdf', NULL, NULL, NULL, '2016-09-12 14:55:06', '2016-09-12 15:24:57', NULL),
(681, 'ZarChi LinLin Zin', 'zcllzin@gmail.com', NULL, 'z4ZnUYgtK0sGfKhp6UHWqULxwt44QVbTWfFCB38Yl2l54hwcckjwMCtPpkiN', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11210413_1027460883940152_5326902771199984697_n.jpg?oh=f92bdf1db8ba135930a7f15f8e4dd22c&oe=5876C302', NULL, NULL, NULL, NULL, '1301204606565777', 'f92bdf1db8ba135930a7f15f8e4dd22c', NULL, NULL, NULL, '2016-09-12 14:55:09', '2016-09-12 14:55:09', NULL),
(682, 'Hoo Sa', 'kaungpyae161992@gmail.com', NULL, 'Dny9rO1YZAMMaspUt7vaGBmdbEXF08CmvGoRBfIBJ7hGWrwIjUPDdefYt1oQ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13882420_1405931332756198_5637959956632451509_n.jpg?oh=1478dcb8ab07730b11cfb1af9c230d98&oe=584921CF', NULL, NULL, NULL, NULL, '1445975038751827', '1478dcb8ab07730b11cfb1af9c230d98', NULL, NULL, NULL, '2016-09-12 14:55:59', '2016-09-12 14:55:59', NULL),
(683, 'SilentIz Zilch', 'aprilborn14496@gmail.com', NULL, 'WCfL9nS96c0VGhdgNMRi3J6ckPjUkLSXyxWNbtcwexOZpiPoIfRML0PsECbv', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13450155_301822623486525_1036549338456393067_n.jpg?oh=29aa5e3f4b25088142d02349ffa72f8e&oe=58484582', NULL, NULL, NULL, NULL, '348103392191781', '29aa5e3f4b25088142d02349ffa72f8e', NULL, NULL, NULL, '2016-09-12 14:56:01', '2016-09-12 14:56:01', NULL),
(684, 'susu', 'laminprincess2008@gmail.com', '$2y$10$.TLoJ560cxjZPEkxjU7ot.7dvwcZd2YIlzl.vV39liu.bQMP3nwzm', 'FUMfkNdUSnOz9p2vKufcLZt5Ap35LLEfUEJDSD7vzLq7OMbsQkT4pwxZvLCl', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '2016-09-12 14:56:25', '2016-09-12 14:56:25', NULL),
(685, 'Vvitto Vvitto', 'candydolly.95@gmail.com', NULL, 'v9su3LCJIcX1EAoU1nVjfwYjr2albFrWA8IxVh26gwUTQEy1uUAMd2PPowF0', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12998518_509060815946240_3347598902690327915_n.jpg?oh=d34c365f15a411ba6f584be5eec052b7&oe=58729532', NULL, NULL, NULL, NULL, '563139913871663', 'd34c365f15a411ba6f584be5eec052b7', NULL, NULL, NULL, '2016-09-12 14:56:32', '2016-09-12 14:56:32', NULL),
(686, 'May Zon Moe Oo', 'mayzonmoeooyg@gmail.com', NULL, 'VDauOrluddvGZ7lyUtVPoHjEoVnI4WTiwIo4gbNPlNjQhKcYOSCUrnkxqEnS', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13781952_1880476138846497_5573663264783640004_n.jpg?oh=aca84d86f91f20d70cc22740db467d49&oe=587F8F38', NULL, NULL, NULL, NULL, '1904566279770816', 'aca84d86f91f20d70cc22740db467d49', NULL, NULL, NULL, '2016-09-12 14:56:48', '2016-09-12 14:56:48', NULL),
(687, 'Aye Thida Phyo', 'dreampoem1251994@gmail.com', NULL, 'a2P0QMhJ2RkFzThBDx2GsVaQ72RgBVhi2WtPlpIh2RTWoANOJ2orCChuuMVd', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14199206_1766454210283631_3845638727396496374_n.jpg?oh=bfc10d299e354185587fb75531f6ebad&oe=587613EA', NULL, NULL, NULL, NULL, '1771270626468656', 'bfc10d299e354185587fb75531f6ebad', NULL, NULL, NULL, '2016-09-12 14:56:58', '2016-09-12 14:56:58', NULL),
(688, 'Moe Pa Pa Naing', NULL, '$2y$10$pnB.f3WcMxhEyG.Szragj.w8jymwvMohyI05ebl4aHKexVK02pqr.', 'Ba4N4SKjKosvqDntXlB9HLQiInVMz8VzVW1CWRKKHFKsOyAjIzuZfasIBjSW', '09795070572', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'Xq0yGri6Lx3KNWYozhw1s24uU7Fe4Xa9wSBPggiUZB5ClxNfUtOykhqsqx1N', '2016-09-12 14:57:34', '2016-09-12 14:58:33', NULL),
(689, 'ရႊန္းအိမြန္', 'whitewinterangel386@gmail.com', NULL, 'GBpheebCsEzhlIKBjj0XoOGVDmSR6G7vbN1G2Jae6cx6Fa5YaSYr2PhPCgrR', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/11667391_991229094230045_8310887840506139906_n.jpg?oh=a7c897b1aacc4ce7c2640532f40b2c8b&oe=587AAA5E', NULL, NULL, NULL, NULL, '1244602958892656', 'a7c897b1aacc4ce7c2640532f40b2c8b', NULL, NULL, NULL, '2016-09-12 14:57:41', '2016-09-12 14:57:41', NULL),
(690, 'Cricket Kg MaLay', 'gaga2013g4@gmail.com', NULL, '9x98DhuwS3xZfaloKOOnMOviM7FouwmHB6UzkbqmrBG49Ptwv8w3epxrJVKv', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.20.120.120/p120x120/10402667_1459746110934232_3074684914623724731_n.jpg?oh=8eb96c76e8deaf05134a8fa2f1c4001d&oe=58475C80', NULL, NULL, NULL, NULL, '1779436935631813', '8eb96c76e8deaf05134a8fa2f1c4001d', NULL, NULL, NULL, '2016-09-12 14:57:44', '2016-09-12 14:57:44', NULL),
(691, 'Hay man', 'hayman1988@gmail.com', '$2y$10$3JLPBw7zWK8gvYMDKtt4R.ctxS2PK64RdCUVl64JWCsnB5YppN/.2', 'kLw2IiT60qdRpDb4RLX3KH4XttAwq7kMIw0RbGKdyBo3zANO5XvD7D48a7n4', NULL, 'default_member.png', NULL, NULL, '1988-12-10', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-12 14:57:58', '2016-09-12 14:57:58', NULL),
(693, 'Child Lay', 'childchild1991@gmail.com', NULL, '9BoFClm0aKBm6kr6u3g6gH5KfLkfCTiOQUNPk13uaKEis5rIqkQ1UB4ntcEu', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14054925_10202008662093704_8408569479243396903_n.jpg?oh=ecee25af60d489733c9fda42685a52a3&oe=5872ED92', NULL, NULL, NULL, NULL, '10202101545375728', 'ecee25af60d489733c9fda42685a52a3', NULL, NULL, NULL, '2016-09-12 14:58:01', '2016-09-12 14:58:01', NULL),
(694, 'Tauk Tun', 'jhontauk09@gmail.com', NULL, 'nL0uuHUHUYx8pwvOyLEpFXyfdPHGffJJni8LJSLkFwqEIkZ7JdpHFxQ8z7aN', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/7661_1155959677768037_6486817914790912511_n.jpg?oh=db175af78f30498d2e1983caab9be09a&oe=587B7695', NULL, NULL, NULL, NULL, '1284014701629200', 'db175af78f30498d2e1983caab9be09a', NULL, NULL, NULL, '2016-09-12 14:58:05', '2016-09-12 14:58:05', NULL),
(695, 'nyein', NULL, '$2y$10$/IALMn4QXbotEZUczXAHFuQnBAPXRbRz1o8CNhQeU00svGNiOoiXS', 'DTAHkMrJt1ZAzXDXyE9mhfr16UpB4CkpS1Uawtj6nHNbHiuEpoeDKmogtA8q', '09794112239', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'BfnpUzgbnCIBwOl5XJAW3GCBYGf0cJrth4xzNUGLqEW6d4YlZCknVUAFrXSy', '2016-09-12 14:58:07', '2016-09-12 14:58:39', NULL),
(696, 'maysanthu', 'maysanthu87@gmail.com', '$2y$10$a9Ke7sH0XBHLw8WDwG.24OHjNtS5kIzUoUNKb3WMbEkqZgkOZBDtq', '51qyYL3zFrP0DAlU2BWiLHij4VZ9n8moqQgMozxaLyBuZshK7WbKx4fAIRrE', NULL, 'thumb_56187119689992.jpg', NULL, 1, '1987-01-08', '1', NULL, NULL, NULL, NULL, 'mYrMupNm8dus8SEbtUxYMidjajyskRvSTDUCAXUaU7ERWGgKZfkbalu5vqZ9', '2016-09-12 14:58:18', '2016-09-12 08:57:52', NULL),
(697, 'Naw Lelbwe Paw', 'lelbwepaw@gmail.com', NULL, 'ZHmbSgJ0XYcwr5TYHB1WdnITSy74pFp2DglCwGJ0488XeGohG6qsQHXRtBfT', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13707635_848088041990716_6031621927205872934_n.jpg?oh=890c8b57252c36356a12058d09111f0b&oe=588115B0', NULL, NULL, NULL, NULL, '879153705550816', '890c8b57252c36356a12058d09111f0b', NULL, NULL, NULL, '2016-09-12 14:58:46', '2016-09-12 14:58:46', NULL),
(698, 'Julie', 'julyphyo247@gmail.com', '$2y$10$22kUEuMNRf.8CoOqRhJhiu6VPt9g.iEbjOuDRI6Kn2ss7hkszj.dG', 'siY3RChPFdmkNnKPKEq8BhZMNIV0Hdstp8JVP8BDru65hxM5G8KNjgx7XUyt', NULL, 'default_member.png', NULL, 11, '1988-07-24', '1', NULL, NULL, NULL, NULL, 'i3Iz5OWecEvjJ5LND7HXWBVHJYfsUlvS95RS7ypyC0aK1SR2GHrc1kRcreLY', '2016-09-12 14:58:47', '2016-09-12 08:50:33', NULL),
(699, 'Kum Kum', 'anjalee.en@gmail.com', NULL, 'gXusAbHZ7h9fpI7vzqedbdIltZcnOypR7jxifWXTFAbCEHdMQ5rZkNHc6zVK', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12189838_439147816268766_3241265830260562379_n.jpg?oh=e672c834a2a5f5270454274a21b9c855&oe=58386738', NULL, NULL, NULL, NULL, '550734178443462', 'e672c834a2a5f5270454274a21b9c855', NULL, NULL, NULL, '2016-09-12 14:58:48', '2016-09-12 14:58:48', NULL),
(700, 'Ju Jue', 'prawn.brain007@gmail.com', NULL, 'KOkSwd155EuAwmil8samKijUvIQw9y9FmEQ2n8AzDqb2GrNH3RWSilKkmWds', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/14233134_1438132709535436_8167005279805281547_n.jpg?oh=13fd3df721666add0ced8b0cd3b1475c&oe=58416575', NULL, NULL, NULL, NULL, '1446762578672449', '13fd3df721666add0ced8b0cd3b1475c', NULL, NULL, NULL, '2016-09-12 14:59:12', '2016-09-12 14:59:12', NULL),
(701, 'totoro^', NULL, '$2y$10$ExakP8uM73/Uo2g7IX4Zqe93vSQuxN8gtpfD6Z1IlxcDg2FHZagEy', 'uEbesnNFS7JGfD38dpc8g4FUMphwBUgwfU7BSi7RbWt698qH0lModq09xImc', '09799203211', 'default_member.png', NULL, 11, '2016-09-12', '1', NULL, NULL, NULL, NULL, 'mSXjoxI17jKxz0U2aSGb5gTEXJOOpnQVLzkxQSYzebrp81D2MdDHDAD9R5La', '2016-09-12 14:59:12', '2016-09-12 14:59:39', NULL),
(702, 'Myat Yeemon', 'myatyeemon@gmail.com', NULL, 'IVjyLNXM5tgSx4GxASoi8wRQRibDPsvGhEsJyHOAAxUQvdY06TiZtrhoC5pn', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/11933445_1136981639663786_2357100330352113755_n.jpg?oh=e9608b39c68588e3220f8534cdbab9f5&oe=58475D5B', NULL, NULL, NULL, NULL, '1350795308282417', 'e9608b39c68588e3220f8534cdbab9f5', NULL, NULL, NULL, '2016-09-12 14:59:24', '2016-09-12 14:59:24', NULL),
(703, 'kaungkaung ', NULL, '$2y$10$lykt53CwhlO7nc06PXPYSePdY6SsWwy47lC36AO02MOxM94xYHdC6', 'Z2hPIEBL8RFUBkWwt6ZZpDdB83G01jOXCCQyaJDny3bsB8nj9CnbA9mXGtr6', '09793111761', 'default_member.png', NULL, 1, '2016-10-04', '1', NULL, NULL, NULL, NULL, 'QZYsKXAX1QRsWYmSa8DWa4JjwfoiJSzUm17GQQHHSXbMthc99N9GkQ0fOcjF', '2016-09-12 14:59:35', '2016-09-12 08:30:36', NULL),
(704, 'Hnin Lei Phyu', NULL, '$2y$10$e9l.XCkuQ0gY.K0ZrDU73ewhNzhS2fSVtfJt4Vaf8O3jidY4YEpiu', 'cM2pvNRnvvGMbTH96DTmz8CyqPAvzKHjFbYuEt6DTSQNIxHonicNPPd9YsVc', '09420049095', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '9rgSmgJvp7V2jolkBvX4gpBZCyNyKqOrjVWBxCWnJduKDFaywFrdF6zpQtcv', '2016-09-12 15:01:01', '2016-09-12 15:01:30', NULL),
(705, 'July Phyo', NULL, '$2y$10$ZxcmZKb87OQ1ukWVcowh.OxOnoEnz/BcB23iUYTLLGflga/iFXK2m', 'VpdEKXtRyPLrqt9RyzhmULOq68DetcYPD435fcvqGTC6OdRGngCQi2OKAFvu', '09420012955', 'default_member.png', NULL, 11, '1988-07-24', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-12 15:01:31', '2016-09-12 15:01:31', NULL),
(706, 'Pwintmar Ngwin', NULL, NULL, 'mWXHE9nDj9fghsDyC5YWp5ZqsCZP1LUYQCZFHMz6gyYaKRol66hsK8SkQUnZ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12715449_941929729208461_1188210071962793106_n.jpg?oh=3cfe2f2ba3525e231a4c22ad2975285e&oe=5841F86D', NULL, NULL, NULL, NULL, '1072576262810473', '3cfe2f2ba3525e231a4c22ad2975285e', NULL, NULL, NULL, '2016-09-12 15:01:42', '2016-09-12 15:01:42', NULL),
(707, 'Kaythi Khine', 'kaythi.ygn.2010@gmail.com', NULL, 'rMbw8yCFxwl2BJB4ZxG8GdY2VRzIGBFa0OU0MrJz1wIOR1kVhAL9FxYZ7pKh', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12507645_938822626209252_6708997833305100328_n.jpg?oh=fcf9de25158cb5a5af4a4dcd7c3ce217&oe=5879AA29', NULL, NULL, NULL, NULL, '1100770973347749', 'fcf9de25158cb5a5af4a4dcd7c3ce217', NULL, NULL, NULL, '2016-09-12 15:02:01', '2016-09-12 15:02:01', NULL),
(708, 'Zaw Ye Hlaing', 'missthirimyothant@gmail.com', NULL, '3J7kPDYvzy9ZUF3NuWhilhdEsQyg7O9uFKhxRolLdZ4AUNFjzbdOdeB07bJf', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13521988_838806172919956_2373760231116774911_n.jpg?oh=66d8d778979b7d1cc4ef8f04bbfaaa85&oe=58433628', NULL, NULL, NULL, NULL, '879304352203471', '66d8d778979b7d1cc4ef8f04bbfaaa85', NULL, NULL, NULL, '2016-09-12 15:03:58', '2016-09-12 15:03:58', NULL),
(709, 'phyominthann', 'phyominthann@gmail.com', '$2y$10$IWPHRubd35gwQcjqVr0uZ.G7GqUcuohc7GCVABXLR65EacEjIXyNO', 'voZ6DHq1XxZWbgpGn4OZryoSYk9yTTwUCWK2WDajC8UboljqDNE7IZVRapZo', NULL, 'thumb_4134746818703.jpg', NULL, 18, '1989-09-21', '1', NULL, NULL, NULL, NULL, 'ir5vYvYnlaiKYCujQtejKnEhlkJOpE82aLNJ640tVp8EYqsQqBc7KZKBhq44', '2016-09-12 15:04:12', '2016-09-12 08:35:22', NULL),
(710, 'San San', 'moonlarpyi@gmail.com', NULL, 'x51LxIcpysYwUCVURUMhg7575Gbw1biEy90OtiNGxLIJGEs44zdwVyaooWAg', NULL, 'https://z-m-scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12472572_568079420032887_3247826810959979218_n.jpg?_nc_ad=z-m&oh=4f47ffbb5028679342144c8a595266f8&oe=5842245F', NULL, NULL, NULL, NULL, '636933379814157', 'z-m&oh=4f47ffbb5028679342144c8a595266f8', NULL, NULL, NULL, '2016-09-12 15:04:56', '2016-09-12 15:04:56', NULL),
(711, 'Myo Aung', 'mrkokomyo.mm@gmail.com', NULL, '6VJtRuYGx65QGlsxvclh4UjnLWLqVJk42WdKeYkf', NULL, 'https://graph.facebook.com/v2.6/1743624659225495/picture?width=400&height=400', NULL, NULL, NULL, '1', '1743624659225495', 'EAAPMa6cPYRkBAORUwEOqbjAhYZB0UYBOax5YcjEVamt9Odd2sliAzCNQ0V4QrvZAIU7ehx68ArBbmF6RSGDYtcdY9UnF28HS1Ss5MPW2ZBLpv3xFVqKZA71ZBZCi0mfC4lSCv7tVYbAm3Vv1fzHAGFdw9OZBM4T72XJs06bZAEcmWgZDZD', NULL, NULL, 'QJ70nRjdLDa8YhiHJC0CO57dEO2kKQ3QtZQkWNQfac4CiMGv9dshsynveMV9', '2016-09-12 15:05:24', '2016-11-23 10:02:15', NULL),
(712, 'Khinsandar Thant', 'khinsandarthant111@gmail.com', NULL, 'ybR1WnmwqvKx2T4OZFH1Ys4xqnjImv3JMlTD8YY676fPmJLruYaJRH4e6fLa', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13873033_727794997367817_763823699456720310_n.jpg?oh=3f5a372604f06eaf2561e83c3ec3c525&oe=58452595', NULL, NULL, NULL, NULL, '749451268535523', '3f5a372604f06eaf2561e83c3ec3c525', NULL, NULL, NULL, '2016-09-12 15:14:39', '2016-09-12 15:14:39', NULL),
(713, 'May San Thu', NULL, '$2y$10$/wQFW5/qW/r4o50UTRornuf/atJdKz2lHJQGMZsQ81lP1C.awqcI.', 'RSkyDzExJGfm8AJ9pIUtWO8L8sUm2OIAROEY5r2mhGMsdI6H3upJKg9D4Bj5', '09421037040', 'default_member.png', NULL, 1, '1987-01-08', '1', NULL, NULL, NULL, NULL, 'DUaGUINFZsUieHfZxgP9WVKTNyn0h6ddFfm8FxjnZxTtrVXzG4RAvPHAVVO1', '2016-09-12 15:16:27', '2016-09-12 08:48:45', NULL),
(714, 'Myat Thuzar', 'mthuzar@gmail.com', NULL, 'Bxmji3UiZo35akQYPvHFztevPOHvH9t7DjGOhGL1DioDmg8kcFIPVPMW1eTT', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/14045802_10208523158171335_911805824824954727_n.jpg?oh=797f6b9e9f48786164cc4cd27a0cf845&oe=58747735', NULL, NULL, NULL, NULL, '10208732868973974', '797f6b9e9f48786164cc4cd27a0cf845', NULL, NULL, NULL, '2016-09-12 15:17:01', '2016-09-12 15:17:01', NULL),
(715, 'MgKyaing', NULL, NULL, 'FM4VUgAAAAAAwTPFAAABVx2wgu0', NULL, 'http://pbs.twimg.com/profile_images/595427076057989120/Ea9rRGPC_400x400.jpg', NULL, NULL, NULL, '1', NULL, NULL, '3042344982', NULL, 'GW91qKNVsSdgUSrDkghdOQrytTFkj1Bo8ogJsFiDsZc6tOd89IhS4LT0zl2b', '2016-09-12 08:54:46', '2016-09-12 09:18:19', NULL),
(716, 'Thwe Thwe', NULL, '$2y$10$P6hyqvhQmn5QsrzMEjjCkeUe0H7nFw9qCuF0uwypFLPKFKuFM52MS', 'f5z3tNZbgniPBtptcdO2as0lPX82dWqIBOn5JrWWP4cNZiYlpYABoFgNsmdh', '09799470301', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'F8pa5Chcj6JNFDt689foPjuCpkqdT7bFEb1xWFmRYjU3qaEl71EPTvkHyzvo', '2016-09-12 15:24:51', '2016-09-12 15:25:33', NULL),
(717, 'ThiriSoeZaw', NULL, '$2y$10$VWNf5i9.HcmIEDaxDmunAeq612l.HgTSWC4Se7E/Lp3M8pr0wM/ye', '7EedQy9tK9MnbgZPo0rlgPsu7Nqyc7VKB5mJbP1RM32JU3KeukXPNGPhAhHa', '09422484203', 'default_member.png', NULL, 28, '1994-03-11', '1', NULL, NULL, NULL, NULL, '3FP2swuSCt8iceGCFCBbl2uoqwmYL4VNuC0Bq1axzLS41WUK6c39dXwB0JC9', '2016-09-12 15:25:22', '2016-09-12 08:58:29', NULL),
(718, 'Yan Naing Oo', NULL, '$2y$10$69nKjAiRbjnPw2zCdIWoJenxdF8qQ55JN5xcPVESbSlhVd0MLbN3y', 'Y6LwCFD5TqiDwIwoTPZjJJiOTLgNQmpv2E1IbkkuAJO5y8Ks7jjm0TtwFf00', '09787114513', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'EKUwW70jHMTsGItU5E16WOXk3tlQeaiIiZZfpWCaHnArTf5ndcf7m3dPKfBP', '2016-09-12 15:27:19', '2016-09-12 15:27:48', NULL),
(719, 'Kyi Phyu Win', 'pinkpanda91@gmail.com', NULL, 'c74WW557iTg5AuqnAyMfHtzRaoiw5u6FbvDdSkP5X7odmESc19HACeq8nWmM', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14202508_1262143343837336_5672624863039239900_n.jpg?oh=1cb57946a84f12b1d4acfb2a445f505c&oe=587985F3', NULL, NULL, NULL, NULL, '1268837133167957', '1cb57946a84f12b1d4acfb2a445f505c', NULL, NULL, NULL, '2016-09-12 15:30:58', '2016-09-12 15:30:58', NULL),
(720, 'lucyvito', 'lucyvito238@gmail.com', '$2y$10$.KUgyb6LT/8GAstmco1qb.rf5bdMCh9nSnLfJ3kMJ7w/CNWquyK6.', 'giWs5YfazVgEwHOAqatB7hR3gr8ZGYlYNDBBEC9z6ZkjxzeeuOzIejBJsKHJ', NULL, 'thumb_79972759486352.jpg', NULL, 14, '1995-08-23', '1', NULL, NULL, NULL, NULL, 'Ir7qNc1DpBjmfGVIc5SyqAHpWeWUNll8gOWB87aM34SVGYbMGHs4Tq0lm593', '2016-09-12 15:39:09', '2016-09-12 11:19:55', NULL),
(721, 'Nang Hom', 'homhomhom93@gmail.com', NULL, 'eiPIiiizBLMdJ9UUpEdP9RP8pvHUvF9DnhaLcJhoG7wacozwp6EwIF6K0Ivc', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p120x120/13442127_818571931608107_6287958690385748930_n.jpg?oh=b7b7db04f4ba6d30c75fcf47710a73a6&oe=58424CD2&__gda__=1484177081_d8417e038f4875d05b4629eabdf4fae2', NULL, NULL, NULL, NULL, '866246630173970', 'b7b7db04f4ba6d30c75fcf47710a73a6', NULL, NULL, NULL, '2016-09-12 15:40:09', '2016-09-12 15:40:09', NULL);
INSERT INTO `User` (`id`, `name`, `email`, `password`, `api_token`, `phone`, `profile_image`, `address`, `township_id`, `dob`, `activate_code`, `facebook_id`, `facebook_token`, `twitter_id`, `twitter_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(722, 'April Aries', 'pectrumgirl@gmail.com', NULL, 'j04Ferws0cuWRQVLZ2xJJLuASkNdqNg4ST3Bi6Pq', NULL, 'https://graph.facebook.com/v2.6/621654107996587/picture?width=400&height=400', NULL, NULL, NULL, '1', '621654107996587', 'EAAPMa6cPYRkBAPd6OSC8G7sgtZB8ANqozmxEsLiw4xlbkHBhq2vi3bFiA0vWUtYYXQy1vv2ZCIEn6ZA2KPkhFUE45AKOp4ZApk7ONlPuNrCye8BW0bvdSlH5YF7Ic0SSJWvBgFchvNwQbJ2DAnlXyqMK84JpSRoZD', NULL, NULL, 'u0ymtUoAnde6y42stUZe9nOf9wFEQuCkpXPEEa5JaIccUMDLtbNMxDd8YTmA', '2016-09-12 09:11:01', '2016-09-12 09:32:09', NULL),
(723, 'Hay man', '86kyawkyaw@gmail.com', '$2y$10$w.9bqwXeSU8WaZ7HKO4IJerh8tEnipnDLmybM6KQlh4RV81Y59oJi', 'Anzw8BclRwKk59T1Qpzhqg8CHBPIIpUiOtuKSXGaW9Jz7h8BiIwBHdkGYl8u', NULL, 'default_member.png', NULL, 9, '1988-12-10', '1', NULL, NULL, NULL, NULL, 'E6MujGbtwzlsbFDtY1Z9aOYjn5x6FP5Z8zf2qgf1k2kNgAhaNIa3IZpKiHiH', '2016-09-12 15:41:32', '2016-09-12 09:12:32', NULL),
(724, 'Kaung Htet Kyaw', 'kghtet.kyaw93@gmail.com', NULL, 'bPEKhO6QcG7xGp8AGorU0wSQ8NeQgKuNEShehW3XnVsWw133hEZQObZgiqCi', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14264972_1069304233123847_6370346115194227703_n.jpg?oh=c06091bd71205989202fb4209dcba9cb&oe=583B46E0', NULL, NULL, NULL, NULL, '1070027916384812', 'c06091bd71205989202fb4209dcba9cb', NULL, NULL, NULL, '2016-09-12 15:44:26', '2016-09-12 15:44:26', NULL),
(725, 'Chan Myae Lwin', 'lwin.chanmyae4@gmail.com', '$2y$10$b2fnqe82d4IgSroHWB8KFeJx5VPcZZZJOtU8LMp9tUAouWtjTKiUW', 'dgV5HQopQQ3gpYKGG4FGoBi9qSxtjLRcwoCPIGf8mAk6kXs6vVhC82TTfHTG', NULL, 'default_member.png', NULL, 33, '1995-12-04', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-12 15:51:34', '2016-09-12 15:51:34', NULL),
(726, 'Chan Myae Lwin', NULL, '$2y$10$4SQ9s5JYSJXriOEaY62RIek2O5Hy.bm.5j5dGfBQ2HMG4hqTI47Jy', 'TMTyhSBrNio0IfSEjChmvoFaqdnlJpIilhdWBE7FJrQYHb8PDAC632atXg4X', '09798392286', 'default_member.png', NULL, 33, '1995-12-04', '1', NULL, NULL, NULL, NULL, NULL, '2016-09-12 15:53:43', '2016-09-12 16:03:50', NULL),
(727, 'Susan', NULL, '$2y$10$cHC.kt4D1IDiz67pP0lcqe6bGOfTQ6XjM.hmrx50dUTp8/zLTY7Me', 'H4efU1BioZJsfY9bjjTYzeEcJCwD4le6YefyM3muOVdB6ww38WFcMn6NlVuV', '09778395042', 'thumb_85436605127183.jpg', NULL, 7, '2016-12-23', '1', NULL, NULL, NULL, NULL, 'iL4PsYVaGlujHV7nQtJTVkCy9tsROs41intpgqE56xK4AMvGMPWFN3Cmnxwi', '2016-09-12 15:57:24', '2016-09-12 15:58:08', NULL),
(728, 'CML', 'chanmyaelwin549@gmail.com', '$2y$10$1cWonbnFIiYd0DsMyC7XcuciMiu.4dZjBfKNAGh/3O4L.u0DAoTG.', 'QZmToL5Oj7VhQKqP8s2NwJXEDSIhXIjyeQxUlpaVBkaWkqcimdFc3oCGPFDP', NULL, 'default_member.png', NULL, 1, '2016-09-13', '1', NULL, NULL, NULL, NULL, 'PBfCTrabzpIR2x7Ps0vfiNbEz5S6mvUEAmDcVvKlmfIu1q08iN76hkxPP7Qd', '2016-09-12 16:07:20', '2016-09-12 09:45:20', NULL),
(729, 'Ye Min Phyo Kyaw', 'yeminphyokyaw@gmail.com', '$2y$10$7gvN29SIpAq.selyOeL6bOKH6saSCBDNJMEk7Jh7XGnTIlqkSyAdK', '0MP6aDDDR7xR503Elos72CTJchUEcrE4ToZgmhGN', NULL, 'https://graph.facebook.com/v2.6/1107118442708975/picture?width=400&height=400', NULL, 4, '1981-02-18', '1', '1107118442708975', 'EAAPMa6cPYRkBAFc1hfbSyfGTv6XZB8gz1AQfa2eNWYZA6EPOJaZB1d6k4l6kgYTuajV0TOgUzcZBawgY5C3IxZAMLcAVeWFrCfepb7pBohzqhZA94t37flO8uzxkvjEMWyKLtfjx3t9aX9M96T4ix2ygTmRIMIAgzZCrIFQbE5UsJqoudZB6CV7x', NULL, NULL, 'x6G2SeQSUdrs6KoROlr61RNUDyCzhXhXztdBxqFfylPiLkuVm2Xzz7xBcOPf', '2016-09-12 16:41:06', '2016-09-12 10:22:51', NULL),
(730, 'Little Nwe', 'winnie.aung@gmail.com', NULL, 'DE0s1TT0KQa8CXuvzlZaKM7hD84ihasrCZAeTAFLgh4hzqEhuiEcnIwdIYud', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p120x120/12729375_1033472186696099_7180667806832044071_n.jpg?oh=8206c497d95f8bbed3b71a0b724ec93a&oe=58415A09&__gda__=1480695583_858663e5b730017e8fb7664c58daf980', NULL, NULL, NULL, NULL, '1174122729297710', '8206c497d95f8bbed3b71a0b724ec93a', NULL, NULL, NULL, '2016-09-12 17:51:57', '2016-09-12 17:51:57', NULL),
(731, 'Kyaw Lu', NULL, '$2y$10$SN1XEtvhq5lD4dOYVLcsdOU9WU6QVwcrMqgX4mL5O0YRg/3z4Py4i', '4wNYHv3hWmo8d9Y9kuumBrYoTVC8cWsV9p67ZKQLsWkdIQeYIPj7weLMg3Wz', '095119301', 'default_member.png', NULL, 17, '1987-09-05', '1', NULL, NULL, NULL, NULL, 'dG9QhvTxrem0HGMQm98CZ9A09mxlKOyrj506A4vwPFSdWYzxC5RuPbMaFfi1', '2016-09-12 19:18:20', '2016-09-12 12:48:42', NULL),
(732, 'ပန္းႏု ခ်ိဳ', 'moesat.ms340@gmail.com', NULL, 'AsyW4rciAaZFmGaE5XnZQewPS1WBqvCi33SKAnvz', NULL, 'https://graph.facebook.com/v2.6/1606739236292654/picture?width=400&height=400', NULL, NULL, NULL, '1', '1606739236292654', 'EAAPMa6cPYRkBAHU0eHJ36uFimuJJXxLd4PaGlk4EH6ZAm2qvdRhrhdZAzhyGI65caAYi3c9wgF550YdJzZCrtuVgxesiV9pruJeHZAZCvf929mDA8QfzDEIEW96NnveFzUIIrd7wGjGVQ66L4Klk91UhsmP9ZA4CvsLfeQRhNZCOQZDZD', NULL, NULL, NULL, '2016-09-12 13:30:00', '2016-09-12 13:31:54', NULL),
(733, 'Ei Khine', NULL, '$2y$10$3AR5v5GIHA25Mvd8UeTsze7fofblBSfzrpAWCWjn8rtzjKkpGb6ja', 'B2rXyyzMVR4s3AcvusYIbtsyDNU912OVsh49477o2fWaHc95wY1uxAg68FG2', '09799850634', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'wVkt8k0RZxO7cuiD4oBpw8wCnp6ki9Rrb1yGmPw1NpGWPSxe5Kop02gy1Cv1', '2016-09-12 20:58:27', '2016-09-12 20:58:59', NULL),
(734, 'yeemon', 'punkgirl.ymo@gmail.com', '$2y$10$N.xmxQtIGAXN6VOiieAhgO/yPwpn.DSHKiTGqxx0zRzWMWwrWg5V.', 'iJTo9ljKK2AiLg78EBwcdw32NV2UkPaoViFy4qEXKdyB9VhIS07EKDwlIUhx', NULL, 'default_member.png', NULL, NULL, NULL, '0455e427230876beb7b8f18d544ce8c8', NULL, NULL, NULL, NULL, NULL, '2016-09-12 21:00:10', '2016-09-12 21:00:10', NULL),
(735, 'Khin Hsu Mon Aung', 'khinhsumonaung99@gmail.com', '$2y$10$wcKo1F3mIxDGfGYYRHy0d.QHWOUeSb5/yeZ7gf8HfgG2UEhWzZct2', 'N4gIFhfhIhf4nNVZBsM88r3brRV4C3GYelwwgjTtbEDHs1wu5PyVGjkYWbLU', NULL, 'default_member.png', NULL, 30, '1989-01-16', '19968adf9dbb90ce95d91edbc52a9cf2', NULL, NULL, NULL, NULL, NULL, '2016-09-12 21:58:17', '2016-09-12 21:58:17', NULL),
(736, 'Hlaing Hlaing Maw', 'sweety.hlaing@gmail.com', NULL, 'eHCzI7trxozdIDbtWwAAtEOxwwhTHLi1kbCMCoGZ39NSuWlcSieNmwvQBfhw', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11223842_10206593884599359_6838235378509736515_n.jpg?oh=0152a283d3ab9ac02e3c1d256a610457&oe=587EA29C', NULL, NULL, NULL, NULL, '10209609013255691', '0152a283d3ab9ac02e3c1d256a610457', NULL, NULL, NULL, '2016-09-12 22:20:00', '2016-09-12 22:20:00', NULL),
(737, 'Hnin Hnin', 'boylay67@gmail.com', NULL, 'zx6rP4D31ERwERa1ClTUqKy9xqb02SyVO8VjaUeuZpqsddSjFyzW41h1VmKU', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/1913993_535082866655148_3405697382696926526_n.jpg?oh=5c8d367fce9a466d313a6f5eb62aa8f5&oe=5879D7AC', NULL, NULL, NULL, NULL, '639246336238800', '5c8d367fce9a466d313a6f5eb62aa8f5', NULL, NULL, NULL, '2016-09-13 19:17:52', '2016-09-13 19:17:52', NULL),
(738, 'Htet Htet', NULL, '$2y$10$c1zscA8/xjLvdFx4TxPd/../8eTSW6nSUT8J1bb7wcPgtXEKm.FNe', 'xAuF2QmP073fKV8haQ70WjHib1uR64V5ztbIP4rJgNUTLED299PsxojUfnWK', '09400531600', 'default_member.png', NULL, 28, '1991-11-08', '82e88b90870b11a2be862c613602b3f7', NULL, NULL, NULL, NULL, NULL, '2016-09-13 19:48:59', '2016-09-13 19:48:59', NULL),
(739, 'Nay lin', NULL, '$2y$10$4le8E7PSazyRVQcGp5yUIeW6ED4JDAIS9ClH.ZyZAHVl0zs69vweG', 't2UkrwSDLTefr2wRaMLd29ERyr4jdoBasqTynekSOQS5am8L0N0FWnTtrlNB', '09780500566', 'default_member.png', NULL, 7, '1987-06-27', '1', NULL, NULL, NULL, NULL, 'cW1WyLjsncIpBeKlJdnawWS2WNAcDnPdU103LVftLqRYJPd1f9O7ItOFQBOZ', '2016-09-13 22:55:40', '2016-09-13 22:56:08', NULL),
(740, 'Shite Chan', 'mnlight57@gmail.com', NULL, 'OtuWLTGA0wYuH5BHw6pfXNkpFXhrgK6SCDm04hSF', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/15078945_1018122661647963_6198716119463043341_n.jpg?oh=47e5eb4b8a9a3f99f2c19dba236d7d54&oe=58F686EB', 'parami hlaing', 28, '2016-10-05', '1', '931787676948129', '47e5eb4b8a9a3f99f2c19dba236d7d54', NULL, NULL, NULL, '2016-09-14 13:37:44', '2016-12-09 13:56:19', NULL),
(741, 'Than Naing', 'yonekalay81@gmail.com', NULL, 'kh4sNfyH7pCvb5pDgRRSLJbVAr94ZXXc2Pq2gWgnrjYmd8AFv2TyBTHBEDx7', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14141666_1093035380777959_1877687444114739320_n.jpg?oh=69796e9e834683c29934db5164406395&oe=583BFE3A', NULL, NULL, NULL, NULL, '1108082559273241', '69796e9e834683c29934db5164406395', NULL, NULL, NULL, '2016-09-15 14:07:29', '2016-09-15 14:07:29', NULL),
(742, 'linn linn', NULL, '$2y$10$GsC3dRKJcoc6RlO/OkGpG.ifY/RKbb8NXlQiMjc.sNt9gP1fwwvLm', 'h52NMKydDsxSFP7ym4WpcJf7lwDY0fkcg8MU2TjGjX39s3kY0WzqgWrmN43g', '09423702371', 'default_member.png', NULL, NULL, NULL, '0f92c5bbe3bb677a2bb305a33b091b16', NULL, NULL, NULL, NULL, NULL, '2016-09-15 15:59:48', '2016-09-15 16:02:43', NULL),
(743, 'Nay Linn', 'naylinnphyo00@gmail.com', NULL, 'CHiQNklAiatgGxxJUXILXjHf2Xdgr6c87D51uydE3zSQPLiWLQyic5e0lK28', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/p120x120/13232994_264286310589468_2632766832833424087_n.jpg?oh=47b12ba1100a888e7b2bc33cbfd60b77&oe=5864DE7C&__gda__=1482973120_a6ddde6fa2267bf47e271dfb943da302', NULL, NULL, NULL, NULL, '322934558057976', '47b12ba1100a888e7b2bc33cbfd60b77', NULL, NULL, NULL, '2016-09-15 16:04:31', '2016-09-23 13:59:17', NULL),
(744, 'Kitty Kit', NULL, '$2y$10$l2GdrOMqe0aqASnKhPmvxOlxdYXnYhWVzaOSYStZtxbPlGKtqwecC', '1c9uhSgjN7180QqIC257cq6cqf0RTSt2ZusvDbuovvXZ8KHS1qpCvyPZLTa6', '09261978992', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'XPHnKiophZuwWJzmwMd1MmMocfqJS5VdxS15e6tCIuolSjqsqFt8WTYgNERZ', '2016-09-15 16:16:55', '2016-09-15 16:17:18', NULL),
(745, 'Yan Naing Win', NULL, NULL, 'fJRq27OsNXgcGusKxirtvhFT1e28St0UcxvgssIHw4i7ey1FwakHJbIeRWk4', NULL, 'http://abs.twimg.com/sticky/default_profile_images/default_profile_6_normal.png', NULL, NULL, NULL, NULL, NULL, NULL, '774107860573626368', '774107860573626368-Bt5g6B4o8hvG81Xxw7TJOWtJBK3wNh5', NULL, '2016-09-16 01:22:42', '2016-09-16 01:22:42', NULL),
(746, 'Ko Zaw', 'zmtun77@gmail.com', NULL, 'mqifjmsFYhJNrz9TmJEXUmlAaKzGpfQ7I8ZsR5rIdF1fiHIc1dKgWcBybGOa', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c0.0.120.120/p120x120/1012927_10201954250246999_8266083675041176221_n.jpg?oh=1a5d176e734b656ef65abe25ba8723bd&oe=58739134&__gda__=1480248100_fd3c6f18ee07ba83d719ea044bc6d342', NULL, NULL, NULL, NULL, '10207570947220913', '1a5d176e734b656ef65abe25ba8723bd', NULL, NULL, NULL, '2016-09-16 16:27:03', '2016-09-16 16:27:03', NULL),
(747, 'Kyaw Myo Hlaing', NULL, NULL, 'w7fApm1pqtbkFtbdRPsC3KRNHD1grd3PTrFqSonbdsxq0sQClhfA2QoW0Ubc', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/12647523_1293908540635993_9194238708291012566_n.jpg?oh=38061ebf05681170e7f643172ae8510b&oe=5837BA78', NULL, NULL, NULL, NULL, '1477856655574513', '38061ebf05681170e7f643172ae8510b', NULL, NULL, NULL, '2016-09-16 18:30:50', '2016-09-16 18:30:50', NULL),
(748, 'Kyaw Htet Aung', NULL, NULL, 'uUMRlShklHNa3t8ml2miF5uB979ROhyM4pqcxweRBM19EMdjaVLF3WMY7R3r', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/11165182_1606422146292331_5213309743619646168_n.jpg?oh=d14b67d247a396ca9ecf9cd71274da6e&oe=5842F0BB', NULL, NULL, NULL, NULL, '1799134190354458', 'd14b67d247a396ca9ecf9cd71274da6e', NULL, NULL, NULL, '2016-09-16 20:41:42', '2016-09-16 20:41:42', NULL),
(749, 'Lovely Thandar', 'myatthandar01@gmail.com', NULL, 'Ks6z7hnm5b3sEFUMf1grsMudv8BU4UB8MbAxb2zRc0ZDot2IOkxZiBJM1xdH', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13718589_1056969361054916_7044043315080931209_n.jpg?oh=f3d756c8603ac102e5e3edf9c55749ba&oe=587C41F9', NULL, NULL, NULL, NULL, '1101224093296109', 'f3d756c8603ac102e5e3edf9c55749ba', NULL, NULL, NULL, '2016-09-16 23:31:22', '2016-09-16 23:31:22', NULL),
(750, 'Aaronlybn', NULL, '$2y$10$3.DqpP1BOigwXcqfpys9XuCSkFG0vXvsN9hrnrGdkbV7mY.ipVysC', 'PTgi4cj7OuQXs3IMtp9tlg1cdrkHfIuZxFkbOYEDlbnlSnILX6gyM78wt5KJ', '09264554734', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'bGEyBv1ihoKI55nGLdukqvpgBqRdoPA8pMD9svYiY2hNzklIMMeVZbUH8Zl3', '2016-09-17 10:31:09', '2016-09-17 10:31:31', NULL),
(751, 'Myat Htoo Htet', NULL, NULL, 'tt1KKPKcSy0dYFBY3b5YawOmIfs53N8yjKjdPwGdszE2j3CCZJ3V2HMlKAas', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/12524364_192068284508526_376801412731913794_n.jpg?oh=f920a3cd4464a1e0e682fe52427ed424&oe=58787732', NULL, NULL, NULL, NULL, '295133387535348', 'f920a3cd4464a1e0e682fe52427ed424', NULL, NULL, NULL, '2016-09-17 11:21:22', '2016-09-17 11:21:22', NULL),
(752, 'Yone Lay', 'yonelay93w@gmail.com', NULL, 'BzH9N2YOeo1zFboy1yN0wev3NaMN75kHve0P59uw', NULL, 'https://graph.facebook.com/v2.6/1793717144239452/picture?width=400&height=400', NULL, NULL, NULL, '1', '1793717144239452', 'EAAPMa6cPYRkBAANDBF5koB3ulZBkitFJ5RNLgA3wpwRQ7gmAvaQBXmJRuYQGqWBsaanUSfCX2InKcd0M6xz61wfAeWOQcc5mjrQQ4VD456VeeY3Qo96ZA6L7704kaido1ZBjI7kqcb7u9zw0UREGSiIHrMljStVQXO9dqdDFQZDZD', NULL, NULL, NULL, '2016-09-17 08:40:23', '2016-09-17 08:40:23', NULL),
(753, 'THShein', 'nyihtwe1969@gmail.com', '$2y$10$L7AydbZeIVuOm6Nc9W7Gbe4ziysmFuT4gFFWmnoKl8/Gep54kUE2i', 'BqKKcoBMmc3xzwaOZRBOOTxJQi8bSAtFFTdNZh9oaact0NXFQuHxw9DOQqhQ', NULL, 'default_member.png', NULL, 22, '1969-05-16', '1', NULL, NULL, NULL, NULL, 'c07IBjDlxNuQqCj8lR3YUj6x0BccQu6pEQHRtZhTt4Np7ZxLTUOdAYN365H1', '2016-09-17 18:24:15', '2016-09-17 11:56:01', NULL),
(754, 'Suu Thit', NULL, '$2y$10$vPxS0Y66yPuV4rfF6CjCf.T9BfpOOkX1nA3l8naskUoHG8bUDlJcG', 'IiNzoGfnFhn5uReQtcKBiOtYkSSKCHDXbu4cdZr8gTkLclKbuQcP8UCZyycx', '09420084720', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'ZpJ7V2RaYYtdcNFxDQBHX5aYB4DsxGvqHBFbspxJrXzBT2tYGu0Vx5OT08Cu', '2016-09-18 00:52:06', '2016-09-18 00:52:25', NULL),
(755, 'wut yee', NULL, '$2y$10$BFxq8iijTI8jNnJMWP6L/OWHQt4qNHTQHTza1JXzgUyyyY1mWTzPW', 'pNWuyZ5SepAQUL71b3rpK43EwBmNvu3FATsL0xeyVgkqqKRtzmoIrfkOb4Jz', '09421045770', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '9KPRT4912MRelGxQe7UdTIxK5O7hr6XMhahb7RusWkE1m0K5aM4ixUvWcPqf', '2016-09-18 18:34:50', '2016-09-18 18:35:26', NULL),
(756, 'oak soe', NULL, '$2y$10$SrYugUg1m9JzWzYtU2UoE.J8XhNFVX/FIan/2vKTVQy7Xkvy3vF4q', 'YpTamoLxVuUc2jwb6T8Np5pcjDBHuAKbGd88qsYl0PX5GSNGHuPncN4nJy5Y', '09423682199', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'XDqVLPGaPkPLe8GxSPloe6IrKnlFdx4wWaCiE0OfvpmB34AN9551UTPd2qdC', '2016-09-18 19:22:33', '2016-09-18 19:23:38', NULL),
(757, 'Oppa Satsu', NULL, NULL, '8vSxFRHQEi6IFe5TebVsIW5L4Kp3tW6U1gSvMFfrpQjLsVP1nxPXQIbfkFDd', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14344797_166219367153106_3745142919089506072_n.jpg?oh=35a8c5c6dbefaac944219cb56c5eb8f6&oe=588651F7', NULL, NULL, NULL, NULL, '170390083402701', '35a8c5c6dbefaac944219cb56c5eb8f6', NULL, NULL, NULL, '2016-09-19 13:48:44', '2016-09-19 13:48:44', NULL),
(758, 'Nay Zin Phyoe', 'giggag32@gmail.com', '$2y$10$YQF8xN1uVoJ8yP7If/LseOA4o1zRyMId4CrlAuRbOg87zQFWr7xj6', 'y0GN3AMB05P8iCHEuq262PYY2j0oykkD48vtHvjj4nQgYKf5PiQ0MoK2wtAK', NULL, 'default_member.png', NULL, 29, '2016-09-22', '1', NULL, NULL, NULL, NULL, '55XY9iaH1pA7TaEqLkfevv44gdO0GN0NsJDslNgxYu8uW6LPtwrQ3W1sNh1Z', '2016-09-20 12:21:34', '2016-09-20 08:14:52', NULL),
(759, 'Nay Zin Phyoe', 'thihathit60@gmail.com', NULL, 'b5PMxZwRv7UV7H6obIxkGv6QjSIrLWfHDSSIsdOn', NULL, 'https://graph.facebook.com/v2.6/1787777528142656/picture?width=400&height=400', NULL, NULL, NULL, '1', '1787777528142656', 'EAAPMa6cPYRkBACfvktLVpP2GePQg1ZCVSsE3VWbHjRR2p2lCcoZCKFRfXFIMLprKSEKo4uZCSB6OQJkx1xT6qf7HSPZCTaGp4aOe0Ps2DfqB9Pip90NabwZAjMKqWhCZBPhp3o2i1xUwHWONmRPrf6sqrhynCZCO7UZD', NULL, NULL, NULL, '2016-09-20 05:52:17', '2016-09-20 05:52:17', NULL),
(760, 'Thin', NULL, '$2y$10$P0VDzzueH5m623ILz5qyguY7meXJNs3ocyaIe409jIWtIf/7Pv40K', 'IWqLEFrQ7dYcZ5txUeA91Th1n4NlVgjPdD49kffbpl3c2ywC5mtPWiipPlcI', '09795337380', 'default_member.png', NULL, 2, '2016-09-20', '1', NULL, NULL, NULL, NULL, 'YIex06IZFpuam2PLQA5c2A9hTZNWXQVQx3S1dBDBYeDqQXqhv3sYUYy7BJEt', '2016-09-20 13:22:39', '2016-09-20 13:23:03', NULL),
(761, 'Pyae Phyo Aung', 'kophyo1992@icloud.com', '$2y$10$dD8JR/BhUV3gqZ8qm.w.Q.zKVl5UfRK4PIU7cjVSKJgJFMHeZhAUe', '6mYaNCXmeKHdr1QTPQN4vq3u4t7KzMSaqh5Foe02gOq9eD39u1HrorRboi9x', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'Q8RGJYABq2RXitWDJDfSYnQbEfMljBdIIMn2A6nKLcOQGZ0YbPA5xkDpmjmo', '2016-09-20 14:24:15', '2016-09-20 07:54:42', NULL),
(762, 'Aung Ko Htet', 'zarniwai.bago@gmail.com', NULL, 'RfBwJqMUWnNRqhjlyq0uixBPwP1FcbqfwROsdwoX', NULL, 'https://graph.facebook.com/v2.6/1612856742346912/picture?width=400&height=400', NULL, NULL, NULL, '1', '1612856742346912', 'EAAPMa6cPYRkBAJeDOfQywZCVt9E943FKXppBRmdvxugqF6zb518lMvDZBoWR9C0Ad73L3ZAZBJKsoyPOjYfc38Dh6WpW8LB2gNlj6PdItjBpzUqEUWAjqFSL82TdUhkMSdPY9Od19r0NLDfnXXR2zHjWkF7EPogLaZCNiHZCvZBVwZDZD', NULL, NULL, NULL, '2016-09-21 11:54:49', '2016-09-21 11:54:49', NULL),
(763, 'Daniel Aye', 'danielbear.txt@gmail.com', NULL, 'NhkWdxCVOL9QpJolTg37bmglb4VE5HDxNw9qvjdZ', NULL, 'https://graph.facebook.com/v2.6/188851911546928/picture?width=400&height=400', NULL, NULL, NULL, '1', '188851911546928', 'EAAPMa6cPYRkBAMuUFOdP6bTwtfb67e5XiawsWkAIoClV7lZCB1grENxGqSHaMErd1iZCGmybWPIelSRQvt6BP7rpa4YZC2hKAgRKGmWfqLRrqsE6rBrzVlQznmt7o2ZAtxZCnC7thVxiEaKfB1czebFTnvnouS0sTyjNoWWOmmAZDZD', NULL, NULL, NULL, '2016-09-21 13:14:14', '2016-09-21 13:14:14', NULL),
(764, 'Ei Mon', 'ems.eimon@gmail.com', NULL, 'dShghZeChukRTQ5Rsg1Fv0MbJszuDsrKCJTB8ecH', NULL, 'https://graph.facebook.com/v2.6/10210711544411656/picture?width=400&height=400', NULL, NULL, NULL, '1', '10210711544411656', 'EAAPMa6cPYRkBAEJY6aZBZC5jg6JMFe2XNdyDjiEpxEoN8I3M6dS0KgZA7kp6MDl8gZAXMsBWnSKNTeWRi3I91ZA40L0KOoqAGSrgYeGqFRGv8dZC9Bd4bcuZBZCHOcaPKpaveiufVfJ7mUBdNZAYHS6B0wI4hKijasKwZD', NULL, NULL, 'CDTdrUbEOwzhJ1jG71GP07NZSZMC7F97EnawoqhONY6zNyDW8SNI25j1nk9p', '2016-09-21 13:16:41', '2016-09-22 04:46:06', NULL),
(765, 'THET HTAR MAY', 'htarmay.aug07@gmail.com', '$2y$10$IeVpqPR3sYhNhvumhI0VNeE/TGoPaLS/nAsoRwQ4TUpMAHMJq3mDi', 'XYealvzzyEr4fi5reWDMBT3UIzfL3SGn7ZAsj1lVeYBTG2ZuWvN4iopzKM0p', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'yXL24iocyTYLB9G4z6jXwS9IkgbHUL0GWWn3wbWSfaEPgVkHzlzKAR6nuJOe', '2016-09-22 16:50:36', '2016-09-29 02:35:51', NULL),
(766, 'Mya Ei Win', 'myaeiwin27@gmail.com', NULL, '4D5CoZVcRDoJaKtEBQ21CKix48rv2cmszq4YIRw8', NULL, 'https://graph.facebook.com/v2.6/534614143391106/picture?width=400&height=400', NULL, NULL, NULL, '1', '534614143391106', 'EAAPMa6cPYRkBAEucDAZCbs3r1jw0RISMgi4QsALugIAvvSY9JKEIZBgc9RTNXNQpZAUEhds7DurEKf731Uxwg2j7ulxm9YlSMOTSzVYFS06fvPlQ0ByYjfc56xbAZCzoSfeRGYxj8roKHuGWGL1otJDdOZApjaMsDorzhrXWdkQZDZD', NULL, NULL, NULL, '2016-09-22 10:38:24', '2016-09-22 10:38:24', NULL),
(767, 'Wunna Aung', 'western.gs@gmail.com', NULL, 'PD8iYFeJSlI1ZLe8ch8tLVMuyHbUOYS2qEINkxFhfGId9TNtlAlKC08wze5E', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p120x120/13413778_10201856856258434_3805330505299616330_n.jpg?oh=238b4318a3d5c75c6ef8b45de3962eb9&oe=58746C18&__gda__=1483285641_1301ed0a8ef08a316bfe3642983b87c6', NULL, NULL, NULL, NULL, '10202252594511643', '238b4318a3d5c75c6ef8b45de3962eb9', NULL, NULL, NULL, '2016-09-22 18:55:09', '2016-09-22 18:55:09', NULL),
(768, 'see set naing', 'sweet.naing2016@gmail.com', '$2y$10$YxVHwGrvR3nBdcVhVFOQqelui5E36dnSJtTmYAgKOn6sX.63o.6SK', 'DXrI7DgCmvM4edxffL2Y1Dl8cGIYuLq616WsaXcOmVQ2pyb2n18Q7yrTGjyB', NULL, 'default_member.png', NULL, 9, '1993-04-27', '996b66c011197b6d1e8ebc3cf56398e9', NULL, NULL, NULL, NULL, NULL, '2016-09-23 02:07:47', '2016-09-23 02:07:47', NULL),
(769, 'Charlie Km', 'charliekm1988@gmail.com', NULL, 'kDREjkgBzFhUIN2soXhPHMiGZHHKsQwPJXqaOez0', NULL, 'https://graph.facebook.com/v2.6/10210797812364830/picture?width=400&height=400', NULL, NULL, NULL, '1', '10210797812364830', 'EAAPMa6cPYRkBACMlNpeiW2mOzskiZBDjGXq9GkZBGZCvwbQZAVXU9VP6FdvE8Rnj7WosF41io6szIzwdxOGzQl4PkyuGmZAuMKwLIZCYLOZA8LZCStS8VLneZBeZA7Rej06tUhz12g6w3kKeiy2Dyh3XI2xoanRCJMp38ZD', NULL, NULL, NULL, '2016-09-23 12:31:37', '2016-09-23 12:31:37', NULL),
(770, 'Nyi Zaw Moe', 'nyizaw.moe@hotmail.com', NULL, '5bkQVpDDKhmup9QgKMFbUy4Vc05RrJ0bQ6UcvBoy', NULL, 'https://graph.facebook.com/v2.6/1184644501599502/picture?width=400&height=400', NULL, NULL, NULL, '1', '1184644501599502', 'EAAPMa6cPYRkBACxFFjKfgGhBtgBsE51PlVUi340YmcpRg8Oz3CHITcZBT7ZBl1XdCtcZC2JnRPRrBdFoZCrkpjCeJZAm7MdAAijZCeTkfbji3L7SZBoNXeMUBa9yPngDG6qZCmrGdWyWgxLEXjpN9KwNyrqK6tZB1gAcZD', NULL, NULL, NULL, '2016-09-24 11:02:14', '2016-09-24 11:02:14', NULL),
(771, 'Lin Kha', 'mychan200@gmail.com', NULL, 'OeO69nuvVQbYIA4KtxCSLkOdDFZKfZOoQJMyr4vjf3p7YuYCL5AYl3b4KBHQ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.120.120/p120x120/13450851_643753939108526_2127191621623881312_n.jpg?oh=a0374fa6f885321b4b64320a76508267&oe=58837439', NULL, NULL, NULL, NULL, '692965147520738', 'a0374fa6f885321b4b64320a76508267', NULL, NULL, NULL, '2016-09-24 22:12:53', '2016-09-24 22:12:53', NULL),
(772, 'Frankie', 'Htun.lyn.zaw4@gmail.com', '$2y$10$kp7dkpJOZFYO2kmRpP50zeod0rZwO44DMaWZlVdcAT3sD1NNWPnz.', 'TcNiucQT3xSB8x9U1Spqx2A9Xqc8Sp9qUokhu9NNl8cDOi5Vp4D4t6Yr6mtt', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '6Z5mWqvROTm9TQEhj5yBavVObemXjOpTX4lcH7qK9gnOgHz0Fm4wzPJTzpxf', '2016-09-25 00:52:28', '2016-09-24 18:22:48', NULL),
(773, 'Aung Myat Thu', NULL, '$2y$10$mnCTLV8VUYeBbUKUrZd5ou6hxpoL/ZTpz1u/kJaXQ1jTHxtVds/2a', 'WMV8LTz5VzTsBEfnH53pYyl6a0R5U4aCZIfCE4HVLSLjn2ImfTRYOY1p0qLc', '09780459585', 'default_member.png', NULL, NULL, NULL, 'f91fb7ab01c331505aaccd332f9ec936', NULL, NULL, NULL, NULL, NULL, '2016-09-25 07:08:23', '2016-09-25 07:08:23', NULL),
(774, 'Aung Myat Thu', 'aungmyatthu07@gmail.com', NULL, 'SXzUphvJvqKkhWSjZihHe3MNzO63TgAXowI7TPPwYfNsnqr9YY0ma4YttE5V', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14264815_10209640312712234_9077335901781670695_n.jpg?oh=962e67821842b98596d3433b6910a5f8&oe=58642307', NULL, NULL, NULL, NULL, '10209805319317296', '962e67821842b98596d3433b6910a5f8', NULL, NULL, NULL, '2016-09-25 07:17:19', '2016-09-25 07:17:19', NULL),
(775, 'Zaw Win Htun', 'zawzaw84@gmail.com', NULL, 'U5Yr0XXE6QDiK8juxPKQhMxHoojOFvz4KadBG3yi', NULL, 'https://graph.facebook.com/v2.6/1286637324694224/picture?width=400&height=400', NULL, NULL, NULL, '1', '1286637324694224', 'EAAPMa6cPYRkBAPfcqwbsDebVyblhDZBn8XD62iS03t9JjkCRWrM3E3DPajI6w0I1rOYhB32QRzegNh52RfhO9zKdyb0LhfrI30OSMEZCeMWFfXqBSLD1WWI4jfiq9QGxKVZBuyZAOBiSfqgk0ISeU2owiSdxtLQuDCHEzm9BsQZDZD', NULL, NULL, NULL, '2016-09-25 00:55:20', '2016-10-28 09:18:49', NULL),
(776, 'Sanmyat ZinWai', 'sanmyatzinwai@gmail.com', NULL, '2uAZiVvjOeh34dP2WYoUd2EPS5VbicFwkI1puKBr', NULL, 'https://graph.facebook.com/v2.6/1324886814188582/picture?width=400&height=400', NULL, NULL, NULL, '1', '1324886814188582', 'EAAPMa6cPYRkBABoOIsW7NZB6zyk3Me1K5ZA9lw3PVjHjG7hhRxPZBtBEqWQ39an7ZAVIwOez41ezZC1UEh3xph0dErt1iqsfrukaVv2SysMsdtrOzzkIr3DlZAg6kdrWEUpeiL3Ckbdnn5z0KeIJjyvouMBBOxft5lt1JZAgGgHDgZDZD', NULL, NULL, NULL, '2016-09-25 04:08:38', '2016-09-25 04:08:38', NULL),
(777, 'Min Thant Zin', 'developer.minthantzintun@gmail.com', NULL, 'bZ3D1iB6Nj3BoSdmPSrNUjVRnPtqZGxqoFs62QrBMBFkwZYoVtKj3vKFllDL', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14079960_325164367817857_4820224619774067781_n.jpg?oh=a188bac5292014d7126fb22d43e6cea2&oe=5882C2FC', NULL, NULL, NULL, NULL, '322450404755920', 'a188bac5292014d7126fb22d43e6cea2', NULL, NULL, NULL, '2016-09-25 21:44:31', '2016-09-25 21:44:31', NULL),
(778, 'Aung Kyaw Nyunt', 'aungkyawnyunt2004@gmail.com', NULL, 'wXXeu0NlfQQKpLJu317D55Uxc4c3HeYp4r33fkhf', NULL, 'https://graph.facebook.com/v2.6/272698916436189/picture?width=400&height=400', NULL, NULL, NULL, '1', '272698916436189', 'EAAPMa6cPYRkBAFRdwzOGMBZA4UbzAymE5aycMVdnf3RlqlImnFOx2toZAXhZCATPU8QD17rxZBbZABVC1PVhveTTDMTYlppA3zJqFyFCI4er7NxCsMS2wqemPx5yDYtz5nGFJfOVvujC9IeZAGS6c1wVASDWmK0ceB4RKprJsD8gZDZD', NULL, NULL, NULL, '2016-09-26 04:09:14', '2016-10-13 08:35:19', NULL),
(779, 'takahashi', 'takahashi+00@rooking.co.jp', '$2y$10$rJbpCT7lM2nCrX1/3ZrBluA.29fsKm9VlqZCYV.sdIlM8tonGAiYO', 'ZzeSkizWwuxXhWdmV3O5OqWMkCqYAEvn5PUA4J2u7VRmC5VVRFFgxxc8Nnh9', NULL, 'default_member.png', NULL, NULL, NULL, '0d6975c78162946a1fe3b06bc781ce71', NULL, NULL, NULL, NULL, NULL, '2016-09-26 13:09:03', '2016-09-26 13:09:03', NULL),
(780, 'Min Min', NULL, NULL, '0FVNslsnDkJQbj0YTd8kD3ed2djIr4gdezdJ87wiaHYgn2HDVhMrS1UNJFLU', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14344079_184058865352580_1034287097432958506_n.jpg?oh=90f3e74fd83edacc17dd7881b81b28d5&oe=586436F1', NULL, NULL, NULL, NULL, '171579003267233', '90f3e74fd83edacc17dd7881b81b28d5', NULL, NULL, NULL, '2016-09-26 17:55:02', '2016-09-26 17:55:02', NULL),
(781, 'Hein Thu', NULL, '$2y$10$38.zDAYcVbtJSSuxJDHcXOBszQsyyJ0KgL87f6CHA8JsOS7t7OEJa', 'GHdA7S4OiwDLocj7i9WuYE07QyT6udah6HCZ31C7eLuzYRaHWyo9aPQTt5It', '09790293010', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'wzFwC3SRpUvfpaX3oM6eSNxfvSAYQnWKUsj6yY0eYxATCLO6EXEsCt0suBYC', '2016-09-26 21:57:31', '2016-09-26 21:57:52', NULL),
(782, 'Anna', 'ayenmay1995@gmail.com', '$2y$10$7E/NsLOv3dgy2uK.lR5gCeysbzkZ.DJshdwFyxG9NYVqJH8W3WKR6', '3MIneksiyKHxbXPYKSSYCmsxT17d6ti7XIau0c5FktrJBoUbXSo5nOlglxbA', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'jfM0kun3JtuPdhDhUN7POvTLFTqY7B0FxCk0dU0Ejg0ZVJYM1IhMx5ynj8Zl', '2016-09-26 23:58:59', '2016-09-26 17:31:16', NULL),
(783, 'Kaung Wai Thar', 'venoshadow@gmail.com', NULL, 'enTBwghxjcqsLy15hWPMeIsyniLEARNkiU7XaCA7', NULL, 'https://graph.facebook.com/v2.6/10206846592233242/picture?width=400&height=400', NULL, NULL, NULL, '1', '10206846592233242', 'EAAPMa6cPYRkBAOVMPtZAFRqVW59pa9KLJi9y1gztvLGwonntJ0mTS65fHKDZCR6JoPdZAZCjmKtX1YdBH5vEKGQe0MijZB5EZARbGVxbribwvn7bLo390yJJVrUSlt5caijjliaueYVug3zP3mHL4FKqjIq2PTX3kWAwjTqbc3pQQMcfZBIks7j', NULL, NULL, NULL, '2016-09-27 02:42:28', '2016-09-27 02:42:28', NULL),
(784, 'U Yan Aung', 'babyboy.ngelay@gmail.com', NULL, 'lh2ZMg7zp4EnvZMsDL9jDqSo7gh3EgnSTbagbuJH', NULL, 'https://graph.facebook.com/v2.6/630137523821513/picture?width=400&height=400', NULL, NULL, NULL, '1', '630137523821513', 'EAAPMa6cPYRkBAJRF1A8jto8pRuRuYeav01jPO41wv3Qlbbs0Antg3yTcVSXEvctOMxEMWvNYjEd6ZC5pRNkm8PVnGZBt7dUB0itqfWN3KwpNPxTQ20YONZCrZA8MaCHiVYloWJM1kykoP6cTjU0ltYntSEss9TqWqFG3IWB1mQZDZD', NULL, NULL, NULL, '2016-09-27 03:03:39', '2016-09-27 03:03:39', NULL),
(785, 'Soe Zin', 'smith.ele7en@gmail.com', NULL, 'yodUgMtbkDRx2vohTEftseZjSQbdhOk5uU1E5xLG', NULL, 'https://graph.facebook.com/v2.6/1242482225782749/picture?width=400&height=400', NULL, NULL, NULL, '1', '1242482225782749', 'EAAPMa6cPYRkBAGjIF6ZAyLIZAu2jWUBRbKJ8qk5jAocQ8nrExz5BTehZB6WfECjbHRjWgjMofe7Yhh9uc8fW6jpA39UK2cqbGFxXQPDq2Ry00RGiCvyAZAPhGQxqC9v51eRi6QmcKIT7EKzIPAgGdEyIU0mGeUvfpOTccfWnhwZDZD', NULL, NULL, NULL, '2016-09-27 08:41:48', '2016-09-27 08:41:48', NULL),
(786, 'iffu', 'iffran1441@gmail.com', '$2y$10$okTpv3IOc97KeFURp9L5G.rm2BHJMCnyKK/NUy4pAXT4nXs6wYCki', 'zAbMybeC8kpJSOsVGfYkd1F35UHFVdyGcBzpolG2xcTez7SjWpu3joIz17dO', NULL, 'default_member.png', NULL, NULL, NULL, 'c049a6e25bc613c96d6013c07f757f85', NULL, NULL, NULL, NULL, NULL, '2016-09-27 18:38:19', '2016-09-27 18:38:19', NULL),
(787, 'Iffran Batin', 'syediffran@gmail.com', NULL, '7RlJ87ZwzUamggkZCL61SIHBJ9IFa2kqHXQQMxv7cFPkGgJpuhyaCPCoS4pW', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xft1/v/t1.0-1/p160x160/13707636_10206934028365497_7135734008264679865_n.jpg?oh=3ea6920eeca4432ff8a85b03a9a602aa&oe=586DBA2B&__gda__=1486991622_8180ab21aca808fa65b593a18857dffa', NULL, NULL, NULL, '1', '10207433758378435', '3ea6920eeca4432ff8a85b03a9a602aa', NULL, NULL, NULL, '2016-09-27 18:39:16', '2016-10-12 23:30:11', NULL),
(788, 'Rajat Shukla', 'sanwinmaung2@gmail.com', NULL, 'pyy9Yv5EykasfvAVBpgoS6wNybDdbEfaao66txlA', NULL, 'https://graph.facebook.com/v2.6/1210331349038955/picture?width=400&height=400', NULL, NULL, NULL, '1', '1210331349038955', 'EAAPMa6cPYRkBAHxwrv2nHjZAEtOsKo2ho2UQnofombKiZCMANE8zZBAP0KBcxsf0ZB7vdm8UfxqwZAuxY5GGsfA5ZBzwJW0rlu8ZCONWrgvnZAgaVxWstOSuyH2XPcYl1sSqfEG76ZB0vD58Tm3RIG4c10LR6rW3cyvkZD', NULL, NULL, NULL, '2016-09-27 12:34:43', '2016-09-27 12:34:43', NULL),
(789, 'Min Thar Lay', 'mrcupid.1984@gmail.com', NULL, 'YKB6S89J6gxWSr6cL80PA2ZScrWJQmKmfGoqa0l4', NULL, 'https://graph.facebook.com/v2.6/787232348085993/picture?width=400&height=400', NULL, NULL, NULL, '1', '787232348085993', 'EAAPMa6cPYRkBAOVfKaRgf0ZCZAYJ0Lf2isWCi2cy95kU29UGfKZC8VwaW5RphgMBTxzQddTAA46yDKu8ZBod0sykhNgXUZB9wiAUHEW7aievZCQXkWRd6hba7R9zs9ZCsvxrWgJC84LI2HFONFmAhk9oxMej2mZCZC8ManDZCYU3ZA78AZDZD', NULL, NULL, NULL, '2016-09-27 21:42:35', '2016-09-27 21:42:35', NULL),
(790, 'Natalie', 'nataliemyoasis@gmail.com', '$2y$10$90ZcJOKX4viFqa5orgsyfOUJlcpewDVgeFzx2POXmiwhwh0gtD/fi', 'p8w1OZk9dykLF6kuvOPGk52sHfttDm9kWdjdeWeqY5IoOSW0aYm1rrydMFUE', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'bgmnbjBUbMV0hrciHC1HTrN0U1MLnZOm2hGLJEYA9EDeTLfT6Z3jGqdk2L3X', '2016-09-28 10:36:39', '2016-09-28 04:08:04', NULL),
(794, 'Ko Theik Tun', NULL, '$2y$10$4cvcXCFbNY9fvXzugP75gO1hZ3zvRRcDh.g9ChXBKIxVN44wzZNpa', 'd1KcJQTUluebu7k1cyeCudSZzQ0tye3LuA3C8HYUqGKzM5AqIf9RKejTF3Vw', '09796600844', 'default_member.png', 'Yangon', 2, '2016-02-02', '1', NULL, NULL, NULL, NULL, 'jmbBjstEyJmOvszeSJftOwiKMXHKIKquTl3snAXGf66qlHznun0mrPj5VPTb', '2016-08-26 05:55:20', '2016-09-28 17:38:31', NULL),
(796, 'Ma Ye Mon Aung', NULL, '$2y$10$/5NUvSatyv1NxSSoPAs2IeMn9pgtOi8ITDwCvjwqHKx/NOeN4/R5C', 'd1KcJQTUluebu7k1cyeCudSZzQ0HYUqGKzM5AqIf9RKejTF3Vw', '0973001263', 'default_member.png', 'Yangon', 2, '2016-02-02', '1', NULL, NULL, NULL, NULL, 'jmbBjstEyJmXHKIKquTl3snAXGf66qlHznun0mrPj5VPTb', '2016-08-26 05:55:20', '2016-09-28 17:38:31', NULL),
(797, 'Ko Nyi Nyi', NULL, '$2y$10$DgMJfKbpW3e7WfUhSrfe6Ob49wROXyTxSIN1xovVEQfQX/gIj0wN6', 'cccccccc090tye3LuA3C8HYUqGKzM5AqIf9RKejTF3Vw', '09252692764', 'default_member.png', 'Yangon', 2, '2016-02-02', '1', NULL, NULL, NULL, NULL, 'jmbBjstEyJmOvszeSJftOwiKMXHKIKquTl3snAXGf66qlHznun0mrPj5VPTb', '2016-08-26 05:55:20', '2016-09-28 17:38:31', NULL),
(798, 'Ye Thiha', NULL, NULL, '2GajsrN33NuD2YxFH2gWG6XDeohZjnSPLKkyZpZ00WKjZZOiyXuJTN7oRuUf', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13690736_518427958342421_2096016926321689859_n.jpg?oh=579f2359826e80eb4c3181ea1087ae50&oe=587DB86E', NULL, NULL, NULL, NULL, '536074836577733', '579f2359826e80eb4c3181ea1087ae50', NULL, NULL, NULL, '2016-09-28 18:05:39', '2016-09-28 18:05:39', NULL),
(799, 'Ko Jal Jyi', NULL, '$2y$10$f72zqZ/1wngrkfRHkO5Bw.lFmd7tkQ5ypbuAXRt4IRn6FUwSVtBSG', 'ccc343cc090tye3LuA3C8HYUqGKzM5AqIf9RKejTF3Vw', '098618961', 'default_member.png', 'Yangon', 2, '2016-02-02', '1', NULL, NULL, NULL, NULL, 'jmbBjstEyJmOvszeSJftOwiKMXHKIKquTl3snAXGf66qlHznun0mrPj5VPTb', '2016-08-26 05:55:20', '2016-09-28 17:38:31', NULL),
(800, 'dinningfukuro', NULL, '$2y$10$erl3zR1WubSqENIMBnUNB.E6yg7X9ifjEZ6wT0LQBxxNppWzQxA8W', '092847c090tye3LuA3C8HYUqGKzM5AqIf9RKejTF3Vw', '09420231330', 'default_member.png', 'Yangon', 2, '2016-02-02', '1', NULL, NULL, NULL, NULL, 'jmbBjstEyJmOvszeSJftOwiKMXHKIKquTl3snAXGf66qlHznun0mrPj5VPTb', '2016-08-26 05:55:20', '2016-09-28 17:38:31', NULL),
(801, 'Ko Thein Tun', NULL, '$2y$10$lQUn238L./lOW6c6KBb8a.llZB1aesC/gh0vmDuWsbJNtwkt3D7ha', '092847c090tye3LuA3C8HYUqGKzM508qI239R34ejTF3Vw', '09423720547', 'default_member.png', 'Yangon', 2, '2016-02-02', '1', NULL, NULL, NULL, NULL, 'jmbBjstEyJmOvszeSJftOwiKMXHKIKquTl3snAXGf66qlHznun0mrPj5VPTb', '2016-08-26 05:55:20', '2016-09-28 17:38:31', NULL),
(802, 'Ko Soe Aung Thu', NULL, '$2y$10$C22Bamz3z0paHs31t4xxTOmluknIkGBPrc9FIom8OQZE8DUxzbZIy', '092844253095173C8HYUqGKzM508qI239R34ejTF3Vw', '09425309517', 'default_member.png', 'Yangon', 2, '2016-02-02', '1', NULL, NULL, NULL, NULL, 'jmbBjstEyJmOvszeSJftOwiKMXHKIKquTl3snAXGf66qlHznun0mrPj5VPTb', '2016-08-26 05:55:20', '2016-09-28 17:38:31', NULL),
(803, ' Ko Wai Lin Kyaw', NULL, '$2y$10$5ZiGMN9YjY8O9QJ9JH3yke5r.wYpdB1mABuyvWqg1gwbz1AMKj912', '09284409254863677UqGKzM508qI239R34ejTF3Vw', '09254863677', 'default_member.png', 'Yangon', 2, '2016-02-02', '1', NULL, NULL, NULL, NULL, 'jmbBjstEyJmOvszeSJftOwiKMXHKIKquTl3snAXGf66qlHznun0mrPj5VPTb', '2016-08-26 05:55:20', '2016-09-28 17:38:31', NULL),
(804, 'Chen Naing', 'thet.naing.39@gmail.com', NULL, 'kIOlHHSzEeYxTZVUgVupk3VKH5yuoxI0RyXs4FQt', NULL, 'https://graph.facebook.com/v2.6/1208811869139188/picture?width=400&height=400', NULL, NULL, NULL, '1', '1208811869139188', 'EAAPMa6cPYRkBAFw9iIj2G8ulgs7ZCBDQZBHtnG8OEFDV4qCC78vZAXifGjxrK6yVX8WunY0ee236K6li7rO86nY3a0kZC9bT08UAsKZCi8q4v4LIKQBTyhG8BzwuLYGo4WofUpvX7MP4NunUMFhFtkeEQfPs0RB1HE6zRVSxRGwZDZD', NULL, NULL, NULL, '2016-09-29 02:59:27', '2016-09-29 02:59:27', NULL),
(805, 'Thiha Zaw', 'thiha13zaw@gmail.com', '$2y$10$p0MVwCcg1rr2o9cLLqsN/uroUr0ucjKX923Jl5o7e8rHpeLaUzcxy', 'hF3KnsKaLMAfmkQzZP0haBe5xZ5uNjH72NOpy4zYysvaGgCC46snF4CwIudL', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'gAO52Yl33u4XEp3dAbSnuHt1WhlPt8LHdQ7Gpt8fz9TwOyxu0e6eSxTIQkcv', '2016-09-29 14:16:54', '2016-09-29 07:47:31', NULL),
(806, 'Colin', NULL, '$2y$10$RkD8WEkJJKAfqEmWT7VfPOb.m64Xsw6tQqaEyMRogE6V8REpb5hPi', '65zxuOZrqF12SPpEGbU5fxcZeSDThsPFxYIpwhAokt0Pas0w50TEYKhWgCkp', '0973206156', 'default_member.png', NULL, NULL, NULL, '83f7c22398194f2c2246f2ceb942c361', NULL, NULL, NULL, NULL, NULL, '2016-09-29 17:44:17', '2016-09-29 17:44:17', NULL),
(807, 'Colin', NULL, '$2y$10$WrLZP9HK0cJLt3hRJL7MXu9gj89Z680BVwPvuNCGo/jTu6Xh11raW', 'E0HdlNG1j2PlwyvAMoIPL8qkxaWMAk0svc06cEGVZWfhpGlTBNoJ31IbJuf1', '09262728897', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'sFi98Coxm9LZ6CtbqwFeQL6KYO71qql9WQ6mFcmNaKv7y0n30PvHWHa4ASRZ', '2016-09-29 17:45:43', '2016-09-29 11:16:05', NULL),
(808, 'Whitte Wish', 'kohnmars@gmail.com', NULL, '8lf8LUVnSiyA9rFWMg63ThEni7r0GT1ZYmW7ZxAq', NULL, 'https://graph.facebook.com/v2.6/10211092115002843/picture?width=400&height=400', NULL, NULL, NULL, '1', '10211092115002843', 'EAAPMa6cPYRkBAD5qkzPTZCOkPDJN4P3l5fYeLFpwnGKSOsO91EfpT3Fu6qu5L6jD8ayFsdRhNHZCjeL4ygpN36jbTzfKwuZB9SU59MXoPKxxG3nuVMmun3PrE6sVH2LareQbllWwhEo7ZCgfBHE4krbNZB70YEMEZD', NULL, NULL, NULL, '2016-09-30 07:00:55', '2016-09-30 07:00:55', NULL),
(809, 'wai yan phyo aung', 'waiyanphyoaungwypa22@gmail.com', '$2y$10$yqrYJyRUEw88JBmSbnBaz.gDPf6nGudOBMYY0Z8ztbPeEb8ZkyixC', 'MBCYK9J3hDXNUqTMKtBthex1Nr3aIt7uOZA5VXzJr9T2LNygH6S0ORbs6PxE', NULL, 'default_member.png', NULL, NULL, NULL, 'ba630fdb91fa57268e39f8418b34ce6a', NULL, NULL, NULL, NULL, NULL, '2016-09-30 14:31:52', '2016-09-30 14:31:52', NULL),
(810, 'wai yan', NULL, '$2y$10$F4vy56YAbDsjfzPcN3hxBe/hr/yxFe.YSAG6NEuPkht23Wit1pfQ2', 'FYrok5av3muSgEVDcqaHbnP2YkTXVYqJPMN87jWkoMJXsskpZQx1zeB5YNUg', '09774077716', 'default_member.png', NULL, NULL, NULL, 'af79f7bea177ec5b2ce9d82407224953', NULL, NULL, NULL, NULL, NULL, '2016-09-30 15:03:54', '2016-09-30 15:03:54', NULL),
(811, 'Tin Wint Wint Phyu', 'shwemoethal@googlemail.com', NULL, 'kGot8K9PkAJW5Pn4oaYcdWEqxVLaMsA46y625oYG4UCZUeQiu0pMR4JlvqY6', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14492570_10153892514673862_5492604450804720754_n.jpg?oh=a6de0813114e445738769807fca8907e&oe=587692B4', NULL, NULL, NULL, '1', '10153911592263862', 'a6de0813114e445738769807fca8907e', NULL, NULL, NULL, '2016-10-03 18:12:14', '2016-10-03 18:12:14', NULL),
(812, 'Ko Mg', 'komg.km345@gmail.com', NULL, '1vbsGU7urpd02uBTZdrvsBrg0UxwDsapZyBR3ri7IYaBWB9dX0SDeTJSo8Gb', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13238967_1573951496230519_4692172914627747167_n.jpg?oh=eebc05f90e6b915cecb2ca4a19f9b639&oe=5878E1B0', NULL, NULL, NULL, '1', '1621462804812721', 'eebc05f90e6b915cecb2ca4a19f9b639', NULL, NULL, NULL, '2016-10-04 13:46:48', '2016-10-04 13:46:48', NULL),
(814, 'Aung Pyae', 'aungpyae2013@gmail.com', NULL, 'IeRlcpQIOTN0KG0SzeqlAAmx1mCaE6zhW6j4aKDWRBRBfhJoR017ci809hTX', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13692576_1242156579151841_789688224172395164_n.jpg?oh=a700f50a9c7823b923db252aac0a1aa5&oe=58743BEB', NULL, NULL, NULL, '1', '1320752577958907', 'a700f50a9c7823b923db252aac0a1aa5', NULL, NULL, NULL, '2016-10-05 13:47:54', '2016-10-05 13:47:54', NULL),
(815, 'Say Say', NULL, NULL, '1qQtCgAAAAAAwTPFAAABV5Q_xcs', NULL, 'http://pbs.twimg.com/profile_images/583125651428745218/PECTvB-z_400x400.jpg', NULL, NULL, NULL, '1', NULL, NULL, '2574411073', NULL, NULL, '2016-10-05 09:50:06', '2016-10-05 09:50:06', NULL),
(816, 'ရအိုင္း နား', NULL, NULL, 'DOnkWpovQSjpf2KzjgrijJQfZGhIARlB2rz7Fubj8h4SQv0ItQaB4a6nPt0U', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14516454_110355786098693_704864993730379242_n.jpg?oh=82066a45f8ba66eaa968f1937a59789a&oe=5868EB3A', NULL, NULL, NULL, '1', '110773552723583', '82066a45f8ba66eaa968f1937a59789a', NULL, NULL, NULL, '2016-10-06 15:30:20', '2016-10-06 15:30:20', NULL),
(817, '高橋 恒平', NULL, NULL, 'sH8NOAAAAAAAwTPFAAABV5mjUGk', NULL, 'http://pbs.twimg.com/profile_images/523802453389496320/IRsV7kQd_400x400.jpeg', NULL, NULL, NULL, '1', NULL, NULL, '464048192', NULL, NULL, '2016-10-06 10:56:54', '2016-10-06 10:56:54', NULL),
(818, 'Soe', NULL, '$2y$10$/IEH3CBAmKoZrP8M/ybgaeTkOKPs.1zNwy5hWzI7UeK.pEdcuRuXu', 'pvFlu28O8ANkhJ57o7UGVX4tkF4KU8nldp8U6SYQBcrPT6hF5hLWia905PQb', '09965091889', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'jsWJwcvgg16bRwIggqtMGHtClcKBB6PHT9fzc1BZwKhoWJzqo7YxcF3vwfm3', '2016-10-07 00:01:46', '2016-10-07 00:02:13', NULL),
(819, 'Aunt Maung', 'auntmg@gmail.com', NULL, '9MWEiTivzrHbMAcvOVV8XJATTYFbL2P9nNVDAgGmjsvnhOlhNW7DgVOw3SZe', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/12509705_10208155430620629_2471712224454059218_n.jpg?oh=6300ff08a3981886d65309a2e173739e&oe=586509E1', NULL, NULL, NULL, '1', '10210457853739768', '6300ff08a3981886d65309a2e173739e', NULL, NULL, NULL, '2016-10-07 00:05:27', '2016-10-07 00:05:27', NULL),
(820, 'Ar Moon', 'armoon147@gmail.com', NULL, 'FaYRbvf6Y41OMXfx7czkZEwP7UDty1AR7OscwyUDdH9XoyY3zEpqU5NUfpN9', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14364773_366658800389519_426075289830009853_n.jpg?oh=fe1c7a76399f856978cfbfe3406b92de&oe=5862220A', NULL, NULL, NULL, '1', '367297303659002', 'fe1c7a76399f856978cfbfe3406b92de', NULL, NULL, NULL, '2016-10-07 22:05:17', '2016-10-07 22:05:17', NULL),
(821, 'Ni Ni Win', 'niniwinn@gmail.com', NULL, 'qWcYIvwE5AszAJn2vtidHVEQKflNBy1igPDuwBT4', NULL, 'https://graph.facebook.com/v2.6/10154736688965209/picture?width=400&height=400', NULL, NULL, NULL, '1', '10154736688965209', 'EAAPMa6cPYRkBAAvAzO0XuZCgsTPQJIMoHIlZCZBUbZBQlDmKdtOImZAcmyfkM5vPiJPl3f17J4anUU8xryWCc79nScVV1EHvRIcnJKy1SW5f8dOv64i7fVWRSUZAUUjsX3uhHoLIZBhbR93O5VXwPgRpxdUORMxhskZD', NULL, NULL, 'hWNLy3AuWSGrhD28FYDIOUVuTRUT45fJcUrDZB93WplgSYQrOrEuFCcUNVsA', '2016-10-08 04:07:43', '2016-10-08 04:09:32', NULL),
(822, 'Lily Clair', 'lilyclair.lso@gmail.com', NULL, 'j7JKzl7QhQhJ7T9Buhi7Dlor2l1RIR21xmgGvyL2eaowgXEF3TbQ3cNHR0pJ', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/14449754_664816690344067_5745799592654431221_n.jpg?oh=fc0ca0a0c4634f5f1af8bb567abf2360&oe=58A753A4', NULL, NULL, NULL, '1', '669488829876853', 'fc0ca0a0c4634f5f1af8bb567abf2360', NULL, NULL, NULL, '2016-10-09 09:09:58', '2016-10-09 09:09:58', NULL),
(823, 'Min Min', NULL, NULL, 'aH4u9xC5KJZegPpIKZSQxrTQACtMMw7O4iTVv8RzFNT2O8NcIBwgvWaX9n9I', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/14572249_128081380989498_3280203554694067386_n.jpg?oh=52ecd22a4478b6d35df6d824ead3a3ff&oe=586B34C1', NULL, NULL, NULL, '1', '131200867344216', '52ecd22a4478b6d35df6d824ead3a3ff', NULL, NULL, NULL, '2016-10-09 13:59:05', '2016-10-09 13:59:05', NULL),
(824, 'Nicki', 'nyan2007@gmail.com', '$2y$10$uVdRnFQhrEdyg1.jNvphH.tflif7QckGa2nx7TzEJwFV/2ET6wEbe', 'BvY4LL7SDAclR8m2PeaGKhwGUtnjquMnN5zfuNJHtdYyWZ3wrGoVmHVSyIET', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'RNV3D8FtTHZlX6VaRraIvEJlmjnI6b9RzTbTgFhTkBNiiRz90PKzcaDjsXUp', '2016-10-09 14:40:17', '2016-10-09 08:12:01', NULL),
(825, 'Say Say', NULL, NULL, 'tUS6GmJKQ2YNrwUHoR5WiCfaXn2VineImAC3LLvxPwBZhM0EoFhRDg8rLDqT', NULL, 'https://pbs.twimg.com/profile_images/583125651428745218/PECTvB-z_reasonably_small.jpg', NULL, NULL, NULL, '1', '2574411073', '2574411073-txAdEu2ULdg5PplcD6TnI8qjWGMuauWI7SqtnNi', NULL, NULL, NULL, '2016-10-10 10:27:40', '2016-10-10 10:27:40', NULL),
(826, 'phyuphyuwin', 'phyuphyuwin1018@gmail.com', '$2y$10$38UCQ9Ot2Ax5djmN3h0/4ODnlLt5C.IP0pFp0NoYJTJDobh/pS.n2', 'n101UOHFPZ2KGJo4vG3JAiny0RZ49MENRdrquc9RRl7LwcSrfYJV8Rz8yTUg', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'fLdqPaZvRjZhK73WJlId8ccUXSSXCiXPjBLIEFSoFpvDoMWZ4S3u2u8yJIIQ', '2016-10-10 11:45:26', '2016-10-10 05:16:12', NULL),
(827, 'Wint Thiri Aung', NULL, '$2y$10$0dvYAWss1SZP67yD5J2Ws.51uZd4yxx3NFq3eQT0XDHYwlz9saG.m', 'NCvT31T21qytv1BwzuW7cxpZ6Twr76PCssDcn5q06VquNXR5DowbC6n4AVor', '09965081543', 'thumb_68240091289629.jpg', NULL, 32, '1998-12-09', '1', NULL, NULL, NULL, NULL, 'sQLDlfSvejur16WU9ZmNYpxJwwWFyMvxmNJUzjHJ17eaZJdsLfTKoFcMqYhI', '2016-10-11 16:15:26', '2016-10-11 16:16:07', NULL),
(828, 'Su Pyae ', NULL, '$2y$10$PkZJCyKphvKMgtGmxsjrqOT5YuoJQoe0toVUs/0m8m25PwQRJe0ye', 'zljNe7AXmY2y0sJG0JArIkRVLJYhZDm27hzJWrQH9WjaAH1a0PqAe2bZFe4i', '095070463', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'fYNp9cf3INVyy4GEEtruI75Cv3rY09eueuEmmLFnQv06MkFTbObnQSgXM6CS', '2016-10-11 18:06:17', '2016-10-11 18:06:38', NULL),
(829, 'ganesh', 'ganeshreddy279@gmail.com', '$2y$10$7EByF.z6yApFyOx2zhlFLuVMqWCxLESEwVcaaFBZ0MK7so5VF.OUy', '3N2NNTgvmIsG3l4b0BPTCmPmJMgau56FWEbPzcVQkiKo9V9Vp5fv0KGxT9li', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'E6yCsGq1CyU0yaR3fQfXGWQp1rS8CLnGgdM74iaLARg7Ty0myT01jSbj6f92', '2016-10-12 07:41:39', '2016-10-12 01:12:03', NULL),
(830, 'Eiko Tsuda', 'hinode-shaka-smile2525@softbank.ne.jp', NULL, 'zBkPg3ndJ8BeRlHbfAz26aFgtrvVCrPNsERPVmKvKQ7LJg9nxjtANiIDQRGr', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.160.160/p160x160/13876533_109233269523734_4691336584753947761_n.jpg?oh=b9b3023f4c8f961b203763cb709b6bd4&oe=5862DE1F', NULL, NULL, NULL, '1', '179946839119043', 'b9b3023f4c8f961b203763cb709b6bd4', NULL, NULL, NULL, '2016-10-12 09:38:07', '2016-10-12 09:38:07', NULL),
(831, 'Nyein Chan May', 'nyeinchanmay7@gmail.com', NULL, 'yHyySRseNdUXCpRJQoEAjOQoGgs3gM28fGTmc79vAPiwIXghwkatC4iHhQyR', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.160.160/p160x160/14446195_1777548535799744_2977899625239506492_n.jpg?oh=50abbffde00774ff1cdaf8277a34f304&oe=5898E0F1', NULL, NULL, NULL, '1', '1783951331826131', '50abbffde00774ff1cdaf8277a34f304', NULL, NULL, NULL, '2016-10-13 12:26:39', '2016-10-13 12:26:39', NULL),
(832, 'Thant Zin Linn', 'tzloct09@gmail.com', NULL, 'lrsOE6BzsauYtkIXtckhi9glYDSiJTjpTNa0KY0omnYYB2hDna3wpkb9MEcX', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/946186_565748893577979_9114270844202713164_n.jpg?_nc_eui2=v1%3AAeE1R1hZR6MUdIi1Cik6La4AfMIRm0w_q6HfMK1wrXp5TRzQXZHiDzvotp9u_FkFolUxk9jClP7ebg9g0FAqkOwXe_LgPJ93CmBRR6luNcYrMA&oh=6f78c615f4c12855e9769f23ac467f', NULL, NULL, NULL, '1', '697588710393996', '6f78c615f4c12855e9769f23ac467f3a', NULL, NULL, NULL, '2016-10-13 12:29:29', '2016-10-13 12:29:29', NULL),
(833, 'phyolinhtet', 'phyolin.mdy@gmail.com', '$2y$10$6Yk9VR/rr6IyIToNo4RX4uvlDDWM7fuac.vJOhy5DyajAGi8smLIC', 'pAIFpeBhjkVIdk5JXLAXlgsIF9tKm8Uw5wCpFOOagAVka195FzQA1qLsMzet', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'lMtaccsrjVQIi3e6D9p4UZvcoglM2A5WXbzGxkN05MEuWKWzZgQY6InbxADZ', '2016-10-13 13:22:23', '2016-10-13 06:52:56', NULL),
(834, 'Michiko Reiko', 'honneymay@gmail.com', NULL, 'IeAWPvG2An7hWojtexlIk5SbxniuwSu95r90U6vI', NULL, 'https://graph.facebook.com/v2.6/896161397183933/picture?width=400&height=400', NULL, NULL, NULL, '1', '896161397183933', 'EAAPMa6cPYRkBAIR2SQRO79cA9rs2tcCrjG5h4qgQjtUTafMCZCZCEmeG1B9d9sRfiIqI91JZBSetQAXNO828yrbcboZCYZAs91G0ZBy4AIMeAFGa8L49IsZBgDOZCftSkqb17IlJ8FFqHQTO3VpjmgdPQ2OUz4zGQ17bMzFn23UorwZDZD', NULL, NULL, NULL, '2016-10-14 04:28:46', '2016-10-14 04:28:46', NULL),
(835, 'torn', 'torncity2016@gmail.com', '$2y$10$USCPwE1lWgZh6p8OfLK9ouxvTYI2Km6V2mUdEyA/s4NBIeCJn.0RW', 'ZMQXhRMBzkU55Ndso0ivhqAlHa73pMCMsTulD3KindtoOd6n9RqUC2An6fn9', '48438438898', 'thumb_7623319543747.jpg', NULL, 1, '2016-10-11', '1', NULL, NULL, NULL, NULL, 'ElPKWg8FLxrztJJxs3HadKu3LBurSXVGXLAqIjxDbSU3vWBqMaRKDswYJ8Bw', '2016-10-18 15:34:15', '2016-10-18 16:38:54', NULL),
(836, 'torncity', 'torncity2016@outlook.com', '$2y$10$XOl7.7fUnT4apqyjPJSwmumrg2DFm58qFNvkPzUNdMZ9OE15HMg/C', 'BwtELwbGrzyJez5bhswhz0i48v3IkwgNTWvHRfYdMF4cl40XGwnLqTLESg6v', NULL, 'default_member.png', NULL, NULL, NULL, '094950092ff829b85c569d0ebdfa2910', NULL, NULL, NULL, NULL, NULL, '2016-10-18 15:37:22', '2016-10-18 15:37:22', NULL),
(837, 'Zun', NULL, '$2y$10$0eucjtQ.xpJwO8pp8rdZIuHyWjJxCiGx.ocnszlss3yYFZOHU7y3e', 'IrghGh9UuZVpZBYb1acx75UgzwVgiNFXpFHs0s4afxtOFjeoq3BgoaNcqOXr', '09777211028', 'default_member.png', NULL, NULL, NULL, '06959b6711deddbd041af0240c8f6529', NULL, NULL, NULL, NULL, NULL, '2016-10-19 18:34:34', '2016-10-21 14:12:38', '2016-10-21 14:12:38'),
(838, 'Zun', NULL, '$2y$10$yA/StAqxpV4l1JmEAv13ku//wtBMuN720t4JR8QBgnKQ7TYfz5BLW', 'k1BkB35I5KKcdRFSsXhEei7Axo0Rqdvlg3BvB5Wkpkj4xLTZv45KIkubSXDV', '09777211020', 'default_member.png', NULL, NULL, NULL, 'fab74d41785ff4e45f32547159d1f222', NULL, NULL, NULL, NULL, NULL, '2016-10-19 18:34:34', '2016-10-21 14:12:51', '2016-10-21 14:12:51'),
(839, 'Zun', NULL, '$2y$10$X491JS6VQn4m4ta5HXpymuPhENvy552CfjdzkwvnxssPCEpJCP6AC', '1LgfBNLzOs1OJfJJowcIy3Pl19wFPY2qeYCQQhsBTaOxcJ9M6Nbhqpr4kgvj', '09777211020', 'default_member.png', NULL, NULL, NULL, '6342d0c0e24a81df1e8531276b795341', NULL, NULL, NULL, NULL, NULL, '2016-10-19 18:34:34', '2016-10-21 14:12:43', '2016-10-21 14:12:43'),
(840, 'Zun', NULL, '$2y$10$I1dIHvcR01Ey2FTjZ1gP/uJX3SdHwV0ncCwibAZvLbB9gt0GD0.16', '2SF582UoZXRsaJyubcQrgURea5dtUhpdjGqib40oxET8jkX2v2jn1LxdQM1m', '09777211028', 'default_member.png', NULL, NULL, NULL, 'b146655cd2d7c5b0ea893424a7beb3e0', NULL, NULL, NULL, NULL, NULL, '2016-10-19 18:34:34', '2016-10-21 14:12:47', '2016-10-21 14:12:47'),
(841, 'Zun', NULL, '$2y$10$iAkrwohI2nyYVKWk0yN9eOB/Ujqnr.UvJKNj2IPe58YK02W/WuX0i', 'j71UCnvZ8XIeZCgsH4hugReFBp4lbpgjrJcKaBI6fZXEDCRlJQEXGS0P0nKm', '09777211020', 'default_member.png', NULL, NULL, NULL, '560590bd372c1c209c1dd9ba6f047ae8', NULL, NULL, NULL, NULL, NULL, '2016-10-19 18:34:34', '2016-10-21 14:12:55', '2016-10-21 14:12:55'),
(842, 'Zun', NULL, '$2y$10$WwopvWOSaAQupus4RgFi9.bWQrQyzHHeaNgUxnGZAxzQAIqDe6el2', '3XwsEXPloPe4aJX4NIXtNY2EVBbCvIIdiluKmCmUE2CoxXPUuiBHduMt2Xr4', '09777211020', 'default_member.png', NULL, NULL, NULL, 'b90c52a8ea7169d3782ee3c9f37d3f45', NULL, NULL, NULL, NULL, NULL, '2016-10-19 18:34:34', '2016-10-19 18:34:34', NULL),
(843, 'Zun', 'zunthazinthel2016@gmail.com', '$2y$10$Ua.H41Qf6wlsTOZYP21MJuJswR8Y43T6DUGJjB64F4CXAXZcoP5jm', 'RkD3iRbDlgDTzsBopSQveYo244YR53siDsXYBP6gneaTrDHIbQJc77co3Aee', '', 'default_member.png', '', 1, '1990-09-09', '1', NULL, NULL, NULL, NULL, NULL, '2016-10-19 18:35:21', '2016-10-21 15:04:17', NULL),
(844, 'Tin Tin', 'angeltin22@gmail.com', NULL, '55cLrFJ7McnezKN7LzKWkLHL92YilX5Vnkb5VXLN', NULL, 'https://graph.facebook.com/v2.6/1433756896654292/picture?width=400&height=400', NULL, NULL, NULL, '1', '1433756896654292', 'EAAPMa6cPYRkBAFV6ufJbCw2v5f34iipDeRGW3awLfxCQoAKcvsi0898wVma0PYZCAmXMKdKOCcakJI48EoVnUfvKZCexNjLIOmpOKUy6AryzrEia8wymJQQcXO4NN74LKD4sZB6SwwQdhfFwBckXrfl0CcA61QZD', NULL, NULL, '4vKaEBrfPnjENofvKaSarmLwVjJBgwkywOyBoQcGpDiJ9OECiUJIx7Y5krqH', '2016-10-22 15:32:45', '2016-10-22 15:41:22', NULL),
(845, 'Ko Soe Htet', NULL, '$2y$10$38iGEtwP0nXrJvBy.KtQeOGZY3FvvrXVBxHORARo67yVvedhiHbcC', 'cNP5FK8AIPrqim5E8XSOuQ3jPfb0IIGuB7zuQAVp8nxXlO3TuEB4FKboOCK6', '0943197255', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '5r6N270UhxXtMYaCzxDDtFMCcK2Ht045GPnvYzVIUOPn5d5L2MyvbfgWJsaA', '2016-10-25 11:02:17', '2016-10-25 11:02:34', NULL),
(846, 'Kyisoe Thant', 'deathnote258@gmail.com', NULL, 'hJ9jQFfrbWlqxZPMBqQ7VL0apqd2st5JuGjCjwcd', NULL, 'https://graph.facebook.com/v2.6/1313196615380917/picture?width=400&height=400', NULL, NULL, NULL, '1', '1313196615380917', 'EAAPMa6cPYRkBAPeYdZAWfSjZCZBWrtAa0ZAaRE9QT6T0OtVey9fARMqYLPUIObHs7lX2t4jiUxBMDVneHjn8dyxKN9HSwLdXwFVdjdPnjOTWurpE0QLgZBuiRFeGsWZBcyYGwxet1ZBMiLOQUwgFziUFvTj2h69bzsYIeKQQRZCgPiTwwoa6heHP', NULL, NULL, 't8YPpzoB7lS38jhYvsK2R5eb7GldtRHvaZsrSGjhYyUNPz44eU3RnZWHadhj', '2016-10-26 00:43:42', '2016-10-31 04:16:04', NULL),
(847, 'Thura Kyaw', 'thurakyaw.trk95@gmail.com', NULL, 'U5ljabQCGxf98Wm9AOdDx10kzITMyPY1yaLtyR2S', NULL, 'https://graph.facebook.com/v2.6/146276709171184/picture?width=400&height=400', NULL, NULL, NULL, '1', '146276709171184', 'EAAPMa6cPYRkBALzXAI707XFlImg3DUCvMBRvkxuWi1AtJVF6B1eFMLyJOItt4G04lLDmGn2120ryBYT5mHIlnOucIFFMaS9YmNMMY70xPsetVAa0RT8EW7uiuFFT02a1YYIUFVNOcHiWiLOZARvbeypa86JEZD', NULL, NULL, 'ZKKFQlZsIsasahBMBrSe1TfBXzyYwrbVPSrfGvgYvM2ipQ2DGjkdPPiQHYrs', '2016-10-25 18:54:32', '2016-10-25 18:54:38', NULL),
(848, 'အယ္ဒိုုရာဒိုု အဆင့္ျမင့္ ခရီးသြားလုုပ္ငန္း', 'picamonchu77@gmail.com', NULL, 'J9vtXGPnR2ZDj8gbVfa0oyTQkMlPA7AA97mUA7zL1K9jFLGYIX64MSczgz9c', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p160x160/12650789_135208083527480_2399544154007526291_n.jpg?oh=ed3f66990949f353b7db02ba9db88a51&oe=58ABA1DE&__gda__=1485746101_b460e058388539826505f7056dbbf87c', NULL, NULL, NULL, '1', '314239462291007', 'ed3f66990949f353b7db02ba9db88a51', NULL, NULL, NULL, '2016-10-26 11:34:32', '2016-10-26 11:34:32', NULL),
(849, 'あきら@白猫垢趣味垢', NULL, NULL, 'I15OyxHOiKPJzg4Drcp0Ne6OrEtDO0b8hKqYxhmtzpqByDFYhJ3LzgXk5WIA', NULL, 'https://pbs.twimg.com/profile_images/728950308097818625/6yk9FhhC_reasonably_small.jpg', NULL, NULL, NULL, '1', '612262460', '612262460-vsqoMMZke5NYZWhY4wrMUkQxNnT4NHfOF2g0AXic', NULL, NULL, NULL, '2016-10-26 16:56:04', '2016-10-26 16:56:04', NULL),
(850, '高橋 恒平', NULL, NULL, 'yM4nct8VXtyYPDMUt1aE2TkqbR9qzJfyl83oKJQnQ1WpVaAm0F4dvA7nJaL8', NULL, 'https://pbs.twimg.com/profile_images/523802453389496320/IRsV7kQd_reasonably_small.jpeg', NULL, NULL, NULL, '1', '464048192', '464048192-O9g4gSXmupgOYiYNg1l9GVQFwF9FY1TYOPQezrI0', NULL, NULL, NULL, '2016-10-26 16:59:23', '2016-10-26 16:59:23', NULL);
INSERT INTO `User` (`id`, `name`, `email`, `password`, `api_token`, `phone`, `profile_image`, `address`, `township_id`, `dob`, `activate_code`, `facebook_id`, `facebook_token`, `twitter_id`, `twitter_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(851, 'Thein Toe', 'theintoeaungygn@gmail.com', '$2y$10$RY.7bRsTZwCMU/wKgSbDEeS/j.jwYlWCkxjwGxE1SYN5ex0p0b/kK', 'YWR1zO0LUZMqwTsIoZ2i0LOR40PaYjjAtC6Iq5T5xSQp8p8ijXmlFqvwyQGf', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'UglvFG3EIwUcCBCmtmmVRCDd5MiFa7uYYulpEcHrNBRNbYkQwMbpdPRe0pql', '2016-10-26 18:44:48', '2016-10-26 12:15:13', NULL),
(852, 'yoshiko', 'gachapin@rooking.co.jp', '$2y$10$oKQ7suEtzv9BCGGhMmO01eu.CB0JnH8k5UAcFKenw1uuCFJhof8tC', '1dccV9toic2gvNUn1qNmih4ZYr3cOqtSvQQJVG3tDILbnEmBovFXsyxk0mj7', '08010201852', 'thumb_15046003340414.jpg', NULL, 1, '1961-03-31', '1', NULL, NULL, NULL, NULL, 'dVianRmk3eOfKOUNqJ6UOu5IP8BD6YKlI8XbO00ikcFWWAXZV8YDcCVJ0Jal', '2016-10-27 08:22:38', '2016-10-27 08:11:53', NULL),
(853, 'Wai Phyo Aung', 'cupidmuseum@gmail.com', '$2y$10$nFIdJxFSY.p1hKxgJEMBveyUREYXl0P9J.NqUX6xe1XbYlh.UoCj2', 'I4x27Haa6FVMOAAB2cny4vMWalHDqFkXqBfb7ToZrRBNoHm5xqiUALO5xa4V', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'cojw5ZjK0GUf29Rpg0JCvACx7RVEyI3YpO9Akl6WmAt8n7y1wzBpaBeihOaI', '2016-10-27 14:10:09', '2016-10-27 07:53:25', NULL),
(854, 'Zaw Moe Thant', 'zmthant@gmail.com', NULL, 'XkcRQEQmlpCmA5lumJdNE5syjzmraXDMZlCBNf9g', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xtl1/v/t1.0-1/p200x200/14581329_10153990618363441_3434674775164048742_n.jpg?oh=e9da50773a0566070fb5dae5afa570f7&oe=58880EE1&__gda__=1486738526_36098cdb377f29d0320fdba059e7aa71', NULL, NULL, NULL, '1', '10154019626583441', 'e9da50773a0566070fb5dae5afa570f7', NULL, NULL, NULL, '2016-10-27 10:34:29', '2016-10-27 17:06:14', NULL),
(855, 'say say ', 'saysayshee.me@gmail.com.mm', '$2y$10$m0g5gw.T.gBcVm5xvdxXT.56ZoCDHyxUVQjV9C88tjWc1zDa52iRi', '5Gpuif8epNxUgQX8hH7XWnw6lv5sqRxnNbEqWr9eKDiZd1R1U9vFto1J5O39', NULL, 'default_member.png', NULL, NULL, NULL, 'fcefd590ab7a55d64796a692823614f3', NULL, NULL, NULL, NULL, NULL, '2016-10-27 19:43:04', '2016-10-27 19:43:04', NULL),
(856, 'say say', 'saysayshee.me@gmail.com', '$2y$10$CrLyKfifrpF3X5bctZP4Mubo72Ys3roBKzgZizXu/S6vpRX2wsBBG', '4IgCwMauOttYpZH7kj6mVBJ5jeffYFhuOrAfbcEycwij48tCwCefBf6CdrSL', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'SQ4zONblYczxmkZdC2cgPt1JYqTGBo1ZnpxViMtQdjEK8c4nXdzpJPqSft4d', '2016-10-27 19:44:14', '2016-10-27 20:29:32', '2016-10-27 20:29:32'),
(857, 'Cylynce Aleigha Headley', 'queenpeanutderpinshire@gmail.com', NULL, 'Gc6Sea3WwYHVLCr91IH8baAUneEcdQjB65pGwNjdDXYiDkjthfofTdA7slv3', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/14203131_552206221645984_3051590341740798712_n.jpg?oh=ecbf8b1b3e8c58327cc3ce2b98e9e981&oe=588992F2', NULL, NULL, NULL, '1', '553601721506434', 'ecbf8b1b3e8c58327cc3ce2b98e9e981', NULL, NULL, NULL, '2016-10-27 21:56:01', '2016-10-27 21:56:01', NULL),
(858, 'Kohtun Win', NULL, NULL, 'vn6v3laQc0TMqKVmBlONDfxP4QaC34bTP84mHbNgZc4apP3IDrIyfxcVBGbh', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/14100339_168178283614774_5111838812236133000_n.jpg?oh=5c417b065d733ebcd29a229f68ca1d47&oe=58A33E2B', NULL, NULL, NULL, '1', '211294452636490', '5c417b065d733ebcd29a229f68ca1d47', NULL, NULL, NULL, '2016-10-28 06:34:17', '2016-10-28 06:34:17', NULL),
(859, 'yoshimasa', 'ishiyama1224@gmail.com', '$2y$10$J.XeDLb/v1SYIoOjWYUhZeO9cG9yzde0TPZBIfo4T9jDPaUoyx8iS', 'fYGlp3oFIvrTztgA8KuKT0bDd0fTckecEyUM19VzP7NbjVPLaJeaHPYJcSnw', '', 'thumb_5516904215507.jpg', '', 27, '2016-12-24', '1', NULL, NULL, NULL, NULL, 'E1sE2yTtRMOIv8fqiXaU9IKR3DTQ7KEtVvOVmfXWyH8ycW1WW6WBbItWxyYg', '2016-10-28 08:54:15', '2016-11-10 16:30:48', NULL),
(860, 'Yoshimasa Ishiyama', 'm-nostalgia373t@softbank.ne.jp', NULL, 'OwKjZLQLEj5Xglxtr5FL7FdaufrXrx3AwzIwvSVK', NULL, 'https://graph.facebook.com/v2.6/1106184579496614/picture?width=400&height=400', NULL, NULL, NULL, '1', '1106184579496614', 'EAAPMa6cPYRkBABErYt8T75k9PhrVMsacyKGxpf4F99aQ221X7M9bhlVAmRCpuUdZAR9oVSDnHCcpGePYbyVKifARSuJnTpGB6jaQbYJkv7cPONYNKsk9a1cx6T0Sd9U5uIchxjZC29csbkxvDijJsol7B1ppiUh5ZCwmORWRwZDZD', NULL, NULL, 'OswGE9Xqw0OmEfrIpTbbVrntDvAhz7d2SLWcVAknJohHUkFSeV131pSiONJs', '2016-10-28 10:00:29', '2016-11-02 02:20:43', NULL),
(861, '石山坂46', NULL, NULL, 'Cs3DysPup62Gn2KK897caA2dlu4ft27QsQysDhH47DpJMLcOGNNPvxNJKHjp', NULL, 'http://pbs.twimg.com/profile_images/476287109473394688/nccGsYf8_normal.jpeg', NULL, NULL, NULL, '1', NULL, NULL, '491322555', '491322555-TmM2BX91zQV0pkj6Sq4G9hNsfBl5BZkKcDCFOIZF', NULL, '2016-10-28 10:14:20', '2016-10-28 10:14:20', NULL),
(862, 'Kyaw Soe Linn', 'nakashi94@gmail.com', NULL, 'IZt4nA0vAJpvp7Psjdk7avE4xbeY3Aam5anQiOnyu5YKi7AVPzklcOQuAHoV', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/14448792_1578082278884766_6343788036792261751_n.jpg?oh=780fc3390bc640779ea9d22b2e89dfe5&oe=5899AB37', NULL, NULL, NULL, '1', '1535021953190799', '780fc3390bc640779ea9d22b2e89dfe5', NULL, NULL, NULL, '2016-10-28 13:37:13', '2016-10-28 13:37:13', NULL),
(863, 'Naing Tun Win', 'mr.naingtunwin@gmail.com', NULL, 'yBByRPDiFyMjkNXrFdbt3oEw8AgnhtZ55as5CfM5', NULL, 'https://graph.facebook.com/v2.6/1107612562686856/picture?width=400&height=400', NULL, NULL, NULL, '1', '1107612562686856', 'EAAPMa6cPYRkBAKPw6HXeOGa3PXaxJ4v6eVgV4PpZBC2r21x1gK8VrWkt8vOjIe0aiZA9hcveJwLfYsSANZB4t5pZAeUSVszGSMwysOYzHZCrcMHMHMaRKVhrfSdwoouZBNq94TWJ6yfqNiHeNPeTZB333QnBPP3k4fTqr3BZCQwHUAZDZD', NULL, NULL, NULL, '2016-10-28 10:36:44', '2016-10-28 10:36:44', NULL),
(864, 'SoeSan Lin', 'mr.punk1500@gmail.com', NULL, 'j3IVDUsIDtTRm3eJz0BlExt9xHHtnGCNpG5ZF7lZ', NULL, 'https://graph.facebook.com/v2.6/1296303013727207/picture?width=400&height=400', NULL, NULL, NULL, '1', '1296303013727207', 'EAAPMa6cPYRkBAJNgmUXr5TaVM05FU4jZCdo93Y7Nljpcm7uRbEWIcyKxsKxPNwEhqTZAt6h6PqZBbRlNd9pS2EVwp0vMlpbZBKVdPr2sjypDtvnrxoVIZCkNBuspZASHLe5cL334CDAtg5kuZAVzyQdmnYsZCamO01U3t5CW86H5fAZDZD', NULL, NULL, 'hwcyghkOxFNYXZQonz9UEcwNpkQKvbcgiEH5aTNY368VbTT6zx6kbt8HmtyK', '2016-10-28 10:53:50', '2016-10-28 13:58:46', NULL),
(865, 'Moe thant sin', NULL, '$2y$10$JsFWMnkhzaSOe50zLzYV8.SJ8McTJYrel2wYark4JBpKuT21d9y1q', 'UADnIig7WXnazmt1NwjNLMAbLPQUhkQu9eittvtsQUWEioLqTEHeHzfssI8x', '09420164941', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'SVKdG8B6xi2Wp0WP8cReu5NuXSt0a6iwYMiR2TNgyJVS3vKuiyvsP0rIJ8Lc', '2016-10-28 17:24:44', '2016-10-28 10:55:06', NULL),
(866, 'Aung Ko Ko Phyo', 'mr.emopunk1500@gmail.com', NULL, 'Nr8yRtrvQ5jEUO8T5MS9Tejblby0ze0AWSNTwKzh', NULL, 'https://graph.facebook.com/v2.6/932152036916614/picture?width=400&height=400', NULL, NULL, NULL, '1', '932152036916614', 'EAAPMa6cPYRkBAMXnlsz7TorRPhn11io2FGlw8SZCHTRVzLZABmlmCy4Gg06hwU9jPjM0IgIPZByO3JaChDG5RNdW7ZAJuiOI7nOs7ZBa9h6RdphpUydjdyfjymojWWppDZB34FDBQcdZC2nsnC94KzrdNezShlZAoHnhgeW6cBmN5AZDZD', NULL, NULL, NULL, '2016-10-28 13:34:53', '2016-10-28 13:34:53', NULL),
(867, 'YeeShin', NULL, '$2y$10$R3nTFPQRg8zcUds/donILeG7THT9vo6RvWs1loRuV7dc0yjSUJAYe', '9yBrPJtKykehyBzp7FNBe9Izlx5Yzw8mSmHX16Fb5Iivmum7zwx84yzUdB1H', '095047778', 'default_member.png', NULL, NULL, NULL, '6c5cb5929ec9d696d95a7979e645b924', NULL, NULL, NULL, NULL, NULL, '2016-10-28 20:13:21', '2016-10-28 20:13:21', NULL),
(868, 'Moe Lay', 'myatmyatsoe9@gmail.com', NULL, 'UdrN3dLW2Fcs5YFzu0O1MVybr6kjr5cBNddWoal0fDa8hxBHwK1al5WcYea2', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xtf1/v/t1.0-1/p200x200/10309648_286993324814356_2912861257826692677_n.jpg?oh=485e727afc3596b9664ac84781c98b24&oe=58A5C482&__gda__=1486539511_46a0ee9b6ae2c87e96c43e963cb47437', NULL, NULL, NULL, '1', '666788953501456', '485e727afc3596b9664ac84781c98b24', NULL, NULL, NULL, '2016-10-29 11:58:36', '2016-10-29 11:58:36', NULL),
(869, 'Awi Myanmar', 'awi.attaullah@gmail.com', NULL, 'ZoEY7hkm8hLPQknxnUtgOmmAj0pn2Y2afc081ve7LdMeKbEwfDuviyc8hUWp', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/11214247_1641701786104672_6685065102264876432_n.jpg?oh=f50f63b29022a857a1b3ed4031dfc46a&oe=58973766', NULL, NULL, NULL, '1', '1783230298618486', 'f50f63b29022a857a1b3ed4031dfc46a', NULL, NULL, NULL, '2016-10-30 16:05:20', '2016-10-30 16:05:20', NULL),
(870, 'takahashi', 'takahashi+10@rooking.co.jp', '$2y$10$J32b/pK20R1tatDX6lqxuuWvgMGFOhdS0xtAkeVHJEKe8HK4dGrh.', 'EUG2wD21ULXgAowkhDAaiaO6gTzbvfg9c7NY9Hs3tSyiZaSkyTaXvAwEnbw5', '08055559999', 'thumb_67915522811224.jpg', NULL, 45, '1994-05-11', '1', NULL, NULL, NULL, NULL, 'IZmqp7L2Udlhwcasunmnwq8SK18DH8TYwxZQQoqutisCYI6SL6m7N4wMKxRe', '2016-10-31 11:53:08', '2016-10-31 09:57:35', NULL),
(871, 'takahashikohei', NULL, '$2y$10$CXDVwjPcDhOFY0.V7CE0t.biLFSoQO9RpnMVkOZx8djjjjzQn3qDS', 'MxixB47Zvf1fctoNXcZC7NjewR8J9xyb5oqUTFCP6hixaHWQCVfO6t2imiwc', '08000005555', 'default_member.png', NULL, NULL, NULL, '8dff980c097e44889db8896158e9136a', NULL, NULL, NULL, NULL, NULL, '2016-10-31 15:51:44', '2016-10-31 15:51:44', NULL),
(872, 'Htet Linn Bo', NULL, '$2y$10$rnaudDeJpSM/6lEVZ2qV3umsKPZP62ti8utHC/O/FnhxMQrC405ty', '98Usj3mmRr27xSdho2ztFSuZNMW11hxB8Azt27naCq0SWvRlIxtulkeCvW12', '09784241325', 'default_member.png', NULL, NULL, NULL, '8d972c323b1839ef64cdbbca1e45f82e', NULL, NULL, NULL, NULL, NULL, '2016-10-31 21:41:09', '2016-10-31 21:41:09', NULL),
(873, 'Sai Soe Harn', 'saisoeharn@gmail.com', '$2y$10$kOlGIx/WpTWChOeI7tR3Q.KEOcIgX4wKPIAb2tyzeA.68Lj3u96gu', 'duIM8zZ78reuicIm6oHbXLBQ1H5b7fHGDJJAidMsfm8nGpdVycjBulX7OJeY', '09784216242', 'thumb_71323035283555.jpg', NULL, 8, '1995-06-01', '1', NULL, NULL, NULL, NULL, 'CVL5PIRJMYdkmuWWrNjVrixuNd8Kq8etYmPVS6nrZEi6xI49NzPQts27z9Ud', '2016-11-01 10:25:45', '2016-11-01 10:29:25', NULL),
(874, 'Aung Myat', 'aungmyat.gangster@gmail.com', NULL, 'RpZMCmtmPmcvp7ARtF4gPQdGgPIm5lSt5dSGmbMp', NULL, 'https://graph.facebook.com/v2.6/1807461939472417/picture?width=400&height=400', NULL, NULL, NULL, '1', '1807461939472417', 'EAAPMa6cPYRkBAEYpRZAOF7lNgzuX15aSAZAd2omD10injWnzI1uGCb3wPcv9ZB52VvgoK0nimZAtRzptfn5fNLXUBwfb4JYWPC3WAF94Y3eLUSZBiJoODSbHQPS8f8omD9tEUD6WWi87hQgzbjcSvqQmU04pc5d9SU3NdclDAGgZDZD', NULL, NULL, NULL, '2016-11-02 04:46:52', '2016-11-15 10:57:04', NULL),
(876, 'Ko Kyi Win', 'kokyiwin24@gmail.com', NULL, 'TAInElKejuXU0GyiBqJhwKIi0365Ecr9cuXmg84z14XTYHPwUk5up1rIJD1O', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/10314470_1644054759187976_5437864714604753420_n.jpg?_nc_eui2=v1%3AAeGtx5-XP815povdKhhDtTaw3Wy9bMpc4ohTnLJBbTjr8FwznIaRKp1CpX2krW-s548fnXMd93T3j0X_lU8yITs7OOIL4ESJ1NOVVS3ws3rNVA&oh=734c5bb2466dfee4d193b5a80dc', NULL, NULL, NULL, '1', '1757671081159676', 'v1%3AAeGtx5-XP815povdKhhDtTaw3Wy9bMpc4ohTnLJBbTjr8FwznIaRKp1CpX2krW-s548fnXMd93T3j0X_lU8yITs7OOIL4ESJ1NOVVS3ws3rNVA&oh=734c5bb2466dfee4d193b5a80dcf738e', NULL, NULL, NULL, '2016-11-04 12:32:09', '2016-11-04 12:32:09', NULL),
(877, 'Mya Su LeiLei Maung', 'myasuleileimg12@gmail.com', NULL, 'KnTG1Yyu5tyL9ALItO87Jm2FWRQY6PN5hUJDk2ULovdG08I4MCroAvFKlM1v', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/13177410_597495827081446_7102439151587085105_n.jpg?_nc_eui2=v1%3AAeHUVR6xE-_V2vlXNDkaqdkYd-MCPj-4YRwxVerdLfzVAHv_b56-7pGz_kUHHjsWZd3CK_Jbi88JpcU63jGn2ZNM5IbKubxrpn7NMmakLo82YnVUKLUr4-pSFnbXIu2KMMo&oh=ea7c4dc', NULL, NULL, NULL, '1', '679621378868890', 'v1%3AAeHUVR6xE-_V2vlXNDkaqdkYd-MCPj-4YRwxVerdLfzVAHv_b56-7pGz_kUHHjsWZd3CK_Jbi88JpcU63jGn2ZNM5IbKubxrpn7NMmakLo82YnVUKLUr4-pSFnbXIu2KMMo&oh=ea7c4dceef643523eff0581ff66e6d60', NULL, NULL, NULL, '2016-11-04 13:50:47', '2016-11-04 13:50:47', NULL),
(878, 'Lune Sandi', 'violetmoon.sandi@gmail.com', NULL, 'v8SsyY3VyQmQgSLlSXyORArJtGMCqh3YnNGCVMTC1mve98oUbxgLZupAJ7aI', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/14680639_1223341967752555_3157618956206207323_n.jpg?oh=964ad5555ac6f4e78f9e8a593ecdee3c&oe=58CFF037', NULL, NULL, NULL, '1', '1232504323502986', '964ad5555ac6f4e78f9e8a593ecdee3c', NULL, NULL, NULL, '2016-11-04 14:20:47', '2016-11-04 14:20:47', NULL),
(879, 'Zin Yaw Thon Lay', 'myloveisaccident1500@gmail.com', NULL, '0E5qxOMP0PizbIU9JAUUOZOaOa0xv2ZJLjnyWqrw', NULL, 'https://graph.facebook.com/v2.6/1204597339611177/picture?width=400&height=400', NULL, NULL, NULL, '1', '1204597339611177', 'EAAPMa6cPYRkBAJ8nRr2ZB641JtdpQrTy2UFz158lTaxZBI1IddYdZBygRaZBXNTKbcyCT6ZC56yLIlZB4FyY0jRZC7mmxZBBEXKdZA9ZBmI1YamEQ1HgbbNXjx74Om6bBQUPZBkzD00iSjgDaitG7v6OQ7JxYOjfcpn6RIZD', NULL, NULL, NULL, '2016-11-05 16:45:09', '2016-11-05 16:45:09', NULL),
(880, 'Nan Pwint Phyu Thein', 'tzawmuj@gmail.com', NULL, '8KUghm6WH1jlr8LCUtisWFr2TSfEBL9jXX1rfoO9', NULL, 'https://graph.facebook.com/v2.6/1847371012166158/picture?width=400&height=400', NULL, NULL, NULL, '1', '1847371012166158', 'EAAPMa6cPYRkBADEaapRlVpnV3MAfQ1IrpLIJIZAWmGZB3mZCUAkqLlWgUwdEg8vNF4IvyZAdQenocVynGX2zn6erfiW6zIbZCDgRkW0T4bxNwNBfcZAwDxf4OtmPdABMGbyd76V74C6K2R4ktFqbZB4G1THQNcOhiUZD', NULL, NULL, 'ngDmhr6tTXlIjYacmdEU7MiK7FtSrH0JRTRji89LKtyt8Oswvkj6Z1BUIwfW', '2016-11-05 16:49:32', '2016-11-05 16:50:14', NULL),
(881, 'Aung Zaw Min', 'sailattyar@gmail.com', NULL, 'Jcbpix7HbtyGZQQCvmNkRLxb9s3MyOrEV2rXjRa9', NULL, 'https://graph.facebook.com/v2.6/1157682210984887/picture?width=400&height=400', NULL, NULL, NULL, '1', '1157682210984887', 'EAAPMa6cPYRkBAJHAPZAvTku75D7mmZCsWChruiQZBVm3YZApMTQ4wYL9HqmN6We8Q0oFOYx9hckJIzCdH8NF7rJ9ZAJQyZCsULNQKtbDzylASXwijjwArUAgjAbWNqgUpZCMbMJygwjgdiZBAPY3HivhvFGILjrgWsgZD', NULL, NULL, 'G0U87BhQt48r0chsjjT85n7SstbSkoSQfxPqKGo97UOShDlKOLAWdsI7Jk8O', '2016-11-05 16:49:35', '2016-11-05 16:50:38', NULL),
(882, 'Tin Tun Aung', 'tintunaung.207@gmail.com', NULL, 'qrH5U7VU0dfLEIfMtYyMySzQDqXfWR577fWNHVjz', NULL, 'https://graph.facebook.com/v2.6/969987353130223/picture?width=400&height=400', NULL, NULL, NULL, '1', '969987353130223', 'EAAPMa6cPYRkBAGANmLqcHpewJutnoKdC1X26TgVi8tCSxZCEMPYBRZAIZAiNtIuZA2XN3GNdzmIy1eznKzRD1mKKIoDLEYezNR5ZA3gl0QSZAYUVF7pPlVaBBdrPbpk8v9uVovdX1Yk3ZAs1ZBbAftKnFIDkZA5yZAZBq8ZD', NULL, NULL, NULL, '2016-11-05 17:08:29', '2016-11-05 17:08:29', NULL),
(883, 'ChanMyae', NULL, '$2y$10$qAMomu5CPcx6GAQ15zE3x.5633/C2hmYUzA6WE54Cz6zESr4Gas2m', 'oE9ATsBXvj85VamGqxunDNNiVyYz7QxAXrLLx3t7yocmsD0r5pJ8FUfE6Gx5', '09799330118', 'default_member.png', NULL, NULL, NULL, '72fc785f3f3c9ddd48b5424c1da093f3', NULL, NULL, NULL, NULL, NULL, '2016-11-06 00:10:53', '2016-11-06 00:10:53', NULL),
(884, 'Zodina Lily Ivan', 'zodina.mgk@gmail.com', NULL, '4meeBf6ZlCi2zTv4nNVoHT7qLYexAwz5COQk6wU7', NULL, 'https://graph.facebook.com/v2.6/1314500225261050/picture?width=400&height=400', NULL, NULL, NULL, '1', '1314500225261050', 'EAAPMa6cPYRkBACUDCpnyMpNRLpeg8xpgUXxQRxccDVWRyXIiC6emO1rsk0sCV5zerYCYGnfZBCnwLd5nZAk2KdK1baZC7IZBcf2RlB3ZCK9p49jMJWKXzQp3fGtuHgYloRZB0paSAtr76O20usW9l5hDLdzbMfTe4XNnHBKZA3MpwZDZD', NULL, NULL, NULL, '2016-11-05 18:57:39', '2016-11-05 18:57:39', NULL),
(885, 'Nanda Depa', 'nandadepa@gmail.com', NULL, 'NHu88XJy6TL6D6bCQR61QPRPm9JnD38PMcsgyzpG', NULL, 'https://graph.facebook.com/v2.6/10155688679634852/picture?width=400&height=400', NULL, NULL, NULL, '1', '10155688679634852', 'EAAPMa6cPYRkBALoQ0u6XOVaaNLyp2QD1DELNYslFUDDVUDs3ZChXHxfog9mqq3k9mrqIygyva23br8AUlBobKYyhItUY9c3wAAU8azINARTi2R1JG5TmiGpnzEvw70YpasNZAAgFKbpZCrnq7D2xEXu38hHmI6TwtP85PB4MgZDZD', NULL, NULL, NULL, '2016-11-05 23:58:26', '2016-11-05 23:58:26', NULL),
(886, 'Nay myo', NULL, '$2y$10$fyHYgsuFXYKtdkkcmWAtqOVd2hAng3Jp54G4OL065PFueJh4ndeQG', 'pqrLM9hEQirtY0ckrgNiP7g90H8ZnR59VZ92r9uhqa1peNDeLwR2WT8i7BPD', '09442171570', 'default_member.png', NULL, NULL, NULL, 'd8bd17f01b4e01d72794cb8c18c86120', NULL, NULL, NULL, NULL, NULL, '2016-11-06 07:21:15', '2016-11-06 07:21:15', NULL),
(887, 'Bone Kyaw Real', 'drbonekyaw@gmail.com', NULL, 'nZ1SHZVcJUL3IdvvEvT54AyOkXdWhrRU2beQGYN9', NULL, 'https://graph.facebook.com/v2.6/749783961826272/picture?width=400&height=400', NULL, NULL, NULL, '1', '749783961826272', 'EAAPMa6cPYRkBAEZCZCbMdV3QqXdsioY4pZC3GzFXa5uVvZA5qrgIdu5ooxDdQwkdF6t0zl5IVgijKZAAxmWZAZBL8AhZA0Ma9N0HDoTqUpyRTdaITwMUBMA7g0nLKQaZAU5dXRUkReucsSiau11QZBdZBud2cThYFGquDQZD', NULL, NULL, NULL, '2016-11-06 01:41:47', '2016-11-06 01:41:47', NULL),
(888, 'wailinn', NULL, '$2y$10$f6fHg8ZE2Zbvi.xri6kM3.U0No5GOu5CJzhvQk7Dkb/p4JEYD.idS', 'Xollgw4Qa8No6XtCvg00CfnXFfsRsk6r5f1Qs87E1ICdEbW8WAe42ty8ktxp', '09423660550', 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'txEmI6dbQLGLzJludfQesg3LmRovkURHiUYjQZTnYNrzaAhtKZIV0RGFcSDt', '2016-11-06 22:00:57', '2016-11-06 15:31:48', NULL),
(893, 'Waiphyo Zomia', 'waiphyo.zomia66@gmail.com', NULL, 'xjK7HMxufOiepSWwBIrn6AvcALslGJqexh52VBW7', NULL, 'https://graph.facebook.com/v2.6/974305412715499/picture?width=400&height=400', NULL, NULL, NULL, '1', '974305412715499', 'EAAPMa6cPYRkBAPgy8s3Vhcin5xUREGHIZAFMkVHM2PNW1eHnynlwh6dS2gZBOLfk6YBj869ZAsv1psJEUgfsA8znZAGQUZBsnZAsZAa6s80OfZCW8R3EYJDHSVlFhmNXjOhZAnQpGXvOvBbZCb1XD4mVHQigSU67b8EiVPtpz4DDCTYAZDZD', NULL, NULL, NULL, '2016-11-07 05:43:37', '2016-11-07 05:43:37', NULL),
(894, 'Min Htet Aung', 'cutise.tortoise@gmail.com', NULL, 'U2ALYbjos8psMwWFGLf1WUYmsFS4R9amA8DEqidwphSnC1E5rZMdQbmzvaaK', NULL, 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpt1/v/t1.0-1/p160x160/10649764_1545404069048690_4377779414198687595_n.jpg?oh=1d687e417b998f5e6c6f84c73ff133b1&oe=589CC547&__gda__=1486399628_e5b253fbab26123355c923d6164adbff', NULL, NULL, NULL, '1', '1789728647949563', '1d687e417b998f5e6c6f84c73ff133b1', NULL, NULL, NULL, '2016-11-07 12:54:27', '2016-11-07 12:54:27', NULL),
(895, 'Sai Kyaw Zin', 'saikyawzinoo@gmail.com', NULL, 'Y9p9cAkfG7OdzuV9bQybLHqYS6D57f8ACPhnkEAf', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/14639709_10202482352137179_2532024073896189577_n.jpg?oh=6584bb6e17bedf66c327f9b4e769334d&oe=588DADFE', NULL, NULL, NULL, '1', '10202498236454277', '6584bb6e17bedf66c327f9b4e769334d', NULL, NULL, NULL, '2016-11-07 07:34:36', '2016-11-07 14:07:12', NULL),
(896, 'Katy On Katyon', 'katherinek19@gmail.com', NULL, 'IH3Zn1JUzRdkZZuf3U4wnleWvtTHYiQvm58QsgZejnAq4JADp3AMHFLUAQF9', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12963380_963830277066107_535187793341093426_n.jpg?oh=74e7a2b9387f1455044df21ce4db9f09&oe=5895201D', NULL, NULL, NULL, '1', '1129350797180720', '74e7a2b9387f1455044df21ce4db9f09', NULL, NULL, NULL, '2016-11-07 15:14:27', '2016-11-07 15:14:27', NULL),
(897, 'Moe Myint Kyaw', NULL, '$2y$10$ZwDCL6Wbh5AmIpI7BvAhvOe4CjOL9FmaoMH7Xus9GLvUSklivRtmm', 'ufBbL3fEN6RSgMFQ7DQO5CSCPzowZeSDyj6d4w9JBrEDGVYVgwLIGK0uWhIv', '09458164960', 'default_member.png', NULL, NULL, NULL, 'f2c9723c63a989a757a8caf6c2ac40d7', NULL, NULL, NULL, NULL, NULL, '2016-11-08 09:50:33', '2016-11-08 09:50:33', NULL),
(898, 'Aung Phyo Thwin', 'agphyo@gmail.com', '$2y$10$w18gnggGYbpMbVaj7bUeZuvH/OEU1GGvwVHa9pZ8x/CiCXd9QgT6q', 'Gt97XiGEqMh6cEkWPLg8zkNO94ixOILxLz75n9Vwv6hluxKDThuMqlwk4VnP', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'eADDig0n6Zg5PbN4mZMCK0dZu64r5TURUSXhHbDVyU1fMFeazyu82exEA59z', '2016-11-09 23:42:47', '2016-11-09 17:14:33', NULL),
(899, 'Aungmyo Htwe', NULL, NULL, 'AVMQgWUnjwG8zu0DZxJECqzJXoirdNTPRWSVB3GosO6S1JEMVF0VI7l8adeB', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/11214087_109588892711793_8378201067813788341_n.jpg?oh=7c96f2bcb2460aff7ff75324b90a3543&oe=5899C4B3', NULL, NULL, NULL, '1', '380946915575988', '7c96f2bcb2460aff7ff75324b90a3543', NULL, NULL, NULL, '2016-11-10 09:58:30', '2016-11-10 09:58:30', NULL),
(900, 'chomar', NULL, '$2y$10$eSc5n4GU1ib9Bapa9tGhs.UFib/iKwagrCBgmWzUKcLYn8/abNtoi', '26qGMTTS40QMA1ZrsHyyl8LZwKfYDWsDR9UohRQ9t3niIjjlsEZkxRJoPjyt', '09961614164', 'default_member.png', NULL, NULL, NULL, '7fe00f88adbcf32896b850390e3b2166', NULL, NULL, NULL, NULL, NULL, '2016-11-10 13:28:06', '2016-11-10 13:28:06', NULL),
(901, 'amtht', 'amthtwe17@gmail.com', '$2y$10$GYO/Z1X0DbP9uMnxreI1P.LmQGQCBIjDSCdcb/bCFcjoCI.1H6pYu', 'GK0GglaCjDfbPkw0piMFBHvxL3OF9HwfPqubeHhrwLdRmBxJb9p6KfUzYNIV', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'QYLcxIuilVdPtZut8smQCdH7tsRfgY61pEmowxnBC2fRcbnwM07tOFlC28SZ', '2016-11-10 13:36:19', '2016-11-10 07:12:35', NULL),
(902, 'Van Tha Par', 'siangsiang.ss20@gmail.com', NULL, '7WjYW06ev0kSAzYrAr20I5yt2iMJnMeuk5IsMw4M', NULL, 'https://graph.facebook.com/v2.6/1796773587267193/picture?width=400&height=400', NULL, NULL, NULL, '1', '1796773587267193', 'EAAPMa6cPYRkBAD23J5paEzrwtrgT5JN76gs7rz2qEtpAgmyssW0q6jPhldK8ZBI3VdvH3pRZBgQct9zXQAIvzZBjVcgMuxjqWdZCNzZCGt62rayNg7ZCYCz5zuWskcw9NIwjXNUaBtlC6pappgbQ7weGzmTCM8VfIZD', NULL, NULL, NULL, '2016-11-10 07:32:07', '2016-11-10 07:32:07', NULL),
(903, 'Wendy Cho', '009.wendy@gmail.com', NULL, '7HPRskdj1Ji6v9VLRD3Ns4c0Z9w9G5v2uaky0sZXYXgJwifeyObVoWcs0eps', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/13912598_645943012229975_225722763188510406_n.jpg?oh=35df2333fa94f6b07015d086f9eeb88f&oe=588CCAA4', NULL, NULL, NULL, '1', '698025763688366', '35df2333fa94f6b07015d086f9eeb88f', NULL, NULL, NULL, '2016-11-12 12:17:14', '2016-11-12 12:17:14', NULL),
(904, 'Khine Khine Zin', 'khinekhinezin7@gmail.com', '$2y$10$Zrc1ZPRh9bgnaUltAHQYGeXEyqtwL9YwGEAXsqQ8FQt0nYH3cj9Uu', 'AgDhWzEazMKLCFVLcZR26MCQbWjXTPklAs0CnpPgUaAuzYxCmvZUglni1OmY', '', 'thumb_21867329541471.jpg', '', 11, '1993-06-07', '1', NULL, NULL, NULL, NULL, '0tW7uM0FdfzGBVJLEW6saVbNdq5X9cB5IZNGhz92BaMZ8Ovzlwm2hWN13a3r', '2016-11-16 10:20:43', '2016-12-01 11:29:02', NULL),
(905, 'Eit Swe Min', NULL, NULL, 'yhKtopcNExlmISutNrgkcHZFjle1RdO7Wkt7V7cGlGrbtBVKe7Yb2fAQmY7v', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.160.160/p160x160/14595829_347045782297057_6356911783393010518_n.jpg?oh=45f1ab668e811bb1463cd31678df675f&oe=58CA1CE7', NULL, NULL, NULL, '1', '367720806896221', '45f1ab668e811bb1463cd31678df675f', NULL, NULL, NULL, '2016-11-17 10:30:08', '2016-11-17 10:30:08', NULL),
(906, 'Khin Aye Khin', 'khin2aye@hotmail.com', NULL, '9ZzbkMospbARR31x1MRASHoMob7tmGYbPtIVQKeHvFac1lA8aSAJow1jwYcg', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/13612131_1746934545546290_8069627798391452268_n.jpg?oh=051a911c6ccad82a79e46770851f7a9d&oe=58BBF7B9', NULL, NULL, NULL, '1', '1808168179422926', '051a911c6ccad82a79e46770851f7a9d', NULL, NULL, NULL, '2016-11-17 16:27:53', '2016-11-17 16:27:53', NULL),
(907, 'Yadanathiha', 'yadanathiha.acc@gmail.com', '$2y$10$xLL56P2sCnDHlseIAdtcfuZXtj/fmTOvjzDHesN15oLHUA5DAIM0i', 'Rkfy7cvjospBwZN9r6XijNNQHKCBY8Ol8H11dGB2fIApiLrjk70qnIO6bZJT', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'Y15OpQFBTCbaiJB02mACuz4aOOZKfP5PledK62ZwqjXIXj2sYRXNMLv2pUiw', '2016-11-18 10:16:22', '2016-11-21 02:47:26', NULL),
(908, 'Kyaw Soe Han', 'snowking.ksh94@gmail.com', NULL, 'BqNIWp5iU7amLTmJMbUYivmpO7rSxtVNpa1x3k0CiDOTPy1jTrtMOtDrKt0d', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/12508788_467547740036952_2546109300361404988_n.jpg?oh=d80f91d5ec06f04580c9e3e0313dc5ea&oe=588D4F1D', NULL, NULL, NULL, '1', '589511091173949', 'd80f91d5ec06f04580c9e3e0313dc5ea', NULL, NULL, NULL, '2016-11-18 10:38:58', '2016-11-18 10:38:58', NULL),
(909, 'Nyi Shel Dayday Ko', 'dayday791204@gmail.com', NULL, 'DSKN8KXK4NosfSUqkJ6YmOUYldCTNqt5KMc3c6bc', NULL, 'https://graph.facebook.com/v2.6/715292191953854/picture?width=400&height=400', NULL, NULL, NULL, '1', '715292191953854', 'EAAPMa6cPYRkBAOqB8b6skjwZBXaAVbUjs4FTpmZBAxzokDLsZBCVAUr7BqdH5jNWMbj8ibQFPgZBbFUc2QhdRlXV7ZC7vtTY1Wj6uME3GVLwjdI0bvtgQ3XJC7kzgacOPlOpl30D8HZBTBimBKUuGVLhlZCqm7DZBRHoR1zasfZA3YgZDZD', NULL, NULL, NULL, '2016-11-18 05:14:33', '2016-11-18 05:14:33', NULL),
(910, 'Muaugusta Shel', NULL, NULL, 'qbQpoQuB0INx6L3mS0aaKMc4cFiLcU8S9uutPS6pGfHeVcbCcCKXdTby5Y25', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/14053_1427382977556137_4465491045276490266_n.jpg?oh=1b2b5871b24cb21b7d85f69c2343b3b0&oe=58BCCD0C', NULL, NULL, NULL, '1', '1618173761810390', '1b2b5871b24cb21b7d85f69c2343b3b0', NULL, NULL, NULL, '2016-11-18 14:28:00', '2016-11-18 14:28:00', NULL),
(911, 'Htoo Kyaw', 'samuria.shadow.07@gmail.com', NULL, 'ijK2PygUUY5mn3mLKOwJtU5wuX2R4FK8iPQ9EtrNkaHzpZhTr2SmxfaSSov5', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/11220467_10208132452452779_3479296787790771805_n.jpg?oh=3987cf01ce37a4f47025feba22e36e5e&oe=58BF86A2', NULL, NULL, NULL, '1', '10211235686751697', '3987cf01ce37a4f47025feba22e36e5e', NULL, NULL, NULL, '2016-11-18 18:22:21', '2016-11-18 18:22:21', NULL),
(912, 'Hpone Lynn Myat NaingKhant', 'dairyoflove1569@gmail.com', '$2y$10$h1Ni2VhIV78mRorSJxXPwugQ00Pr8o0EwDvhQMHBDAJHi8aULh/PG', 'XwkVprtCv6EwTagHra44F5cpKpqk3JGzxYtSFckNUxYzNWQSBSZrwf6Vf0nT', '09972182908', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/15056256_863857683751585_8233522575395657354_n.jpg?oh=9dea4568ef420644ebb3fc8b004f2071&oe=5887CC3E', '', 16, '1995-07-12', '1', '865131863624167', '9dea4568ef420644ebb3fc8b004f2071', NULL, NULL, NULL, '2016-11-19 01:50:07', '2016-11-19 01:59:58', NULL),
(913, 'nbnbnbnb', NULL, '$2y$10$6oMXcTibyS/xIEI0foWe/Obj1FyAL5MSyPjW6Jxvm5eig.Rf/Zqhi', 'aIuuNnsrdYJvG8YtWmqLAPibRbtYGz9KpLoSE802XdPwJQetXRHexDGSSBiX', '111111111', 'default_member.png', NULL, NULL, NULL, 'b8037a1a02ed1183673a5b1ee4603fea', NULL, NULL, NULL, NULL, NULL, '2016-11-22 11:30:09', '2016-11-22 11:30:09', NULL),
(914, 'mgmg', NULL, '$2y$10$dm1osBND83uQAEhzYk1jfeLY5IRzUxtEaPv.6SjBMuu1ksa9hlLKi', '4TxnREmDqidLFzflziLbu4r7lyh2F1RiQUFbylz0Kkt2QdOga5USgVBHReUP', '1212121212', 'default_member.png', NULL, NULL, NULL, '6d971725b8bd435b02d707d34f5a073a', NULL, NULL, NULL, NULL, NULL, '2016-11-22 11:32:45', '2016-11-22 11:32:45', NULL),
(915, 'mgmg', NULL, '$2y$10$c8zmoKBFn9346X56/M3Mbu5XsIQ/6Bwu4TgXohd5XQG965KnLT3ae', 'GOYs4Mj6Eg8jixJr4Ag5HIbF7eFHQE3bxp6JhixvoOMm6g4Qom4iuGiFOH17', '121212121', 'default_member.png', NULL, NULL, NULL, '2c4ed425e8a382b36496590efd6ec9dd', NULL, NULL, NULL, NULL, NULL, '2016-11-22 12:54:14', '2016-11-22 12:54:14', NULL),
(916, 'xaveroz', 'hermansurya22@yahoo.com', NULL, '95rwXszybOz9CFQxYqn1rUhrNeGIZ8uzFWh71B0F', '08192819892', 'thumb_43636646022448.jpg', NULL, 43, '1998-11-17', '1', '228658964235992', 'EAAPMa6cPYRkBAG3flGQIehmWj0edIrilxdKAUXsSjciw5NFD0II6IAO5tf1uQ6zNAfbyaZAtdgegw7fYi4tYPRYysZAHUs0cdn2OZC5yFIRYxkMzPcXtia9ZCOqZBFxOoik8n0fG4mf9ks11KJ90DqURa4gFT9Dk30zzyFBi9DQZDZD', NULL, NULL, NULL, '2016-11-22 06:43:45', '2016-11-22 13:23:32', NULL),
(917, 'Moe Moe Yee', 'thingyanmoe@gmail.com', NULL, 'weyTcjLmcuZuiQSoauyCycVAWwYQHfuOqsO1grXOOeDAZr7PSKCmDP5Vo6VI', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.160.160/p160x160/10614161_804648332931427_7893726535920620053_n.jpg?oh=8f4d262a27a1cc1eea96bf79d767b95e&oe=58B35D65', NULL, NULL, NULL, '1', '1303160726413516', '8f4d262a27a1cc1eea96bf79d767b95e', NULL, NULL, NULL, '2016-11-22 14:36:09', '2016-11-22 14:36:09', NULL),
(918, 'May Nyo', 'maynyo17@gmail.com', NULL, 'gqX6S2dNJ1bHnmWQpRJdelaesCLx97qD9yfSV2v9JiGpecNnyF0CClJDjYTh', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/15027419_10208951796564675_5072000953285644342_n.jpg?oh=4b25fb9612d99228af9ce1ae5183a2c0&oe=58BEDAEA', NULL, NULL, NULL, '1', '10209029319382697', '4b25fb9612d99228af9ce1ae5183a2c0', NULL, NULL, NULL, '2016-11-22 16:42:18', '2016-11-22 16:42:18', NULL),
(919, 'Stephen Lee', 'slee888@gmail.com', NULL, 'ocdnNHGjTTbIfvrFVlHJsgj5N8r5HY8ewF1uuNZcHBJmiQjoebXt8ixwv7h2', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/558803_4568124673668_1266986463_n.jpg?_nc_eui2=v1%3AAeGmuuorf7ybnNR_tdWQ3iF_qhEwsKzHZ_NlSa4zvYZDyiOMQIR0e8gEKszw9_B7bb9DFvLd1FpmXmt09hODKpCu1IXtXj7Shs76KRiQq_Sqkg&oh=cddbb11c1ca4e80038e0e667a57aa3d2&oe=58881', NULL, NULL, NULL, '1', '10209884774488518', 'cddbb11c1ca4e80038e0e667a57aa3d2', NULL, NULL, NULL, '2016-11-22 19:26:07', '2016-11-22 19:26:07', NULL),
(920, 'SweZin', 'szmg81@gmail.com', '$2y$10$cY1AF8H1dnkE/hn8q6dSM.e628TC2.vif1WkfiBq5./WJkYPHyw36', 'pgyv5sKCi5kF3q9RXSLbDbhcdYdmGVBn7ghoc6B5SAT1kdVTgkbIiA48DWdt', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'WZtTqnfWOgoXWi4PcoPVrCXPjdGTOp1z9nPIdK3GMojGL3bLYr5bXdRYl1Ui', '2016-11-22 21:59:41', '2016-11-22 15:30:51', NULL),
(921, 'Charlotte', 'charlotte.charlottecho@gmail.com', '$2y$10$2L8BwKPU7NTJtHqNID7Jxuz4DpZPNyCkeY6xtKz3UlVlxM6KB6GZ2', 'JnZ9Ttd3LttgKFUoNqMG4rwbHFH6T50AvvqRYHZfqSKRWHihelkGJk9dZapF', NULL, 'default_member.png', NULL, NULL, NULL, 'a00cbac668750d4db90af017b8bff7ec', NULL, NULL, NULL, NULL, NULL, '2016-11-23 13:59:19', '2016-11-23 13:59:19', NULL),
(922, 'Khin Nyan Thit', 'khinnyanthit.khay@gmail.com', '$2y$10$3rK/mQzG2.hb/Xtbv2/QgeMh5oatVqjvT3ldnfufiMMZonxJQa/YC', 'QMP73cEWtQ4orwDA3qxUDVaOlGYAIbjdqhY87TlhukPs8SgOgnFyS4DDiOsR', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '9Vn8L63HbWOqCgXRS0bS4QslxzTFa4gC5z8TcyEvAAdiWr7qmEIANWKd6yNI', '2016-11-23 16:13:09', '2016-11-23 09:43:24', NULL),
(923, 'Sukte Lun', 'lunleuh1992@gmail.com', NULL, 'kOLCtIHRx1NmF8jzIiozxMYMBMILL8C2EuxtuUDIgGJVyfai8OXVpPAtaHrh', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p120x120/15171334_207406416366860_3633088543449768255_n.jpg?oh=fcc56189297973c6d7006b406872cee8&oe=58B64FF6', NULL, NULL, NULL, '1', '209102279530607', 'fcc56189297973c6d7006b406872cee8', NULL, NULL, NULL, '2016-11-24 20:23:30', '2016-11-24 20:23:30', NULL),
(924, 'Nicholas Norman', 'setnaung.sep30@gmail.com', NULL, 'UHIva7BjGisn03RonkbnmcVYF1ZpLpLKZ0citBCR', NULL, 'https://graph.facebook.com/v2.6/1011094292367295/picture?width=400&height=400', NULL, NULL, NULL, '1', '1011094292367295', 'EAAPMa6cPYRkBADZAnZACArFTqcynWFI8TmsjnEyXcxPXSPxVBVuQCVtRcMdIrIuoFb2QpdZBY2g0ykkNOc6hTibCdfiA50VNisn4jvpm5P683WcMZBfZBvC6qPAe5KvNvc0ZA3Lr4cFWKQV3jklq9ZBDDIrsAqNJF8ZD', NULL, NULL, NULL, '2016-11-25 03:17:18', '2016-11-25 03:17:18', NULL),
(925, 'Hla April', 'hlaapril14.ucss@gmail.com', '$2y$10$l3dlY354hGT9QfUXZE7RO.wsk4NAArXf8MTaEMlmTbqv5th7O4Bdy', 'Lz8zdywTnATAOyCQGUH5We7w6RATfzE25GSC90PlYxTDEoMufroAwH3tCZhV', '', 'https://graph.facebook.com/v2.6/601914893324343/picture?width=400&height=400', NULL, 1, '1993-04-14', '1', '601914893324343', 'EAAPMa6cPYRkBACUTPw6w0dmhZBQZCdpkmo2NG5LvT9kcqmUcEh2RkOI9uPDFZCdC1EAhtOBbRErivZByeq4fzDsQVxkqThSUuiRjgO2HMdYI5iS9PxtI9KC68hPvTvLqyuzHjYRRsDhy5kPyQxluV009unfHnSIZD', NULL, NULL, 'TFGpCfwn65MCKeyipBjmlOB7w5x4nM48IK1ayG1YHfRAnNLUcL5afuMsiBmD', '2016-11-25 06:13:35', '2016-11-30 04:56:17', NULL),
(926, 'Eobard Thawne', 'masterpikham@gmail.com', '$2y$10$GER1OskIp/ZpwodO1yaubOgShVTIKZOTguRVkZG6q9uwOAsxmr/wi', 'M5FReLiU0AOfpOZ2Pm6V57CXzb2BvKeel6tiSjFwCwHJkLKreDNXn11qQ1E6', '', 'thumb_28733631629932.jpg', 'Myaynigone', 32, '1992-05-21', '1', NULL, NULL, NULL, NULL, 'G5WpDGXAdfbO7Iazgf4psaYXuBELIzFRKEb8Q68BWw6olLvSzt5fFmNYUWpe', '2016-11-26 21:11:06', '2016-11-26 21:22:53', NULL),
(927, 'Htet', NULL, '$2y$10$UARIqBzQ7zExNr2VQNCYx.Gq.1D0pQyMbAWoY4y6hOx.9Fb2V2rj.', 'ieFwz0KvO4ZkaZqyShhG2ENNembGzRUkieiooNWpfX5OWfeF2cJwBx329iDM', '09788304565', 'default_member.png', NULL, NULL, NULL, 'ae088f7f8609d2b2ea4666f9b52b3c15', NULL, NULL, NULL, NULL, NULL, '2016-11-26 22:43:59', '2016-11-26 22:43:59', NULL),
(928, 'Mister Robot', 'johacker0043@gmail.com', '$2y$10$CnQStCx4kf20N2SviyD3S./2h7u4FdmS.qKnGBC9RAYoUyi5.va7S', 'BfPhUAlWv2JC1tBfShhNqJrRWhzGsLQAxs1DGbukefmwTDNsZXw4fumwrY02', '', 'thumb_22630901869602.jpg', NULL, 1, '1992-11-12', '1', NULL, NULL, NULL, NULL, 'bm0tAiLG2mEHkpnrqj3i4sAfO1UH6J6x4nipjVNt159NDvG48ieo1wGeoTFp', '2016-11-27 10:56:26', '2016-11-27 11:05:15', NULL),
(929, 'Zaki Ren', 'ruuhibiki@ecchi.uk.ht', NULL, 'R4q8XU2qKdGB03l1x280HND9PP87KQfXU9QOOiYU', NULL, 'https://graph.facebook.com/v2.6/1252708128135083/picture?width=400&height=400', NULL, NULL, NULL, '1', '1252708128135083', 'EAAPMa6cPYRkBANTN2JfzPBYH6Tx1zEImEYcZCRA7eofkSrrMMZAYF1bbURtwfIADqtrPpqRpwoJlEZA0IrxtLK6hHUkwQhZAGorZBYgXbyGhXvie6nc58thFkCQif0xOWydxL0jVLb3glIX4ZCj0ZCGTdMQiA7jeb8ZD', NULL, NULL, '4GYorNW9OUpim15rVFcdovskWofV4SYoK0iOdEo2a54xr2HnPMri78m4WTFc', '2016-11-27 13:03:22', '2016-11-27 13:04:26', NULL),
(930, 'ryu-kun', 'mrzakiridwan@gmail.com', '$2y$10$2XUihXKxqR8d/GLocOHrX.qJAF8Rc5a6iJ86km9U04GmDbdW8P8PS', '1az4XUDrgMGgTzHFzViFvNNMrc8OAVdNdOtZ0K9dcNd4YOFsEuzAeT0Of5rb', '', 'thumb_60049781011087.jpg', NULL, 10, '1997-11-11', '1', NULL, NULL, NULL, NULL, '034IhYPIs4jA04qHpXyhES5n55KIXxf28ePM4j2PuEaLKYuj3JZlhX1zKxQE', '2016-11-27 19:34:49', '2016-11-27 19:43:05', NULL),
(931, 'zxz', 'aqpunk21@gmail.com', '$2y$10$9ZGLd1YqjBCs1zyO1VQ2uOqXY.Lr8F0cNDV3ISv8le5WHtUypvzDW', '05paLGUHbkOvQM2HQMNHzvham2FxqMdxZv9q9ML8wIINvAGDbovRxhbI3io5', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'cbPPHu8zTT866fiyG7VSoWWt6LAUt6ckmGFUEE7YuqJfscW7oZQIiHpon2dW', '2016-11-27 21:03:07', '2016-11-27 14:34:45', NULL),
(932, 'Hay Mar', NULL, '$2y$10$fDvDQprc9XmEnhwr3wq/6.qq6gtuIR0XgxpratACU2moot/QHdjbm', '6sFps32Tgrq5O1uicUbg0wJlfiEc6e0ynlSRVJ0BKYA2fXMKLzavWo7E7Tgs', '09961569751', 'default_member.png', NULL, NULL, NULL, 'aeb591710ea9d42e21d1a87123407391', NULL, NULL, NULL, NULL, NULL, '2016-11-27 22:33:01', '2016-11-27 22:33:01', NULL),
(933, 'Denny Septian', 'studiodgy@gmail.com', NULL, 'K4L0tsUvultJrw849z9JpwxyOcqJ3xkd10eamt4U', NULL, 'https://graph.facebook.com/v2.6/1809334782638299/picture?width=400&height=400', NULL, NULL, NULL, '1', '1809334782638299', 'EAAPMa6cPYRkBAIolTebyZA6vHVaJYszd4HFZBlTt7XwkIrYDakujiMNNUbe0gXbUTZC7S9RrIgW3BZAmdTpqBRzEOEcVKkjpaW0EskL1VZA8xrgx8TdY7jyBPvP21YUuQE4bqddT6riVN459N5i34VhaNUUwIK6ErO0jZB6URbIQZDZD', NULL, NULL, NULL, '2016-11-27 16:37:30', '2016-11-27 16:37:30', NULL),
(934, 'Sad - Demon', 'sad.demon@outlook.com', NULL, 'EUPQELSEvkzv68zavgZGak4X30SZKHwFsk3s57Qj', NULL, 'https://graph.facebook.com/v2.6/129259514224124/picture?width=400&height=400', NULL, NULL, NULL, '1', '129259514224124', 'EAAPMa6cPYRkBAEIymjWZCaZA53sAwgmpH69ilEqqbfuYxsIB9w4ZCkff17uZCyy7z6vvgyHEGIrKj7NiO8rMNndfCSWxv2flZCKLVI5kZBBLu7WpL7ZAHcHNgoP6HaUCGYZCuZCfhW5QqTDJZCg7bcIalXt2SIZB2MDMNQnGptwpaqGugZDZD', NULL, NULL, NULL, '2016-11-27 21:54:31', '2016-11-27 21:54:31', NULL),
(935, 'xxxx', 'officialbugil17@gmail.com', '$2y$10$2poxzxz2O9N0XE2fKF975.UDz.3AelHux5PW72nKkCm7Zc3qhdace', 'h8BXivTGiSMVQCSq6xHkfifP4oiDHBRiOPZ19NuSXJCmfaTpYQBxAzHTtSRX', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'UWFoSZf9JgQDSp5aI4g2FJ1kh5K52Tr4W5CD4wywppzlsdbLetydYsRxXc4U', '2016-11-28 15:11:07', '2016-11-28 08:52:09', NULL),
(936, 'john', 'kamkam.php@gmail.com', '$2y$10$dMH5gHfU1wrku4QOQIljsOiRDB8WcJrYy/oj38dn84Ueg1zpja4w.', 'vNE06bCUB4ykUNKkS0mvieef939WGDR0n40HXLt93dXuMDLPLC5WuXMwjK5z', NULL, 'default_member.png', NULL, NULL, NULL, '53a0a486a888aa8b181a8fe6388a7179', NULL, NULL, NULL, NULL, NULL, '2016-11-28 18:07:45', '2016-11-28 18:07:45', NULL),
(937, 'sadam', 'sadamputranalendra4@gmail.com', '$2y$10$zZRzQFm4lJ4pgvPvld6pFO91XaAmtp7JuIbqz0UR5T2Pdtg2Rzxz2', 'hyKSh0W1jPJQBgP4WMvMyLGSNyHnrCv86MPthG7w93OfABppkECQbzlNY7Zi', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'ptnzDZYZJOsC4ituM6xUvO3FZzeFo0qb8W7eG5c79i4fwcFWx5ehyiMRpwPp', '2016-11-28 18:52:52', '2016-11-28 12:23:14', NULL),
(938, 'Alan Walker', 'kaka_rean@yahoo.com', NULL, 'NILxKxFtGBrk7FsGpN9ozCvnJ0LjUYta9sbwPyAc', NULL, 'https://graph.facebook.com/v2.6/2179679592257379/picture?width=400&height=400', NULL, NULL, NULL, '1', '2179679592257379', 'EAAPMa6cPYRkBAASboCI9FuJDq4VYU7XrZAUhFyyGJZCCT7h7kqVvpG5wBZAA2Qy3Sb9xLWrXvafKaYqV4jNVLBzKSp0fIHOeKmIuHhNsuWHL1A7rlGVerlfCN5e9kO4AMc4eWzgqs63KuCgZAjFDvuAJBs2T7AmHqhwmCIQ1QQZDZD', NULL, NULL, NULL, '2016-11-28 12:38:22', '2016-11-28 12:38:22', NULL),
(939, 'Roby Firnando Yusuf', 'kryptonraven@gmail.com', NULL, 'ylcfcBqRZqiK07GhUkexNtMsoog4UtXQpFjNhWHQ', NULL, 'https://graph.facebook.com/v2.6/376811832662959/picture?width=400&height=400', NULL, NULL, NULL, '1', '376811832662959', 'EAAPMa6cPYRkBAG6z6tDjgZAxmt3RqW47mxLHjme1F3ZB3LvNlTf3KVSKmlRvJCWiKIEZC0QgDaydeSArE1eZB1DQUy1yDEVLd9JlhoyBdQUh7xwd6u6VY0Ott6zZAM8a3au9eoAe3iXFqksqyE4qhXxqM40Az6CDiICboYCQNkQZDZD', NULL, NULL, NULL, '2016-11-28 14:14:55', '2016-11-28 14:14:55', NULL),
(940, 'umgmg', NULL, '$2y$10$hGyC9BHc7DbDYkVdaZyQ9.886276QQKWcmuvmHcxU5PktOyCTcM4y', '1ZwA6JVUSrxnDtOP0fBPKEb30kZAlgIi2IVlDXJ0An9dVf8jsWGg81m2gLAF', '09786165060', 'default_member.png', NULL, NULL, NULL, '9d6cec8053bcc1c56fb67d5901b06ea0', NULL, NULL, NULL, NULL, NULL, '2016-11-29 09:11:46', '2016-11-29 09:11:46', NULL),
(941, 'Az Cy', 'pinocchio.christiano@gmail.com', '$2y$10$.rt1jCc34G9fM0IB4mP6/OSq63StUVypAkxBXFtJjeiRaTOYLSVeu', 'PYzdstwcQQpvwSSIoO3bnAryCuOPaqwZd94qWin62SMQGmvl5npyvlIOM8ug', '1817081945', 'thumb_54917802691900.jpg', NULL, 1, '2016-11-30', '1', '170270510108643', 'EAAPMa6cPYRkBAOhuaNJsZCJZCUUYBW18BLpWTlALsFmsfJmpx9rYIY019eHe90rsoLmC8eaKnOZCfdEfdCrEtaVez2jOlhaucSFBXhhRxYoc7fW2SJjZCHORbZCt5BOPTfkgU7XPkcmpPi2rNAw0WandIyMcZAl8W2Up8QJgx4mgZDZD', NULL, NULL, NULL, '2016-11-29 05:03:03', '2016-11-29 11:45:42', NULL),
(942, 'kyaw thu ya nyein', 'kyawmyohteth28@gmail.com', '$2y$10$c.vUgODXn.kAWbFLcxttXO8mdX8ugkqJsE2sOiHpAdipg2pbb/mOm', 'E8PRdCWYC7C7EWJwSlt4cFKFV7HY5LR8HdNy53y0ZGi9GoCeDpFUDyeKx3UU', '09261140654', 'https://graph.facebook.com/v2.6/347590198941540/picture?width=400&height=400', NULL, 46, '1985-09-30', '718e9a3182570cd1d7cdf51d64b5064f', '347590198941540', 'EAAPMa6cPYRkBAPQgRn0h5bO0FiOnjhuKRkx0XHJ4LyA2ZCTgaWAu883mbolydi7G4aIc7qRgUwe9Ycge3u37X5oAFVIXzDXclODzvuBC7EFKVRnXuoZBo5mCHKV2aarsqKUOyAmZCPvO1Qki33JdFX0zMKCw8QZD', NULL, NULL, NULL, '2016-11-29 14:08:17', '2016-11-29 14:12:44', NULL),
(943, 'jayden wee', 'jayden.wee@jclglobal.net', '$2y$10$ZyCgqN6kshvT9RZ9rOof8OA8k1xekLkm6T9hIGndpFJqEUhvrgRa2', 'nMKOJuO2fNyNFh8bDsFnoYZQL6vFhBiDwXde2ymsOqwjbaGusx4zxXL2vy9S', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'EJKpUGwmi5JBOwVTEpx8pW5H13TtDgS2HA2kYobkJ0tKhdHdxbIWDMiIRPCN', '2016-11-29 15:32:54', '2016-11-29 09:03:18', NULL),
(944, 'ေဆာင္းေငြသဇင္', NULL, '$2y$10$ac9qjkrfq4jmGToLeGMdAun6s3KqKeWDTiJ11pezy0qXONOGjXsgG', 'u1kSbhAx8hvLr3awPjMph2lNSGCTGqFyuEklJ7Qt8J3svM7zR2DsMTFwtOOW', '09452601520', 'default_member.png', NULL, NULL, NULL, '0bdebcfc19b24860ed9000b834596066', NULL, NULL, NULL, NULL, NULL, '2016-11-29 21:06:48', '2016-11-29 21:06:48', NULL),
(945, 'ေဆာင္းေငြသဇင္', NULL, '$2y$10$a3dU4KdlYD5XBq8qhjdaxufUq6Omo1xz56cnOH9.EWbAyUj/nj.yC', '00TSlXz5uVb4ZDtaw9VeX6Sf2Hxiwz859tJBHAizKEZpLVY2Z4Cu1U5vKxXz', '09452601520', 'default_member.png', NULL, NULL, NULL, 'b8f55e54308eaea93d06535fbfcf72bc', NULL, NULL, NULL, NULL, NULL, '2016-11-29 21:06:48', '2016-11-29 21:06:48', NULL),
(946, 'ေဆာင္းေငြသဇင္', NULL, '$2y$10$UrpLlGn2vwERWN2nA7iyz.YtZoGiJsAKHCQETOHi1auQVBsN1PfmC', 'vsT5j6b16xqPMi3lAslvjrB1p2dT0IjEZsC45hPv1NtBfGAQmLp7IigilEan', '09452601520', 'default_member.png', NULL, NULL, NULL, '0606a17966ffa16df28d5c46a84a81ed', NULL, NULL, NULL, NULL, NULL, '2016-11-29 21:06:48', '2016-11-29 21:06:48', NULL),
(947, 'ေဆာင္းေငြသဇင္', NULL, '$2y$10$fxalj.DWxp.DJ3it9WnnAuSibYfYq5yS/cgBk9iErJqcAGY5TlKfy', 'F3XILQurSwCK524JLUUzIFpmwJTGNM53bVxjReBWbfwPBNNkhWuRaawaxEVy', '09452601520', 'default_member.png', NULL, NULL, NULL, 'a3aeb46d75a4bd2463c5ad9a9965cbeb', NULL, NULL, NULL, NULL, NULL, '2016-11-29 21:06:48', '2016-11-29 21:06:48', NULL),
(948, 'ေဆာင္းေငြသဇင္', NULL, '$2y$10$IAz7PgmQrfZRTeZIPL30OunjsfUs3UpC4eOzuIoKkOqCca2iq9H.y', 'OU1oIeWzvr0xAHGdytPtuD15ZNLXE8TD7k3lneeTKXNDuG1ALLe8iqIFvkKc', '09452601520', 'default_member.png', NULL, NULL, NULL, '88d1a2ab8927e789250bcf7dffca8c5f', NULL, NULL, NULL, NULL, NULL, '2016-11-29 21:06:48', '2016-11-29 21:06:48', NULL),
(949, 'ace', 'aceinsurancemobile@gmail.com', '$2y$10$8kFCO/GEwInC4BSDEPrAQudbBZpQsRdi/EyNpZm6h6HunbaQZIwne', 'Q88wH8YCRdc9HmvarUjTEkhAK3PsurJ1IkZDMKRx9xI9WrY1J1mzdVCwYWzO', NULL, 'default_member.png', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'UowzIRboffDZpQec6kmFe1sQ1qSBaMPFwtC0pIYjtkFuVZo8Eg3PebHm0og7', '2016-11-30 09:26:00', '2016-11-30 11:21:16', NULL),
(950, 'Maymyat San', 'milaysan@gmail.com', NULL, 'pKJTuibv5jTyxMJxuRourq7wsLvENnIpxQjkkKZ2BhkwIkKUGpWys7FTVooL', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/12662629_941926975901472_2086305729914492382_n.jpg?oh=0d84ed14dd48d7ac4237b7a31bc8a355&oe=58C0AC07', NULL, NULL, NULL, '1', '1153742014719966', '0d84ed14dd48d7ac4237b7a31bc8a355', NULL, NULL, NULL, '2016-11-30 16:08:06', '2016-11-30 16:08:06', NULL),
(951, 'Man Man', NULL, NULL, 'PEZf4J797EpDOTt5yEvpqs71ChX264xXTTEkEONvszwunDlaTRIDjOQyZr04', NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p160x160/11150461_10206383964745257_5993121546631360854_n.jpg?oh=65e5e0c80c14201ff93ecadc51caedec&oe=58C63FFE', NULL, NULL, NULL, '1', '10210570429244253', '65e5e0c80c14201ff93ecadc51caedec', NULL, NULL, NULL, '2016-12-01 15:40:30', '2016-12-01 15:40:30', NULL),
(952, 'theikchan', 'theikchan.tc@gmail.com', '$2y$10$d5O5CMO320JqsZ8DewgCcuTR/9VLZZq5opZ4DzHTLT2SCx3/2ZG/6', 'ALPApTq2oCXibw9NIcya6nJ2BnSGdYMvYAoqfr51X6gFJ7OqUwLdBGcU27yI', NULL, 'thumb_77318337803528.jpg', NULL, 2, '1999-12-07', '1', NULL, NULL, NULL, NULL, '2wo3mtwuBxZCXyI4fWthywzg63Gsn2e2INpCCaGNaUFFicWkot72SMhEpKxP', '2016-12-07 17:14:58', '2016-12-07 17:45:28', NULL),
(953, 'YoYo', NULL, '$2y$10$xzBFYRv8tjXKkbJyL7K8wu.QjJN0N0iT3WEihhZSqQ.fOjF9XXSRW', 'G2QUBikMEXVBwszciOByIR6ACsW4uEMYrraV6GoyHJ4PulOhx88idcUApnyo', '09974239130', 'default_member.png', NULL, NULL, NULL, '3a4b62f7e0b0d0715e5bde7022508e1d', NULL, NULL, NULL, NULL, NULL, '2016-12-08 17:22:09', '2016-12-08 17:22:09', NULL),
(955, 'su pyaw', NULL, '$2y$10$18sTHEqpsUrfR7VJhf55C.dQU/bjQPK1DOZi6mUPPnObfhTk.AuYy', 'eEYrWbxJd7J5TbETIrtzMUjMGVpzXtpSV2HguXVGner2fpeTklkYPk0kxjXN', '09420009664', 'default_member.png', NULL, NULL, NULL, '94aa0b43b0d2cd2b2c187c5a0a83ebe3', NULL, NULL, NULL, NULL, NULL, '2016-12-16 09:52:00', '2016-12-16 09:52:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `User_Business`
--

CREATE TABLE IF NOT EXISTS `User_Business` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User_History`
--

CREATE TABLE IF NOT EXISTS `User_History` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:create account,2:create restaurant,3:create coupon,4:bookmark restaruant,5:rate restaurant,6:takencoupon,7:changeprofile',
  `type_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `User_History`
--

INSERT INTO `User_History` (`id`, `user_id`, `type`, `type_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 740, 2, 2, 'take coupon.', '2016-12-15 15:19:56', '2016-12-15 15:19:56', NULL),
(2, 740, 6, 14, 'branch has been removed from favourite list.', '2016-12-15 16:34:19', '2016-12-15 16:34:19', NULL),
(3, 740, 6, 6, 'branch has been removed from favourite list.', '2016-12-15 16:34:22', '2016-12-15 16:34:22', NULL),
(4, 740, 6, 3, 'branch has been removed from favourite list.', '2016-12-15 16:34:26', '2016-12-15 16:34:26', NULL),
(5, 740, 6, 11, 'branch has been removed from favourite list.', '2016-12-15 16:34:30', '2016-12-15 16:34:30', NULL),
(6, 952, 6, 9, 'barnch has been added to favourite list.', '2016-12-15 17:00:55', '2016-12-15 17:00:55', NULL),
(7, 952, 12, 9, 'commented on', '2016-12-15 17:16:45', '2016-12-15 17:16:45', NULL),
(8, 952, 11, 3, 'you give 5 star(s)', '2016-12-15 17:53:26', '2016-12-15 17:53:26', NULL),
(9, 88, 2, 17, 'take coupon.', '2016-12-15 18:08:08', '2016-12-15 18:08:08', NULL),
(10, 88, 4, NULL, 'Changed name.', '2016-12-15 18:08:58', '2016-12-15 18:08:58', NULL),
(11, 18, 6, 5, 'branch has been removed from favourite list.', '2016-12-16 09:46:03', '2016-12-16 09:46:03', NULL),
(12, 18, 6, 87, 'branch has been removed from favourite list.', '2016-12-16 09:46:07', '2016-12-16 09:46:07', NULL),
(13, 18, 4, NULL, 'Updated township.', '2016-12-16 09:46:46', '2016-12-16 09:46:46', NULL),
(14, 18, 2, 1, 'take coupon.', '2016-12-16 09:49:57', '2016-12-16 09:49:57', NULL),
(15, 955, 1, NULL, 'create account', '2016-12-16 09:52:00', '2016-12-16 09:52:00', NULL),
(16, 18, 11, 6, 'you give 1 star(s)', '2016-12-16 10:00:44', '2016-12-16 10:00:44', NULL),
(17, 18, 11, 6, 'you give 1 star(s)', '2016-12-16 10:00:44', '2016-12-16 10:00:44', NULL),
(18, 18, 11, 6, 'you give 1 star(s)', '2016-12-16 10:00:44', '2016-12-16 10:00:44', NULL),
(19, 18, 11, 6, 'you give 1 star(s)', '2016-12-16 10:00:44', '2016-12-16 10:00:44', NULL),
(20, 18, 11, 6, 'you give 1 star(s)', '2016-12-16 10:00:44', '2016-12-16 10:00:44', NULL),
(21, 18, 11, 6, 'you give 2 star(s)', '2016-12-16 10:00:45', '2016-12-16 10:00:45', NULL),
(22, 18, 11, 6, 'you give 2 star(s)', '2016-12-16 10:00:45', '2016-12-16 10:00:45', NULL),
(23, 18, 11, 6, 'you give 2 star(s)', '2016-12-16 10:00:45', '2016-12-16 10:00:45', NULL),
(24, 18, 11, 6, 'you give 2 star(s)', '2016-12-16 10:00:45', '2016-12-16 10:00:45', NULL),
(25, 18, 11, 6, 'you give 2 star(s)', '2016-12-16 10:00:45', '2016-12-16 10:00:45', NULL),
(26, 18, 11, 6, 'you give 2 star(s)', '2016-12-16 10:00:45', '2016-12-16 10:00:45', NULL),
(27, 18, 11, 6, 'you give 2 star(s)', '2016-12-16 10:00:45', '2016-12-16 10:00:45', NULL),
(28, 18, 2, 17, 'take coupon.', '2016-12-16 10:09:01', '2016-12-16 10:09:01', NULL),
(29, 18, 2, 1, 'take coupon.', '2016-12-16 10:09:45', '2016-12-16 10:09:45', NULL),
(30, 5, 2, 103, 'take coupon.', '2016-12-16 10:25:50', '2016-12-16 10:25:50', NULL),
(31, 88, 12, 3, 'commented on', '2016-12-16 10:39:10', '2016-12-16 10:39:10', NULL),
(32, 88, 11, 3, 'you give 1 star(s)', '2016-12-16 10:39:14', '2016-12-16 10:39:14', NULL),
(33, 88, 11, 3, 'you give 2 star(s)', '2016-12-16 10:39:40', '2016-12-16 10:39:40', NULL),
(34, 88, 11, 3, 'you give 3 star(s)', '2016-12-16 10:39:41', '2016-12-16 10:39:41', NULL),
(35, 88, 11, 3, 'you give 5 star(s)', '2016-12-16 10:39:51', '2016-12-16 10:39:51', NULL),
(36, 88, 11, 3, 'you give 5 star(s)', '2016-12-16 10:39:56', '2016-12-16 10:39:56', NULL),
(37, 88, 11, 3, 'you give 3 star(s)', '2016-12-16 10:39:57', '2016-12-16 10:39:57', NULL),
(38, 88, 11, 3, 'you give 3 star(s)', '2016-12-16 10:39:57', '2016-12-16 10:39:57', NULL),
(39, 88, 11, 3, 'you give 2 star(s)', '2016-12-16 10:39:58', '2016-12-16 10:39:58', NULL),
(40, 88, 11, 3, 'you give 2 star(s)', '2016-12-16 10:40:06', '2016-12-16 10:40:06', NULL),
(41, 88, 11, 4, 'you give 1 star(s)', '2016-12-16 10:40:28', '2016-12-16 10:40:28', NULL),
(42, 88, 12, 4, 'commented on', '2016-12-16 10:40:38', '2016-12-16 10:40:38', NULL),
(43, 88, 12, 4, 'commented on', '2016-12-16 10:40:47', '2016-12-16 10:40:47', NULL),
(44, 88, 11, 4, 'you give 2 star(s)', '2016-12-16 10:41:11', '2016-12-16 10:41:11', NULL),
(45, 88, 11, 4, 'you give 2 star(s)', '2016-12-16 10:41:27', '2016-12-16 10:41:27', NULL),
(46, 88, 11, 4, 'you give 1 star(s)', '2016-12-16 10:41:27', '2016-12-16 10:41:27', NULL),
(47, 88, 11, 4, 'you give 1 star(s)', '2016-12-16 10:41:44', '2016-12-16 10:41:44', NULL),
(48, 88, 11, 4, 'you give 1 star(s)', '2016-12-16 10:45:07', '2016-12-16 10:45:07', NULL),
(49, 88, 11, 4, 'you give 1 star(s)', '2016-12-16 10:51:50', '2016-12-16 10:51:50', NULL),
(50, 88, 11, 3, 'you give 1 star(s)', '2016-12-16 10:56:46', '2016-12-16 10:56:46', NULL),
(51, 88, 11, 3, 'you give 1 star(s)', '2016-12-16 10:57:00', '2016-12-16 10:57:00', NULL),
(52, 952, 12, 3, 'commented on', '2016-12-16 13:43:47', '2016-12-16 13:43:47', NULL),
(53, 952, 11, 3, 'you give 5 star(s)', '2016-12-16 13:45:13', '2016-12-16 13:45:13', NULL),
(54, 88, 4, NULL, 'Changed name.', '2016-12-16 14:57:21', '2016-12-16 14:57:21', NULL),
(55, 88, 4, NULL, 'Update address.', '2016-12-16 14:57:38', '2016-12-16 14:57:38', NULL),
(56, 88, 4, NULL, 'Updated township.', '2016-12-16 14:58:08', '2016-12-16 14:58:08', NULL),
(57, 88, 5, 1, 'Exchange gift coupon with 1 points.', '2016-12-16 15:34:47', '2016-12-16 15:34:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id_unique` (`id`),
  ADD UNIQUE KEY `admin_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `App_Version`
--
ALTER TABLE `App_Version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Branch`
--
ALTER TABLE `Branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Branch_Business_Type`
--
ALTER TABLE `Branch_Business_Type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Branch_Category`
--
ALTER TABLE `Branch_Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Branch_Currency`
--
ALTER TABLE `Branch_Currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Branch_Feature`
--
ALTER TABLE `Branch_Feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Branch_Ranking`
--
ALTER TABLE `Branch_Ranking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Business`
--
ALTER TABLE `Business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Business_Group`
--
ALTER TABLE `Business_Group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `businessgroup_id_unique` (`id`);

--
-- Indexes for table `Business_Type`
--
ALTER TABLE `Business_Type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Coupon`
--
ALTER TABLE `Coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Coupon_Branch`
--
ALTER TABLE `Coupon_Branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Coupon_Business_Type`
--
ALTER TABLE `Coupon_Business_Type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Coupon_Slider`
--
ALTER TABLE `Coupon_Slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Currency`
--
ALTER TABLE `Currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Favourite_Branch`
--
ALTER TABLE `Favourite_Branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Feature`
--
ALTER TABLE `Feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Hot_Deal`
--
ALTER TABLE `Hot_Deal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Hot_Deal_Branch`
--
ALTER TABLE `Hot_Deal_Branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Hot_Deal_Slider`
--
ALTER TABLE `Hot_Deal_Slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Invite_Merchant`
--
ALTER TABLE `Invite_Merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Item_Branch`
--
ALTER TABLE `Item_Branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Merchant`
--
ALTER TABLE `Merchant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_id_unique` (`id`);

--
-- Indexes for table `Merchant_History`
--
ALTER TABLE `Merchant_History`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_history_id_unique` (`id`);

--
-- Indexes for table `Merchant_Notification`
--
ALTER TABLE `Merchant_Notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Merchant_Role`
--
ALTER TABLE `Merchant_Role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PasswordRecovery`
--
ALTER TABLE `PasswordRecovery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passwordrecovery_id_unique` (`id`);

--
-- Indexes for table `Photo`
--
ALTER TABLE `Photo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photo_id_unique` (`id`);

--
-- Indexes for table `Point`
--
ALTER TABLE `Point`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `point_id_unique` (`id`);

--
-- Indexes for table `Point_Coupon_Branch`
--
ALTER TABLE `Point_Coupon_Branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Point_Prize`
--
ALTER TABLE `Point_Prize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Point_Prize_Coupon`
--
ALTER TABLE `Point_Prize_Coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Point_Prize_Slider`
--
ALTER TABLE `Point_Prize_Slider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `point_prize_slider_id_unique` (`id`);

--
-- Indexes for table `Popular_Land_Mark`
--
ALTER TABLE `Popular_Land_Mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Redeem`
--
ALTER TABLE `Redeem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `Slider`
--
ALTER TABLE `Slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Slider_Detail`
--
ALTER TABLE `Slider_Detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Taken_Coupon`
--
ALTER TABLE `Taken_Coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taken_coupon_id_unique` (`id`);

--
-- Indexes for table `Township`
--
ALTER TABLE `Township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_unique` (`id`),
  ADD UNIQUE KEY `user_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- Indexes for table `User_Business`
--
ALTER TABLE `User_Business`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_business_id_unique` (`id`);

--
-- Indexes for table `User_History`
--
ALTER TABLE `User_History`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `history_id_unique` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `App_Version`
--
ALTER TABLE `App_Version`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Branch`
--
ALTER TABLE `Branch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `Branch_Business_Type`
--
ALTER TABLE `Branch_Business_Type`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=527;
--
-- AUTO_INCREMENT for table `Branch_Category`
--
ALTER TABLE `Branch_Category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `Branch_Currency`
--
ALTER TABLE `Branch_Currency`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `Branch_Feature`
--
ALTER TABLE `Branch_Feature`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `Branch_Ranking`
--
ALTER TABLE `Branch_Ranking`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `Business`
--
ALTER TABLE `Business`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `Business_Group`
--
ALTER TABLE `Business_Group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `Business_Type`
--
ALTER TABLE `Business_Type`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `Coupon`
--
ALTER TABLE `Coupon`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `Coupon_Branch`
--
ALTER TABLE `Coupon_Branch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `Coupon_Business_Type`
--
ALTER TABLE `Coupon_Business_Type`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `Coupon_Slider`
--
ALTER TABLE `Coupon_Slider`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=376;
--
-- AUTO_INCREMENT for table `Currency`
--
ALTER TABLE `Currency`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Favourite_Branch`
--
ALTER TABLE `Favourite_Branch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=264;
--
-- AUTO_INCREMENT for table `Feature`
--
ALTER TABLE `Feature`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Hot_Deal`
--
ALTER TABLE `Hot_Deal`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Hot_Deal_Branch`
--
ALTER TABLE `Hot_Deal_Branch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Hot_Deal_Slider`
--
ALTER TABLE `Hot_Deal_Slider`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Invite_Merchant`
--
ALTER TABLE `Invite_Merchant`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Item`
--
ALTER TABLE `Item`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Item_Branch`
--
ALTER TABLE `Item_Branch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Merchant`
--
ALTER TABLE `Merchant`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Merchant_History`
--
ALTER TABLE `Merchant_History`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Merchant_Notification`
--
ALTER TABLE `Merchant_Notification`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Merchant_Role`
--
ALTER TABLE `Merchant_Role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PasswordRecovery`
--
ALTER TABLE `PasswordRecovery`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `Photo`
--
ALTER TABLE `Photo`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Point`
--
ALTER TABLE `Point`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Point_Coupon_Branch`
--
ALTER TABLE `Point_Coupon_Branch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `Point_Prize`
--
ALTER TABLE `Point_Prize`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Point_Prize_Coupon`
--
ALTER TABLE `Point_Prize_Coupon`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Point_Prize_Slider`
--
ALTER TABLE `Point_Prize_Slider`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Popular_Land_Mark`
--
ALTER TABLE `Popular_Land_Mark`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `Redeem`
--
ALTER TABLE `Redeem`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Slider`
--
ALTER TABLE `Slider`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Slider_Detail`
--
ALTER TABLE `Slider_Detail`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `Taken_Coupon`
--
ALTER TABLE `Taken_Coupon`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1020;
--
-- AUTO_INCREMENT for table `Township`
--
ALTER TABLE `Township`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=956;
--
-- AUTO_INCREMENT for table `User_Business`
--
ALTER TABLE `User_Business`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `User_History`
--
ALTER TABLE `User_History`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
