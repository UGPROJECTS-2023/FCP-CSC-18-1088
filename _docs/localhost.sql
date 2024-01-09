-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 28, 2023 at 02:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localhost`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `company_account_id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `business_stream_name` varchar(255) NOT NULL,
  `company_website_url` varchar(255) DEFAULT NULL,
  `last_checks_rjobs` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`company_account_id`, `e_hash`, `company_name`, `business_stream_name`, `company_website_url`, `last_checks_rjobs`) VALUES
(21, '3008476a9614994b2538c9faa1b7e808', 'Neo Cloud Technologies', 'IT Company', '', '2023-01-28 14:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `education_detail`
--

CREATE TABLE `education_detail` (
  `id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `certificate_degree_name` varchar(50) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `institute_university_name` varchar(100) DEFAULT NULL,
  `starting_date` int(11) NOT NULL,
  `completion_date` int(11) DEFAULT NULL,
  `cgpa` varchar(20) DEFAULT NULL,
  `percentage` varchar(20) DEFAULT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `education_detail`
--

INSERT INTO `education_detail` (`id`, `e_hash`, `certificate_degree_name`, `major`, `institute_university_name`, `starting_date`, `completion_date`, `cgpa`, `percentage`, `postdate`) VALUES
(16, 'aea6d0dbc216826a061c9be3f4590653', 'Bachelor/s degree', 'Computer science', 'AUK', 2016, 2020, '', NULL, '2023-01-28 11:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `experience_detail`
--

CREATE TABLE `experience_detail` (
  `id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `is_current_job` enum('0','1') NOT NULL DEFAULT '0',
  `job_title` varchar(100) NOT NULL,
  `job_specialization` varchar(255) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `business_stream` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `date_date` date NOT NULL,
  `description` text NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `xp` enum('g','a','b') NOT NULL DEFAULT 'g'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id` int(11) NOT NULL,
  `company_id` varchar(100) NOT NULL,
  `job_type` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `deadline_date` datetime NOT NULL,
  `deadline_mhs` varchar(10) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_description` text NOT NULL,
  `region` varchar(50) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `shortlist_limit` enum('10','20','30','40','50','60','70','80','90','100') NOT NULL,
  `edit_elapsed` enum('0','1') NOT NULL DEFAULT '0',
  `time_elapsed` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id`, `company_id`, `job_type`, `created_date`, `deadline_date`, `deadline_mhs`, `job_title`, `job_description`, `region`, `qualification`, `is_active`, `shortlist_limit`, `edit_elapsed`, `time_elapsed`) VALUES
(17, '3008476a9614994b2538c9faa1b7e808', 'Fulltime', '2023-01-28 09:56:00', '2023-01-28 21:56:00', '12 hours', 'Teacher', 'Hey', 'North Central', 'Diploma degree', '0', '100', '0', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_post_activity`
--

CREATE TABLE `job_post_activity` (
  `id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `job_post_id` int(11) NOT NULL,
  `apply_date` datetime NOT NULL,
  `seeker_profile_strength` int(11) NOT NULL,
  `skill_match` int(11) NOT NULL,
  `degree_match` int(11) NOT NULL,
  `industry_xp` int(11) NOT NULL,
  `seeker_result` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job_post_activity`
--

INSERT INTO `job_post_activity` (`id`, `e_hash`, `job_post_id`, `apply_date`, `seeker_profile_strength`, `skill_match`, `degree_match`, `industry_xp`, `seeker_result`) VALUES
(9, 'aea6d0dbc216826a061c9be3f4590653', 17, '2023-01-28 11:59:09', 4, 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `job_post_skill_set`
--

CREATE TABLE `job_post_skill_set` (
  `id` int(11) NOT NULL,
  `job_post_id` int(11) NOT NULL,
  `skill_set_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job_post_skill_set`
--

INSERT INTO `job_post_skill_set` (`id`, `job_post_id`, `skill_set_name`) VALUES
(17, 17, 'Data (Extraction/Entry/Verification)');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `note_type` enum('a','s','r','o') NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `initiator_hash` varchar(255) NOT NULL,
  `job_post_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `did_read` enum('0','1') NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `note_type`, `e_hash`, `initiator_hash`, `job_post_id`, `note`, `did_read`, `date_time`) VALUES
(287, 'a', 'aea6d0dbc216826a061c9be3f4590653', '', 0, 'Hello Yunus. Thanks for joining e-Recruiter. We hope you get excited when you consider the possibilities of landing your dream job. We can not wait for you to get started. You might want to start by:<br>- Tailoring your Profile <br> Your profile is a virtual representation of your physical CV. Make a good one.', '0', '2023-01-28 11:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `seeker_bookmarks`
--

CREATE TABLE `seeker_bookmarks` (
  `id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `job_id` int(11) NOT NULL,
  `datesaved` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seeker_profile`
--

CREATE TABLE `seeker_profile` (
  `user_account_id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `seeker_bio` text NOT NULL,
  `cv` varchar(255) NOT NULL,
  `profile_strength` int(11) NOT NULL,
  `last_job_apply_date` datetime DEFAULT NULL,
  `last_check_bookmarks` datetime NOT NULL,
  `last_checks_jobs` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `seeker_profile`
--

INSERT INTO `seeker_profile` (`user_account_id`, `e_hash`, `firstname`, `lastname`, `date_of_birth`, `gender`, `seeker_bio`, `cv`, `profile_strength`, `last_job_apply_date`, `last_check_bookmarks`, `last_checks_jobs`) VALUES
(102, 'aea6d0dbc216826a061c9be3f4590653', 'Yunus', 'Aminu', '1995-09-04', 'm', ' ', '', 4, '2023-01-28 11:59:09', '0000-00-00 00:00:00', '2023-01-28 14:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `seeker_skill_set`
--

CREATE TABLE `seeker_skill_set` (
  `id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `skill_set_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `seeker_skill_set`
--

INSERT INTO `seeker_skill_set` (`id`, `e_hash`, `skill_set_name`) VALUES
(1, 'bf63cf876b1809c051ae9154742962db', 'Public Speaking'),
(2, 'bf63cf876b1809c051ae9154742962db', 'Web Application Development'),
(3, 'b61b156cee58711f0acb93ccd52f090d', 'Data (Extraction/Entry/Verification)'),
(4, 'b61b156cee58711f0acb93ccd52f090d', 'Form Development and Processing'),
(5, 'b61b156cee58711f0acb93ccd52f090d', 'Public Speaking'),
(6, 'b61b156cee58711f0acb93ccd52f090d', 'Photo Editing'),
(7, 'b61b156cee58711f0acb93ccd52f090d', 'Web Research'),
(8, 'b61b156cee58711f0acb93ccd52f090d', 'Digital survey development and administration'),
(9, 'b61b156cee58711f0acb93ccd52f090d', 'Digital Marketing & Advertising'),
(10, 'b61b156cee58711f0acb93ccd52f090d', 'Mobile Application Development'),
(11, 'b61b156cee58711f0acb93ccd52f090d', 'Legal Document Review'),
(12, 'b61b156cee58711f0acb93ccd52f090d', 'Business Template Review and Redevelopment'),
(13, 'b61b156cee58711f0acb93ccd52f090d', 'Business Plan development and proof reading'),
(14, 'b61b156cee58711f0acb93ccd52f090d', 'Desk Feasibility Research'),
(15, 'b61b156cee58711f0acb93ccd52f090d', 'Proposal Development'),
(16, 'b61b156cee58711f0acb93ccd52f090d', 'Product Research'),
(17, 'b61b156cee58711f0acb93ccd52f090d', 'Project Research'),
(18, 'b61b156cee58711f0acb93ccd52f090d', 'Market Research'),
(19, 'b61b156cee58711f0acb93ccd52f090d', 'Process Development'),
(20, 'b61b156cee58711f0acb93ccd52f090d', 'Financial Templates'),
(23, 'b61b156cee58711f0acb93ccd52f090d', 'Logo/3D Designs');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `e_hash` varchar(255) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` enum('N','Y') NOT NULL DEFAULT 'N',
  `contact_number` varchar(12) NOT NULL,
  `email_notification_active` enum('N','Y') NOT NULL DEFAULT 'Y',
  `user_image` varchar(255) DEFAULT NULL,
  `avatartemp` varchar(255) DEFAULT NULL,
  `registration_date` datetime NOT NULL,
  `last_login_date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `activated` enum('0','1') NOT NULL DEFAULT '0',
  `last_notes_check` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `e_hash`, `user_type`, `email`, `password`, `is_active`, `contact_number`, `email_notification_active`, `user_image`, `avatartemp`, `registration_date`, `last_login_date`, `ip`, `activated`, `last_notes_check`) VALUES
(102, 'aea6d0dbc216826a061c9be3f4590653', 'seeker', 'yutafida08@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'N', '', 'Y', NULL, NULL, '2023-01-28 11:58:44', '2023-01-28 14:12:27', '1', '1', '2023-01-28 11:58:47'),
(101, '3008476a9614994b2538c9faa1b7e808', 'recruiter', 'admin123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'N', '', 'Y', NULL, NULL, '2023-01-28 11:54:24', '2023-01-28 14:11:58', '1', '1', '2023-01-28 11:54:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`company_account_id`),
  ADD UNIQUE KEY `company_account_id` (`company_account_id`,`e_hash`);

--
-- Indexes for table `education_detail`
--
ALTER TABLE `education_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_detail`
--
ALTER TABLE `experience_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post_activity`
--
ALTER TABLE `job_post_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post_skill_set`
--
ALTER TABLE `job_post_skill_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seeker_bookmarks`
--
ALTER TABLE `seeker_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seeker_profile`
--
ALTER TABLE `seeker_profile`
  ADD PRIMARY KEY (`user_account_id`),
  ADD UNIQUE KEY `user_account_id` (`user_account_id`,`e_hash`);

--
-- Indexes for table `seeker_skill_set`
--
ALTER TABLE `seeker_skill_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`e_hash`,`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education_detail`
--
ALTER TABLE `education_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `experience_detail`
--
ALTER TABLE `experience_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `job_post_activity`
--
ALTER TABLE `job_post_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_post_skill_set`
--
ALTER TABLE `job_post_skill_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `seeker_bookmarks`
--
ALTER TABLE `seeker_bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seeker_skill_set`
--
ALTER TABLE `seeker_skill_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
