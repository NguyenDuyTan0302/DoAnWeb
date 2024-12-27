-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 09:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdoan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES
('ad01', 'admin1', '$2y$10$ozdUcnIYQ/gNwHxkFP/MKebDuvCZthD/MTC1cPC8a2QSc2mrOw.q.');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogid` varchar(20) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogct`
--

CREATE TABLE `blogct` (
  `blogctid` varchar(20) NOT NULL,
  `blogid` varchar(20) NOT NULL,
  `paragraph` text NOT NULL,
  `img1` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `colorid` varchar(20) NOT NULL,
  `colorname` varchar(255) NOT NULL,
  `colorhex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`colorid`, `colorname`, `colorhex`) VALUES
('color1', 'White', '#F8F8FF'),
('color2', 'Black', '#000000'),
('color3', 'Pink', '#FFCCFF '),
('color4', 'Red', '#EE0000'),
('color5', 'Blue', '#3399FF '),
('color6', 'Yellow', '#FFCC33'),
('color7', 'Orange', '#FF9933'),
('color8', 'Grey', '#DDDDDD');

-- --------------------------------------------------------

--
-- Table structure for table `dongsp`
--

CREATE TABLE `dongsp` (
  `dongspid` varchar(20) NOT NULL,
  `tendongsp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dongsp`
--

INSERT INTO `dongsp` (`dongspid`, `tendongsp`) VALUES
('dongsp1', 'Nike'),
('dongsp2', 'Adidas'),
('dongsp3', 'Biti\'s'),
('dongsp4', 'Puma');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `khachhangid` varchar(20) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `tinhthanh` varchar(255) NOT NULL,
  `quanhuyen` varchar(255) NOT NULL,
  `phuongxa` varchar(255) NOT NULL,
  `sodt` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gioitinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`khachhangid`, `hoten`, `diachi`, `tinhthanh`, `quanhuyen`, `phuongxa`, `sodt`, `email`, `gioitinh`) VALUES
('kh1', 'Nguyễn Duy Tân', '140 Kim Long', 'Tỉnh Thừa Thiên Huế', 'Thành phố Huế', 'Phường Kim Long', '0935148378', 'example@gmail.com', 'Nam'),
('kh2', 'My Tien', 'Trang Dai', 'Tỉnh Đồng Nai', 'Thành phố Biên Hòa', 'Phường Trảng Dài', '0947693195', '22521464@gm.uit.edu.vn', 'Nữ');

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

CREATE TABLE `magiamgia` (
  `magiamgiaid` varchar(20) NOT NULL,
  `codemagiamgia` varchar(255) NOT NULL,
  `giatrigiam` float NOT NULL,
  `ngaybd` datetime DEFAULT NULL,
  `ngaykt` datetime DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `magiamgia`
--

INSERT INTO `magiamgia` (`magiamgiaid`, `codemagiamgia`, `giatrigiam`, `ngaybd`, `ngaykt`, `soluong`) VALUES
('mgg01', 'D1111', 0.3, '2023-11-11 00:00:00', '2023-11-12 00:00:00', 97),
('mgg02', 'XM23', 0.2, '2023-12-20 00:00:00', '2023-12-27 00:00:00', 200);

-- --------------------------------------------------------

--
-- Table structure for table `magiamgiact`
--

CREATE TABLE `magiamgiact` (
  `magiamgiactid` varchar(20) NOT NULL,
  `magiamgiaid` varchar(20) NOT NULL,
  `khachhangid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `procolorsize`
--

CREATE TABLE `procolorsize` (
  `procolorsizeid` int(11) NOT NULL,
  `procolorid` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `procolorsize`
--

INSERT INTO `procolorsize` (`procolorsizeid`, `procolorid`, `size`, `sl`) VALUES
(313, 63, 36, 0),
(314, 63, 37, 0),
(315, 63, 38, 0),
(316, 63, 39, 0),
(317, 63, 40, 20),
(318, 63, 41, 20),
(319, 63, 42, 20),
(320, 63, 43, 20),
(321, 63, 44, 20),
(331, 65, 36, 0),
(332, 65, 37, 0),
(333, 65, 38, 0),
(334, 65, 39, 0),
(335, 65, 40, 20),
(336, 65, 41, 20),
(337, 65, 42, 20),
(338, 65, 43, 20),
(339, 65, 44, 20),
(340, 66, 36, 0),
(341, 66, 37, 0),
(342, 66, 38, 20),
(343, 66, 39, 20),
(344, 66, 40, 20),
(345, 66, 41, 20),
(346, 66, 42, 20),
(347, 66, 43, 20),
(348, 66, 44, 20),
(358, 68, 36, 20),
(359, 68, 37, 20),
(360, 68, 38, 20),
(361, 68, 39, 20),
(362, 68, 40, 20),
(363, 68, 41, 20),
(364, 68, 42, 0),
(365, 68, 43, 0),
(366, 68, 44, 0),
(367, 69, 36, 20),
(368, 69, 37, 20),
(369, 69, 38, 20),
(370, 69, 39, 20),
(371, 69, 40, 20),
(372, 69, 41, 20),
(373, 69, 42, 20),
(374, 69, 43, 0),
(375, 69, 44, 0),
(385, 71, 36, 20),
(386, 71, 37, 20),
(387, 71, 38, 20),
(388, 71, 39, 20),
(389, 71, 40, 20),
(390, 71, 41, 20),
(391, 71, 42, 20),
(392, 71, 43, 0),
(393, 71, 44, 0),
(394, 72, 36, 0),
(395, 72, 37, 0),
(396, 72, 38, 0),
(397, 72, 39, 0),
(398, 72, 40, 20),
(399, 72, 41, 20),
(400, 72, 42, 20),
(401, 72, 43, 20),
(402, 72, 44, 20),
(403, 73, 36, 0),
(404, 73, 37, 0),
(405, 73, 38, 0),
(406, 73, 39, 0),
(407, 73, 40, 20),
(408, 73, 41, 20),
(409, 73, 42, 20),
(410, 73, 43, 20),
(411, 73, 44, 20),
(412, 74, 36, 0),
(413, 74, 37, 0),
(414, 74, 38, 0),
(415, 74, 39, 20),
(416, 74, 40, 20),
(417, 74, 41, 20),
(418, 74, 42, 20),
(419, 74, 43, 20),
(420, 74, 44, 20),
(421, 75, 36, 0),
(422, 75, 37, 0),
(423, 75, 38, 0),
(424, 75, 39, 20),
(425, 75, 40, 20),
(426, 75, 41, 20),
(427, 75, 42, 20),
(428, 75, 43, 20),
(429, 75, 44, 20),
(430, 76, 36, 0),
(431, 76, 37, 0),
(432, 76, 38, 0),
(433, 76, 39, 0),
(434, 76, 40, 20),
(435, 76, 41, 20),
(436, 76, 42, 20),
(437, 76, 43, 20),
(438, 76, 44, 20),
(439, 77, 36, 0),
(440, 77, 37, 0),
(441, 77, 38, 0),
(442, 77, 39, 0),
(443, 77, 40, 20),
(444, 77, 41, 20),
(445, 77, 42, 20),
(446, 77, 43, 20),
(447, 77, 44, 20),
(448, 78, 36, 0),
(449, 78, 37, 0),
(450, 78, 38, 0),
(451, 78, 39, 20),
(452, 78, 40, 20),
(453, 78, 41, 20),
(454, 78, 42, 20),
(455, 78, 43, 20),
(456, 78, 44, 20),
(457, 79, 36, 0),
(458, 79, 37, 0),
(459, 79, 38, 0),
(460, 79, 39, 20),
(461, 79, 40, 20),
(462, 79, 41, 20),
(463, 79, 42, 20),
(464, 79, 43, 20),
(465, 79, 44, 20),
(466, 80, 36, 0),
(467, 80, 37, 0),
(468, 80, 38, 0),
(469, 80, 39, 0),
(470, 80, 40, 20),
(471, 80, 41, 20),
(472, 80, 42, 20),
(473, 80, 43, 20),
(474, 80, 44, 20),
(475, 81, 36, 0),
(476, 81, 37, 0),
(477, 81, 38, 0),
(478, 81, 39, 0),
(479, 81, 40, 20),
(480, 81, 41, 20),
(481, 81, 42, 20),
(482, 81, 43, 20),
(483, 81, 44, 20),
(484, 82, 36, 20),
(485, 82, 37, 20),
(486, 82, 38, 20),
(487, 82, 39, 20),
(488, 82, 40, 20),
(489, 82, 41, 20),
(490, 82, 42, 0),
(491, 82, 43, 0),
(492, 82, 44, 0),
(493, 83, 36, 20),
(494, 83, 37, 20),
(495, 83, 38, 20),
(496, 83, 39, 20),
(497, 83, 40, 20),
(498, 83, 41, 20),
(499, 83, 42, 0),
(500, 83, 43, 0),
(501, 83, 44, 0),
(502, 84, 36, 0),
(503, 84, 37, 0),
(504, 84, 38, 0),
(505, 84, 39, 0),
(506, 84, 40, 20),
(507, 84, 41, 20),
(508, 84, 42, 20),
(509, 84, 43, 20),
(510, 84, 44, 20),
(511, 85, 36, 20),
(512, 85, 37, 20),
(513, 85, 38, 20),
(514, 85, 39, 20),
(515, 85, 40, 20),
(516, 85, 41, 20),
(517, 85, 42, 0),
(518, 85, 43, 0),
(519, 85, 44, 0),
(520, 86, 36, 0),
(521, 86, 37, 0),
(522, 86, 38, 0),
(523, 86, 39, 20),
(524, 86, 40, 20),
(525, 86, 41, 20),
(526, 86, 42, 0),
(527, 86, 43, 0),
(528, 86, 44, 0),
(529, 87, 36, 0),
(530, 87, 37, 0),
(531, 87, 38, 0),
(532, 87, 39, 20),
(533, 87, 40, 20),
(534, 87, 41, 20),
(535, 87, 42, 0),
(536, 87, 43, 0),
(537, 87, 44, 0),
(538, 88, 36, 0),
(539, 88, 37, 0),
(540, 88, 38, 0),
(541, 88, 39, 20),
(542, 88, 40, 20),
(543, 88, 41, 20),
(544, 88, 42, 20),
(545, 88, 43, 20),
(546, 88, 44, 20),
(547, 89, 36, 0),
(548, 89, 37, 0),
(549, 89, 38, 20),
(550, 89, 39, 20),
(551, 89, 40, 20),
(552, 89, 41, 20),
(553, 89, 42, 0),
(554, 89, 43, 0),
(555, 89, 44, 0),
(556, 90, 36, 0),
(557, 90, 37, 20),
(558, 90, 38, 20),
(559, 90, 39, 20),
(560, 90, 40, 20),
(561, 90, 41, 20),
(562, 90, 42, 0),
(563, 90, 43, 0),
(564, 90, 44, 0),
(565, 91, 36, 0),
(566, 91, 37, 0),
(567, 91, 38, 0),
(568, 91, 39, 20),
(569, 91, 40, 20),
(570, 91, 41, 20),
(571, 91, 42, 20),
(572, 91, 43, 20),
(573, 91, 44, 20),
(574, 92, 36, 20),
(575, 92, 37, 20),
(576, 92, 38, 20),
(577, 92, 39, 20),
(578, 92, 40, 20),
(579, 92, 41, 20),
(580, 92, 42, 0),
(581, 92, 43, 0),
(582, 92, 44, 0),
(583, 93, 36, 0),
(584, 93, 37, 0),
(585, 93, 38, 0),
(586, 93, 39, 20),
(587, 93, 40, 20),
(588, 93, 41, 20),
(589, 93, 42, 20),
(590, 93, 43, 20),
(591, 93, 44, 20),
(592, 94, 36, 20),
(593, 94, 37, 20),
(594, 94, 38, 20),
(595, 94, 39, 20),
(596, 94, 40, 20),
(597, 94, 41, 20),
(598, 94, 42, 0),
(599, 94, 43, 0),
(600, 94, 44, 0),
(601, 95, 36, 20),
(602, 95, 37, 20),
(603, 95, 38, 20),
(604, 95, 39, 20),
(605, 95, 40, 20),
(606, 95, 41, 20),
(607, 95, 42, 0),
(608, 95, 43, 0),
(609, 95, 44, 0),
(610, 96, 36, 20),
(611, 96, 37, 20),
(612, 96, 38, 20),
(613, 96, 39, 20),
(614, 96, 40, 20),
(615, 96, 41, 20),
(616, 96, 42, 0),
(617, 96, 43, 0),
(618, 96, 44, 0),
(619, 97, 36, 0),
(620, 97, 37, 0),
(621, 97, 38, 0),
(622, 97, 39, 20),
(623, 97, 40, 20),
(624, 97, 41, 20),
(625, 97, 42, 20),
(626, 97, 43, 20),
(627, 97, 44, 20),
(628, 98, 36, 0),
(629, 98, 37, 0),
(630, 98, 38, 0),
(631, 98, 39, 20),
(632, 98, 40, 20),
(633, 98, 41, 20),
(634, 98, 42, 20),
(635, 98, 43, 20),
(636, 98, 44, 20),
(637, 99, 36, 0),
(638, 99, 37, 0),
(639, 99, 38, 0),
(640, 99, 39, 20),
(641, 99, 40, 20),
(642, 99, 41, 20),
(643, 99, 42, 20),
(644, 99, 43, 20),
(645, 99, 44, 20),
(646, 100, 36, 0),
(647, 100, 37, 0),
(648, 100, 38, 0),
(649, 100, 39, 20),
(650, 100, 40, 20),
(651, 100, 41, 20),
(652, 100, 42, 20),
(653, 100, 43, 20),
(654, 100, 44, 20),
(655, 101, 36, 0),
(656, 101, 37, 0),
(657, 101, 38, 0),
(658, 101, 39, 20),
(659, 101, 40, 20),
(660, 101, 41, 20),
(661, 101, 42, 20),
(662, 101, 43, 20),
(663, 101, 44, 20),
(664, 102, 36, 0),
(665, 102, 37, 0),
(666, 102, 38, 0),
(667, 102, 39, 20),
(668, 102, 40, 20),
(669, 102, 41, 20),
(670, 102, 42, 20),
(671, 102, 43, 20),
(672, 102, 44, 20),
(673, 103, 36, 0),
(674, 103, 37, 0),
(675, 103, 38, 0),
(676, 103, 39, 20),
(677, 103, 40, 20),
(678, 103, 41, 20),
(679, 103, 42, 20),
(680, 103, 43, 20),
(681, 103, 44, 20),
(682, 104, 36, 0),
(683, 104, 37, 0),
(684, 104, 38, 0),
(685, 104, 39, 20),
(686, 104, 40, 20),
(687, 104, 41, 20),
(688, 104, 42, 20),
(689, 104, 43, 20),
(690, 104, 44, 20),
(691, 105, 36, 0),
(692, 105, 37, 0),
(693, 105, 38, 0),
(694, 105, 39, 20),
(695, 105, 40, 20),
(696, 105, 41, 20),
(697, 105, 42, 20),
(698, 105, 43, 20),
(699, 105, 44, 20),
(700, 106, 36, 20),
(701, 106, 37, 20),
(702, 106, 38, 20),
(703, 106, 39, 20),
(704, 106, 40, 20),
(705, 106, 41, 20),
(706, 106, 42, 0),
(707, 106, 43, 0),
(708, 106, 44, 0),
(709, 107, 36, 20),
(710, 107, 37, 20),
(711, 107, 38, 20),
(712, 107, 39, 20),
(713, 107, 40, 20),
(714, 107, 41, 20),
(715, 107, 42, 0),
(716, 107, 43, 0),
(717, 107, 44, 0),
(718, 108, 36, 20),
(719, 108, 37, 20),
(720, 108, 38, 20),
(721, 108, 39, 20),
(722, 108, 40, 20),
(723, 108, 41, 20),
(724, 108, 42, 0),
(725, 108, 43, 0),
(726, 108, 44, 0),
(727, 109, 36, 20),
(728, 109, 37, 20),
(729, 109, 38, 20),
(730, 109, 39, 20),
(731, 109, 40, 20),
(732, 109, 41, 20),
(733, 109, 42, 0),
(734, 109, 43, 0),
(735, 109, 44, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productcolor`
--

CREATE TABLE `productcolor` (
  `productcolorid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `colorid` varchar(20) NOT NULL,
  `img1` text DEFAULT NULL,
  `img2` text DEFAULT NULL,
  `img3` text DEFAULT NULL,
  `img4` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productcolor`
--

INSERT INTO `productcolor` (`productcolorid`, `productid`, `colorid`, `img1`, `img2`, `img3`, `img4`) VALUES
(63, 33, 'color2', 'NIKE+DOWNSHIFTER+13.png', 'NIKE+DOWNSHIFTER+13 (1).png', 'NIKE+DOWNSHIFTER+13 (2).png', 'NIKE+DOWNSHIFTER+13 (3).png'),
(65, 35, 'color4', 'NIKE+AIR+WINFLO+11 (7).png', 'NIKE+AIR+WINFLO+11 (5).png', 'NIKE+AIR+WINFLO+11 (6).png', 'NIKE+AIR+WINFLO+11 (4).png'),
(66, 36, 'color8', 'NIKE+REACT+PHANTOM+RUN+FK+2.png', 'NIKE+REACT+PHANTOM+RUN+FK+2.jpg', 'NIKE+REACT+PHANTOM+RUN+FK+2 (1).png', 'NIKE+REACT+PHANTOM+RUN+FK+2 (2).png'),
(68, 38, 'color3', 'W+NIKE+REVOLUTION+7.png', 'W+NIKE+REVOLUTION+7 (1).png', 'W+NIKE+REVOLUTION+7 (2).png', 'W+NIKE+REVOLUTION+7 (3).png'),
(69, 39, 'color5', 'WMNS+ZOOMX+INVINCIBLE+RUN+FK+3.png', 'WMNS+ZOOMX+INVINCIBLE+RUN+FK+3 (1).png', 'WMNS+ZOOMX+INVINCIBLE+RUN+FK+3 (2).png', 'WMNS+ZOOMX+INVINCIBLE+RUN+FK+3 (3).png'),
(71, 41, 'color7', 'W+AIR+ZOOM+PEGASUS+41.png', 'W+AIR+ZOOM+PEGASUS+41 (1).png', 'W+AIR+ZOOM+PEGASUS+41 (2).png', 'W+AIR+ZOOM+PEGASUS+41 (3).png'),
(72, 42, 'color8', 'ZOOM+SUPERFLY+9+ELITE+FG+AS.jpg', 'ZOOM+SUPERFLY+9+ELITE+FG+AS (1).jpg', 'ZOOM+SUPERFLY+9+ELITE+FG+AS (2).jpg', 'ZOOM+SUPERFLY+9+ELITE+FG+AS.png'),
(73, 43, 'color2', 'ZM+SUPERFLY+10+ACAD+FG_MG.png', 'ZM+SUPERFLY+10+ACAD+FG_MG (1).png', 'ZM+SUPERFLY+10+ACAD+FG_MG (2).png', 'ZM+SUPERFLY+10+ACAD+FG_MG (3).png'),
(74, 44, 'color5', 'SUPERFLY+10+CLUB+FG_MG.png', 'SUPERFLY+10+CLUB+FG_MG (1).png', 'SUPERFLY+10+CLUB+FG_MG (2).png', 'SUPERFLY+10+CLUB+FG_MG (3).png'),
(75, 45, 'color6', 'NIKE+LUNARGATO+II.png', 'NIKE+LUNARGATO+II (1).png', 'NIKE+LUNARGATO+II (2).png', 'NIKE+LUNARGATO+II (3).png'),
(76, 46, 'color2', 'JA+2+EP.png', 'JA+2+EP (1).png', 'JA+2+EP (2).png', 'JA+2+EP (3).png'),
(77, 47, 'color8', 'JORDAN+TATUM+3+PF.png', 'JORDAN+TATUM+3+PF (1).png', 'JORDAN+TATUM+3+PF (2).png', 'JORDAN+TATUM+3+PF (3).png'),
(78, 48, 'color1', 'LEBRON+XXII+QS+EP.png', 'LEBRON+XXII+QS+EP (1).png', 'LEBRON+XXII+QS+EP (2).png', 'LEBRON+XXII+QS+EP (3).png'),
(79, 49, 'color7', 'G.T.+HUSTLE+3+EP.png', 'G.T.+HUSTLE+3+EP (1).png', 'G.T.+HUSTLE+3+EP (2).png', 'G.T.+HUSTLE+3+EP (3).png'),
(80, 50, 'color2', 'NIKE+METCON+9.png', 'NIKE+METCON+9 (1).png', 'NIKE+METCON+9.jpg', 'NIKE+METCON+9 (2).png'),
(81, 51, 'color1', 'AIR+MONARCH+IV.png', 'AIR+MONARCH+IV (1).png', 'AIR+MONARCH+IV (2).png', 'AIR+MONARCH+IV (3).png'),
(82, 52, 'color7', 'W+NIKE+MC+TRAINER+3.png', 'W+NIKE+MC+TRAINER+3 (1).png', 'W+NIKE+MC+TRAINER+3 (2).png', 'W+NIKE+MC+TRAINER+3 (3).png'),
(83, 53, 'color1', 'W+NIKE+ZOOM+BELLA+6.png', 'W+NIKE+ZOOM+BELLA+6 (1).png', 'W+NIKE+ZOOM+BELLA+6 (2).png', 'W+NIKE+ZOOM+BELLA+6 (3).png'),
(84, 54, 'color1', 'Screenshot 2024-12-27 at 13.11.41.png', 'Screenshot 2024-12-27 at 13.11.54.png', 'Screenshot 2024-12-27 at 13.11.59.png', 'Screenshot 2024-12-27 at 13.12.07.png'),
(85, 55, 'color1', 'Screenshot 2024-12-27 at 13.13.58.png', 'Screenshot 2024-12-27 at 13.14.04.png', 'Screenshot 2024-12-27 at 13.14.09.png', 'Screenshot 2024-12-27 at 13.14.17.png'),
(86, 56, 'color5', 'Screenshot 2024-12-27 at 13.12.33.png', 'Screenshot 2024-12-27 at 13.12.39.png', 'Screenshot 2024-12-27 at 13.12.48.png', 'Screenshot 2024-12-27 at 13.12.53.png'),
(87, 57, 'color2', 'Screenshot 2024-12-27 at 13.18.54.png', 'Screenshot 2024-12-27 at 13.19.00.png', 'Screenshot 2024-12-27 at 13.19.07.png', 'Screenshot 2024-12-27 at 13.19.13.png'),
(88, 58, 'color1', 'Screenshot 2024-12-27 at 13.14.57.png', 'Screenshot 2024-12-27 at 13.15.02.png', 'Screenshot 2024-12-27 at 13.15.17.png', 'Screenshot 2024-12-27 at 13.15.40.png'),
(89, 59, 'color3', 'Screenshot 2024-12-27 at 13.16.03.png', 'Screenshot 2024-12-27 at 13.16.10.png', 'Screenshot 2024-12-27 at 13.16.20.png', 'Screenshot 2024-12-27 at 13.16.24.png'),
(90, 60, 'color3', 'Screenshot 2024-12-27 at 13.18.00.png', 'Screenshot 2024-12-27 at 13.18.05.png', 'Screenshot 2024-12-27 at 13.18.09.png', 'Screenshot 2024-12-27 at 13.18.18.png'),
(91, 61, 'color4', 'Screenshot 2024-12-27 at 13.19.42.png', 'Screenshot 2024-12-27 at 13.19.47.png', 'Screenshot 2024-12-27 at 13.19.52.png', 'Screenshot 2024-12-27 at 13.20.00.png'),
(92, 62, 'color1', 'Screenshot 2024-12-27 at 13.20.25.png', 'Screenshot 2024-12-27 at 13.20.30.png', 'Screenshot 2024-12-27 at 13.20.36.png', 'Screenshot 2024-12-27 at 13.20.41.png'),
(93, 63, 'color8', 'Screenshot 2024-12-27 at 13.21.11.png', 'Screenshot 2024-12-27 at 13.21.15.png', 'Screenshot 2024-12-27 at 13.21.21.png', 'Screenshot 2024-12-27 at 13.21.27.png'),
(94, 64, 'color1', 'Screenshot 2024-12-27 at 13.50.46.png', 'Screenshot 2024-12-27 at 13.50.50.png', 'Screenshot 2024-12-27 at 13.50.53.png', 'Screenshot 2024-12-27 at 13.50.56.png'),
(95, 65, 'color2', 'Screenshot 2024-12-27 at 13.50.10.png', 'Screenshot 2024-12-27 at 13.50.14.png', 'Screenshot 2024-12-27 at 13.50.20.png', 'Screenshot 2024-12-27 at 13.50.23.png'),
(96, 66, 'color3', 'Screenshot 2024-12-27 at 13.49.39.png', 'Screenshot 2024-12-27 at 13.49.43.png', 'Screenshot 2024-12-27 at 13.49.49.png', 'Screenshot 2024-12-27 at 13.49.53.png'),
(97, 67, 'color1', 'Screenshot 2024-12-27 at 13.48.50.png', 'Screenshot 2024-12-27 at 13.48.55.png', 'Screenshot 2024-12-27 at 13.49.00.png', 'Screenshot 2024-12-27 at 13.49.08.png'),
(98, 68, 'color2', 'Screenshot 2024-12-27 at 13.47.27.png', 'Screenshot 2024-12-27 at 13.47.42.png', 'Screenshot 2024-12-27 at 13.47.47.png', 'Screenshot 2024-12-27 at 13.47.53.png'),
(99, 69, 'color5', 'Screenshot 2024-12-27 at 13.45.10.png', 'Screenshot 2024-12-27 at 13.45.14.png', 'Screenshot 2024-12-27 at 13.45.19.png', 'Screenshot 2024-12-27 at 13.45.22.png'),
(100, 70, 'color7', 'Screenshot 2024-12-27 at 13.43.44.png', 'Screenshot 2024-12-27 at 13.44.07.png', 'Screenshot 2024-12-27 at 13.44.11.png', 'Screenshot 2024-12-27 at 13.44.20.png'),
(101, 71, 'color5', 'Screenshot 2024-12-27 at 14.13.02.png', 'Screenshot 2024-12-27 at 14.13.06.png', 'Screenshot 2024-12-27 at 14.13.08.png', 'Screenshot 2024-12-27 at 14.13.11.png'),
(102, 72, 'color8', 'Screenshot 2024-12-27 at 14.12.47.png', 'Screenshot 2024-12-27 at 14.12.50.png', 'Screenshot 2024-12-27 at 14.12.53.png', 'Screenshot 2024-12-27 at 14.12.55.png'),
(103, 73, 'color4', 'Screenshot 2024-12-27 at 14.12.27.png', 'Screenshot 2024-12-27 at 14.12.30.png', 'Screenshot 2024-12-27 at 14.12.35.png', 'Screenshot 2024-12-27 at 14.12.38.png'),
(104, 74, 'color2', 'Screenshot 2024-12-27 at 14.12.07.png', 'Screenshot 2024-12-27 at 14.12.11.png', 'Screenshot 2024-12-27 at 14.12.17.png', 'Screenshot 2024-12-27 at 14.12.20.png'),
(105, 75, 'color8', 'Screenshot 2024-12-27 at 14.11.49.png', 'Screenshot 2024-12-27 at 14.11.54.png', 'Screenshot 2024-12-27 at 14.11.57.png', 'Screenshot 2024-12-27 at 14.12.00.png'),
(106, 76, 'color1', 'Screenshot 2024-12-27 at 14.11.32.png', 'Screenshot 2024-12-27 at 14.11.36.png', 'Screenshot 2024-12-27 at 14.11.39.png', 'Screenshot 2024-12-27 at 14.11.42.png'),
(107, 77, 'color5', 'Screenshot 2024-12-27 at 14.11.16.png', 'Screenshot 2024-12-27 at 14.11.20.png', 'Screenshot 2024-12-27 at 14.11.23.png', 'Screenshot 2024-12-27 at 14.11.25.png'),
(108, 78, 'color1', 'Screenshot 2024-12-27 at 14.10.56.png', 'Screenshot 2024-12-27 at 14.11.02.png', 'Screenshot 2024-12-27 at 14.11.05.png', 'Screenshot 2024-12-27 at 14.11.08.png'),
(109, 79, 'color3', 'Screenshot 2024-12-27 at 14.10.02.png', 'Screenshot 2024-12-27 at 14.10.06.png', 'Screenshot 2024-12-27 at 14.10.10.png', 'Screenshot 2024-12-27 at 14.10.13.png');

-- --------------------------------------------------------

--
-- Table structure for table `saleoff`
--

CREATE TABLE `saleoff` (
  `saleoffid` int(11) NOT NULL,
  `ngaybd` datetime DEFAULT NULL,
  `ngaykt` datetime DEFAULT NULL,
  `giatrigiam` float NOT NULL,
  `loaisp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `saleoff`
--

INSERT INTO `saleoff` (`saleoffid`, `ngaybd`, `ngaykt`, `giatrigiam`, `loaisp`) VALUES
(1, '2023-12-13 00:00:00', '2023-12-14 00:00:00', 23, ''),
(2, '2023-12-13 00:00:00', '2023-12-20 00:00:00', 45, 'Vintas'),
(3, '2023-12-16 00:00:00', '2023-12-17 00:00:00', 2, ''),
(4, '2023-12-15 00:00:00', '2023-12-21 00:00:00', 20, ''),
(15, '2023-12-16 00:00:00', '2023-12-19 00:00:00', 30, '');

-- --------------------------------------------------------

--
-- Table structure for table `saleoffct`
--

CREATE TABLE `saleoffct` (
  `saleoffctid` int(11) NOT NULL,
  `saleoffid` int(11) NOT NULL,
  `procolorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `sanphamid` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `giasp` int(20) NOT NULL,
  `danhmuc` varchar(255) NOT NULL,
  `dongspid` varchar(20) DEFAULT NULL,
  `styleid` varchar(20) DEFAULT NULL,
  `thongtinsp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`sanphamid`, `tensp`, `giasp`, `danhmuc`, `dongspid`, `styleid`, `thongtinsp`) VALUES
(33, 'Nike Downshifter', 2069000, 'Nam', 'dongsp1', 'style4', 'Running Shoes'),
(35, 'Nike Winflo', 2929000, 'Nam', 'dongsp1', 'style4', 'Running Shoes'),
(36, 'Nike React Phantom Run Flyknit', 4109000, 'Nam', 'dongsp1', 'style4', 'Road Running Shoes'),
(38, 'Nike Revolution', 1789000, 'Nữ', 'dongsp1', 'style4', 'Road Running Shoes'),
(39, 'Nike Invincible', 5279000, 'Nữ', 'dongsp1', 'style4', 'Road Running Shoes'),
(41, 'Nike Pegasus', 3829000, 'Nữ', 'dongsp1', 'style4', 'Road Running Shoes'),
(42, 'Nike Mercurial Superfly Elite', 8349000, 'Nam', 'dongsp1', 'style1', 'FG High Top Football Boot'),
(43, 'Nike Mercurial Superfly Academy', 2779000, 'Nam', 'dongsp1', 'style1', 'MG High Top Football Boot'),
(44, 'Nike Mercurial Superfly Club', 1889000, 'Nữ', 'dongsp1', 'style1', 'MG High Top Football Boot'),
(45, 'Nike Lunar Gato', 2253299, 'Nữ', 'dongsp1', 'style1', 'Indoor Court Low Top Football Shoes'),
(46, 'Ja Foundation EP', 3519000, 'Nam', 'dongsp1', 'style2', 'Basketball Shoes'),
(47, 'Tatum PF Zen', 3669000, 'Nam', 'dongsp1', 'style2', 'Basketball Shoes'),
(48, 'LeBron XXII Currency EP', 5869000, 'Nữ', 'dongsp1', 'style2', 'Basketball Shoes\n'),
(49, 'Nike GT Hustle EP', 5589000, 'Nữ', 'dongsp1', 'style2', 'Basketball Shoes'),
(50, 'Nike Metcon', 4109000, 'Nam', 'dongsp1', 'style3', 'Workout Shoes'),
(51, 'Nike Air Monarch IV', 1909000, 'Nam', 'dongsp1', 'style3', 'Workout Shoes'),
(52, 'Nike MC Trainer', 2069000, 'Nữ', 'dongsp1', 'style3', 'Workout Shoes'),
(53, 'Nike Zoom Bella', 1999199, 'Nữ', 'dongsp1', 'style3', 'Workout Shoes'),
(54, 'Adizero EVO SL', 4000000, 'Nam', 'dongsp2', 'style4', 'Running Shoes'),
(55, 'Duramo ', 1080000, 'Nữ', 'dongsp2', 'style4', 'Running Shoes'),
(56, 'Duramo ', 1080000, 'Nam', 'dongsp2', 'style4', 'Running Shoes'),
(57, 'AMPLIMOVE TRAINER', 150000, 'Nam', 'dongsp2', 'style3', 'Training Shoes'),
(58, 'Firm Ground Predator Elite', 6000000, 'Nam', 'dongsp2', 'style1', 'Football Shoes'),
(59, 'Turf League', 1440000, 'Nữ', 'dongsp2', 'style1', 'Football Shoes'),
(60, 'SMU HARDEN VOLUME', 3800000, 'Nữ', 'dongsp2', 'style2', 'Basketball Shoes'),
(61, 'Rapidmove ADV', 3800000, 'Nam', 'dongsp2', 'style3', 'Training Shoes'),
(62, 'Dropset', 2100000, 'Nữ', 'dongsp2', 'style3', 'Training Shoes'),
(63, 'Everyset', 1680000, 'Nam', 'dongsp2', 'style3', 'Training Shoes'),
(64, 'Bitis Hunter Jogging', 639000, 'Nữ', 'dongsp3', 'style4', 'Running Shoes'),
(65, 'Bitis Hunter Running', 1237000, 'Nữ', 'dongsp3', 'style4', 'Running Shoes'),
(66, 'Bitis Embrace', 569000, 'Nữ', 'dongsp3', 'style3', 'Training Shoes'),
(67, 'Bitis Hunter', 752000, 'Nam', 'dongsp3', 'style3', 'Training Shoes'),
(68, 'BITIS HUNTER JOGGING FESTIVE PLUTON COLLECTION', 771000, 'Nam', 'dongsp3', 'style3', 'Sport Shoes'),
(69, 'Bitis Hunter Football Futsal', 299000, 'Nam', 'dongsp3', 'style1', 'Football Shoes'),
(70, 'Bitis Hunter Football', 299000, 'Nam', 'dongsp3', 'style1', 'Football Shoes'),
(71, 'Sport Edgeride Raygo', 2490000, 'Nam', 'dongsp4', 'style3', 'Sport Shoes'),
(72, 'Slade Royce', 1790000, 'Nam', 'dongsp4', 'style3', 'Training Shoes'),
(73, 'Scoot Zeros Retro Portland', 1790000, 'Nam', 'dongsp4', 'style2', 'Basketball Shoes'),
(74, 'Softride Enzo Evo', 1699000, 'Nam', 'dongsp4', 'style4', 'Running Shoes'),
(75, 'Stax LT', 1962700, 'Nam', 'dongsp4', 'style4', 'Running Shoes'),
(76, 'MB Lo', 1962700, 'Nữ', 'dongsp4', 'style2', 'Basketball Shoes'),
(77, 'Street Tres Air Uno', 2490000, 'Nữ', 'dongsp4', 'style3', 'Training Shoes'),
(78, 'Bobs Sport B Flex', 1790000, 'Nữ', 'dongsp4', 'style3', 'Training Shoes'),
(79, 'GOrun Lite Pure', 1990000, 'Nữ', 'dongsp4', 'style4', 'Running Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `sizeid` varchar(20) NOT NULL,
  `sizenumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`sizeid`, `sizenumber`) VALUES
('size 36', 36),
('size 37', 37),
('size 38', 38),
('size 39', 39),
('size 40', 40),
('size 41', 41),
('size 42', 42),
('size 43', 43),
('size 44', 44);

-- --------------------------------------------------------

--
-- Table structure for table `style`
--

CREATE TABLE `style` (
  `styleid` varchar(20) NOT NULL,
  `stylename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `style`
--

INSERT INTO `style` (`styleid`, `stylename`) VALUES
('style1', 'Bóng đá'),
('style2', 'Bóng rổ'),
('style3', 'Gym'),
('style4', 'Chạy bộ');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoankh`
--

CREATE TABLE `taikhoankh` (
  `taikhoanid` int(11) NOT NULL,
  `khachhangid` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `taikhoankh`
--

INSERT INTO `taikhoankh` (`taikhoanid`, `khachhangid`, `password`) VALUES
(22, 'kh1', '$2y$10$4qQ6wH0pZ1zvG4hh3prG6OV1RcGh8IsZhzXNKwb0oQwTMzYb39ZW.'),
(23, 'kh2', '$2y$10$pufjMx2G4qYY5eZcgYdisOG1.HWKrS3Nm5Txs7GhKff1alyBHlO9.');

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `thanhtoanid` int(11) NOT NULL,
  `khachhangid` varchar(20) NOT NULL,
  `ngayorder` date NOT NULL DEFAULT current_timestamp(),
  `magiamgiaid` varchar(20) NOT NULL,
  `tongtien` int(20) NOT NULL,
  `hinhthucthanhtoan` varchar(255) NOT NULL,
  `tienhang` int(11) NOT NULL,
  `phiship` int(11) NOT NULL,
  `trangthai` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhtoan`
--

INSERT INTO `thanhtoan` (`thanhtoanid`, `khachhangid`, `ngayorder`, `magiamgiaid`, `tongtien`, `hinhthucthanhtoan`, `tienhang`, `phiship`, `trangthai`) VALUES
(88, 'kh1', '2024-12-17', '', 2160000, 'momo', 2160000, 0, 'Đã xác nhận'),
(89, 'kh2', '2024-12-27', '', 1410000, 'trực tiếp', 1370000, 40000, 'Đã xác nhận'),
(90, 'kh2', '2024-12-27', '', 690000, 'thẻ ngân hàng', 650000, 40000, 'Đã xác nhận'),
(91, 'kh2', '2024-12-27', '', 660000, 'momo', 620000, 40000, 'Chờ xác nhận'),
(92, 'kh2', '2024-12-27', '', 4739000, 'trực tiếp', 4699000, 40000, 'Chờ xác nhận');

--
-- Triggers `thanhtoan`
--
DELIMITER $$
CREATE TRIGGER `so_luong_magiamgia` AFTER INSERT ON `thanhtoan` FOR EACH ROW BEGIN
    IF NEW.magiamgiaid IS NOT NULL THEN
        UPDATE magiamgia
        SET soluong = soluong - 1
        WHERE magiamgiaid = NEW.magiamgiaid;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoanct`
--

CREATE TABLE `thanhtoanct` (
  `thanhtoanctid` int(11) NOT NULL,
  `thanhtoanid` int(11) NOT NULL,
  `productcolorsizeid` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`);

--
-- Indexes for table `blogct`
--
ALTER TABLE `blogct`
  ADD PRIMARY KEY (`blogctid`),
  ADD KEY `fk_blogct_blogid` (`blogid`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`colorid`);

--
-- Indexes for table `dongsp`
--
ALTER TABLE `dongsp`
  ADD PRIMARY KEY (`dongspid`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`khachhangid`);

--
-- Indexes for table `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`magiamgiaid`);

--
-- Indexes for table `magiamgiact`
--
ALTER TABLE `magiamgiact`
  ADD PRIMARY KEY (`magiamgiactid`),
  ADD KEY `fk_magiamgiact_magiamgiaid` (`magiamgiaid`),
  ADD KEY `fk_magiamgiact_khachhangid` (`khachhangid`);

--
-- Indexes for table `procolorsize`
--
ALTER TABLE `procolorsize`
  ADD PRIMARY KEY (`procolorsizeid`),
  ADD KEY `fk_procolorsize_procolorid` (`procolorid`);

--
-- Indexes for table `productcolor`
--
ALTER TABLE `productcolor`
  ADD PRIMARY KEY (`productcolorid`),
  ADD KEY `fk_productcolor_productid` (`productid`),
  ADD KEY `fk_productcolor_colorid` (`colorid`);

--
-- Indexes for table `saleoff`
--
ALTER TABLE `saleoff`
  ADD PRIMARY KEY (`saleoffid`);

--
-- Indexes for table `saleoffct`
--
ALTER TABLE `saleoffct`
  ADD PRIMARY KEY (`saleoffctid`),
  ADD KEY `fk_saleoffct_saleoffid` (`saleoffid`),
  ADD KEY `fk_saleoffct_procolorid` (`procolorid`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sanphamid`),
  ADD KEY `fk_sanpham_dongspid` (`dongspid`),
  ADD KEY `fk_sanpham_styleid` (`styleid`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`sizeid`);

--
-- Indexes for table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`styleid`);

--
-- Indexes for table `taikhoankh`
--
ALTER TABLE `taikhoankh`
  ADD PRIMARY KEY (`taikhoanid`),
  ADD KEY `fk_taikhoankh` (`khachhangid`);

--
-- Indexes for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`thanhtoanid`),
  ADD KEY `fk_thanhtoan_khachhangid` (`khachhangid`),
  ADD KEY `fk_thanhtoanct_magiamgiaid` (`magiamgiaid`);

--
-- Indexes for table `thanhtoanct`
--
ALTER TABLE `thanhtoanct`
  ADD PRIMARY KEY (`thanhtoanctid`),
  ADD KEY `fk_thanhtoanct_thanhtoanid` (`thanhtoanid`),
  ADD KEY `fk_thanhtoanct_procolorsizeid` (`productcolorsizeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `procolorsize`
--
ALTER TABLE `procolorsize`
  MODIFY `procolorsizeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT for table `productcolor`
--
ALTER TABLE `productcolor`
  MODIFY `productcolorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `saleoff`
--
ALTER TABLE `saleoff`
  MODIFY `saleoffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `saleoffct`
--
ALTER TABLE `saleoffct`
  MODIFY `saleoffctid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sanphamid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `taikhoankh`
--
ALTER TABLE `taikhoankh`
  MODIFY `taikhoanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `thanhtoanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `thanhtoanct`
--
ALTER TABLE `thanhtoanct`
  MODIFY `thanhtoanctid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `magiamgiact`
--
ALTER TABLE `magiamgiact`
  ADD CONSTRAINT `fk_magiamgiact_khachhangid` FOREIGN KEY (`khachhangid`) REFERENCES `khachhang` (`khachhangid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_magiamgiact_magiamgiaid` FOREIGN KEY (`magiamgiaid`) REFERENCES `magiamgia` (`magiamgiaid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `procolorsize`
--
ALTER TABLE `procolorsize`
  ADD CONSTRAINT `fk_procolorsize_procolorid` FOREIGN KEY (`procolorid`) REFERENCES `productcolor` (`productcolorid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productcolor`
--
ALTER TABLE `productcolor`
  ADD CONSTRAINT `fk_productcolor_colorid` FOREIGN KEY (`colorid`) REFERENCES `color` (`colorid`),
  ADD CONSTRAINT `fk_productcolor_productid` FOREIGN KEY (`productid`) REFERENCES `sanpham` (`sanphamid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saleoffct`
--
ALTER TABLE `saleoffct`
  ADD CONSTRAINT `fk_saleoffct_procolorid` FOREIGN KEY (`procolorid`) REFERENCES `productcolor` (`productcolorid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_saleoffct_saleoffid` FOREIGN KEY (`saleoffid`) REFERENCES `saleoff` (`saleoffid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_dongspid` FOREIGN KEY (`dongspid`) REFERENCES `dongsp` (`dongspid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sanpham_styleid` FOREIGN KEY (`styleid`) REFERENCES `style` (`styleid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taikhoankh`
--
ALTER TABLE `taikhoankh`
  ADD CONSTRAINT `fk_taikhoankh` FOREIGN KEY (`khachhangid`) REFERENCES `khachhang` (`khachhangid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `fk_thanhtoan_khachhangid` FOREIGN KEY (`khachhangid`) REFERENCES `khachhang` (`khachhangid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thanhtoanct`
--
ALTER TABLE `thanhtoanct`
  ADD CONSTRAINT `fk_thanhtoanct_procolorsizeid` FOREIGN KEY (`productcolorsizeid`) REFERENCES `procolorsize` (`procolorsizeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_thanhtoanct_thanhtoanid` FOREIGN KEY (`thanhtoanid`) REFERENCES `thanhtoan` (`thanhtoanid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
