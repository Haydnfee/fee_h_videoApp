-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 09, 2018 at 02:35 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videoApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(250) unsigned NOT NULL,
  `genre_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` int(255) unsigned NOT NULL,
  `movie_title` varchar(100) NOT NULL,
  `movie_year` varchar(10) NOT NULL,
  `movie_runtime` varchar(10) NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_trailer` varchar(250) NOT NULL,
  `movie_release` varchar(10) NOT NULL,
  `movie_rating` varchar(10) NOT NULL,
  `movie_isKids` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_title`, `movie_year`, `movie_runtime`, `movie_desc`, `movie_trailer`, `movie_release`, `movie_rating`, `movie_isKids`) VALUES
(1, 'Ghost In The Shell', '2017', '107m', 'In the near future, Major is the first of her kind: A human saved from a terrible crash, who is cyber-enhanced to be a perfect soldier devoted to stopping the world''s most dangerous criminals.', '', '31/01/2017', '6.4', 0),
(2, '10 Cloverfield Lane', '2016', '103', 'After getting in a car accident, a woman is held in a shelter with two men, who claim the outside world is affected by a widespread chemical attack. ', '', '11/03/2016', '7.2', 0),
(3, 'The Purge: Election Year', '2016', '108m', 'Former Police Sergeant Barnes becomes head of security for Senator Charlie Roan, a Presidential candidate targeted for death on Purge night due to her vow to eliminate the Purge. ', '', '01/07/2016', '6.0', 0),
(4, 'Logan', '2017', '137m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan''s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces. ', '', '03/03/2017', '8.1', 0),
(5, 'Captain America: Civil War', '2016', '147m', 'Political involvement in the Avengers'' activities causes a rift between Captain America and Iron Man. ', '', '06/05/2016', '7.8', 0),
(6, 'Coco', '2017', '105m', 'Aspiring musician Miguel, confronted with his family''s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer. ', '', '21/11/2017', '8.5', 1),
(7, 'Inside Out', '2015', '95m', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school. ', '', '19/06/2015', '8.2', 1),
(8, 'Incredibles 2', '2018', 'N/A', 'Bob Parr (Mr. Incredible) is left to care for Jack-Jack while Helen (Elastigirl) is out saving the world. ', '', '15/06/2018', 'N/A', 1),
(9, 'Wreck-It Ralph 2', '2018', 'N/A', 'Six years after the events of "Wreck-It Ralph," Ralph and Vanellope, now friends, discover a wi-fi router in their arcade, leading them into a new adventure. ', '', '21/11/2018', 'N/A', 1),
(10, 'Teenage Mutant Ninja Turtles', '1990', '93m', 'Four teenage mutant ninja turtles emerge from the shadows to protect New York City from a gang of criminal ninjas. ', '', '30/03/1990', '6.7', 1),
(11, 'The Purge: Election Year', '2016', '108m', 'Former Police Sergeant Barnes becomes head of security for Senator Charlie Roan, a Presidential candidate targeted for death on Purge night due to her vow to eliminate the Purge. ', '', '01/07/2016', '6.0', 0),
(12, 'Logan', '2017', '137m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan''s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces. ', '', '03/03/2017', '8.1', 0),
(13, 'Captain America: Civil War', '2016', '147m', 'Political involvement in the Avengers'' activities causes a rift between Captain America and Iron Man. ', '', '06/05/2016', '7.8', 0),
(14, 'Coco', '2017', '105m', 'Aspiring musician Miguel, confronted with his family''s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer. ', '', '21/11/2017', '8.5', 1),
(15, 'Inside Out', '2015', '95m', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school. ', '', '19/06/2015', '8.2', 1),
(16, 'Incredibles 2', '2018', 'N/A', 'Bob Parr (Mr. Incredible) is left to care for Jack-Jack while Helen (Elastigirl) is out saving the world. ', '', '15/06/2018', 'N/A', 1),
(17, 'Wreck-It Ralph 2', '2018', 'N/A', 'Six years after the events of "Wreck-It Ralph," Ralph and Vanellope, now friends, discover a wi-fi router in their arcade, leading them into a new adventure. ', '', '21/11/2018', 'N/A', 1),
(18, 'Teenage Mutant Ninja Turtles', '1990', '93m', 'Four teenage mutant ninja turtles emerge from the shadows to protect New York City from a gang of criminal ninjas. ', '', '30/03/1990', '6.7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_genre`
--

CREATE TABLE `tbl_movie_genre` (
  `movie_genre_id` int(50) unsigned NOT NULL,
  `movie_id` int(50) NOT NULL,
  `movie_genre` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_movie_genre`
--
ALTER TABLE `tbl_movie_genre`
  ADD PRIMARY KEY (`movie_genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(250) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(255) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_movie_genre`
--
ALTER TABLE `tbl_movie_genre`
  MODIFY `movie_genre_id` int(50) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
