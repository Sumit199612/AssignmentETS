-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2024 at 02:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etsassignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'North and Middle Andaman', 32, NULL, NULL),
(2, 'South Andaman', 32, NULL, NULL),
(3, 'Nicobar', 32, NULL, NULL),
(4, 'Adilabad', 1, NULL, NULL),
(5, 'Anantapur', 1, NULL, NULL),
(6, 'Chittoor', 1, NULL, NULL),
(7, 'East Godavari', 1, NULL, NULL),
(8, 'Guntur', 1, NULL, NULL),
(9, 'Hyderabad', 1, NULL, NULL),
(10, 'Kadapa', 1, NULL, NULL),
(11, 'Karimnagar', 1, NULL, NULL),
(12, 'Khammam', 1, NULL, NULL),
(13, 'Krishna', 1, NULL, NULL),
(14, 'Kurnool', 1, NULL, NULL),
(15, 'Mahbubnagar', 1, NULL, NULL),
(16, 'Medak', 1, NULL, NULL),
(17, 'Nalgonda', 1, NULL, NULL),
(18, 'Nellore', 1, NULL, NULL),
(19, 'Nizamabad', 1, NULL, NULL),
(20, 'Prakasam', 1, NULL, NULL),
(21, 'Rangareddi', 1, NULL, NULL),
(22, 'Srikakulam', 1, NULL, NULL),
(23, 'Vishakhapatnam', 1, NULL, NULL),
(24, 'Vizianagaram', 1, NULL, NULL),
(25, 'Warangal', 1, NULL, NULL),
(26, 'West Godavari', 1, NULL, NULL),
(27, 'Anjaw', 3, NULL, NULL),
(28, 'Changlang', 3, NULL, NULL),
(29, 'East Kameng', 3, NULL, NULL),
(30, 'Lohit', 3, NULL, NULL),
(31, 'Lower Subansiri', 3, NULL, NULL),
(32, 'Papum Pare', 3, NULL, NULL),
(33, 'Tirap', 3, NULL, NULL),
(34, 'Dibang Valley', 3, NULL, NULL),
(35, 'Upper Subansiri', 3, NULL, NULL),
(36, 'West Kameng', 3, NULL, NULL),
(37, 'Barpeta', 2, NULL, NULL),
(38, 'Bongaigaon', 2, NULL, NULL),
(39, 'Cachar', 2, NULL, NULL),
(40, 'Darrang', 2, NULL, NULL),
(41, 'Dhemaji', 2, NULL, NULL),
(42, 'Dhubri', 2, NULL, NULL),
(43, 'Dibrugarh', 2, NULL, NULL),
(44, 'Goalpara', 2, NULL, NULL),
(45, 'Golaghat', 2, NULL, NULL),
(46, 'Hailakandi', 2, NULL, NULL),
(47, 'Jorhat', 2, NULL, NULL),
(48, 'Karbi Anglong', 2, NULL, NULL),
(49, 'Karimganj', 2, NULL, NULL),
(50, 'Kokrajhar', 2, NULL, NULL),
(51, 'Lakhimpur', 2, NULL, NULL),
(52, 'Marigaon', 2, NULL, NULL),
(53, 'Nagaon', 2, NULL, NULL),
(54, 'Nalbari', 2, NULL, NULL),
(55, 'North Cachar Hills', 2, NULL, NULL),
(56, 'Sibsagar', 2, NULL, NULL),
(57, 'Sonitpur', 2, NULL, NULL),
(58, 'Tinsukia', 2, NULL, NULL),
(59, 'Araria', 4, NULL, NULL),
(60, 'Aurangabad', 4, NULL, NULL),
(61, 'Banka', 4, NULL, NULL),
(62, 'Begusarai', 4, NULL, NULL),
(63, 'Bhagalpur', 4, NULL, NULL),
(64, 'Bhojpur', 4, NULL, NULL),
(65, 'Buxar', 4, NULL, NULL),
(66, 'Darbhanga', 4, NULL, NULL),
(67, 'Purba Champaran', 4, NULL, NULL),
(68, 'Gaya', 4, NULL, NULL),
(69, 'Gopalganj', 4, NULL, NULL),
(70, 'Jamui', 4, NULL, NULL),
(71, 'Jehanabad', 4, NULL, NULL),
(72, 'Khagaria', 4, NULL, NULL),
(73, 'Kishanganj', 4, NULL, NULL),
(74, 'Kaimur', 4, NULL, NULL),
(75, 'Katihar', 4, NULL, NULL),
(76, 'Lakhisarai', 4, NULL, NULL),
(77, 'Madhubani', 4, NULL, NULL),
(78, 'Munger', 4, NULL, NULL),
(79, 'Madhepura', 4, NULL, NULL),
(80, 'Muzaffarpur', 4, NULL, NULL),
(81, 'Nalanda', 4, NULL, NULL),
(82, 'Nawada', 4, NULL, NULL),
(83, 'Patna', 4, NULL, NULL),
(84, 'Purnia', 4, NULL, NULL),
(85, 'Rohtas', 4, NULL, NULL),
(86, 'Saharsa', 4, NULL, NULL),
(87, 'Samastipur', 4, NULL, NULL),
(88, 'Sheohar', 4, NULL, NULL),
(89, 'Sheikhpura', 4, NULL, NULL),
(90, 'Saran', 4, NULL, NULL),
(91, 'Sitamarhi', 4, NULL, NULL),
(92, 'Supaul', 4, NULL, NULL),
(93, 'Siwan', 4, NULL, NULL),
(94, 'Vaishali', 4, NULL, NULL),
(95, 'Pashchim Champaran', 4, NULL, NULL),
(96, 'Bastar', 36, NULL, NULL),
(97, 'Bilaspur', 36, NULL, NULL),
(98, 'Dantewada', 36, NULL, NULL),
(99, 'Dhamtari', 36, NULL, NULL),
(100, 'Durg', 36, NULL, NULL),
(101, 'Jashpur', 36, NULL, NULL),
(102, 'Janjgir-Champa', 36, NULL, NULL),
(103, 'Korba', 36, NULL, NULL),
(104, 'Koriya', 36, NULL, NULL),
(105, 'Kanker', 36, NULL, NULL),
(106, 'Kawardha', 36, NULL, NULL),
(107, 'Mahasamund', 36, NULL, NULL),
(108, 'Raigarh', 36, NULL, NULL),
(109, 'Rajnandgaon', 36, NULL, NULL),
(110, 'Raipur', 36, NULL, NULL),
(111, 'Surguja', 36, NULL, NULL),
(112, 'Diu', 29, NULL, NULL),
(113, 'Daman', 29, NULL, NULL),
(114, 'Central Delhi', 25, NULL, NULL),
(115, 'East Delhi', 25, NULL, NULL),
(116, 'New Delhi', 25, NULL, NULL),
(117, 'North Delhi', 25, NULL, NULL),
(118, 'North East Delhi', 25, NULL, NULL),
(119, 'North West Delhi', 25, NULL, NULL),
(120, 'South Delhi', 25, NULL, NULL),
(121, 'South West Delhi', 25, NULL, NULL),
(122, 'West Delhi', 25, NULL, NULL),
(123, 'North Goa', 26, NULL, NULL),
(124, 'South Goa', 26, NULL, NULL),
(125, 'Ahmedabad', 5, NULL, NULL),
(126, 'Amreli District', 5, NULL, NULL),
(127, 'Anand', 5, NULL, NULL),
(128, 'Banaskantha', 5, NULL, NULL),
(129, 'Bharuch', 5, NULL, NULL),
(130, 'Bhavnagar', 5, NULL, NULL),
(131, 'Dahod', 5, NULL, NULL),
(132, 'The Dangs', 5, NULL, NULL),
(133, 'Gandhinagar', 5, NULL, NULL),
(134, 'Jamnagar', 5, NULL, NULL),
(135, 'Junagadh', 5, NULL, NULL),
(136, 'Kutch', 5, NULL, NULL),
(137, 'Kheda', 5, NULL, NULL),
(138, 'Mehsana', 5, NULL, NULL),
(139, 'Narmada', 5, NULL, NULL),
(140, 'Navsari', 5, NULL, NULL),
(141, 'Patan', 5, NULL, NULL),
(142, 'Panchmahal', 5, NULL, NULL),
(143, 'Porbandar', 5, NULL, NULL),
(144, 'Rajkot', 5, NULL, NULL),
(145, 'Sabarkantha', 5, NULL, NULL),
(146, 'Surendranagar', 5, NULL, NULL),
(147, 'Surat', 5, NULL, NULL),
(148, 'Vadodara', 5, NULL, NULL),
(149, 'Valsad', 5, NULL, NULL),
(150, 'Ambala', 6, NULL, NULL),
(151, 'Bhiwani', 6, NULL, NULL),
(152, 'Faridabad', 6, NULL, NULL),
(153, 'Fatehabad', 6, NULL, NULL),
(154, 'Gurgaon', 6, NULL, NULL),
(155, 'Hissar', 6, NULL, NULL),
(156, 'Jhajjar', 6, NULL, NULL),
(157, 'Jind', 6, NULL, NULL),
(158, 'Karnal', 6, NULL, NULL),
(159, 'Kaithal', 6, NULL, NULL),
(160, 'Kurukshetra', 6, NULL, NULL),
(161, 'Mahendragarh', 6, NULL, NULL),
(162, 'Mewat', 6, NULL, NULL),
(163, 'Panchkula', 6, NULL, NULL),
(164, 'Panipat', 6, NULL, NULL),
(165, 'Rewari', 6, NULL, NULL),
(166, 'Rohtak', 6, NULL, NULL),
(167, 'Sirsa', 6, NULL, NULL),
(168, 'Sonepat', 6, NULL, NULL),
(169, 'Yamuna Nagar', 6, NULL, NULL),
(170, 'Palwal', 6, NULL, NULL),
(171, 'Bilaspur', 7, NULL, NULL),
(172, 'Chamba', 7, NULL, NULL),
(173, 'Hamirpur', 7, NULL, NULL),
(174, 'Kangra', 7, NULL, NULL),
(175, 'Kinnaur', 7, NULL, NULL),
(176, 'Kulu', 7, NULL, NULL),
(177, 'Lahaul and Spiti', 7, NULL, NULL),
(178, 'Mandi', 7, NULL, NULL),
(179, 'Shimla', 7, NULL, NULL),
(180, 'Sirmaur', 7, NULL, NULL),
(181, 'Solan', 7, NULL, NULL),
(182, 'Una', 7, NULL, NULL),
(183, 'Anantnag', 8, NULL, NULL),
(184, 'Badgam', 8, NULL, NULL),
(185, 'Bandipore', 8, NULL, NULL),
(186, 'Baramula', 8, NULL, NULL),
(187, 'Doda', 8, NULL, NULL),
(188, 'Jammu', 8, NULL, NULL),
(189, 'Kargil', 8, NULL, NULL),
(190, 'Kathua', 8, NULL, NULL),
(191, 'Kupwara', 8, NULL, NULL),
(192, 'Leh', 8, NULL, NULL),
(193, 'Poonch', 8, NULL, NULL),
(194, 'Pulwama', 8, NULL, NULL),
(195, 'Rajauri', 8, NULL, NULL),
(196, 'Srinagar', 8, NULL, NULL),
(197, 'Samba', 8, NULL, NULL),
(198, 'Udhampur', 8, NULL, NULL),
(199, 'Bokaro', 34, NULL, NULL),
(200, 'Chatra', 34, NULL, NULL),
(201, 'Deoghar', 34, NULL, NULL),
(202, 'Dhanbad', 34, NULL, NULL),
(203, 'Dumka', 34, NULL, NULL),
(204, 'Purba Singhbhum', 34, NULL, NULL),
(205, 'Garhwa', 34, NULL, NULL),
(206, 'Giridih', 34, NULL, NULL),
(207, 'Godda', 34, NULL, NULL),
(208, 'Gumla', 34, NULL, NULL),
(209, 'Hazaribagh', 34, NULL, NULL),
(210, 'Koderma', 34, NULL, NULL),
(211, 'Lohardaga', 34, NULL, NULL),
(212, 'Pakur', 34, NULL, NULL),
(213, 'Palamu', 34, NULL, NULL),
(214, 'Ranchi', 34, NULL, NULL),
(215, 'Sahibganj', 34, NULL, NULL),
(216, 'Seraikela and Kharsawan', 34, NULL, NULL),
(217, 'Pashchim Singhbhum', 34, NULL, NULL),
(218, 'Ramgarh', 34, NULL, NULL),
(219, 'Bidar', 9, NULL, NULL),
(220, 'Belgaum', 9, NULL, NULL),
(221, 'Bijapur', 9, NULL, NULL),
(222, 'Bagalkot', 9, NULL, NULL),
(223, 'Bellary', 9, NULL, NULL),
(224, 'Bangalore Rural District', 9, NULL, NULL),
(225, 'Bangalore Urban District', 9, NULL, NULL),
(226, 'Chamarajnagar', 9, NULL, NULL),
(227, 'Chikmagalur', 9, NULL, NULL),
(228, 'Chitradurga', 9, NULL, NULL),
(229, 'Davanagere', 9, NULL, NULL),
(230, 'Dharwad', 9, NULL, NULL),
(231, 'Dakshina Kannada', 9, NULL, NULL),
(232, 'Gadag', 9, NULL, NULL),
(233, 'Gulbarga', 9, NULL, NULL),
(234, 'Hassan', 9, NULL, NULL),
(235, 'Haveri District', 9, NULL, NULL),
(236, 'Kodagu', 9, NULL, NULL),
(237, 'Kolar', 9, NULL, NULL),
(238, 'Koppal', 9, NULL, NULL),
(239, 'Mandya', 9, NULL, NULL),
(240, 'Mysore', 9, NULL, NULL),
(241, 'Raichur', 9, NULL, NULL),
(242, 'Shimoga', 9, NULL, NULL),
(243, 'Tumkur', 9, NULL, NULL),
(244, 'Udupi', 9, NULL, NULL),
(245, 'Uttara Kannada', 9, NULL, NULL),
(246, 'Ramanagara', 9, NULL, NULL),
(247, 'Chikballapur', 9, NULL, NULL),
(248, 'Yadagiri', 9, NULL, NULL),
(249, 'Alappuzha', 10, NULL, NULL),
(250, 'Ernakulam', 10, NULL, NULL),
(251, 'Idukki', 10, NULL, NULL),
(252, 'Kollam', 10, NULL, NULL),
(253, 'Kannur', 10, NULL, NULL),
(254, 'Kasaragod', 10, NULL, NULL),
(255, 'Kottayam', 10, NULL, NULL),
(256, 'Kozhikode', 10, NULL, NULL),
(257, 'Malappuram', 10, NULL, NULL),
(258, 'Palakkad', 10, NULL, NULL),
(259, 'Pathanamthitta', 10, NULL, NULL),
(260, 'Thrissur', 10, NULL, NULL),
(261, 'Thiruvananthapuram', 10, NULL, NULL),
(262, 'Wayanad', 10, NULL, NULL),
(263, 'Alirajpur', 11, NULL, NULL),
(264, 'Anuppur', 11, NULL, NULL),
(265, 'Ashok Nagar', 11, NULL, NULL),
(266, 'Balaghat', 11, NULL, NULL),
(267, 'Barwani', 11, NULL, NULL),
(268, 'Betul', 11, NULL, NULL),
(269, 'Bhind', 11, NULL, NULL),
(270, 'Bhopal', 11, NULL, NULL),
(271, 'Burhanpur', 11, NULL, NULL),
(272, 'Chhatarpur', 11, NULL, NULL),
(273, 'Chhindwara', 11, NULL, NULL),
(274, 'Damoh', 11, NULL, NULL),
(275, 'Datia', 11, NULL, NULL),
(276, 'Dewas', 11, NULL, NULL),
(277, 'Dhar', 11, NULL, NULL),
(278, 'Dindori', 11, NULL, NULL),
(279, 'Guna', 11, NULL, NULL),
(280, 'Gwalior', 11, NULL, NULL),
(281, 'Harda', 11, NULL, NULL),
(282, 'Hoshangabad', 11, NULL, NULL),
(283, 'Indore', 11, NULL, NULL),
(284, 'Jabalpur', 11, NULL, NULL),
(285, 'Jhabua', 11, NULL, NULL),
(286, 'Katni', 11, NULL, NULL),
(287, 'Khandwa', 11, NULL, NULL),
(288, 'Khargone', 11, NULL, NULL),
(289, 'Mandla', 11, NULL, NULL),
(290, 'Mandsaur', 11, NULL, NULL),
(291, 'Morena', 11, NULL, NULL),
(292, 'Narsinghpur', 11, NULL, NULL),
(293, 'Neemuch', 11, NULL, NULL),
(294, 'Panna', 11, NULL, NULL),
(295, 'Rewa', 11, NULL, NULL),
(296, 'Rajgarh', 11, NULL, NULL),
(297, 'Ratlam', 11, NULL, NULL),
(298, 'Raisen', 11, NULL, NULL),
(299, 'Sagar', 11, NULL, NULL),
(300, 'Satna', 11, NULL, NULL),
(301, 'Sehore', 11, NULL, NULL),
(302, 'Seoni', 11, NULL, NULL),
(303, 'Shahdol', 11, NULL, NULL),
(304, 'Shajapur', 11, NULL, NULL),
(305, 'Sheopur', 11, NULL, NULL),
(306, 'Shivpuri', 11, NULL, NULL),
(307, 'Sidhi', 11, NULL, NULL),
(308, 'Singrauli', 11, NULL, NULL),
(309, 'Tikamgarh', 11, NULL, NULL),
(310, 'Ujjain', 11, NULL, NULL),
(311, 'Umaria', 11, NULL, NULL),
(312, 'Vidisha', 11, NULL, NULL),
(313, 'Ahmednagar', 12, NULL, NULL),
(314, 'Akola', 12, NULL, NULL),
(315, 'Amrawati', 12, NULL, NULL),
(316, 'Aurangabad', 12, NULL, NULL),
(317, 'Bhandara', 12, NULL, NULL),
(318, 'Beed', 12, NULL, NULL),
(319, 'Buldhana', 12, NULL, NULL),
(320, 'Chandrapur', 12, NULL, NULL),
(321, 'Dhule', 12, NULL, NULL),
(322, 'Gadchiroli', 12, NULL, NULL),
(323, 'Gondiya', 12, NULL, NULL),
(324, 'Hingoli', 12, NULL, NULL),
(325, 'Jalgaon', 12, NULL, NULL),
(326, 'Jalna', 12, NULL, NULL),
(327, 'Kolhapur', 12, NULL, NULL),
(328, 'Latur', 12, NULL, NULL),
(329, 'Mumbai City', 12, NULL, NULL),
(330, 'Mumbai suburban', 12, NULL, NULL),
(331, 'Nandurbar', 12, NULL, NULL),
(332, 'Nanded', 12, NULL, NULL),
(333, 'Nagpur', 12, NULL, NULL),
(334, 'Nashik', 12, NULL, NULL),
(335, 'Osmanabad', 12, NULL, NULL),
(336, 'Parbhani', 12, NULL, NULL),
(337, 'Pune', 12, NULL, NULL),
(338, 'Raigad', 12, NULL, NULL),
(339, 'Ratnagiri', 12, NULL, NULL),
(340, 'Sindhudurg', 12, NULL, NULL),
(341, 'Sangli', 12, NULL, NULL),
(342, 'Solapur', 12, NULL, NULL),
(343, 'Satara', 12, NULL, NULL),
(344, 'Thane', 12, NULL, NULL),
(345, 'Wardha', 12, NULL, NULL),
(346, 'Washim', 12, NULL, NULL),
(347, 'Yavatmal', 12, NULL, NULL),
(348, 'Bishnupur', 13, NULL, NULL),
(349, 'Churachandpur', 13, NULL, NULL),
(350, 'Chandel', 13, NULL, NULL),
(351, 'Imphal East', 13, NULL, NULL),
(352, 'Senapati', 13, NULL, NULL),
(353, 'Tamenglong', 13, NULL, NULL),
(354, 'Thoubal', 13, NULL, NULL),
(355, 'Ukhrul', 13, NULL, NULL),
(356, 'Imphal West', 13, NULL, NULL),
(357, 'East Garo Hills', 14, NULL, NULL),
(358, 'East Khasi Hills', 14, NULL, NULL),
(359, 'Jaintia Hills', 14, NULL, NULL),
(360, 'Ri-Bhoi', 14, NULL, NULL),
(361, 'South Garo Hills', 14, NULL, NULL),
(362, 'West Garo Hills', 14, NULL, NULL),
(363, 'West Khasi Hills', 14, NULL, NULL),
(364, 'Aizawl', 15, NULL, NULL),
(365, 'Champhai', 15, NULL, NULL),
(366, 'Kolasib', 15, NULL, NULL),
(367, 'Lawngtlai', 15, NULL, NULL),
(368, 'Lunglei', 15, NULL, NULL),
(369, 'Mamit', 15, NULL, NULL),
(370, 'Saiha', 15, NULL, NULL),
(371, 'Serchhip', 15, NULL, NULL),
(372, 'Dimapur', 16, NULL, NULL),
(373, 'Kohima', 16, NULL, NULL),
(374, 'Mokokchung', 16, NULL, NULL),
(375, 'Mon', 16, NULL, NULL),
(376, 'Phek', 16, NULL, NULL),
(377, 'Tuensang', 16, NULL, NULL),
(378, 'Wokha', 16, NULL, NULL),
(379, 'Zunheboto', 16, NULL, NULL),
(380, 'Angul', 17, NULL, NULL),
(381, 'Boudh', 17, NULL, NULL),
(382, 'Bhadrak', 17, NULL, NULL),
(383, 'Bolangir', 17, NULL, NULL),
(384, 'Bargarh', 17, NULL, NULL),
(385, 'Baleswar', 17, NULL, NULL),
(386, 'Cuttack', 17, NULL, NULL),
(387, 'Debagarh', 17, NULL, NULL),
(388, 'Dhenkanal', 17, NULL, NULL),
(389, 'Ganjam', 17, NULL, NULL),
(390, 'Gajapati', 17, NULL, NULL),
(391, 'Jharsuguda', 17, NULL, NULL),
(392, 'Jajapur', 17, NULL, NULL),
(393, 'Jagatsinghpur', 17, NULL, NULL),
(394, 'Khordha', 17, NULL, NULL),
(395, 'Kendujhar', 17, NULL, NULL),
(396, 'Kalahandi', 17, NULL, NULL),
(397, 'Kandhamal', 17, NULL, NULL),
(398, 'Koraput', 17, NULL, NULL),
(399, 'Kendrapara', 17, NULL, NULL),
(400, 'Malkangiri', 17, NULL, NULL),
(401, 'Mayurbhanj', 17, NULL, NULL),
(402, 'Nabarangpur', 17, NULL, NULL),
(403, 'Nuapada', 17, NULL, NULL),
(404, 'Nayagarh', 17, NULL, NULL),
(405, 'Puri', 17, NULL, NULL),
(406, 'Rayagada', 17, NULL, NULL),
(407, 'Sambalpur', 17, NULL, NULL),
(408, 'Subarnapur', 17, NULL, NULL),
(409, 'Sundargarh', 17, NULL, NULL),
(410, 'Karaikal', 27, NULL, NULL),
(411, 'Mahe', 27, NULL, NULL),
(412, 'Puducherry', 27, NULL, NULL),
(413, 'Yanam', 27, NULL, NULL),
(414, 'Amritsar', 18, NULL, NULL),
(415, 'Bathinda', 18, NULL, NULL),
(416, 'Firozpur', 18, NULL, NULL),
(417, 'Faridkot', 18, NULL, NULL),
(418, 'Fatehgarh Sahib', 18, NULL, NULL),
(419, 'Gurdaspur', 18, NULL, NULL),
(420, 'Hoshiarpur', 18, NULL, NULL),
(421, 'Jalandhar', 18, NULL, NULL),
(422, 'Kapurthala', 18, NULL, NULL),
(423, 'Ludhiana', 18, NULL, NULL),
(424, 'Mansa', 18, NULL, NULL),
(425, 'Moga', 18, NULL, NULL),
(426, 'Mukatsar', 18, NULL, NULL),
(427, 'Nawan Shehar', 18, NULL, NULL),
(428, 'Patiala', 18, NULL, NULL),
(429, 'Rupnagar', 18, NULL, NULL),
(430, 'Sangrur', 18, NULL, NULL),
(431, 'Ajmer', 19, NULL, NULL),
(432, 'Alwar', 19, NULL, NULL),
(433, 'Bikaner', 19, NULL, NULL),
(434, 'Barmer', 19, NULL, NULL),
(435, 'Banswara', 19, NULL, NULL),
(436, 'Bharatpur', 19, NULL, NULL),
(437, 'Baran', 19, NULL, NULL),
(438, 'Bundi', 19, NULL, NULL),
(439, 'Bhilwara', 19, NULL, NULL),
(440, 'Churu', 19, NULL, NULL),
(441, 'Chittorgarh', 19, NULL, NULL),
(442, 'Dausa', 19, NULL, NULL),
(443, 'Dholpur', 19, NULL, NULL),
(444, 'Dungapur', 19, NULL, NULL),
(445, 'Ganganagar', 19, NULL, NULL),
(446, 'Hanumangarh', 19, NULL, NULL),
(447, 'Juhnjhunun', 19, NULL, NULL),
(448, 'Jalore', 19, NULL, NULL),
(449, 'Jodhpur', 19, NULL, NULL),
(450, 'Jaipur', 19, NULL, NULL),
(451, 'Jaisalmer', 19, NULL, NULL),
(452, 'Jhalawar', 19, NULL, NULL),
(453, 'Karauli', 19, NULL, NULL),
(454, 'Kota', 19, NULL, NULL),
(455, 'Nagaur', 19, NULL, NULL),
(456, 'Pali', 19, NULL, NULL),
(457, 'Pratapgarh', 19, NULL, NULL),
(458, 'Rajsamand', 19, NULL, NULL),
(459, 'Sikar', 19, NULL, NULL),
(460, 'Sawai Madhopur', 19, NULL, NULL),
(461, 'Sirohi', 19, NULL, NULL),
(462, 'Tonk', 19, NULL, NULL),
(463, 'Udaipur', 19, NULL, NULL),
(464, 'East Sikkim', 20, NULL, NULL),
(465, 'North Sikkim', 20, NULL, NULL),
(466, 'South Sikkim', 20, NULL, NULL),
(467, 'West Sikkim', 20, NULL, NULL),
(468, 'Ariyalur', 21, NULL, NULL),
(469, 'Chennai', 21, NULL, NULL),
(470, 'Coimbatore', 21, NULL, NULL),
(471, 'Cuddalore', 21, NULL, NULL),
(472, 'Dharmapuri', 21, NULL, NULL),
(473, 'Dindigul', 21, NULL, NULL),
(474, 'Erode', 21, NULL, NULL),
(475, 'Kanchipuram', 21, NULL, NULL),
(476, 'Kanyakumari', 21, NULL, NULL),
(477, 'Karur', 21, NULL, NULL),
(478, 'Madurai', 21, NULL, NULL),
(479, 'Nagapattinam', 21, NULL, NULL),
(480, 'The Nilgiris', 21, NULL, NULL),
(481, 'Namakkal', 21, NULL, NULL),
(482, 'Perambalur', 21, NULL, NULL),
(483, 'Pudukkottai', 21, NULL, NULL),
(484, 'Ramanathapuram', 21, NULL, NULL),
(485, 'Salem', 21, NULL, NULL),
(486, 'Sivagangai', 21, NULL, NULL),
(487, 'Tiruppur', 21, NULL, NULL),
(488, 'Tiruchirappalli', 21, NULL, NULL),
(489, 'Theni', 21, NULL, NULL),
(490, 'Tirunelveli', 21, NULL, NULL),
(491, 'Thanjavur', 21, NULL, NULL),
(492, 'Thoothukudi', 21, NULL, NULL),
(493, 'Thiruvallur', 21, NULL, NULL),
(494, 'Thiruvarur', 21, NULL, NULL),
(495, 'Tiruvannamalai', 21, NULL, NULL),
(496, 'Vellore', 21, NULL, NULL),
(497, 'Villupuram', 21, NULL, NULL),
(498, 'Dhalai', 22, NULL, NULL),
(499, 'North Tripura', 22, NULL, NULL),
(500, 'South Tripura', 22, NULL, NULL),
(501, 'West Tripura', 22, NULL, NULL),
(502, 'Almora', 33, NULL, NULL),
(503, 'Bageshwar', 33, NULL, NULL),
(504, 'Chamoli', 33, NULL, NULL),
(505, 'Champawat', 33, NULL, NULL),
(506, 'Dehradun', 33, NULL, NULL),
(507, 'Haridwar', 33, NULL, NULL),
(508, 'Nainital', 33, NULL, NULL),
(509, 'Pauri Garhwal', 33, NULL, NULL),
(510, 'Pithoragharh', 33, NULL, NULL),
(511, 'Rudraprayag', 33, NULL, NULL),
(512, 'Tehri Garhwal', 33, NULL, NULL),
(513, 'Udham Singh Nagar', 33, NULL, NULL),
(514, 'Uttarkashi', 33, NULL, NULL),
(515, 'Agra', 23, NULL, NULL),
(516, 'Allahabad', 23, NULL, NULL),
(517, 'Aligarh', 23, NULL, NULL),
(518, 'Ambedkar Nagar', 23, NULL, NULL),
(519, 'Auraiya', 23, NULL, NULL),
(520, 'Azamgarh', 23, NULL, NULL),
(521, 'Barabanki', 23, NULL, NULL),
(522, 'Badaun', 23, NULL, NULL),
(523, 'Bagpat', 23, NULL, NULL),
(524, 'Bahraich', 23, NULL, NULL),
(525, 'Bijnor', 23, NULL, NULL),
(526, 'Ballia', 23, NULL, NULL),
(527, 'Banda', 23, NULL, NULL),
(528, 'Balrampur', 23, NULL, NULL),
(529, 'Bareilly', 23, NULL, NULL),
(530, 'Basti', 23, NULL, NULL),
(531, 'Bulandshahr', 23, NULL, NULL),
(532, 'Chandauli', 23, NULL, NULL),
(533, 'Chitrakoot', 23, NULL, NULL),
(534, 'Deoria', 23, NULL, NULL),
(535, 'Etah', 23, NULL, NULL),
(536, 'Kanshiram Nagar', 23, NULL, NULL),
(537, 'Etawah', 23, NULL, NULL),
(538, 'Firozabad', 23, NULL, NULL),
(539, 'Farrukhabad', 23, NULL, NULL),
(540, 'Fatehpur', 23, NULL, NULL),
(541, 'Faizabad', 23, NULL, NULL),
(542, 'Gautam Buddha Nagar', 23, NULL, NULL),
(543, 'Gonda', 23, NULL, NULL),
(544, 'Ghazipur', 23, NULL, NULL),
(545, 'Gorkakhpur', 23, NULL, NULL),
(546, 'Ghaziabad', 23, NULL, NULL),
(547, 'Hamirpur', 23, NULL, NULL),
(548, 'Hardoi', 23, NULL, NULL),
(549, 'Mahamaya Nagar', 23, NULL, NULL),
(550, 'Jhansi', 23, NULL, NULL),
(551, 'Jalaun', 23, NULL, NULL),
(552, 'Jyotiba Phule Nagar', 23, NULL, NULL),
(553, 'Jaunpur District', 23, NULL, NULL),
(554, 'Kanpur Dehat', 23, NULL, NULL),
(555, 'Kannauj', 23, NULL, NULL),
(556, 'Kanpur Nagar', 23, NULL, NULL),
(557, 'Kaushambi', 23, NULL, NULL),
(558, 'Kushinagar', 23, NULL, NULL),
(559, 'Lalitpur', 23, NULL, NULL),
(560, 'Lakhimpur Kheri', 23, NULL, NULL),
(561, 'Lucknow', 23, NULL, NULL),
(562, 'Mau', 23, NULL, NULL),
(563, 'Meerut', 23, NULL, NULL),
(564, 'Maharajganj', 23, NULL, NULL),
(565, 'Mahoba', 23, NULL, NULL),
(566, 'Mirzapur', 23, NULL, NULL),
(567, 'Moradabad', 23, NULL, NULL),
(568, 'Mainpuri', 23, NULL, NULL),
(569, 'Mathura', 23, NULL, NULL),
(570, 'Muzaffarnagar', 23, NULL, NULL),
(571, 'Pilibhit', 23, NULL, NULL),
(572, 'Pratapgarh', 23, NULL, NULL),
(573, 'Rampur', 23, NULL, NULL),
(574, 'Rae Bareli', 23, NULL, NULL),
(575, 'Saharanpur', 23, NULL, NULL),
(576, 'Sitapur', 23, NULL, NULL),
(577, 'Shahjahanpur', 23, NULL, NULL),
(578, 'Sant Kabir Nagar', 23, NULL, NULL),
(579, 'Siddharthnagar', 23, NULL, NULL),
(580, 'Sonbhadra', 23, NULL, NULL),
(581, 'Sant Ravidas Nagar', 23, NULL, NULL),
(582, 'Sultanpur', 23, NULL, NULL),
(583, 'Shravasti', 23, NULL, NULL),
(584, 'Unnao', 23, NULL, NULL),
(585, 'Varanasi', 23, NULL, NULL),
(586, 'Birbhum', 24, NULL, NULL),
(587, 'Bankura', 24, NULL, NULL),
(588, 'Bardhaman', 24, NULL, NULL),
(589, 'Darjeeling', 24, NULL, NULL),
(590, 'Dakshin Dinajpur', 24, NULL, NULL),
(591, 'Hooghly', 24, NULL, NULL),
(592, 'Howrah', 24, NULL, NULL),
(593, 'Jalpaiguri', 24, NULL, NULL),
(594, 'Cooch Behar', 24, NULL, NULL),
(595, 'Kolkata', 24, NULL, NULL),
(596, 'Malda', 24, NULL, NULL),
(597, 'Midnapore', 24, NULL, NULL),
(598, 'Murshidabad', 24, NULL, NULL),
(599, 'Nadia', 24, NULL, NULL),
(600, 'North 24 Parganas', 24, NULL, NULL),
(601, 'South 24 Parganas', 24, NULL, NULL),
(602, 'Purulia', 24, NULL, NULL),
(603, 'Uttar Dinajpur', 24, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2024_09_17_063302_create_roles_table', 1),
(31, '2024_09_17_063343_create_states_table', 1),
(32, '2024_09_17_063350_create_cities_table', 1),
(33, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(34, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(35, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(36, '2016_06_01_000004_create_oauth_clients_table', 2),
(37, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'MdEJVAksiuY6xhrzMmNLlz57rPo5Wr3pe2cBJQZo', NULL, 'http://localhost', 1, 0, 0, '2024-09-17 03:58:37', '2024-09-17 03:58:37'),
(2, NULL, 'Laravel Password Grant Client', 'GDhO8yRjH63Jt5CgFOH4lTDbQbuZwjctezu8FmDO', 'users', 'http://localhost', 0, 1, 0, '2024-09-17 03:58:37', '2024-09-17 03:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-09-17 03:58:37', '2024-09-17 03:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ANDHRA PRADESH', NULL, NULL),
(2, 'ASSAM', NULL, NULL),
(3, 'ARUNACHAL PRADESH', NULL, NULL),
(4, 'BIHAR', NULL, NULL),
(5, 'GUJARAT', NULL, NULL),
(6, 'HARYANA', NULL, NULL),
(7, 'HIMACHAL PRADESH', NULL, NULL),
(8, 'JAMMU & KASHMIR', NULL, NULL),
(9, 'KARNATAKA', NULL, NULL),
(10, 'KERALA', NULL, NULL),
(11, 'MADHYA PRADESH', NULL, NULL),
(12, 'MAHARASHTRA', NULL, NULL),
(13, 'MANIPUR', NULL, NULL),
(14, 'MEGHALAYA', NULL, NULL),
(15, 'MIZORAM', NULL, NULL),
(16, 'NAGALAND', NULL, NULL),
(17, 'ORISSA', NULL, NULL),
(18, 'PUNJAB', NULL, NULL),
(19, 'RAJASTHAN', NULL, NULL),
(20, 'SIKKIM', NULL, NULL),
(21, 'TAMIL NADU', NULL, NULL),
(22, 'TRIPURA', NULL, NULL),
(23, 'UTTAR PRADESH', NULL, NULL),
(24, 'WEST BENGAL', NULL, NULL),
(25, 'DELHI', NULL, NULL),
(26, 'GOA', NULL, NULL),
(27, 'PONDICHERY', NULL, NULL),
(28, 'LAKSHDWEEP', NULL, NULL),
(29, 'DAMAN & DIU', NULL, NULL),
(30, 'DADRA & NAGAR', NULL, NULL),
(31, 'CHANDIGARH', NULL, NULL),
(32, 'ANDAMAN & NICOBAR', NULL, NULL),
(33, 'UTTARANCHAL', NULL, NULL),
(34, 'JHARKHAND', NULL, NULL),
(35, 'CHATTISGARH', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobbies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `email_verified_at`, `mobile_no`, `postcode`, `gender`, `state_id`, `city_id`, `photos`, `password`, `hobbies`, `roles`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'Admin', 'test.admin@yopmail.com', NULL, '9999919999', '394210', 'male', NULL, NULL, NULL, '$2y$12$G./4K0209ZG7CKkOozeKrupXRgkYXETgySznIOiBwc9Rn5Wu.K3Bm', NULL, NULL, NULL, NULL, NULL),
(2, 'Test', 'User', 'exampleuser00@yopmail.com', NULL, '9999919991', '394210', 'male', NULL, NULL, NULL, '$2y$12$MjT3Kr3RxEsRQ3EcimWtU.9dSxZyglZuhCf7t9Fz9SKrDoUUQr2Gi', NULL, NULL, NULL, NULL, NULL),
(3, 'Keshri', 'Sumit', 'keshrisumit12@yopmail.com', NULL, '9157898262', '394210', 'Male', 5, 147, NULL, '$2y$12$KLPhXvQJYa1RUnhC/OxVAO4Vwe6FjbS.2NYpMHDgxmMAc3ayTNfKG', 'Reading|Traveling', NULL, NULL, '2024-09-17 05:06:29', '2024-09-17 05:06:29'),
(4, 'Xyz', 'Pqr', 'xyxpqr@yopmail.com', NULL, '7788994455', '394210', 'Male', 5, 125, '1 (1).jpg|1.jpg|2.jpg|3.jpg', '$2y$12$IC7MiBQzL5hkY40suA6at.xca9zf6XbnG3VNIJMdWCeoycSxMDnti', '1|2', NULL, NULL, '2024-09-17 05:28:24', '2024-09-17 05:28:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
