-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 06:51 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_db`
--

CREATE TABLE `admin_db` (
  `unique_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_db`
--

INSERT INTO `admin_db` (`unique_id`, `admin_username`, `admin_password`, `admin_name`) VALUES
(1, 'admin', 'gpnashik2019', 'cm_admin');

-- --------------------------------------------------------

--
-- Table structure for table `assignments_uploads`
--

CREATE TABLE `assignments_uploads` (
  `unique_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `assignment_text` text NOT NULL,
  `assignment_doc` blob NOT NULL,
  `upload_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assignment_no` int(11) NOT NULL,
  `checked_and_graded` tinyint(1) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignments_uploads`
--

INSERT INTO `assignments_uploads` (`unique_id`, `course_code`, `course_name`, `faculty`, `assignment_text`, `assignment_doc`, `upload_datetime`, `assignment_no`, `checked_and_graded`, `roll_no`, `student_name`) VALUES
(1, 'CM6549', '', '', '2', '', '2019-05-22 04:51:19', 0, 1, 176163, 'sandeep Shewale'),
(2, 'CM6548', '', '', '3', '', '2019-05-21 06:55:28', 0, 0, 176163, 'sandeep Shewale'),
(3, 'CM6549', '', '', '\r\n|| Shri Ganshay namah ||', '', '2019-05-21 07:02:17', 7, 0, 176163, 'sandeep Shewale'),
(4, 'CM6439', '', '', '\r\nThis is first assignment of software enginneering', '', '2019-05-22 04:21:23', 4, 1, 176114, 'Sudarshan Gawale'),
(5, 'CM6437', '', '', 'java first assignment ', '', '2019-05-21 09:40:03', 6, 0, 176163, 'sandeep Shewale'),
(6, 'CM6439', '', '', '\r\nsdfdsfsdfsdfsdf', '', '2019-05-22 04:36:07', 5, 1, 176114, 'Sudarshan Gawale'),
(7, '', '', '', '', 0x63695f70726f6a6563742e706466, '2019-05-21 09:57:27', 1, 0, 176163, 'sandeep Shewale'),
(8, '', '', '', '', 0x507974686f6e2d43686561742d53686565742e706466, '2019-05-21 09:58:49', 6, 0, 176163, 'sandeep Shewale'),
(9, 'CM6438', '', '', '', 0x507974686f6e2d43686561742d53686565742e706466, '2019-05-21 12:48:56', 7, 0, 176163, 'sandeep Shewale'),
(10, 'CM6439', '', '', '\r\nthis is 5th assignment\r\n\r\nHere the select query selects all the data from our database table. We can add conditions using ‘where’ clause.\r\n\r\nExample:\r\n$this->db->query(“Select * from table_user WHERE user_age > 20”);\r\n\r\nreturn $query->result();\r\nHere the query returns the given database retrieved result into the controller class. Note that, here retrieved data contains multiple values.\r\n\r\nIn Controller:\r\n$data[‘query’] =  $this->ProjectModel->getalldata();\r\nDue to the multiple retrieved data, the result should be stored on an array variable.  Here $data[‘query’] is an array variable, where $data is the variable name.\r\n\r\n$this->load->view(‘user/showdata’, $data);\r\nHere the variable $data is send into the view page named ‘showdata’.', '', '2019-05-22 04:38:25', 4, 1, 176163, 'sandeep Shewale'),
(11, 'CM6439', '', '', '\r\nThe term originally referred to messages sent using the Short Message Service (SMS). It has grown beyond alphanumeric text to include multimedia messages (known as MMS) containing digital images, videos, and sound content, as well as ideograms known as emoji (happy faces, sad faces, and other icons).\r\n\r\nAs of 2017, text messages are used by youth and adults for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal messages has become an accepted part of many cultures, as happened earlier with emailing.[1] This makes texting a quick and easy way to communicate with friends, family and colleagues, including in contexts where a call would be impolite or inappropriate (e.g., calling very late at night or when one knows the other person is busy with family or work activities). Like e-mail and voicemail, and unlike calls (in which the caller hopes to speak directly with the recipient), texting does not require the caller and recipient to both be free at the same moment; this permits communication even between busy individuals. Text messages can also be used to interact with automated systems, for example, to order products or services from e-commerce websites, or to participate in online contests. Advertisers and service providers use direct text marketing to send messages to mobile users about promotions, payment due dates, and other notifications instead of using postal mail, email, or voicemail.', '', '2019-05-22 04:42:47', 1, 1, 176163, 'sandeep Shewale');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `unique_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `faculty` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`unique_id`, `course_code`, `course_name`, `faculty`) VALUES
(1, 'CM6234', 'MICROPROCESSOR', ''),
(2, 'CM6238', 'OBJECT ORIENTED PROGRAMMING', ''),
(3, 'CM6243', 'COMPUTER NETWORK', ''),
(4, 'CM6301', 'APPLIED MATHEMATICS', ''),
(5, 'CM6303', 'INDUSTRIAL ORGANISATION AND MANAGEMENT', ''),
(6, 'CM6434', 'SOFTWARE ENGINEERING', ''),
(7, 'CM6439', 'SCRIPTING TECHNOLOGY', 'mali sir'),
(8, 'CM6549', 'COMPUTER SECURITY', 'sanap sir'),
(9, 'CM6438', 'SOFTWAARE TESTING', ''),
(10, 'CM6548', 'VB.NET TECHNOLOGY', ''),
(11, 'CM6242', 'OPERATING SYSTEM', ''),
(12, 'CM6437', 'JAVA PROGRAMMING', ''),
(13, 'CM6440', 'SYSTEM SOFTWARE', ''),
(14, 'CM6411', 'SEMINAR', '');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `unique_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `assignment_no` int(11) NOT NULL,
  `marks_gained` int(11) NOT NULL,
  `time_of_checking` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`unique_id`, `roll_no`, `student_name`, `faculty`, `course_code`, `assignment_no`, `marks_gained`, `time_of_checking`) VALUES
(2, 176114, 'Sudarshan', 'mali sir', 'CM6439', 4, 20, '2019-05-22 04:21:23'),
(3, 176114, 'Sudarshan', 'mali sir', 'CM6439', 5, 19, '2019-05-22 04:36:07'),
(4, 176163, 'sandeep', 'mali sir', 'CM6439', 4, 19, '2019-05-22 04:38:25'),
(8, 176163, 'sandeep', 'mali sir', 'CM6439', 1, 20, '2019-05-22 04:42:47'),
(9, 176163, 'sandeep', 'sanap sir', 'CM6549', 0, 20, '2019-05-22 04:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses_matrix`
--

CREATE TABLE `student_courses_matrix` (
  `user_unique_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `student_name` varchar(60) NOT NULL,
  `coursecode1` varchar(10) NOT NULL,
  `coursecode2` varchar(10) NOT NULL,
  `coursecode3` varchar(10) NOT NULL,
  `coursecode4` varchar(10) NOT NULL,
  `coursecode5` varchar(10) NOT NULL,
  `coursecode6` varchar(10) NOT NULL,
  `coursecode7` varchar(10) NOT NULL,
  `coursecode8` varchar(10) NOT NULL,
  `coursecode9` varchar(10) NOT NULL,
  `coursecode10` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses_matrix`
--

INSERT INTO `student_courses_matrix` (`user_unique_id`, `roll_no`, `student_name`, `coursecode1`, `coursecode2`, `coursecode3`, `coursecode4`, `coursecode5`, `coursecode6`, `coursecode7`, `coursecode8`, `coursecode9`, `coursecode10`) VALUES
(1, 176114, 'Sudarshan Gawale', 'CM6440', 'CM6238', 'CM6243', 'CM6301', 'CM6303', 'CM6434', 'CM6439', '', '', ''),
(2, 176163, 'Sandeep Shewale', 'CM6411', 'CM6440', 'CM6437', 'CM6242', 'CM6548', 'CM6438', 'CM6549', 'CM6439', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_db`
--

CREATE TABLE `student_db` (
  `unique_id` int(11) NOT NULL,
  `student_username` varchar(50) NOT NULL,
  `student_password` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_db`
--

INSERT INTO `student_db` (`unique_id`, `student_username`, `student_password`, `student_name`) VALUES
(1, 'student', 'gpstudent2019', 'cm_student'),
(2, '176114', 'phpmyadmin', 'Sudarshan Gawale'),
(3, '176163', 'xampp', 'sandeep Shewale');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_db`
--

CREATE TABLE `teacher_db` (
  `unique_id` int(11) NOT NULL,
  `teacher_username` varchar(50) NOT NULL,
  `teacher_password` varchar(50) NOT NULL,
  `teacher_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_db`
--

INSERT INTO `teacher_db` (`unique_id`, `teacher_username`, `teacher_password`, `teacher_name`) VALUES
(1, 'teacher', 'gpteacher2019', 'cm_teacher'),
(2, 'mali sir', 'malisir', 'P.B. Mali Sir'),
(3, 'sanap sir', 'sanapsir', 'Y.B. Sanap Sir');

-- --------------------------------------------------------

--
-- Table structure for table `user_db`
--

CREATE TABLE `user_db` (
  `unique_id` int(11) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments_uploads`
--
ALTER TABLE `assignments_uploads`
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- Indexes for table `teacher_db`
--
ALTER TABLE `teacher_db`
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments_uploads`
--
ALTER TABLE `assignments_uploads`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher_db`
--
ALTER TABLE `teacher_db`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
