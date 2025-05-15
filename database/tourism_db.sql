-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2024 at 12:29 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

DROP TABLE IF EXISTS `book_list`;
CREATE TABLE IF NOT EXISTS `book_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `package_id` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(2, 4, 8, 3, '2021-06-21', '2021-06-19 08:37:59'),
(3, 5, 8, 3, '2021-06-18', '2021-06-19 11:51:50'),
(4, 6, 8, 0, '2024-03-27', '2024-03-18 17:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

DROP TABLE IF EXISTS `inquiry`;
CREATE TABLE IF NOT EXISTS `inquiry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `email` text,
  `subject` varchar(250) NOT NULL,
  `message` text,
  `status` tinyint NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(6, 'asdasd', 'asdasd@asdasd.com', 'asdasd', 'asdasd', 1, '2021-06-19 10:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `tour_location` text,
  `cost` double NOT NULL,
  `description` text,
  `upload_path` text,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Ayodhya Varanasi spiritual Tour', 'Ayodhya,Varanasi', 2500, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;\r\nEmbark on an enchanting journey through the heartland of Uttar Pradesh with our Ayodhya and Varanasi tour package. Begin your pilgrimage in Ayodhya, a city steeped in mythological significance and adorned with ancient temples and serene ghats. Here, you&#039;ll trace the footsteps of Lord Rama, immersing yourself in the rich cultural tapestry of this sacred land. Visit revered sites like Hanuman Garhi, Kanak Bhawan, and the tranquil banks of the Sarayu River, where spirituality permeates the air. Then, venture to Varanasi, the oldest living city in the world, where the Ganges River flows gracefully, offering rituals and prayers amidst bustling bazaars and vibrant streets. Experience the timeless allure of Varanasi as you explore its maze-like alleyways, where every corner whispers tales of devotion, enlightenment, and the eternal cycle of life and death. Let us guide you through these hallowed grounds, where spirituality, history, and tradition converge to create an unforgettable pilgrimage experience.\r\n.&lt;/p&gt;', 'uploads/package_1', 1, '2021-06-18 10:31:03'),
(7, 'Maratha Empire Forts Tour', 'Raigad,Kondhana etc.', 2799, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;\r\nEmbark on an awe-inspiring journey through the heart of the Maratha Empire with our Shivaji Maharaj Forts Tour. Delve into the rich history and architectural marvels that define the legacy of Chhatrapati Shivaji Maharaj, the legendary Maratha warrior king. Explore iconic forts such as Raigad, Pratapgad, and Sindhudurg, each standing as a testament to Shivaji&#039;s military brilliance and strategic prowess. Climb rugged hills, traverse winding pathways, and marvel at majestic citadels perched atop picturesque landscapes. From the imposing bastions of Raigad to the scenic beauty of Pratapgad, immerse yourself in the stories of valour and resilience that echo through these ancient fortresses. Let us guide you through this unforgettable journey, where history comes alive amidst the breathtaking vistas of Maharashtra&#039;s historic forts..&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_7', 1, '2021-06-18 11:17:11'),
(8, 'Heaven in India Kashmir Tour', 'Kashmir', 3000, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Embark on a breathtaking journey to the &quot;Paradise on Earth&quot; with our Kashmir Tour. Nestled amidst the majestic Himalayas, Kashmir beckons with its serene lakes, lush valleys, and snow-capped peaks. Explore the timeless beauty of Srinagar, the summer capital, as you glide through the tranquil waters of Dal Lake on a shikara, marveling at the floating gardens and ornate houseboats. Journey to the enchanting hill station of Gulmarg, where verdant meadows stretch as far as the eye can see, offering opportunities for skiing, trekking, and golfing amidst panoramic vistas. Traverse the winding roads to Pahalgam, known as the &quot;Valley of Shepherds,&quot; where gurgling rivers and alpine forests create a mesmerizing backdrop for leisurely walks and pony rides. Experience the warm hospitality and rich culture of the Kashmiri people as you savor traditional cuisine and browse vibrant markets filled with exquisite handicrafts. Let us guide you through this magical land, where every moment is a testament to Kashmir&#039;s timeless allure and natural splendor.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_8', 1, '2021-06-18 13:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

DROP TABLE IF EXISTS `system_info`;
CREATE TABLE IF NOT EXISTS `system_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'TravelEase'),
(6, 'short_name', 'TravelEase'),
(11, 'logo', 'uploads/1710759420_1710758220_icon.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1710760740_bg5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1710758220_1624089480_avatar.jpg', NULL, 1, '2021-01-20 14:02:37', '2024-03-18 16:07:48'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23'),
(6, 'niraj', 'raul', 'niraj', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 0, '2024-03-17 12:59:03', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
