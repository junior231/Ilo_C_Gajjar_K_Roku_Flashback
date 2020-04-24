-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2020 at 03:31 AM
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
-- Table structure for table `tbl_media`
--

DROP TABLE IF EXISTS `tbl_media`;
CREATE TABLE IF NOT EXISTS `tbl_media` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Title` varchar(250) NOT NULL,
  `Year` int(10) NOT NULL,
  `Cast` varchar(250) NOT NULL,
  `Media_type` varchar(250) NOT NULL,
  `Media_Rating` varchar(10) NOT NULL,
  `Media_source` varchar(250) NOT NULL,
  `Genre` varchar(200) NOT NULL,
  `Media_cover` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`ID`, `Title`, `Year`, `Cast`, `Media_type`, `Media_Rating`, `Media_source`, `Genre`, `Media_cover`) VALUES
(1, 'Singin in the Rain', 1952, 'Gene Kelly, Donald O\'Connor, Debbie Reynolds', 'Movie', 'R', 'sing_in_rain.mp4', 'Musical, Romantic Comedy', 'Singin\'_in_the_Rain'),
(2, '2001 Space Odyssey', 1968, 'Keir Dullea, Gary Lockwood', 'Movie', 'R', 'odyssey.mp4', 'Science Fiction', 'spaceodyssey.jpg'),
(3, 'The Godfather ', 1972, 'Marlon Brando, Al Pacino, James Caan, Richard Castellano, Robert Duvall', 'Movie', 'R', 'godfather.mp4', 'American Crime', 'thegodfather.jpg'),
(4, 'Back to the Future', 1985, 'Michael J Fox, Christopher Lloyd, Lea Thompson, Crispin Glover', 'Movie', 'R', 'back_to_future.mp4', 'Science Fiction', 'backtothefuture.jpg'),
(5, 'Pulp Fiction', 1994, 'John Travolta, Samuel L Jackson, Uma Therman, Harvey Keitel, Tim Roth, Christopher Walken, Bruce Willis', 'Movie', 'R', 'pulpfiction.mp4', 'American Crime', 'pulpfiction.jpg'),
(6, 'Cinderella', 1950, 'Ilene Woods, Eleanor Audley, Verna Felton', 'Movie', 'G', 'cinderella.mp4', 'Romance, Drama, Adventure,Family', 'cinderella.jpg'),
(7, 'The Jungle Book', 1967, 'Phil Harris, Sabastien Cabot, George Sanders', 'Movie', 'G', 'jungle.mp4', 'Adventure, Fantasy, Drama, Family', 'jungleBook.jpg '),
(8, 'Willy Wonka and the Chocolate Factory', 1970, 'Gene Wilder, Jack Albertson, Peter Ostrum', 'Movie', 'G', 'chocolate_factory.mp4', 'Adventure, Fantasy, Drama, Family', 'willyWonka.jpg'),
(9, 'E.T The Extra Terrestrial', 1982, 'Henry Thomas, Drew Barrymore,Peter Coyote', 'Movie', 'G', 'ET.mp4', 'Science Fiction, Adventure, Drama, Family', 'e_t.jpg'),
(10, 'Home Alone', 1990, 'Macauley Culkin, Joe Pesci, Daniel Stern', 'Movie', 'G', 'homeAlone.mp4', 'Comedy, Adventure, Family', 'homeAlone.jpg'),
(11, 'I Love Lucy', 1951, 'Lucille Ball, Desi Arnaz, Vivian Vance, William Frawley,Richard Keith', 'TV', 'R', 'long.mp4', 'Comedy, Family', 'ilovelucy.jpg'),
(12, 'The Andy Griffith Show', 1960, 'Andy Griffith, Ron Howard, Don Knotts', 'TV', 'R', 'andy_griffith.mp4', 'Comedy, Family', 'andygriffith.jpg'),
(13, 'M*A*S*H', 1972, 'Alan Alda, Wayne Rogers, Loretta Swit', 'TV', 'R', 'mash.mp4', 'Comedy, Drama, War', 'mash.jpg'),
(14, 'The A-Team', 1983, 'George Peppard, Mr T., Dwight Schultz', 'TV', 'R', 'A_team.mp4', 'Action, Adventure, Crime', 'ateam.jpg'),
(15, 'Friends', 1994, 'Jennifer Aniston, Courtney Cox, Matthew Perry, Lisa Kudrow, David Schwimmer, Mall LeBlanc', 'TV', 'R', 'friends.mp4', 'Comedy, Romance', 'friends.jpg'),
(16, 'The Mickey Mouse Club', 1955, 'Jimmie Dodd, Tommy Cole, Eileen Diamond ', 'TV', 'G', 'micky_mouse.mp4', 'Family, Comedy, Drama', 'mickey_mouse.jpg'),
(17, 'The Flinstones', 1960, 'Alan Reed, Mel Blanc, Jean Vander Pyl', 'TV', 'G', 'flinstones.mp4', 'Animation, Adventure, Comedy', 'flinstones.jpg'),
(18, 'The Muppet Show', 1976, 'Jim Henson, Frank Oz, Richard Hunt', 'TV', 'G', 'muppet_show.mp4', 'Comedy, Family, Music', 'muppet_show.jpg'),
(19, 'Inspector Gadget', 1983, 'Don Adams, Holly Berger, Frank Welker', 'TV', 'G', 'inspector_gadget.mp4', 'Animation, Adventure, Action', 'inspector_gadget.jpg'),
(20, 'Barney & Friends', 1992, 'Bob West, Julie Johnson, Dean Wendt', 'TV', 'G', 'barney.mp4', 'Family', 'barney.jpg'),
(21, 'Rock Around The Clock', 1955, 'Bill Haley and His Comets', 'Music', 'R', 'rock_around.mp4', 'Rock and Roll', 'rock_around.jpg'),
(22, 'I Want To Hold Your Hand', 1964, 'The Beatles', 'Music', 'R', 'hold_your_hand.mp4', 'Pop Rock', 'i_want_to.jpg'),
(23, 'Don\'t Go Breaking My Heart', 1976, 'Elton John, Kiki Dee', 'Music', 'R', 'break_my_heart.mp4', 'Pop, Soft Rock', 'breaking.jpg'),
(24, 'Sweet Child O\'Mine', 1987, 'Guns N\' Roses', 'Music', 'R', 'sweet_child.mp4', 'Hard Rock', 'sweetchild.jpg'),
(25, 'I Will Always Love You', 1992, 'Whitney Houston', 'Music', 'R', 'always_love_you.mp4', 'Pop, Soul, R&B', 'always_love.jpg'),
(26, 'Witch Doctor', 1958, 'David Seville', 'Music', 'G', 'witch_doctor.mp4', 'Comedy, Rockabilly, Country', 'witch_doctor.jpg'),
(27, 'Good Vibration', 1993, 'The Beach Boys', 'Music', 'G', 'good_vibrations.mp4', 'Pychadelic Rock, Art Pop, Acid Rock, R&B', 'good_vibrations.jpg'),
(28, 'The Time Warp', 1957, 'Richard O\'Brien, Patricia Quinn, Nell Campbell, Charles Gray', 'Music', 'G', 'time_warp.mp4', 'Rock Musical', 'time_warp.jpg'),
(29, 'Ghostbusters', 1984, 'Ray Parker Jr.', 'Music', 'G', 'ghostbusters.mp4', 'Dance-Pop', 'ghost_busters.jpg'),
(30, 'Macarena', 1993, 'Los Del Rio', 'Music', 'G', 'macarena.mp4', 'Dance-Pop', 'macarena.jpg');

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
  `user_avatar` varchar(50) NOT NULL,
  `user_permissions` int(11) NOT NULL,
  `user_admin` int(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_avatar`, `user_permissions`, `user_admin`) VALUES
(1, 'Kahani', 'user1', 'password', 'me@you.com', 'harleyquinn.png', 3, 1),
(2, 'Collins', 'user2', 'password', 'me@you.com', 'ironman.png', 3, 1),
(3, 'Trevor', 'user3', 'password', 'me@you.com', 'count_olaf.jpg', 2, 0),
(4, 'baby', 'user4', 'password', 'me@you.com', 'batman.png', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
