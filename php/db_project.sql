-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2019 at 06:45 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `light_box`
--

CREATE TABLE `light_box` (
  `ID` int(11) NOT NULL,
  `Project_name` varchar(100) NOT NULL,
  `Photo1` varchar(100) NOT NULL,
  `Photo2` varchar(100) NOT NULL,
  `Photo3` varchar(100) NOT NULL,
  `Photo4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `light_box`
--

INSERT INTO `light_box` (`ID`, `Project_name`, `Photo1`, `Photo2`, `Photo3`, `Photo4`) VALUES
(1, 'Hai Thanh', 'p1.1.jpg', 'p1.2.jpg', 'p1.3.jpg', 'p1.4.jpg'),
(2, 'Penny Drop Studio', 'p2.1.jpg', 'p2.2.jpg', 'p2.3.jpg', 'p2.4.jpg'),
(3, 'On the moon Icons', 'p3.1.jpg', 'p3.2.jpg', 'p3.3.jpg', 'p3.4.jpg'),
(4, '', 'Quotation.jpg', '', '', ''),
(5, 'Thermal Security', 'p4.1.jpg', 'p4.2.jpg', 'p4.3.jpg', 'p4.5.jpg'),
(6, 'TRAA', 'p5.1.jpg', 'p5.2.jpg', 'p5.3.jpg', 'p5.4.jpg'),
(7, 'Couple Resort', 'p6.1.jpg', 'p6.2.jpg', 'p6.3.jpg', 'p6.4.jpg'),
(8, 'Bio Page', 'p6b.1.jpg', 'p6b.2.jpg', 'p6b.3.jpg', 'p6b.4.jpg'),
(9, 'Red perfume', 'p7.1.jpg', 'p7.2.jpg', 'p7.3.jpg', 'p7.4.jpg'),
(10, 'Arbora display designs', 'p8.1.jpg', 'p8.2.jpg', 'p8.3.jpg', 'p8.4.jpg'),
(11, 'Monster Mixer', 'p9.1.jpg', 'p9.2.jpg', 'p9.3.jpg', 'p9.4.jpg'),
(12, 'NBC product mashed up', 'p10.1.jpg', 'p10.2.jpg', 'p10.3.jpg', 'p10.4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_detail1`
--

CREATE TABLE `project_detail1` (
  `ID` int(11) NOT NULL,
  `ID_detail1` int(2) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_detail1`
--

INSERT INTO `project_detail1` (`ID`, `ID_detail1`, `Name`, `Type`, `Description`, `Image`) VALUES
(1, 1, 'Name: Hai Thanh', 'Type: Brand Identity/ Logotype', 'Created brand Identity for Hai Thanh who works as a Vietnamese judge.', 'project1.jpg'),
(2, 2, 'Name: Penny Drop Studio', 'Type: Logo design/ Motion Design', 'Created brand identity for the Penny Drop Studio start up and a brand consistent video to promote the startup agency.', 'project2.jpg'),
(3, 3, 'Name: On the moon Icons project', 'Type: Icons design/ website design and develop', 'Designed a set of icons on the theme of “princess” and developed a one page website to present it.', 'project3.jpg'),
(4, 4, '', '', '', 'Quotation.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_detail2`
--

CREATE TABLE `project_detail2` (
  `ID` int(11) NOT NULL,
  `ID_detail2` int(2) NOT NULL,
  `Name_2` varchar(100) NOT NULL,
  `Type_2` varchar(200) NOT NULL,
  `Description_2` varchar(500) NOT NULL,
  `Image_2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_detail2`
--

INSERT INTO `project_detail2` (`ID`, `ID_detail2`, `Name_2`, `Type_2`, `Description_2`, `Image_2`) VALUES
(1, 5, 'Name: Thermal Security', 'Type: Website design/ Branding', 'Designed an interactive website interface and created Brand Identity for a Thermal Security product.', 'project4.png'),
(2, 6, 'Name: TRAA', 'Type: Website design/ Branding', 'Redesigned website and logo of the Thames River Anglers Association.', 'project5.png'),
(3, 7, 'Name: Couple resort', 'Type: Website design', 'Redesigned the home page and logo of a couple resort in Algonquin Park, On.', 'project6.png'),
(4, 8, 'Name: Bio Page', 'Type: Website design', 'Design website interface for a bio-page.', 'project6b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_detail3`
--

CREATE TABLE `project_detail3` (
  `ID` int(11) NOT NULL,
  `ID_detail3` int(2) NOT NULL,
  `Name_3` varchar(100) NOT NULL,
  `Type_3` varchar(200) NOT NULL,
  `Description_3` varchar(500) NOT NULL,
  `Image_3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_detail3`
--

INSERT INTO `project_detail3` (`ID`, `ID_detail3`, `Name_3`, `Type_3`, `Description_3`, `Image_3`) VALUES
(1, 9, 'Name: Red perfume', 'Type: Product design/ packaging design', 'Designed product concept and packaging for a new perfume line named “ Red”.', 'project7.jpg'),
(2, 10, 'Name: Arbora display designs', 'Type: Product design/ Booklet', 'Create display designs to hold Arbora products for purchase in retail stores.', 'project8.jpg'),
(3, 11, 'Name: Monster Mixer', 'Type: Website design/ UX design', 'Designed the interface for a web app that allows users to create different music mix using drag and drop.', 'project9.jpg'),
(4, 12, 'Name: NBC product mashed up', 'Type: Product design/ poster', 'Designed a label and poster for a wine bottle as a special gift from the 95th Anniversary of NBC.', 'project10.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `light_box`
--
ALTER TABLE `light_box`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_detail1`
--
ALTER TABLE `project_detail1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_detail2`
--
ALTER TABLE `project_detail2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_detail3`
--
ALTER TABLE `project_detail3`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `light_box`
--
ALTER TABLE `light_box`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `project_detail1`
--
ALTER TABLE `project_detail1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_detail2`
--
ALTER TABLE `project_detail2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_detail3`
--
ALTER TABLE `project_detail3`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
