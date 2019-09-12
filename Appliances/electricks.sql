SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(3, 'glenn', 'sabalbarino', 'glenn@gmail.com', 'glenn', 'a1Bz20ydqelm8m1wql3c784bff199ef62ecc2f3a988f395c62'),
(4, 'jerome', 'antiado', 'jerome@yahoo.com', 'jerome', 'a1Bz20ydqelm8m1wql2bb010060d682fee5ad19d973a9a4d2a'),
(5, 'jg', 'jg', 'jg@yahoo.com', 'jg', 'a1Bz20ydqelm8m1wql1272c19590c3d44ce33ba054edfb9c78');

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'TV'),
(2, 'Refrigerator'),
(3, 'Vacuum Cleaner'),
(4, 'Microwave Oven'),
(5, 'Washing Machine'),
(6, 'Rice Cooker'),
(7, 'Electric Fan'),
(8, 'Air Conditioner'),
(9, 'Stove'),
(10, 'Radio');

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(128, 3, '(Administrator) has logged in the system at ', '2019-09-02 04:21:37'),
(136, 3, 'added 10 of 82\"QLED Q90R 4K Smart TV', '2019-09-06 01:21:24'),
(137, 3, 'added 1 of 98\"QLED Q900R 8K Smart TV', '2019-09-06 01:28:52'),
(138, 3, 'added 10 of  82 inch QLED Smart TV ', '2019-09-06 01:45:26'),
(139, 3, '(Administrator) has logged in the system at ', '2019-09-06 01:54:46'),
(140, 3, 'added a new product 10 of Sony OLED 55A9G', '2019-09-06 02:07:27'),
(141, 9, 'has logged in the system at ', '2019-09-06 02:14:24'),
(142, 9, 'added a new product 10 of LG UHD TV', '2019-09-06 03:13:18'),
(143, 9, 'has logged in the system at ', '2019-09-06 03:43:08'),
(144, 3, '(Administrator) has logged in the system at ', '2019-09-06 03:57:25'),
(145, 3, 'added a new product 10 of Sharp Full HD Easy Smart LED TV ', '2019-09-06 04:31:32'),
(146, 3, 'added a new product 10 of Samsung - 24.6 Cu. Ft. French Door Refrigerator', '2019-09-06 04:44:04'),
(147, 3, '(Administrator) has logged in the system at ', '2019-09-06 04:59:03'),
(148, 3, 'added a new product 10 of LG TWO DOOR REFRIGERATOR', '2019-09-06 05:06:52'),
(149, 3, 'added a new product 15 of SAMSUNG 9.1 CU.FT. TWO DOOR REFRIGERATOR', '2019-09-06 05:13:18'),
(150, 3, 'added a new product 15 of Insignia - 9.2 Cu. Ft. Bottom-Freezer Refrigerator', '2019-09-06 05:20:08'),
(151, 3, 'added a new product 10 of ELECTROLUX 24.6 FRENCH DOOR REFRIGERATOR', '2019-09-06 05:46:49'),
(152, 3, 'added a new product 20 of ELECTROLUX AEROPERFORMER BAGLESS VACUUM CLEANER', '2019-09-06 05:56:51'),
(153, 3, 'added a new product 2 of PHILIPS  VACUUM', '2019-09-06 06:04:42'),
(154, 10, 'has logged in the system at ', '2019-09-06 06:13:02'),
(155, 10, 'added a new product 5 of PHILIPS VACUUM', '2019-09-06 06:28:27'),
(156, 10, 'added a new product 20 of IMARFLEX VACUUM CLEANER', '2019-09-06 07:00:22'),
(157, 10, 'added a new product 15 of Prestige 1200 Watt Wet and Dry Vacuum Cleaner ', '2019-09-06 07:06:47'),
(158, 10, 'added a new product 20 of WHIRLPOOL BL MICROWAVE OVEN', '2019-09-06 07:21:46'),
(159, 10, 'added a new product 20 of SAMSUNG  32 LITERS MICROWAVE OVEN', '2019-09-06 07:23:59'),
(160, 10, 'added a new product 3 of LG All In One Microwave Oven', '2019-09-06 07:32:13'),
(161, 10, 'added a new product 5 of Breville 34L Quick & Easy Microwave Oven with Grill', '2019-09-06 07:40:11'),
(162, 10, 'added a new product 8 of LG 28 L Convection Microwave Oven', '2019-09-06 08:01:23'),
(163, 10, 'added a new product 10 of SAMSUNG 6.5KG TOP LOAD WASHING MACHINE', '2019-09-06 08:06:09'),
(164, 10, 'added a new product 3 of LG 14 KG WASHER', '2019-09-06 08:11:17'),
(165, 10, 'added a new product 30 of Sharp Washing Machine', '2019-09-06 10:36:47'),
(166, 10, 'added a new product 1 of MIDEA Top Loader Washing Machine 5.5kg', '2019-09-06 10:49:04'),
(167, 10, 'added a new product 5 of VOGUE Front Load Washing Machine 9 Kg ', '2019-09-06 10:58:54'),
(168, 10, 'added a new product 7 of PHILIPS JAR RICE COOKER', '2019-09-06 11:02:26'),
(169, 10, 'added a new product 10 of Cookworks 1.5L Rice Cooker', '2019-09-06 11:08:38'),
(170, 10, 'added a new product 10 of PHILIPS BASIC RICE COOKER', '2019-09-06 11:13:40'),
(171, 10, 'added a new product 25 of Buffalo Commercial Rice Cooker 4Ltr', '2019-09-06 11:19:03'),
(172, 9, 'has logged in the system at ', '2019-09-07 01:41:14'),
(173, 11, 'has logged in the system at ', '2019-09-07 10:37:34'),
(174, 3, '(Administrator) has logged in the system at ', '2019-09-07 10:38:36'),
(175, 11, 'has logged in the system at ', '2019-09-09 02:52:38'),
(176, 3, '(Administrator) has logged in the system at ', '2019-09-09 02:56:53'),
(177, 11, 'has logged in the system at ', '2019-09-09 02:57:04'),
(178, 11, 'added 50 of LG All In One Microwave Oven', '2019-09-09 02:57:26'),
(179, 11, 'added a new product 5 of Sakura Micom Fuzzy Logic Ceramic Rice Cooker', '2019-09-09 04:14:59'),
(180, 11, 'has logged in the system at ', '2019-09-09 04:20:56'),
(181, 9, 'has logged in the system at ', '2019-09-09 04:21:12'),
(182, 3, '(Administrator) has logged in the system at ', '2019-09-09 04:21:46'),
(183, 11, 'has logged in the system at ', '2019-09-09 04:22:07'),
(184, 4, '(Administrator) has logged in the system at ', '2019-09-09 04:40:59'),
(185, 11, 'has logged in the system at ', '2019-09-09 04:43:55'),
(186, 4, '(Administrator) has logged in the system at ', '2019-09-09 04:45:16'),
(187, 4, '(Administrator) has logged in the system at ', '2019-09-09 04:45:37'),
(188, 4, '(Administrator) has logged in the system at ', '2019-09-09 04:46:49'),
(189, 4, '(Administrator) has logged in the system at ', '2019-09-09 04:48:07'),
(190, 4, '(Administrator) has logged in the system at ', '2019-09-09 04:48:33'),
(191, 4, '(Administrator) has logged in the system at ', '2019-09-09 04:48:46'),
(192, 11, 'has logged in the system at ', '2019-09-09 04:49:16'),
(193, 11, 'has logged in the system at ', '2019-09-09 04:50:18'),
(194, 9, 'has logged in the system at ', '2019-09-09 04:54:27'),
(195, 9, 'has logged in the system at ', '2019-09-09 04:55:39'),
(196, 3, '(Administrator) has logged in the system at ', '2019-09-09 04:55:53'),
(197, 12, 'has logged in the system at ', '2019-09-09 04:58:35'),
(198, 5, '(Administrator) has logged in the system at ', '2019-09-09 05:02:23'),
(199, 5, 'added a new product 20 of Oypla Electrical 12\" 3 Speed Oscillating Electric Desk Home Office Fan', '2019-09-09 06:30:05'),
(200, 5, 'added a new product 15 of Zennox Metal Box Fan 18\" Floor Standing Wind Machine with 3 Speed Settings', '2019-09-09 06:45:21'),
(201, 12, 'has logged in the system at ', '2019-09-09 07:01:08'),
(202, 5, '(Administrator) has logged in the system at ', '2019-09-09 07:04:47'),
(203, 12, 'has logged in the system at ', '2019-09-09 07:05:41'),
(204, 5, '(Administrator) has logged in the system at ', '2019-09-09 07:06:47'),
(205, 5, '(Administrator) has logged in the system at ', '2019-09-09 07:18:05'),
(206, 12, 'has logged in the system at ', '2019-09-09 07:18:40'),
(207, 5, '(Administrator) has logged in the system at ', '2019-09-09 07:18:45'),
(208, 12, 'has logged in the system at ', '2019-09-09 07:19:17'),
(209, 5, '(Administrator) has logged in the system at ', '2019-09-09 07:19:29'),
(210, 5, '(Administrator) has logged in the system at ', '2019-09-09 07:20:03'),
(211, 5, 'added a new product 5 of Innova 16\" Inch Cooling Oscillating Pedestal Fan Extendable Free Standing T', '2019-09-09 07:31:52'),
(212, 5, 'added a new product 20 of  Schallen Home & Office Electric', '2019-09-09 07:36:31'),
(213, 5, 'added a new product 50 of Lady Handheld Fan, Rechargeable Small Personal Fan', '2019-09-09 07:39:18'),
(214, 5, 'added a new product 3 of LG 1.5 HP WINDOW TYPE AIRCONDITIONER', '2019-09-09 08:03:35'),
(215, 5, 'added a new product 2 of TCL 1.5 HP PORTABLE AIR CONDITIONER', '2019-09-09 08:06:41'),
(216, 5, 'added a new product 5 of SAMSUNG  1.5 HP SPLIT TYPE AIRCONDITIONER', '2019-09-09 08:13:17'),
(217, 5, 'added a new product 5 of Princess Air Conditioner [Energy Class A]', '2019-09-09 08:35:52'),
(218, 5, 'added a new product 18000 of Igenix 4-in-1 Portable Air Conditioner with Cooling, Heating, Fan and D', '2019-09-09 08:38:51'),
(219, 5, 'added a new product 5 of Laptronix Electric Double Hob', '2019-09-09 09:44:23'),
(220, 5, 'added a new product 5 of  Russell Hobbs 2 Plate Mini Hot Plate Hob', '2019-09-09 09:47:03'),
(221, 5, 'added a new product 5 of  Cusimax Hot Plate Electric Burner Single Burner Cast', '2019-09-09 09:49:10'),
(222, 5, 'added a new product 10 of FireFriend Gas Stove 2 Burners ', '2019-09-09 09:52:13'),
(223, 5, 'added a new product 10 of NJ Gas Stove 2 Burner Stainless Steel', '2019-09-09 09:59:56'),
(224, 5, '(Administrator) has logged in the system at ', '2019-09-09 10:06:17'),
(225, 5, 'added a new product 10 of qwe', '2019-09-09 10:22:44'),
(226, 5, 'added a new product 10 of ION Audio Mustang Stereo | Rechargeable Bluetooth Enabled Stereo Boombox w', '2019-09-09 10:27:26'),
(227, 5, 'added a new product 10 of DreamSky AM FM Portable Radio with Loudspeaker and Headphone Socket', '2019-09-09 10:29:20'),
(228, 5, 'added a new product 15 of Pure Elan E3 Portable Digital DAB/DAB+/FM Digital Radio with Alarm', '2019-09-09 10:31:39'),
(229, 5, 'added a new product 15 of Majority Histon II Portable Radio, Dual Alarm Clock, Battery Portable or M', '2019-09-09 10:33:14'),
(230, 13, 'has logged in the system at ', '2019-09-09 10:35:48'),
(231, 5, '(Administrator) has logged in the system at ', '2019-09-09 10:38:31'),
(232, 13, 'has logged in the system at ', '2019-09-10 10:57:43'),
(233, 12, 'has logged in the system at ', '2019-09-10 11:06:17'),
(234, 5, '(Administrator) has logged in the system at ', '2019-09-10 11:11:38'),
(235, 5, 'added 20 of Samsung QLED Q900R 8K Smart TV', '2019-09-10 11:12:15'),
(236, 13, 'has logged in the system at ', '2019-09-10 11:12:53'),
(237, 5, '(Administrator) has logged in the system at ', '2019-09-10 12:28:48'),
(238, 5, 'added 9 of LG 1.5 HP WINDOW TYPE AIRCONDITIONER', '2019-09-10 12:29:09'),
(239, 13, 'has logged in the system at ', '2019-09-10 12:29:28'),
(240, 13, 'has logged in the system at ', '2019-09-10 12:30:29'),
(241, 13, 'has logged in the system at ', '2019-09-10 12:30:58'),
(242, 13, 'has logged in the system at ', '2019-09-10 12:31:29'),
(243, 5, '(Administrator) has logged in the system at ', '2019-09-10 12:32:59'),
(244, 13, 'has logged in the system at ', '2019-09-10 12:53:18'),
(245, 13, 'has logged in the system at ', '2019-09-11 01:43:23'),
(246, 4, '(Administrator) has logged in the system at ', '2019-09-11 01:45:33'),
(247, 5, '(Administrator) has logged in the system at ', '2019-09-11 01:51:57'),
(248, 13, 'has logged in the system at ', '2019-09-11 03:43:29');

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(104, 12, 1, '390', '20000.00', 10, ''),
(105, 12, 1, '389', '20000.00', 10, ''),
(106, 11, 1, '0', '17000.00', 3, ''),
(107, 17, 2, '8', '258000.00', 9, ''),
(108, 11, 1, '', '17000.00', 9, ''),
(110, 11, 1, '', '17000.00', 9, ''),
(111, 19, 2, '8', '36000.00', 3, ''),
(112, 24, 1, '9', '100000.00', 3, ''),
(113, 26, 2, '', '14000.00', 3, ''),
(114, 24, 1, '9', '100000.00', 10, ''),
(115, 20, 2, '9', '32000.00', 10, ''),
(116, 31, 1, '19', '6000.00', 10, ''),
(117, 35, 1, '', '10000.00', 10, ''),
(118, 40, 1, '', '6000.00', 10, ''),
(119, 12, 3, '387', '87000.00', 11, ''),
(120, 30, 1, '', '4000.00', 11, ''),
(121, 32, 3, '0', '27000.00', 11, ''),
(122, 20, 1, '9', '16000.00', 11, ''),
(123, 32, 1, '', '9000.00', 11, ''),
(124, 42, 1, '', '3000.00', 11, ''),
(125, 46, 1, '14', '800.00', 5, ''),
(127, 45, 1, '', '1000.00', 5, ''),
(133, 36, 1, '1', '25000.00', 12, '1'),
(135, 2, 20, '0', '580000.00', 12, '1'),
(136, 2, 386, '0', '11194000.00', 12, '1'),
(138, 36, 3, '7', '75000.00', 13, '1'),
(139, 41, 1, '', '2000.00', 13, '1'),
(140, 31, 1, '19', '1000.00', 13, '1'),
(141, 18, 2, '48', '18000.00', 13, '1'),
(142, 9, 2, '13', '14000.00', 13, '1'),
(143, 36, 1, '6', '25000.00', 13, '1');

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL,
  `prod_pic2` varchar(500) NOT NULL,
  `prod_pic3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_price`, `category`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(1, 'Samsung QLED Smart TV ', '82-inch / Direct Full Array 16X / Quantum HDR 2000 /', 20, '17000.00', 'TV', 'QA82Q90RAKXXS', 'tv1.jpg', 'tv2.jpg', 'tv3.jpg'),
(2, 'Samsung QLED Q900R 8K Smart TV', '98-inch / Real 8K Resolution-4X the resolution of UHD/8K AI Upscaling/8K Quantum Processor', 20, '29000.00', 'TV', 'QA98Q900RBKXXS', 'tv4.jpg', 'tv5.jpg', 'tv6.jpg'),
(3, 'Sony OLED 55A9G', '55-inch / 4k Ultra HD / Android Smart TV', 8, '129000.00', 'TV', 'A9G Series', 'tv7.jpg', 'tv8.jpg', 'tv9.jpg'),
(4, 'LG UHD TV', '55-inch / 4K UHD TV with HDR / Smart TV', 10, '24000.00', 'TV', '55UK6090PUA', 'tv10.jpg', 'tv11.jpg', 'tv12.jpg'),
(5, 'Sharp Full HD Easy Smart LED TV ', '45-inch / Digital LED / Easy Smart / Full HD / Internet', 8, '18000.00', 'TV', 'C45AE1X', 'tv13.jpg', 'tv14.jpg', 'tv15.jpg'),
(6, 'SAMSUNG 16.0 CU.FT. TWO DOOR REFRIGERATOR', '16.0 cu.ft. / Top Mount Freezer Two Door Refrigerator / Twin Cooling Plus / Smart Conversion', 9, '16000.00', 'Refrigerator', 'RF263BEAESR', 'ref1.jpg', 'ref2.jpg', 'ref3.jpg'),
(7, 'LG TWO DOOR REFRIGERATOR', '15.1 cu.ft. Two Door Top Freezer Refrigerator / Door Cooling / Inverter Linear Compressor', 10, '9000.00', 'Refrigerator', 'C422SLCN', 'ref4.jpg', 'ref5.jpg', 'ref6.jpg'),
(8, 'SAMSUNG 9.1 CU.FT. TWO DOOR REFRIGERATOR', '9.1 cu.ft. Two Door Refrigerator / Digital Inverter Compressor / All Around Cooling System', 15, '8000.00', 'Refrigerator', 'RT25FARBDUTTC', 'ref7.jpg', 'ref8.jpg', 'ref9.jpg'),
(9, 'PANASONIC 12.8 CU.FT. TWO DOOR REFRIGERATOR', '12.8 cu.ft. Two Door Top Freezer Inverter Refrigerator / Jumbo Freezer / Surround Cooling Air Flow', 13, '7000.00', 'Refrigerator', 'NR-BD418PSPH', 'ref10.jpg', 'ref11.jpg', 'ref12.jpg'),
(10, 'ELECTROLUX 24.6 FRENCH DOOR REFRIGERATOR', '622L Black Quattro French Door Fridge / 360 Cooling maintains a stable temperature to keep food fresh for longer / The unique convertible zone can be adjusted from +7Â°C to -18Â°C for flexible storage', 9, '100000.00', 'Refrigerator', 'EQE6909A-B', 'ref13.jpg', 'ref14.jpg', 'ref15.jpg'),
(11, 'ELECTROLUX AEROPERFORMER BAGLESS VACUUM CLEANER', 'Cyclonic Airflow system for powerful cleaning performance / Adjustable suction power for ease of use / Intuitive bagless design for convenience of use / Efficient nozzle for great dust pick-up', 20, '4000.00', 'Vacuum Cleaner', ' ZAP9910', 'vac1.jpg', 'vac2.jpg', 'vac3.jpg'),
(12, 'PHILIPS  VACUUM', '1200W 200W / Suction Power / 1.1L Dust Capacity', 2, '7000.00', 'Vacuum Cleaner', 'FC8085', 'vac4.jpg', 'vac5.jpg', 'vac6.jpg'),
(13, 'PHILIPS VACUUM', '2-stage Bagless Cyclonic Action / 12V NiMH Batteries / 120W Input Power', 5, '6000.00', 'Vacuum Cleaner', 'FC6149 ', 'vac7.jpg', 'vac8.jpg', 'vac9.jpg'),
(14, 'IMARFLEX VACUUM CLEANER', 'Multi-Cyclone Vacuum Cleaner / Bagless / Easy Clean-up / 2000W / 2L Capacity', 20, '5000.00', 'Vacuum Cleaner', 'IV-2050B', 'vac10.jpg', 'vac11.jpg', 'vac12.jpg'),
(15, 'Prestige 1200 Watt Wet and Dry Vacuum Cleaner ', 'Wet and dry cleaning / Powerful suction and blower / Advanced hepa filter 360 degree wheels / Auto cut float, accessory storage, internationally certified', 15, '5000.00', 'Vacuum Cleaner', 'V42345L2KM', 'vac13.jpg', 'vac14.jpg', 'vac15.jpg'),
(16, 'WHIRLPOOL BL MICROWAVE OVEN', '20 Liter Microwave Oven / Electronic Control / 700W Microwave Power', 20, '4000.00', 'Microwave Oven', 'MWX203', 'oven1.jpg', 'oven2.jpg', 'oven3.jpg'),
(17, 'SAMSUNG  32 LITERS MICROWAVE OVEN', '32 Liter Microwave Oven with keep warm function / Stainless Steel Door / Ceramic Enamel', 20, '6000.00', 'Microwave Oven', 'MS32J5133AT', 'oven4.jpg', 'oven5.jpg', 'oven6.jpg'),
(18, 'LG All In One Microwave Oven', 'All In One Convection Oven / Ghee in 12Mins / Diet Fry / 360Â° Motorised Rotisserie / 251 Auto Cook Menu', 48, '9000.00', 'Microwave Oven', 'MC2886SFU', 'oven8.jpg', 'oven9.jpg', 'oven7.jpg'),
(19, 'Breville 34L Quick & Easy Microwave Oven with Grill', '12â€ Non-stick crisper pan with in-built preheat works in combination with grill & microwave to crisp food /  9 Auto cook menus / Instant 30 second cooking', 5, '10000.00', 'Microwave Oven', 'BMO300', 'oven10.jpg', 'oven11.jpg', 'oven12.jpeg'),
(20, 'LG 28 L Convection Microwave Oven', 'Convection : Can be used for baking along with grilling, reheating, defrosting and cooking / Tact (Buttons), Jog Dial : Even with hands soiled with dough, these buttons can be used', 8, '6000.00', 'Microwave Oven', 'MC2886BRUM', 'oven13.jpg', 'oven14.jpg', 'oven15.jpg'),
(21, 'SAMSUNG 6.5KG TOP LOAD WASHING MACHINE', '6.5 kg Fully Auto Washing Machine / Fully Automatic / Wobble Technology', 10, '10000.00', 'Washing Machine', 'WA65H4200SW', 'wm1.jpg', 'wm2.jpg', 'wm3.jpg'),
(22, 'LG 14 KG WASHER', '14 kg Washer / Inverter Direct Drive / 6 Motion Technology', 3, '50000.00', 'Washing Machine', 'F2514STGE', 'wm6.jpg', 'wm5.jpg', 'wm4.jpg'),
(23, 'Sharp Washing Machine', '5kg / Cylindrical Tub Design / 15 mins. Max Wash Timer', 30, '5000.00', 'Washing Machine', 'ES-W500', 'wm7.jpg', 'wm8.jpg', 'wm9.jpg'),
(24, 'MIDEA Top Loader Washing Machine ', '10Mins Quick Wash / LED Digital Display / 1-24Hr Delay Start Function / Delicate Wash Function', 1, '8000.00', 'Washing Machine', 'WM2SLASTGE', 'wm11.jpg', 'wm12.jpg', 'wm10.jpg'),
(25, 'VOGUE Front Load Washing Machine', '15 Programs / Intelligent control, LED display / Temperature regulation / 15 mins quick wash / 1 - 24hr delay start', 5, '7000.00', 'Washing Machine', 'WMV128SB', 'wm13.jpg', 'wm14.jpg', 'wm15.jpg'),
(26, 'PHILIPS JAR RICE COOKER', '5 Layers Innerpot / Non Stick and Anti-scratch Coating / Automatic Preset Program', 7, '6000.00', 'Rice Cooker', 'HD3130', 'rice1.jpg', 'rice2.jpg', 'rice3.jpg'),
(27, 'Cookworks 1.5L Rice Cooker', '500 watts / Capacity 1.5 litres / 8 cups / Removable pot / Non-stick bowl / Toughened glass lid.', 10, '800.00', 'Rice Cooker', 'CWRC15L', 'rice4.jpg', 'rice5.jpg', 'rice6.jpg'),
(28, 'PHILIPS BASIC RICE COOKER', '10 Cups / 5 Layer Golden Coating / 650W', 10, '3000.00', 'Rice Cooker', 'HD3017 ', 'rice7.jpg', 'rice8.jpg', 'rice9.jpg'),
(29, 'Buffalo Commercial Rice Cooker', 'Capacity 4.2Ltr dry rice / 10Ltr cooked rice / Dimensions 350(H) x 380(W) x 320(D)mm / Material Stainless Steel / Output 1.55kW / Voltage 230V', 25, '9000.00', 'Rice Cooker', 'BFCR4LC', 'rice10.jpg', 'rice11.jpg', 'rice12.jpg'),
(30, 'Sakura Micom Fuzzy Logic Ceramic Rice Cooker', 'Advanced fuzzy logic technology / 8 cup capacity of uncooked rice - enough for 1-8 people / White/long grain, short grain (for sushi) and brown rice settings / Useful multi-cooker features - steam, porridge, slow cook, soup, cake baking, crust (tahdig) and yoghurt settings', 5, '10000.00', 'Rice Cooker', 'YUM-EN15', 'rice13.jpg', 'rice14.jpg', 'rice15.jpg'),
(31, 'Oypla Electrical 12\'\' 3 Speed Oscillating Electric Fan', 'Official Oypla Electrical Branded Product - Brand New Free UK Delivery / 3 Speed Push Button Speed Control / Cable Length Approx 1.8M Poly Coated Anti Corrosive Safety Grill', 19, '1000.00', 'Electric Fan', 'OE123SODHOF', 'fan1.jpg', 'fan2.jpg', 'fan3.jpg'),
(32, 'Zennox Metal Box Fan 18 Floor Standing Wind Machine with 3 Speed Settings & Tilting Axis', 'Sleek design; Large 18-inch fan in sleek, modern steel design / 3 speed settings; Choose from high, medium or low / Floor stand with tilt axis; The head can be tilted so you can aim the cool air in the best direction to suit you', 13, '800.00', 'Electric Fan', 'ZMBF18SWM3STA', 'fan4.jpg', 'fan5.jpg', 'fan6.jpg'),
(33, 'Innova 16\" Inch Cooling Oscillating Pedestal Fan Extendable Free Standing Tower', 'ADJUSTABLE HEIGHT: The Height Adjustable 16 Inch Pedestal Fan Features A Titling Head That Allows You To Aim The Cool Air In Any Direction - 125cm MAX / ABILITY TO OSCILLATE: The Fan Automatically Moves From Side To Side, Evenly Distributing Cool Air Around The Whole Room.', 5, '2000.00', 'Electric Fan', 'IN16ICOPFEFST', 'fan7.jpg', 'fan8.jpg', 'fan9.jpg'),
(34, ' Schallen Home & Office Electric', 'Schallen branded 12-inch desk fan in BLACK suitable for home, office, garage, travel use / Oscillating function & adjustable tilt head for a wider cooling effect / Modern design with quiet operation and mesh safety grill (requires minimal assembly)', 20, '700.00', 'Electric Fan', 'SHOE123SEOWDTACF', 'fan10.jpg', 'fan11.jpg', 'fan12.jpg'),
(35, 'Lady Handheld Fan, Rechargeable Small Personal Fan', '3 Speeds Setting / Powerful Quiet Pull-out Portable Fan / Mini Cooling Desk Electric Fan Safe for Girls Woman Office School Working Home', 50, '150.00', 'Electric Fan', 'LHFRSPF3PQP', 'fan13.jpg', 'fan14.jpg', 'fan15.jpg'),
(36, 'LG 1.5 HP WINDOW TYPE AIRCONDITIONER', 'Dual Inverter: Up to 70% Energy Savings / Cooling Power: 1,000 Watts / Cooling Capacity Range: 6,500 ~ 13,000 kJ/h', 6, '25000.00', 'Air Conditioner', 'LA150WC ', 'ac1.jpg', 'ac2.jpg', 'ac3.jpg'),
(37, 'TCL 1.5 HP PORTABLE AIR CONDITIONER', 'Cooling Capacity: 12,600 Kj/h / Power Consumption: 1100 W / Fast Cooling, Low Noise', 2, '20000.00', 'Air Conditioner', 'TAC-12CPA/W', 'ac4.jpg', 'ac5.jpg', 'ac6.jpg'),
(38, 'SAMSUNG  1.5 HP SPLIT TYPE AIRCONDITIONER', '1.5 HP Split Type Basic Inverter Airconditioner / Triple Protect + / EER: 10.16 (kJ/W)', 5, '28000.00', 'Air Conditioner', 'AR12MVFHHWKNTC', 'ac7.jpg', 'ac8.jpg', 'ac9.jpg'),
(39, 'Princess Air Conditioner [Energy Class A]', '785 Watt air conditioning unit suitable for spaces up to 60m3 / Cooling, dehumidifying and fan settings / Timer setting to activate or deactivate at the times you choose', 5, '15000.00', 'Air Conditioner', 'P352101MAC', 'ac11.jpg', 'ac10.jpg', 'ac12.jpg'),
(40, 'Igenix 4-in-1 Portable Air Conditioner with Cooling, Heating, Fan and Dehumidifier Function', '4-in-1 multi-functional air conditioning unit with cooling, heating, fan and dehumidifying functions with a 1.5 m exhaust hose included / Cooling function - 7000 BTU cooling capacity, the cooling temperature can be reduced to 15 degrees Celsius; ideal for both home and office environments', 18, '18000.00', 'Air Conditioner', 'IIG9904PACCHFDF', 'ac14.jpg', 'ac13.jpg', 'ac15.jpg'),
(41, 'Laptronix Electric Double Hob', 'PORTABLE ELECTRIC COOKER DOUBLE HOB HOTPLATE: Laptronix White double hob Hot Plate is perfect for home kitchen, garden parties, camping, student accommodation, holiday homes, caravans, camping trips, offices or as an extra cooking appliance in the busy kitchen.', 5, '2000.00', 'Stove', 'L2EDHPHPTRH', 'st1.jpg', 'st2.jpg', 'st3.jpg'),
(42, ' Russell Hobbs 2 Plate Mini Hot Plate Hob', 'Compact, lightweight and portable / 1500 W large cooking plate, 750 W small cooking plate / Durable, stainless steel easy clean finish / Variable, independent temperature control', 5, '1500.00', 'Stove', 'RH2PMHPH15W', 'st4.jpg', 'st5.jpg', 'st6.jpg'),
(43, ' Cusimax Hot Plate Electric Burner Single Burner Cast', 'A handy additional cooking tool as an accessory to normal stove, can be used around home, garden, workplace or caravanning, adding flexibility to your kitchen. / Corrosion resistant cast iron heating plate measuring approximately 18.8cm in diameter, is easy to clean and strength enough to withstand the weight of the utensils.', 5, '3000.00', 'Stove', 'CHPEBS12BW', 'st7.jpg', 'st8.jpg', 'st9.jpg'),
(44, 'FireFriend Gas Stove 2 Burners ', 'Compact gas cooker, ideal for outdoor use / Two burners with total capacity of 3kW / Stainless steel, fixed burner heads', 10, '1300.00', 'Stove', ' KO-Â­6382 ', 'st10.jpg', 'st11.jpg', 'st12.jpg'),
(45, 'NJ Gas Stove 2 Burner Stainless Steel', '2 Burners Heat Input - max 7.6kW (Right burner - 3.8kW ; Left Burner 3.8kW) / Durable High Quality Stainless Steel - 0.5mm for maximum stability / Low Gas consumption - max Right 280 gr/h / Left 280 gr/h', 10, '2000.00', 'Stove', 'NGB-60NJ2BSS', 'st13.jpg', 'st14.jpg', 'st15.jpg'),
(46, 'Roberts Revival Digital Radio with Bluetooth', 'Easy Bluetooth streaming - it\'s easy to stream music from your smartphone to your RD70, which can act as a beautifully styled speaker. / With built-in DAB+/DAB/FM radio and handy station presets you can access your favourite stations at the touch of a few buttons.', 10, '1000.00', 'Radio', 'RD70DE', 'rad1.jpg', 'rad2.jpg', 'rad3.jpg'),
(47, 'ION Audio Mustang Stereo | Rechargeable Bluetooth Enabled Stereo Boombox with FM Radio', 'Listen to your favourite tunes in style - Retro-look boombox with 65 Mustang styling / Tune in - Sensitive FM tuner with vintage speedometer look / Superior sound - Powerful sound system with 3-Inch stereo speakers and bass radiator', 10, '1200.00', 'Radio', 'IAMSRBESBFMR', 'rad4.jpg', 'rad5.jpg', 'rad6.jpg'),
(48, 'DreamSky AM FM Portable Radio with Loudspeaker and Headphone Socket', 'Built-in Speaker and Headphone Socket: Built in high performance large speaker ensure a clear and loud sound, which can easily fill a room with your favorite radio stations. Personal digital radio with the 3.5mm earphone socket, you are free to own some private space to enjoy the radios without disturbing others.', 10, '1100.00', 'Radio', 'DAAMFMPRL', 'rad7.jpg', 'rad8.jpg', 'rad9.jpg'),
(49, 'Pure Elan E3 Portable Digital DAB/DAB+/FM Digital Radio with Alarm', 'DAB+/DAB/FM radio: Enjoy all of your favourite DAB digital radio or FM radio stations in crystal clear digital quality / Great sound quality: Bespoke 3 inch full range speaker powered by a digital amplifier to ensure it plays louder and clearer and adjustable bass and treble settings for an optimised sound', 15, '2000.00', 'Radio', 'PE3PDDRA', 'rad10.jpg', 'rad11.jpg', 'rad12.jpg'),
(50, 'Majority Histon II Portable Radio, Dual Alarm Clock, Battery Portable or Mains Powered', 'DAB/DAB+/FM DIGITAL RADIO: The Histon II is a compact and tidy unit, with a huge variety of \"Future Ready\" DAB/DAB+ digital and FM radio stations for your enjoyment. With the simple set up you can begin listening to a wide variety of stations on this stylish unit. / MAINS POWERED AND PORTABLE: The Majority Histon II looks great in your kitchen, lounge or bedroom, and can be made portable with 4 x AA batteries.', 15, '1000.00', 'Radio', 'MH2DACBPMP', 'rad13.jpg', 'rad14.jpg', 'rad15.jpg');

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(12, 'qwert', 'qwerty', 'qwerty', 'Caloocan', 'qwerty@gmail.com', '09987654321', 'qwerty', 'a1Bz20ydqelm8m1wqld8578edf8458ce06fbc5bb76a58c5ca4'),
(13, 'Rias', 'Hyoudou', 'Gremory', '56 Ragang St., Brgy. Manresa Quezon City', 'riasg@gmail.com', '09231456789', 'rias', 'a1Bz20ydqelm8m1wqlc383569f5f7f92e8cc3d41648299dbd5');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
