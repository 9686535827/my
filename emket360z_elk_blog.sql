-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2023 at 06:08 AM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emket360z_elk_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `site_title` text NOT NULL,
  `address` text NOT NULL,
  `profile_picture` text NOT NULL,
  `last_visits` varchar(100) NOT NULL,
  `status` char(1) NOT NULL COMMENT '0=Inactive, 1=Active, 2=Deleted',
  `created_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `admin_name`, `email_id`, `site_title`, `address`, `profile_picture`, `last_visits`, `status`, `created_date`) VALUES
(1, 'admin', 'admin@123', 'Admin', 'web@thesisindia.net', 'Blog', '', '', '27 January 2023 10:54:23 ', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `slug`, `description`, `status`, `created_date`) VALUES
(1, 'Thesis Methodology', 'thesis-methodology', '', 1, '1674795964'),
(2, 'Tests And Tools', 'tests-and-tools', '', 1, '1674795983'),
(3, 'Surveys', 'surveys', '', 1, '1674795994'),
(4, 'Research Methods', 'research-methods', '', 1, '1674796013'),
(5, 'Dissertation Writing', 'dissertation-writing', '', 1, '1674796030'),
(6, 'Modelling', 'modelling', '', 1, '1674796040'),
(7, 'Data Analysis', 'data-analysis', '', 1, '1674796058');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_author_email` varchar(255) NOT NULL,
  `comment_author_ip` varchar(100) NOT NULL,
  `comment_date` varchar(255) NOT NULL,
  `comment_date_gmt` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` int(11) NOT NULL COMMENT '0=pending,1=approved,2=trash'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment_reply`
--

CREATE TABLE `tbl_comment_reply` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `reply_comment` text NOT NULL,
  `reply_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `post_title` text NOT NULL,
  `post_content` text NOT NULL,
  `feature_midea` text NOT NULL,
  `show_blog_post_on_home_page` int(11) DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` varchar(100) NOT NULL,
  `this_month_date` varchar(100) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `author_name`, `category_id`, `post_title`, `post_content`, `feature_midea`, `show_blog_post_on_home_page`, `slug`, `status`, `created_date`, `this_month_date`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(2, 'Abhinav Singh', '4', 'How Research Methodology Consultant Can Help You', '<p style=\"text-align:justify\">The research methodology chapter is one of the most important and critical parts of the entire PhD dissertation. It determines how the dissertation will proceed towards the data analysis and results chapter. Many research fellows find it difficult to prepare and hence require help of experienced professional consultants.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>How the professional can help?</strong></p>\r\n\r\n<p style=\"text-align:justify\">The essential part of dissertations is the research design, without which one cannot proceed in his or her dissertation work. A qualified and experienced research methodology consultant will help you to prepare a strong and flexible research design. He will help you to get a changeable research design that can be altered if required during the research.</p>\r\n\r\n<p style=\"text-align:justify\">A consultant prepares a research design on the basis of research questions, data required for the research, sources for data collection, methods applied for data collection and the use of statistical tools for data analysis.</p>\r\n\r\n<p style=\"text-align:justify\">Your consultant is like your mentor, who will help you at every step of your dissertation preparation and will help you learning all the aspects of the subject you want to specialize. These kinds of professionals help can be taken on any area of studies, from science to humanities, from literature to business studies.</p>\r\n\r\n<p style=\"text-align:justify\">Generally, the scholar and the mentor sit together for a minute discussion over the requirement of the scholar. The consultant tries to gauge the different research issues &amp; questions, the formatting standards specified by the university, the prescribed length of the dissertation and the time frame. Once the mentor gets all the information, he will suggest you the most practical, suitable, and time saving method for collecting data.</p>\r\n\r\n<p style=\"text-align:justify\">The expert will help you to understand the research philosophy by telling you &lsquo;why you are doing this research&rsquo; and &lsquo;how it is going to influence the world&rsquo;. On the basis of that philosophy, he will guide you to choose the right methodology for your dissertation.</p>\r\n\r\n<p style=\"text-align:justify\">He will tell you whether you need to do a survey or conduct an interview for gathering data. Once you take help from professionals, you need not to worry about the statistical analysis as well. Your mentor will guide you what program you must use in your research methodology.</p>\r\n\r\n<p style=\"text-align:justify\">So, if you are feeling burdened with your research methodology chapter, simply seek assistance from experienced professionals.</p>\r\n', '', NULL, 'how-research-methodology-consultant-can-help-you', 1, '1325529000', 'January-2012', '', '', ''),
(3, 'Piyush Aggarwal', '4', 'Worried about Your Research Methodology Chapter? Hire Consultant.', '<p style=\"text-align:justify\">The preparation of the dissertation for your research work is the most important part in your doctoral life. It includes in depth subject research, data collection and analysis, making statistical connotation, choosing research methods and preparing research methodology chapter for the same and so on. And, every doctoral student knows that completing the dissertation one handedly is almost impossible. Every student requires guidance at different steps to get the entire project completed within the given time limit. Many students get stuck at preparing Research Methodology Chapter as it is one of the most important steps to shape up your dissertation. A proper research methodology is the gateway to success of your research work. At this point, your one smart step can save your energy and time if you take professionals&rsquo; help.</p>\r\n\r\n<p style=\"text-align:justify\">When you take assistance form experts, they guide you about the methods that should be correct for your research work. Further, they will assist you in preparing the research methodology chapter that includes numerous &lsquo;what&rsquo;, &lsquo;why&rsquo; and &lsquo;how&rsquo; based questions regarding the methods you have applied in the paper. These experts will efficiently help you in framing those questions and providing the answers. No matter whether it&rsquo;s a qualitative or quantitative research methodology, these consultation services are available for all kinds of research work including Pure Research, Applied Research, Descriptive Research, Correlative Research, Exploratory Research and Explanatory Research.</p>\r\n\r\n<p style=\"text-align:justify\">Doing dissertation is a not a piece of cake and it requires lot of hard work. You can&rsquo;t take a risk at this stage of your doctoral life. So a smart move like taking consultation from experts can surely navigate your hard work towards the right direction. But, don&rsquo;t forget to hire consultation services from well reputed and experienced organizations always.</p>\r\n', '', NULL, 'worried-about-your-research-methodology-chapter-hire-consultant.', 1, '1422815400', 'February-2015', '', '', ''),
(4, 'Pritam Shah', '7', 'How to Present Your Analyzed Data Effectively', '<p style=\"text-align:justify\">The analysis of your research data is an important aspect of your project. However, it is also very significant to present your analyzed data in impressive formats and ways. Check out here some quick points that can help you make an impressive presentation of your results or findings.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Structure your ideas</strong></p>\r\n\r\n<p style=\"text-align:justify\">It is necessary to relate your analyzed data or findings to your study topic and variables. Thus, develop some ideas around these and structure them in a logical way. Additionally, find ways to organize your results under relevant headings.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Use a variety of tools</strong></p>\r\n\r\n<p style=\"text-align:justify\">It can be boring and irrelevant to present your analyzed data in a simple report format. You should find some nice tools and methods for effective presentation. While you can arrange all your findings in tables and text, you should not remain confined to it if you want to display your work in a specialized way. You can find a variety of charts and graphs that can make your findings colorful and interesting for your readers. The graphical presentation can also make the information simpler and more comprehensive. Looking at a graph to understand some trends can be better than looking at a raw data table. When you create graphs, charts or tables, also make sure to label them correctly.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Explain about your tools and results quality</strong></p>\r\n\r\n<p style=\"text-align:justify\">You can use a separate section to explain about the used tools and techniques for your data analysis work. This section can also be used to explain about your data sources. In addition, there are several statistical indicators that can describe the quality of your findings. Use them to indicate the same.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Make it well readable</strong></p>\r\n\r\n<p style=\"text-align:justify\">Finally, do not forget to polish your presentation by using correct and clear language. Make it easily understandable and meaningful for your target readers. In addition, keep your language flawless.</p>\r\n', '', NULL, 'how-to-present-your-analyzed-data-effectively', 1, '1385058600', 'November-2013', '', '', ''),
(5, 'Roop Rana', '7', 'Getting Better at Statistical Analysis and Software Use', '<p style=\"text-align:justify\">Students often get terrified just with the use of the word statistics. While math and statistics might be a little difficult to grasp compared to other subjects in a Master&rsquo;s program, they are not impossible to learn. Students tend to give up even before trying when they have to deal with statistics during their research in dissertations. Remember that learning statistics requires a lot of hard work and patience but in the long run, knowledge of statistical technique support us in making informed decisions.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Things you can do to get better at statistics:</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Begin by having an open mind</strong> &ndash; Remove the fear of the subject from your mind and try to understand the fundamentals. If you get the basics right, it will make the process of learning much simpler and a lot more fun.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Practice till you can be perfect &ndash;</strong> Software like SPSS require a lot of practice to get accurate results. You need to understand the different tests and be able to differentiate when to use which test. The best way is to get sample data and keep practicing the software right from the beginning of your academic year. This way, when you are faced with a time crunch during your dissertation, you will not have software troubles.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Consider professional help</strong> &ndash; If you are still not able to grasp the subject, you can take help from a professional online tutor to teach statistics to you. This will give you a one on one guidance and you will be in a better position to analyze your data. You can also get professional help to conduct the tests for you if you are absolutely unsure about doing it yourself. The services are usually affordable and they will guarantee exceptional results.</p>\r\n\r\n<p style=\"text-align:justify\">If you want to increase your confidence in statistics and improve your knowledge about the subject, you will find various ways to improvise and master statistical analysis.</p>\r\n', '', NULL, 'getting-better-at-statistical-analysis-and-software-use', 1, '1408041000', 'August-2014', '', '', ''),
(6, 'Pritish', '5', 'Doing a Dissertation on the History of Modern Geometry', '<p>There are many students who do not completely grasp the complicated concepts of geometry. They are unable to relate it to real life, and have a hard time absorbing abstract concepts. They wonder what good learning the intricacies of sin and tan will have on their lives. That is why they pay little attention in geometry class and just do enough to get through the subjects.</p>\r\n\r\n<p>However, if they were to learn the history behind the various formulas and how they came into being then they will grasp the concepts much better. This is why knowing the history of any subject is a good idea and geometry is no different. In this context doing a dissertation on the history of modern geometry is a plan worth considering.</p>\r\n\r\n<p>Students can start with the history of projective geometry and they can continue their research into the discovery of non-Euclidean geometry, which covers the time period from the 1820s to the 1830s. Students can write on the developments in algebra and the influence that they had on projective geometry. It is also a good idea to consider the works done on abstract axiomatic geometry.</p>\r\n\r\n<p>While doing the project the students can discuss the differential geometric aspects of non-Euclidean geometry. Einstein was influenced a lot by this subject and researchers can look into what the extent of his interest was and what role it played in his work.</p>\r\n\r\n<p>Another angle that can be explored by the researchers is the relationship between geometry and physics. There is much truth to be gained by doing a dissertation on this subject. During the course of the investigation many more truths will be revealed. It will also pave the way for the students to grasp some very complicated concepts a lot easier.</p>\r\n', '', NULL, 'doing-a-dissertation-on-the-history-of-modern-geometry', 1, '1410892200', 'September-2014', '', '', ''),
(7, 'Geeta Poojaria', '7', 'Data management techniques for effective analysis', '<p>Research studies are largely based on data, and how you manage it also plays a role in determining the quality of result you obtain. However, at the PhD level, you have to deal with extensive datasets and participant groups. So, managing data will not be easy. You have to take help of certain techniques and tools to ensure that you do not lose any important data, or get confounded with frivolous data.</p>\r\n\r\n<p>First it is important to understand the scope of data. For any research, data is not just limited to numerical records; it also encompasses information collected through observation, experimentation, mapping, measurements, images, etc.</p>\r\n\r\n<p>Some steps that must be followed for proper data management and documentation are:</p>\r\n\r\n<p><strong>&bull; Data Entry:</strong> it is the first stage of recording data for your report. Every figure is entered carefully in tables and tools used for data entry include excel sheets, SPSS modules, etc. This step becomes complicated when there are multiple people working on the same project, or when data is being collected from various locations. In some cases, transcription or logging may be needed.<br />\r\n<strong>&bull; Data Cleansing:</strong> once you have entered all the data, you have to ensure that there are no missing data. Also, all misleading, confusing and meaningless data has to be removed from your records, so that it does not affect the research results.<br />\r\n<strong>&bull; Data Backup:</strong> taking a reliable back up of the data is essential so that you don&rsquo;t lose critical information in middle of research. However, while taking a backup, pay attention to security of sensitive or confidential data.<br />\r\n<strong>&bull; Data Documentation:</strong> the process of documentation starts with labeling and coding of data. You have to explain the coding and classification to enable easy understanding by readers. There can be some data that is derived after basic analysis or experimentation. All such data must be classified separately and some information provided about them.<br />\r\n<strong>&bull; Double check:</strong> it is best if data is checked by different persons. It eliminates chances of any lapse or mistake in recording and coding of data.</p>\r\n\r\n<p>To be certain that you make the best use of data, it is advisable to take help from professional data management experts and statisticians.</p>\r\n', '', NULL, 'data-management-techniques-for-effective-analysis', 1, '1597429800', 'August-2020', '', '', ''),
(8, 'Raj Kundra', '3', 'Factors to Consider While Selecting the Right Survey Method', '<p>When you are involved in social researches, you may make use of varied survey methods for data collection. However, choosing the right survey technique is very important. Thus, you should consider some important factors that govern your choice of a survey method. Check out what all is important.</p>\r\n\r\n<p><strong>Population for surveying</strong></p>\r\n\r\n<p>Consider the accessibility of the population on which a survey needs to be conducted. If your research involves a population that can be enumerated, then you can easily choose a sample out of an entire list. You may also use mail or telephone surveying techniques on such samples. However, such methods will be of no use when your population cannot be enumerated.</p>\r\n\r\n<p>Similarly, you may not be able to apply questionnaires when your population is illiterate. In many cases where a population has language issues, researchers may need to come up with multiple versions of questionnaires. Further, a survey method also depends on the cooperation provided by your population, as well as its geographic limitations.</p>\r\n\r\n<p><strong>Issues with sampling</strong></p>\r\n\r\n<p>While you may want to use a certain survey technique, its success actually depends on the response rate from a selected sample. Interviews and personal questionnaires generally work well with smaller samples. It is also important to consider the location of respondents and the data available about them.</p>\r\n\r\n<p><strong>Study duration</strong></p>\r\n\r\n<p>While cross-sectional surveys are relevant to collect data at a single point in time, longitudinal surveys need to be designed for a long-term study where data comparisons would be done.</p>\r\n\r\n<p><strong>Question and content issues</strong></p>\r\n\r\n<p>You should consider the types of questions you want to ask respondents, as well as the complexity, sequence and length of those questions. You should also check the level of content details required from a respondent. For complex and detailed information, it is better not to rely on paper-pencil instruments. You may make use of personal interviews and audiovisual tools in such cases.</p>\r\n', '', NULL, 'factors-to-consider-while-selecting-the-right-survey-method', 0, '1673202600', 'January-2023', '', '', ''),
(9, 'Reena Bhalla', '1', 'Making Your Thesis Methodology Chapter More Effective', '<p>When you prepare the Methodology chapter of your thesis, you need to describe about your research questions and set hypotheses. You also need to explain each step you would take to research your problem. Thus, it is important to choose the right problem before you decide on an appropriate methodology to study that problem. If you have done that, then start your chapter by defining your problem in a clear manner. Then, give a context to your research by mentioning about the overall study approach. This may include your rationale and sampling issues.</p>\r\n\r\n<p>While providing details of your techniques, make sure that these are reproducible and reliable. This is what provides credibility to your research. If somebody challenges your research, then a reproducible technique will prove the worth of your work by providing same results. Further, you should provide complete justification for your chosen methods to conduct research. It becomes more important when you have taken up a non-standard method. You should also perform a critical analysis of all available methodological approaches so your chosen approach could be justified with its pros and cons.</p>\r\n\r\n<p>Further, you should focus on explaining the issues of validity and reliability in detail. You may also talk about the sources of error and accuracy issues. Give special attention to sampling issues, such as sample size and sampling techniques. Sampling is a critical part of your Methodology chapter and you should write about the impact of your sample size. This could be explained in terms of the statistical significance of your results. While writing this chapter, keep the content focused and clear. If you have some material that is indirectly relevant to this chapter, then put it in appendix. Finally, explain the general significance of your approach so your findings may become more persuasive.</p>\r\n', '', NULL, 'making-your-thesis-methodology-chapter-more-effective', 1, '1429641000', 'April-2015', '', '', ''),
(10, 'Princy Sharma', '7', 'Teams and Data Analysis of a Social Science Survey', '<p>When students of the social sciences have designed their research ideas, they often wonder how they are going to collect data. Social science projects require a lot of data, and it is not easy collecting all of it. Of course, many of these projects are done by teams of people and once they coordinate in a group then the task becomes easy. If an individual alone has to collect a lot of data then it might be wise for him or her to reduce the scope of the study lest they are not able to get enough information from enough people.</p>\r\n\r\n<p><a href=\"http://www.elkstatistics.com/blog/wp-content/uploads/2014/09/1.jpg\"><img alt=\"1\" class=\"alignleft size-medium wp-image-70\" src=\"http://www.elkstatistics.com/blog/wp-content/uploads/2014/09/1-300x245.jpg\" style=\"height:245px; width:300px\" /></a>In case the survey is being done in teams then it is a good idea to split the survey geography into different parts. Each part should target an equal number of respondents and each member would be responsible for collecting data from those respondents. The team also has to factor in the possibility that many of these respondents might not answer. Sampling error should be given serious thought in such cases.</p>\r\n\r\n<p>It should be remembered that the team also has to analyse this data afterwards. So it is a good idea to keep the variables simple. It is always easy to understand the correlation between a few variables than many. When the research methodology is being designed then it would be helpful if the division of the survey was also done so that each sample is comparatively homogenous in nature. Then the stress on the surveyors and the work of the analysts becomes less.</p>\r\n\r\n<p>Excel files or databases can be used to store the data. Statistical applications like STATA accept many kinds of input formats. The data can be loaded into the applications and broken down for further analysis. Different team members can also be assigned different tasks when it comes to analysis of the data so that the meanings are deciphered quickly.</p>\r\n', '', NULL, 'teams-and-data-analysis-of-a-social-science-survey', 1, '1518460200', 'February-2018', '', '', ''),
(11, 'Kapil Verma', '4', 'How to choose the right research methodology?', '<p>Research is the foundation of your dissertation. The right approach and effective results will lead you to better marks and success in the future while a bad result or the wrong method can lead you to depression and failure. In order to achieve success in your dissertation, one must pay careful attention in choosing the right method. In your dissertation, research method refers to the use of an appropriate kind of research while the chapter on research methodology involves writing about the research and explaining why you choose a particular kind of method. In order to complete this chapter correctly, you must know all the valid reasons of why you are choosing a particular research method above the other. Follow the below steps and answer the questions to get complete information for writing your chapter on research methodology:</p>\r\n\r\n<ul>\r\n	<li>Define the research problem and analyse why you chose a particular issue to research on</li>\r\n	<li>Compare the various methods of research with their pros and cons</li>\r\n	<li>What is the hypothesis and how has it has been formulated</li>\r\n	<li>How is data collection undertaken? Analyse the various ways and the pros and cons here as well</li>\r\n	<li>What is the sample size? How did you determine it?</li>\r\n	<li>What is the outcome from the data analysis and what is the probable result?</li>\r\n</ul>\r\n\r\n<p>Research methodology is primarily divided into qualitative and quantitative. In the qualitative method, the data collection is in the form of interview questions which are open ended. The trends are analysed as per the answers and possible conclusions are drawn. On the contrary, quantitative analysis is based on questionnaires which are mainly close ended questions. They are analysed with the help of numbers and results are derived on the basis of quantity.</p>\r\n\r\n<p>Make a well-informed decision about choosing the right method for research and you will be able to write a good chapter on research methodology as well.</p>\r\n\r\n<p>Good luck!</p>\r\n', '', NULL, 'how-to-choose-the-right-research-methodology', 1, '1439490600', 'August-2015', '', '', ''),
(12, 'Ankit', '7', 'Data Wise Statistical Tools', '<p>If the world of research across the domains of Finance, Accounting and Economics are being looked at, then it can be observed easily, that the nature and kind of data being used in these domains differ from each other to a great extent. For analyzing the properties of a particular variable over a long period of time, time series data is used, and tools like vector auto regression, cointegration, conditional heteroscedasticity etc. are applied on the data. For analyzing properties of a longitudinal data in a comparative or pooled scenario, panel data is used, and tools like panel regression, Haussmann test, Chow test, Bounds test etc. are applied on the data. If any time series data are used for forecasting purpose, then primarily artificial neural network models are applied. Now it is clearly understood that there is no software available so far, which can encompass all of these analytical tools. Therefore, researchers have to look for various softwares, which cater to their specific requirements regarding data analysis.</p>\r\n\r\n<p>There are various softwares available in the market, which are specifically used for analyzing a particular type of data, or can be used. Following are some of those:</p>\r\n\r\n<p>&bull; EViews: This menu based software is primarily used for time series data analysis. It has direct menu based options for testing cointegration, causality, conditional heteroscedasticity, optimum lag length etc.<br />\r\n&bull; Stata: This command and menu based software is primarily used for panel data analysis. It has direct commands for fixed and random effect panel regressions, Haussmann tests, Chow tests etc.<br />\r\n&bull; SPSS: This menu based software can be used for artificial neural network analysis. It has direct menu based options for creating nodes, layers, and running simulations.</p>\r\n\r\n<p>For more information about various aspects of analytical tools available in the market, kindly browse through the pages of www.elkstatistics.com.</p>\r\n', '', NULL, 'data-wise-statistical-tools', 1, '1651343400', 'May-2022', '', '', ''),
(13, 'Prachi Patil', '4', 'Beyond Unidirectional Associations', '<p>If the researchers go by the traditional definition provided for explaining regression analysis, then it can be easily understood that the association that can exist between dependent and independent variable(s) is unidirectional in nature, may it be linear or non-linear. The direction of this association runs from independent to dependent variable. That is the reason behind the naming conventions of dependent and independent variables, as it had been believed that no other direction can exist between these two variables, and that was the foundation of regression analysis.</p>\r\n\r\n<p>However, situations have changed in last couple of years. Advent of several domains in the field of applied economics has made the researchers to think beyond the boundaries of unidirectional associations, as incidences of several negative economic consequences have made them mull over it. For example, for achieving the desired rate of growth and to boost up industrialization, a nation needs energy the most and this is the primary driver of growth considering most of the developing nations across the world. Now, this energy is generally produced from fossil fuels, like coal, oil, petroleum etc. Continuous combustion of these fossil fuels in turn results in rise in the level of emission in the atmosphere. The emissions are in the forms of carbon dioxide, sulphur dioxide, nitrogen dioxide, suspended particulate matters, fecal coliform etc. These negative environmental consequences of accelerated economic growth can possibly cause harm to the growth itself, by causing harm towards the other drivers of growth, li</p>\r\n\r\n<p>ke hygienic state of labor force. If this example can be framed by denoting dependent and independent variables, then for the first half of the example, economic growth is the dependent variable and fossil fuel consumption is the independent variable. However, in the second half of the example, the variables swap their positions. Hence, unidirectional association does not exist in this case. For more information about various directions of economic analysis, kindly browse through the pages of www.elkstatistics.com.</p>\r\n', '', NULL, 'beyond-unidirectional-associations', 1, '1660501800', 'August-2022', '', '', ''),
(14, 'Amit Pal', '2', 'Application of SPSS for Humanities Research', '<p>The ability of SPSS to store large and complex sets of data, perform multivariate analysis, allow the user to export tables and charts easily, and even handle 3D graphing makes it ideal for research in the humanities. In fact, it was originally designed for the study of social sciences till its diverse utilities made it perfect for use in other fields as well.</p>\r\n\r\n<p>It is a common practice for humanities scholars to study ego centered networks and the personality of focal individuals. The software enables researchers to collect data on different parts of the network, on different individuals, use variables and values to create ties and links between the data, and study the ensuing relationships. Researchers can collect and store large sets of data to understand and summarize the characteristics of a certain group of people and their beliefs. The Aggregate function allows summary statistics to be compiled for a certain case and stored in a separate file specifically for that cluster and that case.</p>\r\n\r\n<p>Researchers can perform factor and cluster analysis for identifying groups; linear regression can be calculated for predicting the results of tests, and non-parametric tests can be run for compiling statistics. This software allows a researcher to study and display the complexities and unpredictability of human beings in the logical language of numbers.</p>\r\n', '', NULL, 'application-of-spss-for-humanities-research', 1, '1662229800', 'September-2022', '', '', ''),
(15, 'Vinamrata', '6', 'How is E-Views used for Economic Studies', '<p>The study of economics involves a lot of numerical calculations and statistical analysis and the E-views software is ideal for helping scholars in this field with such investigations. It does not take long for an economist to learn to use the interface and start building projections and simulations. The data handling tools allow comparison between different financial models, which is such an important task in the job profile of an economist.</p>\r\n\r\n<p>Statistical analysis, working with graphs and large spreadsheets and conducting tests on the data is every day work for the economist. This application is adept at working with a variety of statistical functions whether it is tests of equality, cross tabulation, factor analysis, estimating uniqueness, building histograms or time series tools.</p>\r\n\r\n<p>The best part is that the application supports a variety of input and output options, which means that the economist can access data from any source and also present it in the manner that he deems appropriate to his superiors. The economist can also make use of the improved tools for managing variables in a model, which means that the factors can be changed as per the change in the economic scenario and the change in the nature of the study.</p>\r\n', '', NULL, 'how-is-e-views-used-for-economic-studies', 1, '1651429800', 'May-2022', '', '', ''),
(16, 'Vipasha', '3', 'How to Prepare the Perfect Questionnaire ', '<p>As the researcher sits down to prepare a questionnaire, what are the things must he keep in mind? The poll should not involve too many questions. People do not have the patience to answer them. The questions themselves should be short to read and simple to understand. They should elicit direct responses. If possible they can be in the form of a multiple choice format or a simple yes or no option. Giving the respondent limited answer options means that it is easier for the respondent to make up his mind and it is also easier for the researcher to collate and analyze the data afterwards.</p>\r\n\r\n<p>It is a must to use technically correct language, simple grammar and active voice. The questionnaire should not ask the respondent to recall an event which happened very far back in time. The respondents would find it difficult to answer and the response would also be unreliable. The questionnaire should also have a title that is meaningful so that the respondents understand what the survey is about. It is a good idea to send the poll to a limited target audience as a test. This allows the researcher to judge the quality of the poll and also make changes to it before releasing it in the field for the final survey.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', NULL, 'how-to-prepare-the-perfect-questionnaire', 1, '1664735400', 'October-2022', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_comment_reply`
--
ALTER TABLE `tbl_comment_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
