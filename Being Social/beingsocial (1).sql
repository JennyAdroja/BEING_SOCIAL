-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 05:20 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beingsocial`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(70) NOT NULL,
  `posted_to` varchar(70) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, '', 'tanishq_jain', 'tanishq_jain', '2021-12-09 07:34:57', 'no', 60),
(2, 'whats up', 'jenny_adroja', 'vivek_bisht', '2021-12-09 13:37:12', 'no', 74),
(3, 'hi', 'jenny_adroja', 'jenny_adroja', '2021-12-09 12:50:27', 'no', 76);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(70) NOT NULL,
  `user_from` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(4, 'JennyAdroja', 'vivek_bisht'),
(6, 'vivek_bisht', 'jason_jack');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'jenny_adroja_1', 54),
(2, 'jenny_adroja_1', 53),
(10, 'jenny_adroja', 63),
(12, 'vivek_bisht', 63),
(16, 'jacob_jack', 78),
(17, 'jacob_jack', 77);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(70) NOT NULL,
  `user_from` varchar(70) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(7, 'vivek_bisht', 'jenny_adroja', 'hi\r\n', '2021-12-09 12:30:30', 'yes', 'no', 'no'),
(8, 'jenny_adroja', 'vivek_bisht', 'hi', '2021-12-09 12:42:29', 'yes', 'yes', 'no'),
(9, 'tanishq_jain', 'jacob_jack', 'hey', '2021-12-09 13:45:58', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(70) NOT NULL,
  `user_from` varchar(70) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'jenny_adroja', 'vivek_bisht', 'Vivek Bisht liked your post', 'post.php?id=63', '2021-12-09 11:41:09', 'yes', 'yes'),
(2, 'jenny_adroja', 'vivek_bisht', 'Vivek Bisht liked your post', 'post.php?id=63', '2021-12-09 11:41:16', 'yes', 'yes'),
(3, 'vivek_bisht', 'jenny_adroja', 'Jenny Adroja commented on your post', 'post.php?id=74', '2021-12-09 13:37:12', 'yes', 'yes'),
(4, 'tanishq_jain', 'jacob_jack', 'Jacob Jack liked your post', 'post.php?id=78', '2021-12-09 13:45:50', 'no', 'no'),
(5, 'tanishq_jain', 'jacob_jack', 'Jacob Jack liked your post', 'post.php?id=77', '2021-12-09 13:45:51', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(70) NOT NULL,
  `user_to` varchar(70) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(62, 'hi', 'jenny_adroja', 'none', '2021-12-09 09:52:46', 'no', 'yes', 0, ''),
(63, 'hey everybody', 'jenny_adroja', 'none', '2021-12-09 09:57:01', 'no', 'no', 2, ''),
(64, 'Hi I am good', 'vivek_bisht', 'none', '2021-12-09 11:41:32', 'no', 'yes', 0, ''),
(65, 'Hi I am good', 'vivek_bisht', 'none', '2021-12-09 11:41:35', 'no', 'yes', 0, ''),
(66, 'Hi I am good', 'vivek_bisht', 'none', '2021-12-09 11:41:41', 'no', 'yes', 0, ''),
(67, 'Hi I am good', 'vivek_bisht', 'none', '2021-12-09 11:41:45', 'no', 'yes', 0, ''),
(68, 'Hi I am good', 'vivek_bisht', 'none', '2021-12-09 11:41:50', 'no', 'yes', 0, ''),
(69, 'Hi I am good', 'vivek_bisht', 'none', '2021-12-09 11:41:54', 'no', 'yes', 0, ''),
(70, 'Hi I am good', 'vivek_bisht', 'none', '2021-12-09 11:42:00', 'no', 'yes', 0, ''),
(71, 'hey all', 'vivek_bisht', 'none', '2021-12-09 12:03:46', 'no', 'yes', 0, ''),
(72, '', 'vivek_bisht', 'none', '2021-12-09 12:13:46', 'no', 'yes', 0, 'assets/images/posts/61b1f2fa91934bart_simpson37e241c20f54539e5304221e3cdb301an.jpeg'),
(73, '', 'vivek_bisht', 'none', '2021-12-09 12:14:20', 'no', 'yes', 0, 'assets/images/posts/61b1f31c1e129bart_simpson37e241c20f54539e5304221e3cdb301an.jpeg'),
(74, '', 'vivek_bisht', 'none', '2021-12-09 12:14:25', 'no', 'no', 0, 'assets/images/posts/61b1f3213086fbart_simpson37e241c20f54539e5304221e3cdb301an.jpeg'),
(75, 'hi', 'jenny_adroja', 'none', '2021-12-09 15:34:04', 'no', 'no', 0, ''),
(76, 'hey', 'jenny_adroja', 'none', '2021-12-09 12:50:10', 'no', 'no', 0, 'assets/images/posts/61b241d2bffa0vivek_bisht9e6ee68f14a84c286ad04f66930b4876n.jpeg'),
(77, 'Hey all', 'tanishq_jain', 'none', '2021-12-09 13:44:47', 'no', 'no', 1, ''),
(78, 'jkfh', 'tanishq_jain', 'none', '2021-12-09 13:44:56', 'no', 'no', 1, 'assets/images/posts/61b24ea8f3687homer_simpson411f23038880f46914f888ad170cdce0n.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Jkfh', 1),
('Hi', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Jenny', 'Adroja', 'JennyAdroja', 'jennycollege2@gmail.com', 'jenny@04', '2021-12-04', 'jenny', 1, 1, 'no', ''),
(20, 'Jenny', 'Adroja', 'jenny_adroja', 'Jennyadroja@gmail.com', '87c81fd1827de2cb35ef86234225c958', '2021-12-09', 'assets/images/profile_pics/jenny_adrojaaed4d54db32fb14eb2794fbd7a455e56n.jpeg', 5, 2, 'no', ',vivek_bisht,jason_jack,'),
(21, 'Vivek', 'Bisht', 'vivek_bisht', 'Vivek@gmail.com', 'ce01fbb06d578b8e73184bac41bcbd31', '2021-12-09', 'assets/images/profile_pics/vivek_bisht9e6ee68f14a84c286ad04f66930b4876n.jpeg', 11, 0, 'no', ',jenny_adroja,'),
(22, 'Jason', 'Jack', 'jason_jack', 'Jason123@gmail.com', '6803c3733f0a95e8a1f9fc5f9ebdbc2c', '2021-12-09', 'assets/images/profile_pics/jason_jack81e3001e45d01e1fe4588b62db0735aan.jpeg', 0, 0, 'no', ',jenny_adroja,'),
(23, 'Tanishq', 'Jain', 'tanishq_jain', 'Tan@gmail.com', 'b3b16bfba3c616de372d25b72134bc0c', '2021-12-09', 'assets/images/profile_pics/defaults/head_emerald.png', 2, 2, 'no', ',jacob_jack,'),
(24, 'Jacob', 'Jack', 'jacob_jack', 'Jacobjack@gmail.com', 'c22289fcb12f66d070f1e802864d4dc4', '2021-12-09', 'assets/images/profile_pics/jacob_jack2a72f1cdb6b8f9c24f3d69fbfb1e6b6fn.jpeg', 0, 0, 'no', ',tanishq_jain,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`hits`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `hits` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
