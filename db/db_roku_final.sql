-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2020 at 11:45 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adult_movies`
--

DROP TABLE IF EXISTS `tbl_adult_movies`;
CREATE TABLE IF NOT EXISTS `tbl_adult_movies` (
  `movie_id` int(50) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(500) NOT NULL,
  `movie_cast` varchar(1000) NOT NULL,
  `movie_director` varchar(500) NOT NULL,
  `movie_rating` int(200) NOT NULL,
  `movie_release` int(200) NOT NULL,
  `movie_trailer` varchar(200) NOT NULL,
  `movie_cover` varchar(250) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adult_movies`
--

INSERT INTO `tbl_adult_movies` (`movie_id`, `movie_name`, `movie_cast`, `movie_director`, `movie_rating`, `movie_release`, `movie_trailer`, `movie_cover`) VALUES
(1, 'Singin in the Rain', 'Gene Kelly, Donald O\'Connor, Debbie Reynolds', 'Gene Kelly, Stanley Donan', 8, 1952, 'sing_in_rain.mp4', 'Singin\'in_the_Rain.jpg'),
(2, '2001', 'Keir Dullea, Gary Lockwood', 'Stanley Kubrik', 8, 1968, 'odyssey.mp4', 'spaceodyssey.jpg'),
(3, 'The Godfather ', 'Marlon Brando, Al Pacino, James Caan, Richard Castellano, Robert Duvall', 'Francis Ford Coppola', 9, 1972, 'godfather.mp4', 'thegodfather.jpg'),
(4, 'Back to the Future', 'Michael J Fox, Christopher Lloyd, Lea Thompson, Crispin Glover', 'Robert Zemeckis', 9, 1985, 'back_to_future.mp4', 'backtothefuture.jpg'),
(5, 'Pulp Fiction', 'John Travolta, Samuel L Jackson, Uma Therman, Harvey Keitel, Tim Roth, Christopher Walken, Bruce Willis', 'Quentin Tarantino ', 9, 1994, 'pulpFiction.mp4', 'pulpfiction.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adult_music`
--

DROP TABLE IF EXISTS `tbl_adult_music`;
CREATE TABLE IF NOT EXISTS `tbl_adult_music` (
  `music_id` int(50) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(200) NOT NULL,
  `music_artist` varchar(200) NOT NULL,
  `music_genre` varchar(50) NOT NULL,
  `music_trailer` varchar(250) NOT NULL,
  `music_cover` varchar(250) NOT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adult_music`
--

INSERT INTO `tbl_adult_music` (`music_id`, `music_name`, `music_artist`, `music_genre`, `music_trailer`, `music_cover`) VALUES
(1, 'Rock Around The Clock', 'Bill Haley and His Comets', 'Rock and Roll', 'rock_around.mp4', 'rock_around.jpg'),
(2, 'I Want To Hold Your Hand', 'The Beatles', 'Pop Rock', 'hold_your_hand.mp4', 'i_want_to.jpg'),
(3, 'Don\'t Go Breaking My Heart', 'Elton John, Kiki Dee', 'Pop, Soft Rock', 'break_my_heart.mp4', 'breaking.jpg'),
(4, 'Sweet Child O\'Mine', 'Guns N\' Roses', 'Hard Rock', 'sweet_child.mp4', 'sweetchild.jpg'),
(5, 'I Will Always Love You', 'Whitney Houston', 'Pop, Soul, R&B', 'always_love_you.mp4', 'always_love.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adult_tv`
--

DROP TABLE IF EXISTS `tbl_adult_tv`;
CREATE TABLE IF NOT EXISTS `tbl_adult_tv` (
  `tv_id` int(50) NOT NULL AUTO_INCREMENT,
  `tv_name` varchar(200) NOT NULL,
  `tv_writer` varchar(200) NOT NULL,
  `tv_cast` varchar(500) NOT NULL,
  `tv_rating` int(50) NOT NULL,
  `tv_release` int(50) NOT NULL,
  `tv_trailer` varchar(250) NOT NULL,
  `tv_cover` varchar(250) NOT NULL,
  PRIMARY KEY (`tv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adult_tv`
--

INSERT INTO `tbl_adult_tv` (`tv_id`, `tv_name`, `tv_writer`, `tv_cast`, `tv_rating`, `tv_release`, `tv_trailer`, `tv_cover`) VALUES
(1, 'I Love Lucy', 'Jess Oppenheimer, Madelyn Davis, Bob Carroll Jr.', 'Lucille Ball, Desi Arnaz, Vivian Vance, William Frawley, Richard Keith', 8, 1951, 'long.mp4', 'ilovelucy.jpg'),
(2, 'The Andy Griffith Show', 'Sheldon Leonard, Aaron Ruben, Danny Thomas', 'Andy Griffith, Ron Howard, Don Knotts', 8, 1960, 'andy_griffith.mp4', 'andygriffith.jpg'),
(3, 'M*A*S*H', 'Larry Gelbert', 'Alan Alda, Wayne Rogers, Loretta Swit', 8, 1972, 'mash.mp4', 'mash.jpg'),
(4, 'The A-Team', 'Stephen J. Cannell, Frank Lupo', 'George Peppard, Mr T., Dwight Schultz', 8, 1983, 'A_team.mp4', 'ateam.jpg'),
(5, 'Friends', 'David Crane, Martha Kauffman', 'Jennifer Aniston, Courtney Cox, Matthew Perry, Lisa Kudrow, David Schwimmer, Mall LeBlanc', 9, 1994, 'friends.mp4', 'friends.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kid_movies`
--

DROP TABLE IF EXISTS `tbl_kid_movies`;
CREATE TABLE IF NOT EXISTS `tbl_kid_movies` (
  `movie_id` int(50) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(200) NOT NULL,
  `movie_director` varchar(200) NOT NULL,
  `movie_cast` varchar(500) NOT NULL,
  `movie_rating` int(50) NOT NULL,
  `movie_release` int(50) NOT NULL,
  `movie_trailer` varchar(250) NOT NULL,
  `movie_cover` varchar(250) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kid_movies`
--

INSERT INTO `tbl_kid_movies` (`movie_id`, `movie_name`, `movie_director`, `movie_cast`, `movie_rating`, `movie_release`, `movie_trailer`, `movie_cover`) VALUES
(1, 'Cinderella', 'Clyde Geronimi', 'Ilene Woods, Eleanor Audley, Verna Felton', 7, 1950, 'cinderella.mp4', 'cinderella.jpg'),
(2, 'The Jungle Book', 'Wolfgang Reitherman', 'Phil Harris, Sabastien Cabot, George Sanders', 8, 1967, 'jungle.mp4', 'jungleBook.jpg'),
(3, 'Willy Wonka and the Chocolate Factory', 'Mel Stuart', 'Gene Wilder, Jack Albertson, Peter Ostrum', 8, 1970, 'chocolate_factory.mp4', 'willyWonka.jpg'),
(4, 'E.T The Extra Terrestrial', 'Steven Spielberg', 'Henry Thomas, Drew Barrymore,Peter Coyote', 8, 1982, 'ET.mp4', 'e_t.jpg'),
(5, 'Home Alone', 'Chris Columbus', 'Macauley Culkin, Joe Pesci, Daniel Stern', 8, 1990, 'homeAlone.mp4', 'homeAlone.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kid_music`
--

DROP TABLE IF EXISTS `tbl_kid_music`;
CREATE TABLE IF NOT EXISTS `tbl_kid_music` (
  `music_id` int(50) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(200) NOT NULL,
  `music_artist` varchar(200) NOT NULL,
  `music_genre` varchar(50) NOT NULL,
  `musci_trailer` varchar(250) NOT NULL,
  `music_cover` varchar(250) NOT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kid_music`
--

INSERT INTO `tbl_kid_music` (`music_id`, `music_name`, `music_artist`, `music_genre`, `musci_trailer`, `music_cover`) VALUES
(1, 'Witch Doctor', 'David Seville', 'Comedy, Rockabilly, Country', 'witch_doctor.mp4', 'witch_doctor.jpg'),
(2, 'Good Vibration', 'The Beach Boys', 'Pychadelic Rock, Art Pop, Acid Rock, R&B', 'good_vibrations.mp4', 'good_vibrations.jpg'),
(3, 'The Time Warp', 'Richard O\'Brien, Patricia Quinn, Nell Campbell, Charles Gray', 'Rock Musical', 'time_warp.mp4', 'time_warp.jpg'),
(4, 'Ghostbusters', 'Ray Parker Jr.', 'Dance-Pop', 'ghostbusters.mp4', 'ghost_busters.jpg'),
(5, 'Macarena', 'Los Del Rio', 'Dance-Pop', 'macarena.mp4', 'macarena.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kid_tv`
--

DROP TABLE IF EXISTS `tbl_kid_tv`;
CREATE TABLE IF NOT EXISTS `tbl_kid_tv` (
  `tv_id` int(50) NOT NULL AUTO_INCREMENT,
  `tv_name` varchar(200) NOT NULL,
  `tv_writer` varchar(200) NOT NULL,
  `tv_cast` varchar(500) NOT NULL,
  `tv_rating` int(50) NOT NULL,
  `tv_release` int(50) NOT NULL,
  `tv_trailer` varchar(250) NOT NULL,
  `tv_cover` varchar(250) NOT NULL,
  PRIMARY KEY (`tv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kid_tv`
--

INSERT INTO `tbl_kid_tv` (`tv_id`, `tv_name`, `tv_writer`, `tv_cast`, `tv_rating`, `tv_release`, `tv_trailer`, `tv_cover`) VALUES
(1, 'The Mickey Mouse Club', 'Hal Adelquist, Walt Disney', 'Jimmie Dodd, Tommy Cole, Eileen Diamond ', 8, 1955, 'micky_mouse.mp4', 'mickey_mouse.jpg'),
(2, 'The Flinstones', 'Joseph Barbara, William Hanna', 'Alan Reed, Mel Blanc, Jean Vander Pyl', 8, 1960, 'flinstones.mp4', 'flinstones.jpg'),
(3, 'The Muppet Show', 'Jim Henson, Jack Burns', 'Jim Henson, Frank Oz, Richard Hunt', 8, 1976, 'muppet_show.mp4', 'muppet_show.jpg'),
(4, 'Inspector Gadget', 'Jean Chalopin, Andy Heyward, Bruno Bianchi', 'Don Adams, Holly Berger, Frank Welker', 7, 1983, 'inspector_gadget.mp4', 'inspector_gadget.jpg'),
(5, 'Barney & Friends', 'Dennis Deshazer, Sheryl Leach, Kathy Leach', 'Bob West, Julie Johnson, Dean Wendt', 4, 1992, 'barney.mp4', 'barney.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL,
  `user_ip` varchar(50) NOT NULL,
  `user_avatar` varchar(50) NOT NULL,
  `user_permissions` int(11) NOT NULL,
  `user_admins` int(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_avatar`, `user_permissions`, `user_admins`) VALUES
(1, 'Kahani', 'user1', 'password', 'me@you.com', '2020-04-09 04:00:00', '::1', 'null', 5, 1),
(2, 'Collins', 'user2', 'password', 'me@you.com', '2020-04-09 04:00:00', 'no', 'null', 5, 1),
(3, 'Trevor', 'user3', 'password', 'me@you.com', '2020-04-09 04:00:00', 'no', 'null', 3, 0),
(4, 'Pan', 'user4', 'password', 'me@you.com', '2020-04-09 04:00:00', 'no', 'null', 2, 0),
(5, 'Justin', 'user5', 'password', 'me@you.com', '2020-04-09 04:00:00', 'no', 'null', 2, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
