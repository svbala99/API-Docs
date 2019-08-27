-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2019 at 05:03 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rZ8LaFTQKR`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_token`
--

CREATE TABLE `auth_token` (
  `id` int(20) NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_at` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(100) NOT NULL,
  `image_url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image_url`) VALUES
(1, 'https://thenypost.files.wordpress.com/2018/01/istock-155911571.jpg?quality=90&strip=all&w=618&h=410&crop=1'),
(2, 'https://i.ytimg.com/vi/bM_z10WCQ_4/hqdefault.jpg'),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt3NTDp_ki-ZqF2Po2ID9yXFsy_fnEGvj-_erlZihBJIB5qSl6'),
(4, 'https://cdn-03.belfasttelegraph.co.uk/incoming/article38226154.ece/85d5e/AUTOCROP/w620/Colin_McGarry_funeral003.jpg'),
(5, 'https://c8.alamy.com/comp/E6HFF8/four-men-carry-a-coffin-into-a-church-as-part-of-a-funeral-service-E6HFF8.jpg'),
(6, 'https://i1.wp.com/metro.co.uk/wp-content/uploads/2019/01/sei_47954830-fb0e.jpg?quality=90&strip=all&zoom=1&resize=768%2C511&ssl=1'),
(7, 'https://www.army.gov.au/sites/default/files/images/page/20150910adf0000_3.t55f0c80a.m600.x8254f72a.jpg'),
(8, 'https://www.abc.net.au/news/image/1375030-3x2-340x227.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `type` int(10) NOT NULL,
  `type_id` int(100) NOT NULL,
  `both_name` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `flower_cell` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `both_address` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `obi_dob` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `obi_dod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `obi_listing_days` int(10) NOT NULL,
  `booked_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marked_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_total` int(100) NOT NULL,
  `tax` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `type` int(1) NOT NULL,
  `flower_list_id` int(100) DEFAULT NULL,
  `both_name` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `flower_cell` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `both_address` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `obi_dob` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `obi_dod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `both_msg` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `obi_listing_days` int(10) NOT NULL DEFAULT '0',
  `booked_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marked_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_total` int(100) NOT NULL,
  `tax` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flower`
--

CREATE TABLE `flower` (
  `id` int(100) NOT NULL,
  `image_url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(100) NOT NULL,
  `occasion` varchar(2083) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flower`
--

INSERT INTO `flower` (`id`, `image_url`, `name`, `price`, `occasion`) VALUES
(1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOAOrLMY-UXd_Yt7H_lTNNRd05b2fAR2STfn_dNz4XcWQZxTA04A', 'Flower for Birthday Greetings', 100, 'Birthday'),
(2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs8daYZ8LwpVqMcAKW3WU8p1RIElyyfEG3ch51JcAAgt-H_0wiOg', 'Flower for Birthday Greetings', 110, 'Birthday'),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuoQ6TZL2nwcC1aKIdViVkZZYKO5YGmIfmHsoPVbEpoWQw7BbsBg', 'Flowers for Wedding wishes', 120, 'Wedding'),
(4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyc8nQV1PhCCw-pCp3FJqZDjDnOXQeGLXuDy8kUm-d-6gWHBNSlA', 'Flowers for Wedding wishes', 130, 'Wedding'),
(5, 'https://www.pinclipart.com/picdir/middle/168-1689719_clip-art-free-stock-of-flowers-png-image.png', 'Flowers for Anniversary wishes', 140, 'Anniversary'),
(6, 'https://p7.hiclipart.com/preview/39/989/84/flower-bouquet-rose-clip-art-bouquet-flowers-png.jpg', 'Flowers for Anniversary wishes', 150, 'Anniversary'),
(7, 'https://www.trzcacak.rs/myfile/detail/10-108056_of-flowers-png-image-transparent-background-bouquet-of.png', 'Flowers for Retirement wishes', 160, 'Retirement'),
(8, 'https://www.pngkey.com/png/detail/10-106824_flower-bouquet-transparent-background.png', 'Flowers for Retirement wishes', 170, 'Retirement'),
(9, 'https://www.pinclipart.com/picdir/middle/168-1689717_transparent-red-roses-bouquet-png-clipart-picture-spring.png', 'Flowers for Get Well soon wishes', 180, 'Get Well'),
(10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4WxS65TYUJyuFvs-FuCncnDmzpzQ3fe4j5zzU6dVt3Fv7Hfrl', 'Flowers for Get Well soon wishes', 190, 'Get Well'),
(11, 'https://www.pnglot.com/pngfile/detail/111-1110922_rose-bouquet-cl-transparent-background-flowers-png.png', 'Flowers for other category wishes', 200, 'Others'),
(12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0dfiApAWz3x5ExVU6b4hvADU6-WqIhd8tOHd_6w-yF1c9RqOt210', 'Flowers for other category wishes', 210, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `obituary`
--

CREATE TABLE `obituary` (
  `id` int(100) NOT NULL,
  `image_url` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `expire_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `obituary`
--

INSERT INTO `obituary` (`id`, `image_url`, `name`, `location`, `dob`, `dod`, `msg`, `created_at`, `expire_at`) VALUES
(1, 'https://toppng.com/public/uploads/preview/old-man-smiling-11549878759tjvbnenohy.png', 'Dani Alves', 'Nottingham', '1960-01-01', '2019-08-22', 'It is with great sadness that the family of Alex Downton Forbes announces his passing after a brief illness, on Saturday, April 3, 2014, at the age of 70 years. Alex will be lovingly remembered by his wife of 45 years, Joan and his children, Mike (Judy), Brad (Jill), Sue (Dan) Armandeau, and Ryan (Heidi).', '2019-08-26', '2019-08-27'),
(2, 'https://www.pinpng.com/pngs/m/63-636931_free-png-download-shrug-emoji-old-man-png.png', 'Bradshaw Henry', 'Southampton', '1954-08-22', '2019-08-22', 'On Monday, February 3, 2014, Laura Riley, wife, mother, daughter and sister, passed away suddenly at the age of 36 years. Laura will be forever remembered by her husband and best friend Greg, and their precious children, Cody and Pamela', '2019-08-26', '2019-08-27'),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWH4VMzX_YiuMXuO-oLu_pu3TFeSn6gLwXe-LIznwf6OvvIiYeLg', 'Duncan Chrishold', 'Wellington', '1966-05-26', '2017-08-05', 'John Dalton, known to friends as \"Jack,\" passed away on September 4, 2014, at the age of 78 years.', '2019-08-26', '2019-08-27'),
(4, 'https://www.sccpre.cat/mypng/full/500-5000226_michael-caine-on-youth-quasi-retirement-and-his.png', 'John Stephenson', 'Lucknow', '1670-08-01', '2019-08-22', 'He is survived by his wife of 53 years, Cora (nee Dechant), sons Colin, Jr. (Lori) and Adam (Jacquie), 10 grandchildren, and one great-grandchild.', '2019-08-26', '2019-08-27'),
(5, 'https://images.freeimages.com/images/premium/previews/5172/51723824-old-man-in-cap-on-black-background.jpg', 'Warren Smith', 'Auckland', '1966-08-04', '2019-08-05', 'Jack served on the boards of numerous organizations, including Evergreen Park and the Tepee Creek Stampede, Parkinson\'s Research Foundation, as well as chair of the Alberta Toastmasters for three years.', '2019-08-26', '2019-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(100) NOT NULL,
  `otp` int(100) NOT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cell` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `otp`, `created_at`, `cell`) VALUES
(1, 1234, '2019-08-26 13:46:11', '9100910091'),
(2, 1234, '2019-08-26 13:47:56', '9100910091'),
(3, 1234, '2019-08-26 13:49:40', '9100910091'),
(4, 1234, '2019-08-26 13:51:50', '9100910091');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cell` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `sent_on` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `abroad_door_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `abroad_addr` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `abroad_pincode` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `abroad_country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `indian_door_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `indian_addr` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `indian_pincode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `indian_country` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person_cell` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `emergency_indian_cell` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `emergency_abroad_cell` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_total` int(10) NOT NULL,
  `tax` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `razor_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cell` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(10) NOT NULL,
  `dp_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proof_url` varchar(2083) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `cell`, `fcm_id`, `name`, `email`, `dob`, `gender`, `dp_url`, `proof_url`) VALUES
(1, '123456', '', NULL, NULL, NULL, '', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_token`
--
ALTER TABLE `auth_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obituary`
--
ALTER TABLE `obituary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_token`
--
ALTER TABLE `auth_token`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flower`
--
ALTER TABLE `flower`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `obituary`
--
ALTER TABLE `obituary`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
