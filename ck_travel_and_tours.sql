-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 05:42 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ck_travel_and_tours`
--

-- --------------------------------------------------------

--
-- Table structure for table `destination_table`
--

CREATE TABLE `destination_table` (
  `id` int(11) NOT NULL,
  `destination` varchar(25) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination_table`
--

INSERT INTO `destination_table` (`id`, `destination`, `description`, `date`, `user_id`) VALUES
(1, 'Puerto Princessa', 'Puerto Princesa is the capital of the island province of Palawan. The city has been acclaimed several times as the cleanest and greenest city in the Philippines. With a wide range of attractions ranging from beaches to wildlife reserves, Puerto Princesa is a nature lover\'s paradise.', '2023-01-03 04:40:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_table`
--

CREATE TABLE `inquiry_table` (
  `id` int(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `read_by` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_table`
--

INSERT INTO `inquiry_table` (`id`, `name`, `email`, `contact_no`, `message`, `date`, `status`, `read_by`) VALUES
(1, 'SHAIKRAM MASANUL ABDULGUR', 'shaikram02@gmail.com', 1, 'Quam tempore odit ut adipisci qui rerum aspernatur voluptate amet sed quia', '2022-12-31 08:09:03', 1, NULL),
(2, 'Hedy Shepard', 'zyzisobihu@mailinator.com', 1, 'Velit voluptas vero repudiandae et qui quas', '2022-12-31 08:46:39', 1, 0),
(3, 'Hedy Shepard', 'zyzisobihu@mailinator.com', 1, 'Velit voluptas vero repudiandae et qui quas', '2022-12-31 08:46:52', 1, 0),
(4, 'Fletcher Benton', 'cyfeluj@mailinator.com', 1, 'Quia nulla atque consequatur adipisicing dolores', '2022-12-31 18:08:18', 1, 0),
(5, 'Dora Dillon', 'jolavebabi@mailinator.com', 1, 'Qui aliquip eu sed id eum eveniet consequatur Sit ad numquam fugit minim', '2022-12-31 18:14:17', 1, 0),
(6, 'Ruby Sloan', 'losyqa@mailinator.com', 1, 'Officia nisi ipsum reprehenderit officia sint amet', '2022-12-31 18:15:05', 1, 0),
(7, 'Ruby Sloan', 'losyqa@mailinator.com', 1, 'Officia nisi ipsum reprehenderit officia sint amet', '2022-12-31 18:17:27', 1, 0),
(8, 'Iliana Lambert', 'belomo@mailinator.com', 1, 'Ut ratione quos est neque qui quod reiciendis quis praesentium rerum soluta est incididunt ut voluptates consequat Quibusdam', '2022-12-31 18:18:23', 1, 0),
(9, 'Raphael Walsh', 'qevadikip@mailinator.com', 1, 'Eos distinctio At iure elit sunt sed ad fuga Repudiandae aliquam architecto sit laboris aperiam corrupti alias aliquip', '2022-12-31 18:18:50', 1, 0),
(10, 'Raphael Walsh', 'qevadikip@mailinator.com', 1, 'Eos distinctio At iure elit sunt sed ad fuga Repudiandae aliquam architecto sit laboris aperiam corrupti alias aliquip', '2022-12-31 18:18:56', 1, 0),
(11, 'Raphael Walsh', 'qevadikip@mailinator.com', 1, 'Eos distinctio At iure elit sunt sed ad fuga Repudiandae aliquam architecto sit laboris aperiam corrupti alias aliquip', '2022-12-31 18:19:07', 1, 0),
(12, 'Sierra Thornton', 'xibogiguf@mailinator.com', 1, 'Laborum Quaerat aute rerum aut iusto sapiente amet earum', '2022-12-31 18:23:22', 1, 0),
(13, 'Sierra Thornton', 'xibogiguf@mailinator.com', 1, 'Laborum Quaerat aute rerum aut iusto sapiente amet earum', '2022-12-31 18:23:37', 1, 0),
(14, 'Nina Joyner', 'feja@mailinator.com', 1, 'Illum repudiandae ex veniam cumque in corporis aperiam explicabo Quod excepturi quidem perferendis', '2022-12-31 19:42:42', 1, 0),
(15, 'Fleur Schultz', 'palevex@mailinator.com', 1, 'Ullam deserunt aut dolores ipsum sint eum ad fugiat nihil vitae sint minim odit architecto voluptas voluptatibus', '2022-12-31 22:04:18', 1, 0),
(16, 'Fleur Schultz', 'palevex@mailinator.com', 1, 'Ullam deserunt aut dolores ipsum sint eum ad fugiat nihil vitae sint minim odit architecto voluptas voluptatibus', '2022-12-31 22:04:24', 1, 0),
(17, 'Kelsey Dawson', 'xuweweje@mailinator.com', 1, 'Quibusdam consequuntur corporis magni ab eligendi doloremque corporis ut consequatur Ut dolores', '2022-12-31 22:05:36', 1, 0),
(18, 'SHAIKRAM MASANUL ABDULGUR', 'shaikram02@gmail.com', 2147483647, 'fdtft dtydytddym fdtft dtydytddyfdtft dtydytddyfdtft dtydytddyfdtft dtydytddyfdtft dtydytddyfdtft dtydytddy', '2023-01-01 00:52:58', 1, 0),
(19, 'Galena Horne', 'hoqibyti@mailinator.com', 1, 'Omnis doloribus aliquam et quisquam', '2023-01-01 01:18:11', 1, 0),
(20, 'Aikee Abdulguro', 'shaikram02@gmail.com', 2147483647, 'idsy fsdyfuodsusdfu ufsdgtu fdgsuifui iu ui fudifgd ufgsdui fduisfgui dsgfdui sfguisd fuidsf sduifgsdu ifgsdifgiusdfgi dusf duisf duisfgsduif sgfsdfsduif idsgfuisdf', '2023-01-01 01:19:55', 1, 0),
(21, 'Timothy Peterson', 'nobevu@mailinator.com', 1, 'Fugit et qui velit sed velit incidunt magnam et ipsum pariatur Tempore officiis', '2023-01-01 17:50:45', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pre_booking`
--

CREATE TABLE `pre_booking` (
  `id` int(11) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pre_booking`
--

INSERT INTO `pre_booking` (`id`, `email`, `date`, `token`) VALUES
(4, 'lysod@mailinator.com', '2023-01-01 00:29:25', '8bb4467e6d780112db277b2f3309c4d4'),
(5, 'lysod@mailinator.com', '2023-01-01 00:31:47', '852e1a0cd36905f532307fd96a1c5a85'),
(6, 'shaikram02@gmail.com', '2023-01-01 00:34:00', '39e54f11875392ed6bd81c12574dc282'),
(7, 'shaikram02@gmail.com', '2023-01-01 00:37:16', 'c520c74c0522b5fa59568bb1e78e870e'),
(8, 'shaikram02@gmail.com', '2023-01-01 00:39:35', '3eabff44e73791a2d94e753f92b0cac1'),
(9, 'shaikram02@gmail.com', '2023-01-01 00:45:18', '19e5622526df5a88995e5de741492d6b'),
(10, 'shaikram02@gmail.com', '2023-01-01 00:53:35', 'deeb10f605f4d338045851c548181475'),
(11, 'shaikram02@gmail.com', '2023-01-01 01:05:15', '7c7a57e2086e97db4fc98f34ceaf0f7d'),
(12, 'shaikram02@gmail.com', '2023-01-01 01:24:15', 'ab05acad9002bd007cdb58ad217501c9'),
(13, 'shaikram02@gmail.com', '2023-01-01 01:27:25', 'cbc0bd9e2b2ac53e0b513a97de63f5ca'),
(14, 'shaikram02@gmail.com', '2023-01-01 01:31:35', 'd6e1569ecb4e88019c2c6672ed3d67fb'),
(15, 'shaikram02@gmail.com', '2023-01-01 17:51:26', 'd980dd91baa67d2d4f82de78d6968e8b'),
(16, 'shaikram02@gmail.com', '2023-01-01 21:46:16', '768d94894976376f4f09bef9de28d75d'),
(17, 'shaikram02@gmail.com', '2023-01-01 21:51:13', 'f9c3297f0cdd11740b2d58312b3b93c2'),
(18, 'shaikram02@gmail.com', '2023-01-01 21:53:48', '026eb47adb230c8670b41d8753eeac23'),
(19, 'shaikram02@gmail.com', '2023-01-01 21:54:38', 'c904f6b7b377a4b56179a811808fa5e6'),
(20, 'shaikram02@gmail.com', '2023-01-01 22:31:11', '826978c4eeca194b0551e77f455685fc'),
(21, 'shaikram02@gmail.com', '2023-01-01 22:47:21', '686055336987ca640b6a14f88f1c8d24'),
(22, 'shaikram02@gmail.com', '2023-01-01 22:50:20', '4912b90aca79ea46098791f4992ddb48'),
(23, 'shaikram02@gmail.com', '2023-01-01 22:52:25', '85510cda19aa736c8172684b96e1a8bb'),
(24, 'shaikram02@gmail.com', '2023-01-01 22:55:27', 'c43d2f8d5f6df91db3cae586b65be0e4');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` text DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'unused',
  `date` timestamp NULL DEFAULT current_timestamp(),
  `expired` varchar(25) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `token`, `status`, `date`, `expired`) VALUES
(2, '4d840097aacdacb5b364e9ba86e2e8fb', 'unused', '2023-01-01 00:25:53', 'no'),
(3, '49303bac6bfe0c8ef9a7141a1cac1e2a', 'unused', '2023-01-01 00:28:33', 'no'),
(4, '8bb4467e6d780112db277b2f3309c4d4', 'unused', '2023-01-01 00:29:25', 'no'),
(5, '852e1a0cd36905f532307fd96a1c5a85', 'unused', '2023-01-01 00:31:47', 'no'),
(6, '39e54f11875392ed6bd81c12574dc282', 'unused', '2023-01-01 00:34:00', 'no'),
(7, 'c520c74c0522b5fa59568bb1e78e870e', 'unused', '2023-01-01 00:37:16', 'no'),
(8, '3eabff44e73791a2d94e753f92b0cac1', 'unused', '2023-01-01 00:39:35', 'no'),
(9, '19e5622526df5a88995e5de741492d6b', 'unused', '2023-01-01 00:45:17', 'no'),
(10, 'deeb10f605f4d338045851c548181475', 'unused', '2023-01-01 00:53:35', 'no'),
(11, '7c7a57e2086e97db4fc98f34ceaf0f7d', 'unused', '2023-01-01 01:05:15', 'no'),
(12, 'ab05acad9002bd007cdb58ad217501c9', 'unused', '2023-01-01 01:24:14', 'no'),
(13, 'cbc0bd9e2b2ac53e0b513a97de63f5ca', 'unused', '2023-01-01 01:27:25', 'no'),
(14, 'd6e1569ecb4e88019c2c6672ed3d67fb', 'unused', '2023-01-01 01:31:35', 'no'),
(15, 'd980dd91baa67d2d4f82de78d6968e8b', 'unused', '2023-01-01 17:51:26', 'no'),
(16, '768d94894976376f4f09bef9de28d75d', 'unused', '2023-01-01 21:46:16', 'no'),
(17, 'f9c3297f0cdd11740b2d58312b3b93c2', 'unused', '2023-01-01 21:51:13', 'no'),
(18, '026eb47adb230c8670b41d8753eeac23', 'unused', '2023-01-01 21:53:47', 'no'),
(19, 'c904f6b7b377a4b56179a811808fa5e6', 'unused', '2023-01-01 21:54:38', 'no'),
(20, '826978c4eeca194b0551e77f455685fc', 'unused', '2023-01-01 22:31:10', 'no'),
(21, '686055336987ca640b6a14f88f1c8d24', 'unused', '2023-01-01 22:47:21', 'no'),
(22, '4912b90aca79ea46098791f4992ddb48', 'unused', '2023-01-01 22:50:20', 'no'),
(23, '85510cda19aa736c8172684b96e1a8bb', 'unused', '2023-01-01 22:52:25', 'no'),
(24, 'c43d2f8d5f6df91db3cae586b65be0e4', 'unused', '2023-01-01 22:55:27', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `middle_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `level` varchar(15) DEFAULT 'admin',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `email`, `password`, `name`, `first_name`, `middle_name`, `last_name`, `level`, `status`, `date`) VALUES
(1, 'king02', 'kingbadger@example.com', 'password123', 'jhon Gutierez', 'jhon', 'andres', 'gutierez', 'super admin', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destination_table`
--
ALTER TABLE `destination_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Test` (`user_id`);

--
-- Indexes for table `inquiry_table`
--
ALTER TABLE `inquiry_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_booking`
--
ALTER TABLE `pre_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destination_table`
--
ALTER TABLE `destination_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inquiry_table`
--
ALTER TABLE `inquiry_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pre_booking`
--
ALTER TABLE `pre_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destination_table`
--
ALTER TABLE `destination_table`
  ADD CONSTRAINT `Test` FOREIGN KEY (`user_id`) REFERENCES `users_table` (`id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `expired_token` ON SCHEDULE EVERY 2 MINUTE STARTS '2023-01-01 00:00:11' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE token SET expired = 'yes' WHERE id > 0$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
