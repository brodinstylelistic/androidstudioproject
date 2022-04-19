-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 07:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_image`
--

CREATE TABLE `detail_image` (
  `id` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `id_tourism_list` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_image`
--

INSERT INTO `detail_image` (`id`, `image`, `id_tourism_list`) VALUES
(1, 'assets/images/monkasel1.jpg', 1),
(2, 'assets/images/monkasel2.jpg', 1),
(3, 'assets/images/monkasel3.jpg', 1),
(4, 'assets/images/monkasel4.jpg', 1),
(5, 'assets/images/sanggar-temple1.jpg', 2),
(6, 'assets/images/sanggar-temple2.jpg', 2),
(7, 'assets/images/sanggar-temple3.jpg', 2),
(8, 'assets/images/sanggar-temple4.jpg', 2),
(9, 'assets/images/tugu1.jpg', 3),
(10, 'assets/images/tugu2.jpg', 3),
(11, 'assets/images/tugu3.jpg', 3),
(12, 'assets/images/tugu4.jpg', 3),
(13, 'assets/images/sampoerna1.jpg', 4),
(14, 'assets/images/sampoerna2.jpg', 4),
(15, 'assets/images/sampoerna3.jpg', 4),
(16, 'assets/images/sampoerna4.jpg', 4),
(17, 'assets/images/suroboyo1.jpg', 5),
(18, 'assets/images/suroboyo2.jpg', 5),
(19, 'assets/images/suroboyo3.jpg', 5),
(20, 'assets/images/suroboyo4.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tourism_list`
--

CREATE TABLE `tourism_list` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `location` mediumtext NOT NULL,
  `image` longtext NOT NULL,
  `description` longtext NOT NULL,
  `day_open` varchar(255) NOT NULL,
  `time_open` varchar(255) NOT NULL,
  `entry_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourism_list`
--

INSERT INTO `tourism_list` (`id`, `name`, `location`, `image`, `description`, `day_open`, `time_open`, `entry_price`) VALUES
(1, 'Surabaya Submarine Monument', 'Jl. Pemuda No.39, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271', 'assets/images/monkasel.jpg', 'Surabaya Submarine Monument or as known as Monumen Kapal Selam (Monkasel) is the largest submarine monument in Asia, which was built in riverside of Kalimas, Surabaya. This monument was built by idea of Navy Veterans.', 'Tuesday - Sunday', '08.00 - 16.00', 'Rp 15.000,-'),
(2, 'Sanggar Agung Temple', 'Jl. Sukolilo No.100, Sukolilo Baru, Kec. Bulak, Kota SBY, Jawa Timur 60122', 'assets/images/sanggar-temple.jpg', 'Sanggar Agung Temple or Hong San Tang (Chinese: 宏善堂) is a Chinese temple in Surabaya dedicated to Chinese deities and other Asian religious icons. It is located within the Pantai Ria amusement park and has become a tourist destination, even though it is originally a worship place for Tridharma followers. The name of Sanggar Agung is derived from Indonesian language which can be translated as Great Hall.', 'Open Everyday', '07.00 - 20.00', 'Rp 5.000 - 10.000'),
(3, 'Heroes Monument', 'Jl. Pahlawan, Alun-alun Contong, Kec. Bubutan, Kota SBY, Jawa Timur 60174', 'assets/images/tugu.jpg', 'The Heroes Monument (Indonesian: Tugu Pahlawan) is a monument in Surabaya, Indonesia. It is the main symbol of the city, dedicated to the people who died during the Battle of Surabaya on 10 November 1945. The 10 November Museum is located under the monument.', 'Open Everyday', '08.00 - 16.00', 'Rp 5.000,-'),
(4, 'House of Sampoerna', 'Taman Sampoerna No.6, Krembangan Utara, Kec. Pabean Cantikan, Kota SBY, Jawa Timur 60163', 'assets/images/sampoerna.jpg', 'Open to the public since October 9, 2003, House of Sampoerna (HoS) is a Dutch colonial-style heritage building complex built in 1862 and located in the “Old Surabaya” area. This complex was initially an orphanage for boys managed by the Dutch. In 1932, it was purchased by Liem Seeng Tee then became the first Sampoerna\'s production facility. House of Sampoerna complex consists of a large central auditorium, two smaller buildings in the East and West wings.', 'Open Everyday', '09.00 - 18.00', 'Free'),
(5, 'Suro and Boyo Statue', 'Jl. Diponegoro No.1-B, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241', 'assets/images/suroboyo.jpg', 'This landmark sculpture in Surabaya depicts a tussle for supremacy between a shark and a crocodile and is a symbol of Surabaya\'s strength. The statue holds special significance for the city of Surabaya, especially in light of the fact that the city got its name from the Javanese words for shark and crocodile, \'suro\' and \'boyo\' respectively.', 'Open Everyday', 'Open 24 Hours', 'Free');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_image`
--
ALTER TABLE `detail_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourism_list`
--
ALTER TABLE `tourism_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_image`
--
ALTER TABLE `detail_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tourism_list`
--
ALTER TABLE `tourism_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
