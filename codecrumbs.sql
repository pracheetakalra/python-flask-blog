-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 08:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codecrumbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phno`, `msg`, `date`) VALUES
(1, 'First post', 'firstpost@gmail.com', '1234567890', 'first post', '2023-04-11 23:01:43'),
(2, 'john doe', 'johndoe@gmail.com', '7829572260', 'this is john doe\'s first message!', '2023-04-11 23:22:51'),
(7, 'Cara ', 'cara@gmail.com', '2974527348', 'Hi, im cara, you should be able to see this message on your gmail account :)', '2023-04-12 22:15:02'),
(8, 'Cara ', 'cara@gmail.com', '2974527348', 'Hi, im cara, you should be able to see this message on your gmail account :)', '2023-04-12 22:59:43'),
(9, 'Bhavik', 'bhavikkalra1612@gmai', '1234567890', 'Hi I\'m Bittu. ', '2023-04-19 23:25:11'),
(10, 'rajesh', 'rajesh.kalra99@gmail', '1837618369', 'hi. ', '2023-04-21 20:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `date`) VALUES
(1, 'The first blog I\'ve ever written.', 'first-blog-ever', ' Hi there! Welcome to my blog, where the puns are bad and the laughs are even worse :)', '2023-04-25 23:25:22'),
(2, 'Flask...the base of this website', 'flask-website', 'Flask is a popular web application framework written in Python that is known for its simplicity and flexibility. It allows developers to build web applications quickly and easily by providing a solid foundation for handling HTTP requests and responses, routing, and rendering templates.\r\n\r\nFlask is lightweight, which means it has a small core and only includes the essential features needed to build web applications. This makes it a popular choice for small to medium-sized projects. Flask follows the Model-View-Controller (MVC) architectural pattern, which helps developers organize their code and separate concerns.\r\n\r\nOne of the key features of Flask is its support for extensions. There are hundreds of Flask extensions available that provide additional functionality for handling tasks such as authentication, database integration, and caching. Flask extensions can be installed easily using pip, the Python package manager.\r\n\r\nFlask also has excellent documentation and a vibrant community. The documentation is well-organized and includes examples, tutorials, and API references. The community is active and supportive, with many developers contributing to open-source projects and providing help and support on forums and chat channels.\r\n\r\nOverall, Flask is a great choice for building web applications in Python. It is lightweight, flexible, and extensible, with excellent documentation and a supportive community.', '2023-04-19 23:07:15'),
(3, 'Machine Learning', 'machine-learning', 'Machine learning is a subset of artificial intelligence that allows computer systems to learn and improve from experience without being explicitly programmed. It involves the use of algorithms that can learn from data, recognize patterns, and make predictions or decisions based on that data. Machine learning has become increasingly popular in recent years due to the growth in data volume and the increasing computing power available.\r\n\r\nThere are three main types of machine learning: supervised learning, unsupervised learning, and reinforcement learning. Supervised learning involves training a model on labeled data, while unsupervised learning involves training a model on unlabeled data. Reinforcement learning involves training a model through trial and error, with rewards or penalties given for successful or unsuccessful actions.\r\n\r\nMachine learning has many practical applications, such as natural language processing, image recognition, and fraud detection. It is also used extensively in recommendation systems, such as those used by Netflix and Amazon, to suggest content to users based on their viewing history and preferences.\r\n\r\nDespite its many advantages, machine learning also has some challenges. One of the biggest challenges is the need for large amounts of high-quality data to train the models. Another challenge is the potential for bias in the data or the algorithms used, which can lead to unfair or inaccurate results.\r\n\r\nOverall, machine learning is a powerful tool that has the potential to transform many industries and solve complex problems. As the field continues to evolve, it will be exciting to see the new and innovative applications that emerge.', '2023-04-24 20:25:11'),
(4, 'SQLAlchemy', 'sql-alchemy', 'SQLAlchemy is a popular open-source Object-Relational Mapping (ORM) library for Python. It provides a set of high-level tools and abstractions that allow developers to interact with databases using Python code, without having to write SQL queries directly. SQLAlchemy is widely used in the Flask web framework for building database-driven applications.  In Flask, SQLAlchemy is typically used with the Flask-SQLAlchemy extension. This extension provides a simple way to integrate SQLAlchemy with Flask, by creating a database object that can be used to interact with the database. The database object can be easily configured to use a variety of database backends, such as MySQL, PostgreSQL, or SQLite.  One of the main benefits of using SQLAlchemy with Flask is its flexibility. SQLAlchemy provides a high-level abstraction layer that allows developers to work with the database using Python objects, while still allowing fine-grained control over the generated SQL queries. This makes it easier to build complex database q', '2023-04-25 22:25:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
