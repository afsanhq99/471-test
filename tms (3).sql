-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 07:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `customize_tour`
--

CREATE TABLE `customize_tour` (
  `Destination` varchar(100) NOT NULL,
  `Activities` varchar(100) NOT NULL,
  `Budget` int(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `UserEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotelbooking`
--

CREATE TABLE `hotelbooking` (
  `BookingId` int(11) NOT NULL,
  `HotelId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelbooking`
--

INSERT INTO `hotelbooking` (`BookingId`, `HotelId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this Hotel.', '2020-07-08 00:38:36', 2, 'u', '2020-07-08 00:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 00:43:25', 1, NULL, '2020-07-08 00:52:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 00:44:39', 2, 'a', '2020-07-08 00:49:55'),
(4, 1, 'kk@gmail.com', '2023-03-18', '2023-03-31', 'sa', '2023-03-28 18:00:35', 0, NULL, NULL),
(5, 1, 'tt', '2023-03-18', '2023-03-31', 'qr', '2023-03-28 18:04:26', 0, NULL, NULL),
(6, 10, 'gg@gmail.com', '2023-03-30', '2023-03-31', 'sfa', '2023-03-28 18:34:46', 2, 'u', '2023-03-28 19:46:37'),
(7, 10, 'kat@gmail.com', '2023-03-25', '2023-03-31', 'kat', '2023-03-28 18:46:07', 2, 'u', '2023-03-28 19:18:38'),
(8, 10, 'kat@gmail.com', '2023-03-24', '2023-03-31', 'katttt', '2023-03-28 19:10:04', 0, NULL, NULL),
(9, 10, 'af@gmail.com', '2023-04-12', '2023-04-15', '12', '2023-04-01 19:40:53', 0, NULL, NULL),
(10, 19, 'mahid@gmail.com', '2023-04-12', '2023-04-21', 'as', '2023-04-03 18:40:57', 0, NULL, NULL),
(11, 19, 'mahid@gmail.com', '2023-04-12', '2023-04-22', 'safaf', '2023-04-03 18:49:24', 0, NULL, NULL),
(12, 13, 'mahid@gmail.com', '2023-04-05', '2023-04-14', 'saf', '2023-04-03 18:59:22', 0, NULL, NULL),
(13, 17, 'mahid@gmail.com', '2023-04-05', '2023-04-11', 'qwf', '2023-04-03 19:13:44', 0, NULL, NULL),
(14, 13, 'zahid@gmail.com', '2023-04-04', '2023-04-13', 'testing', '2023-04-03 19:17:19', 2, 'a', '2023-04-03 19:22:01'),
(15, 17, 'zahid@gmail.com', '2023-04-06', '2023-04-12', 'safa', '2023-04-03 19:22:38', 1, NULL, '2023-04-03 19:22:53'),
(16, 18, 'zahid@gmail.com', '2023-04-06', '2023-04-12', 'xcb', '2023-04-07 03:51:10', 0, NULL, NULL),
(17, 18, 'zahid@gmail.com', '2023-04-08', '', 'wqrq', '2023-04-07 03:53:10', 0, NULL, NULL),
(18, 17, 'zahid@gmail.com', '2023-04-14', '2023-04-20', 'asdg', '2023-04-07 03:58:03', 0, NULL, NULL),
(19, 17, 'zahid@gmail.com', '2023-04-20', '2023-04-27', 'asdgoi\'', '2023-04-07 03:59:59', 0, NULL, NULL),
(20, 13, 'zahid@gmail.com', '2023-04-13', '2023-04-20', 'gd', '2023-04-07 04:00:19', 0, NULL, NULL),
(21, 13, 'zahid@gmail.com', '2023-04-13', '2023-04-20', 'gd', '2023-04-07 04:02:42', 0, NULL, NULL),
(22, 14, 'zahid@gmail.com', '2023-04-14', '2023-04-11', 'sfh', '2023-04-07 04:54:05', 0, NULL, NULL),
(23, 14, 'zahid@gmail.com', '2023-04-08', '2023-04-12', 'afs', '2023-04-07 04:58:07', 0, NULL, NULL),
(24, 17, 'zahid@gmail.com', '2023-04-12', '2023-04-19', 'tdfj', '2023-04-07 06:00:35', 0, NULL, NULL),
(25, 17, 'zahid@gmail.com', '2023-04-12', '2023-04-19', 'tdfj', '2023-04-07 06:02:20', 0, NULL, NULL),
(26, 17, 'zahid@gmail.com', '2023-04-07', '2023-04-12', 'srh', '2023-04-07 16:09:13', 0, NULL, NULL),
(27, 17, 'zahid@gmail.com', '2023-04-12', '2023-04-20', 'FSFHHFS', '2023-04-07 21:19:02', 0, NULL, NULL),
(28, 17, 'zahid@gmail.com', '2023-04-14', '2023-04-26', 'jvj.', '2023-04-08 16:41:35', 0, NULL, NULL),
(29, 17, 'zahid@gmail.com', '2023-04-20', '2023-04-27', 'jvj.', '2023-04-08 16:43:01', 0, NULL, NULL),
(30, 18, 'zahid@gmail.com', '2023-04-22', '2023-04-27', 'fdh', '2023-04-08 16:54:11', 0, NULL, NULL),
(31, 14, 'zahid@gmail.com', '2023-04-13', '2023-04-27', 'adults 1', '2023-04-08 16:58:19', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotelenquiry`
--

CREATE TABLE `hotelenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelenquiry`
--

INSERT INTO `hotelenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 00:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 00:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 00:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotelissues`
--

CREATE TABLE `hotelissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelissues`
--

INSERT INTO `hotelissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 00:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 00:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 00:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 00:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 00:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book Hotel', '2020-07-08 00:36:03', 'Ok, We will fix the issue asap', '2020-07-08 00:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 00:56:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotelpages`
--

CREATE TABLE `hotelpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelpages`
--

INSERT INTO `hotelpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got Hotels to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays Hotels and customize them according to your plan.</span></span>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------J-890 Dwarka House New Delhi-110096</span>');

-- --------------------------------------------------------

--
-- Table structure for table `hotelpayment`
--

CREATE TABLE `hotelpayment` (
  `Name` varchar(100) NOT NULL,
  `Card` int(100) NOT NULL,
  `Expiry` varchar(100) NOT NULL,
  `Amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hoteltourhotels`
--

CREATE TABLE `hoteltourhotels` (
  `HotelId` int(11) NOT NULL,
  `HotelName` varchar(200) DEFAULT NULL,
  `HotelType` varchar(150) DEFAULT NULL,
  `HotelLocation` varchar(100) DEFAULT NULL,
  `HotelPrice` int(11) DEFAULT NULL,
  `HotelFetures` varchar(255) DEFAULT NULL,
  `HotelDetails` mediumtext DEFAULT NULL,
  `HotelImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoteltourhotels`
--

INSERT INTO `hoteltourhotels` (`HotelId`, `HotelName`, `HotelType`, `HotelLocation`, `HotelPrice`, `HotelFetures`, `HotelDetails`, `HotelImage`, `Creationdate`, `UpdationDate`) VALUES
(13, 'Sayeman', 'Family', 'Kolatolo,Cox\'sBazar', 6000, 'Free wifi,Sea Facing rooms', 'Best in class\r\nfor a long time', 'sayeman.jpg', '2023-04-03 17:46:54', NULL),
(14, 'Cox Today', '5 Star', 'Laboni Point,Coxsbazar', 3000, 'Free wifi,Morning Breakfast', 'Hotel The Cox Today is one of the best five-star standard luxury hotel in Cox\'s Bazar. It\'s magnificent and uniquely located along the world\'s longest natural beach in Cox\'s Bazar and 10 minutes drive from The Airport. The comforts and charms of the architectural magnanimity complement the natural beauty and wonder of the Tourist destination of Cox\'s Bazar. It\'s an oasis which reflects contemporary style of living. We are committed to provide the guest with world class hospitality within affordable price', 'laguna.JPG', '2023-04-03 17:49:17', '2023-04-03 18:16:23'),
(17, 'Seagull', 'Five Star', 'CoxsBazar', 5000, 'Free wifi and morning buffet', 'Welcome to SEAGULL HOTEL where business and leisure blend together. Enjoying an unrivalled location, overlooking the Bay of Bengal (only 25 yards from the Bay water) and sitting in the laps of hills, we offer deluxe accommodation in 181 well appointed guest rooms and suites. The panoramic view of the ocean, the majestic hills and the natural beauty of the tamarisk trees are all wonderfully complemented by luxury facilities and Bangladeshi hospitality.', 'ocean paradise.jpg', '2023-04-03 18:21:12', NULL),
(18, 'The Sea Point', '1 Star', 'Laboni ,Coxsbazar', 1000, 'Free Wifi', 'Hotel Sea Point is a luxurious beachfront hotel located in the picturesque coastal town of Sea Point. With breathtaking views of the Atlantic Ocean and easy access to the nearby beaches, this hotel offers a truly memorable vacation experience.\r\n\r\nThe hotel boasts elegantly designed rooms and suites that are equipped with all the modern amenities one would expect from a five-star hotel. Guests can choose from a variety of room options including standard rooms, deluxe rooms, and suites that come with private balconies and ocean views.', 'laguna.JPG', '2023-04-03 18:37:39', NULL),
(19, 'The white Orchid', 'Five Star', 'Coxs Bazar', 2000, 'Free wifi', 'Located on the beachfront and offering a 24-hour front desk, Hotel The White Orchid is located just 0.9 mi from the famous Sugandha Beach.', 'sample.jpg', '2023-04-03 18:40:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotelusers`
--

CREATE TABLE `hotelusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelusers`
--

INSERT INTO `hotelusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 00:33:20', NULL),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 00:33:56', NULL),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 00:34:20', NULL),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 00:34:38', NULL),
(5, 'Test', '1987894654', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-08 00:35:06', '2021-05-10 22:37:41'),
(8, 'kk', '123', 'kk@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 17:51:09', NULL),
(9, 'kk', '123', 'kk@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 17:52:42', NULL),
(10, 'kk', '123', 'kk@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 17:52:48', NULL),
(11, 'kat', '123', 'kat@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 18:45:26', NULL),
(12, 'mahdi', '123', 'mahdi@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-01 19:03:24', NULL),
(13, 'afsan', '123', 'af@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-01 19:33:02', NULL),
(14, 'sad', '01', 'asd', '7815696ecbf1c96e6894b779456d330e', '2023-04-01 20:37:35', NULL),
(15, 'dg', 'saf', 'asf', 'c20ad4d76fe97759aa27a0c99bff6710', '2023-04-01 20:38:09', NULL),
(16, 'as', 'saf', 'asf@gmail.com', '7b064dad507c266a161ffc73c53dcdc5', '2023-04-01 20:40:30', NULL),
(17, 'qwe', '123', 'asdf@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-01 20:42:40', NULL),
(18, 'adf', '1244', 'asd@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-01 20:44:48', NULL),
(19, 'ssaf', '12345', 'gggg@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-04-01 20:45:17', NULL),
(20, 'zahid', '1242154326', 'zahid@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-03 19:16:24', NULL),
(21, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2023-04-05 19:40:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(4, 4, 'mahid@gmail.com', '2023-03-25', '2023-03-31', 'asd', '2023-03-28 17:38:55', 1, NULL, '2023-04-01 20:10:32'),
(5, 2, 'gg@gmail.com', '2023-03-18', '2023-03-25', 'ht', '2023-03-28 18:06:15', 2, 'a', '2023-04-01 20:25:37'),
(6, 3, 'gg@gmail.com', '2023-03-25', '2023-03-31', 'afsan', '2023-03-28 18:36:25', 1, NULL, '2023-04-01 20:06:28'),
(7, 3, 'kat@gmail.com', '2023-03-25', '2023-03-31', 'ggg', '2023-03-28 19:11:31', 2, 'u', '2023-03-28 19:14:58'),
(8, 3, 'kat@gmail.com', '2023-03-25', '2023-03-31', '12', '2023-03-28 19:17:12', 1, 'a', '2023-04-01 20:25:30'),
(9, 2, 'af@gmail.com', '2023-04-03', '2023-04-06', 'sda', '2023-04-01 19:36:24', 2, 'a', '2023-04-01 20:07:38'),
(10, 1, 'mahid@gmail.com', '2023-04-12', '2023-04-19', 'efas', '2023-04-03 18:41:41', 1, NULL, '2023-04-03 18:42:07'),
(11, 1, 'mahid@gmail.com', '2023-04-05', '2023-04-07', '123', '2023-04-03 19:00:41', 0, NULL, NULL),
(12, 7, 'zahid@gmail.com', '2023-04-12', '2023-04-13', 'sSG', '2023-04-07 21:18:20', 0, NULL, NULL),
(13, 1, 'zahid@gmail.com', '2023-04-13', '2023-04-21', '2saf', '2023-04-08 16:39:59', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 06:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2020-07-08 06:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL),
(8, NULL, NULL, NULL, '2023-03-28 11:34:18', NULL, NULL),
(9, NULL, NULL, NULL, '2023-03-28 11:55:30', NULL, NULL),
(10, NULL, NULL, NULL, '2023-03-28 17:45:32', NULL, NULL),
(11, NULL, NULL, NULL, '2023-03-28 17:54:22', NULL, NULL),
(12, NULL, NULL, NULL, '2023-03-28 18:45:26', NULL, NULL),
(13, NULL, NULL, NULL, '2023-04-01 19:03:24', NULL, NULL),
(14, NULL, NULL, NULL, '2023-04-01 19:33:02', NULL, NULL),
(15, NULL, NULL, NULL, '2023-04-01 20:37:35', NULL, NULL),
(16, NULL, NULL, NULL, '2023-04-01 20:38:09', NULL, NULL),
(17, NULL, NULL, NULL, '2023-04-01 20:40:30', NULL, NULL),
(18, NULL, NULL, NULL, '2023-04-01 20:42:40', NULL, NULL),
(19, NULL, NULL, NULL, '2023-04-01 20:44:48', NULL, NULL),
(20, NULL, NULL, NULL, '2023-04-01 20:45:17', NULL, NULL),
(21, NULL, NULL, NULL, '2023-04-03 19:16:24', NULL, NULL),
(22, 'zahid@gmail.com', 'Booking Issues', 'this is test', '2023-04-05 19:40:07', 'afaf', '2023-04-05 19:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>By using our travel booking services, you agree to the following terms and conditions. All reservations must be made through our website or authorized travel agents, and full payment is required at the time of booking unless otherwise specified. Payment can be made by credit card or other accepted payment methods, and prices are subject to change without notice until payment is made and a confirmation number is issued.\n\nIf you need to cancel your reservation, please note that cancellations made within 24 hours of booking may be eligible for a full refund. Cancellations made after 24 hours may be subject to a cancellation fee. Refunds will be issued in the same form of payment used for the original purchase, and no refunds will be given for no-shows or early departures.\n\nIt is the responsibility of the traveler to ensure that all necessary travel documents and visas are obtained prior to departure. We are not responsible for any delays, cancellations or expenses due to incomplete or inaccurate travel documentation. Travelers are responsible for complying with all entry and exit requirements of their destination countries.\n\nWe strongly recommend that all travelers purchase travel insurance to protect against unforeseen events such as illness, injury, or cancellation. Travel insurance can be purchased through our website or through other authorized providers.\n\nPlease note that we are not responsible for any loss, damage, injury, or expense resulting from any delay, cancellation, or other act or omission of any carrier, hotel, or other supplier. Our liability for any loss, damage, injury, or expense shall be limited to the amount paid for the applicable travel services, and we shall not be liable for any indirect, consequential, or punitive damages.\n\nIn the event that we are unable to fulfill our obligations due to events beyond our control, such as acts of God, war, terrorism, natural disasters, and governmental restrictions, we shall not be liable for any failure or delay in performance of any of our obligations.\n\nThese terms and conditions shall be governed by and construed in accordance with the laws of the jurisdiction in which we are located. Any dispute arising out of or in connection with these terms and conditions shall be subject to the exclusive jurisdiction of the courts in the jurisdiction in which we are located. </font></p>\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Mohakhali, Dhaka</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Delight Premium 2020 (Group Package)', 'Group Package', 'Paris and Switzerland', 15000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', '1581490262_2_1.jpg', '2023-02-08 05:21:58', '2023-04-01 20:59:25'),
(2, 'Bhutan Holidays - Thimphu and Paro Special', 'Family Package', 'Bhutan', 20000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2023-03-08 05:37:40', '2023-04-01 20:59:31'),
(3, 'Soulmate Special Bali - 7 Nights', 'Couple Package', 'Indonesia(Bali)', 50000, 'Free Pickup and drop facility, Free Wi-fi , Free professional guide', 'Airport transfers by private car | Popular Sightseeing included | Suitable for Couple and budget travelers', '1583140977_5_11.jpg', '2023-03-09 05:41:07', '2023-04-01 20:59:58'),
(4, 'Kerala - A Lovers Paradise - Value Added', 'Family Package', 'Kerala', 30000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2023-03-10 05:45:58', '2023-04-01 20:59:52'),
(5, 'Short Trip To Dubai', 'Family', 'Dubai', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'unnamed.jpg', '2023-03-08 05:49:13', '2023-04-01 19:43:55'),
(6, 'Sikkim Delight with Darjeeling (customizable)', 'Group', 'Sikkim', 25000, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2023-03-08 05:51:26', '2023-04-01 20:59:46'),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family Package', 'Guwahati(Sikkim)', 17000, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2023-03-11 05:54:42', '2023-04-01 21:00:06'),
(8, 'Grand Week in North East - Lachung, Lachen and Gangtok', 'Domestic Packages', 'Sikkim', 20000, 'Free Breakfast, Free Wi-fi', 'Changu Lakeand New Baba Mandir excursion | Yumthang Valley tour | Gurudongmar Lake excursion | Night stay in Lachen', 'download (3).jpg', '2023-03-12 06:05:24', '2023-04-01 20:59:41'),
(9, 'Gangtok & Darjeeling Holiday (Without Flights)', 'Family Package', 'Sikkim', 10000, 'Free Wi-fi, Free pickup and drop facility', 'Ideal tour for Family | Sightseeing in Gangtok and Darjeeling | Full day excursion to idyllic Changu Lake | Visit to Ghoom Monastery', '1540382781_shutterstock_661867435.jpg.jpg', '2023-03-13 06:07:48', '2023-04-01 20:59:38'),
(10, '12', '12', '12', 12, '12', '12', 'sayeman.jpg', '2023-04-03 17:44:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(8, 'mahid', '123', 'mahid@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 11:34:18', NULL),
(9, 'Afsan Haque', '1850029567', 'afsan@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 11:55:30', NULL),
(10, 'gg', 'gg', 'gg@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 17:45:32', NULL),
(11, 'hh', '123', 'hh@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 17:48:15', NULL),
(12, 'kk', '123', 'kk@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-03-28 17:54:22', NULL),
(13, 'kat', '123', 'kat@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-03-28 18:45:26', '2023-03-29 12:53:57'),
(14, 'mahdi', '123', 'mahdi@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-01 19:03:24', NULL),
(15, 'afsan', '123', 'af@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-01 19:33:02', NULL),
(16, 'sad', '01', 'asd', '7815696ecbf1c96e6894b779456d330e', '2023-04-01 20:37:35', NULL),
(17, 'dg', 'saf', 'asf', 'c20ad4d76fe97759aa27a0c99bff6710', '2023-04-01 20:38:09', NULL),
(18, 'as', 'saf', 'asf@gmail.com', '7b064dad507c266a161ffc73c53dcdc5', '2023-04-01 20:40:30', NULL),
(19, 'qwe', '123', 'asdf@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-01 20:42:40', NULL),
(20, 'adf', '1244', 'asd@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-01 20:44:48', NULL),
(21, 'ssaf', '12345', 'gggg@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-04-01 20:45:17', NULL),
(22, 'zahid', '1242154326', 'zahid@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-04-03 19:16:24', NULL),
(23, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2023-04-05 19:40:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelbooking`
--
ALTER TABLE `hotelbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `hotelenquiry`
--
ALTER TABLE `hotelenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelissues`
--
ALTER TABLE `hotelissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelpages`
--
ALTER TABLE `hotelpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoteltourhotels`
--
ALTER TABLE `hoteltourhotels`
  ADD PRIMARY KEY (`HotelId`);

--
-- Indexes for table `hotelusers`
--
ALTER TABLE `hotelusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotelbooking`
--
ALTER TABLE `hotelbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `hotelenquiry`
--
ALTER TABLE `hotelenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotelissues`
--
ALTER TABLE `hotelissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotelpages`
--
ALTER TABLE `hotelpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `hoteltourhotels`
--
ALTER TABLE `hoteltourhotels`
  MODIFY `HotelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hotelusers`
--
ALTER TABLE `hotelusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
