-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 11:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesda`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL,
  `email_admin` varchar(255) NOT NULL,
  `role` enum('admin') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username_admin`, `password_admin`, `email_admin`, `role`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `uli_number` varchar(100) DEFAULT NULL,
  `entry_date` varchar(30) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `address_number_street` varchar(100) DEFAULT NULL,
  `address_barangay` varchar(50) DEFAULT NULL,
  `address_district` varchar(50) DEFAULT NULL,
  `address_city_municipality` varchar(100) DEFAULT NULL,
  `address_province` varchar(100) DEFAULT NULL,
  `address_region` varchar(100) DEFAULT NULL,
  `email_facebook` varchar(100) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `month_of_birth` varchar(20) DEFAULT NULL,
  `day_of_birth` int(2) DEFAULT NULL,
  `year_of_birth` int(4) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `birthplace_city_municipality` varchar(100) DEFAULT NULL,
  `birthplace_province` varchar(100) DEFAULT NULL,
  `birthplace_region` varchar(100) DEFAULT NULL,
  `educational_attainment` varchar(100) DEFAULT NULL,
  `parent_guardian_name` varchar(100) DEFAULT NULL,
  `parent_guardian_address` varchar(255) DEFAULT NULL,
  `classification` varchar(50) DEFAULT NULL,
  `disability` varchar(50) DEFAULT NULL,
  `cause_of_disability` varchar(50) DEFAULT NULL,
  `taken_ncae` varchar(10) DEFAULT NULL,
  `where_ncae` varchar(100) DEFAULT NULL,
  `when_ncae` varchar(20) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `scholarship` varchar(50) DEFAULT NULL,
  `privacy_disclaimer` text DEFAULT NULL,
  `applicant_signature` varchar(100) DEFAULT NULL,
  `date_accomplished` varchar(20) DEFAULT NULL,
  `registrar_signature` varchar(100) DEFAULT NULL,
  `date_received` varchar(20) DEFAULT NULL,
  `imageUpload` varchar(100) DEFAULT NULL,
  `status` enum('Enroll','Graduate','Drop','Pending') DEFAULT 'Pending',
  `registration_complete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `profile_image`, `uli_number`, `entry_date`, `last_name`, `first_name`, `middle_name`, `address_number_street`, `address_barangay`, `address_district`, `address_city_municipality`, `address_province`, `address_region`, `email_facebook`, `contact_no`, `nationality`, `sex`, `civil_status`, `employment_status`, `month_of_birth`, `day_of_birth`, `year_of_birth`, `age`, `birthplace_city_municipality`, `birthplace_province`, `birthplace_region`, `educational_attainment`, `parent_guardian_name`, `parent_guardian_address`, `classification`, `disability`, `cause_of_disability`, `taken_ncae`, `where_ncae`, `when_ncae`, `qualification`, `scholarship`, `privacy_disclaimer`, `applicant_signature`, `date_accomplished`, `registrar_signature`, `date_received`, `imageUpload`, `status`, `registration_complete`) VALUES
(1, 'abdul', '123', 'abdulpaito21@gmail.com', 'Upload-image/lego.png', '1234', '2024-11-06', 'Paito', 'Abdul Rahman', 'David', 'Street 4', 'San Juan Bano', 'District 4', 'Arayat', 'Pampanga', 'Region 4', 'abdulpaito@gmail.com', '0909124214', 'Korean', 'male', 'single', 'employed', '03', 4, 1927, 97, 'Buensuceso', 'Pampanga', 'Region 13', 'post_secondary_undergraduate', 'Abdul paito', 'abdulpaito@gmail.com', 'Solo Parent\'s Children', 'Orthopedic (Musculoskeletal) Disability', 'Injury', 'No', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'PESFA', 'Agree', 'abdul', 'abdul', 'fdgdfg', 'abdul', 'Upload-image/lego.png', 'Pending', 1),
(2, 'user1', 'password1', 'user1@example.com', 'Upload-image/image1.png', '1001', '2024-11-06', 'LastName1', 'FirstName1', 'MiddleName1', 'Street 1', 'Barangay 1', 'District 1', 'City 1', 'Province 1', 'Region 1', 'user1_fb@example.com', '0909000001', 'Nationality1', 'male', 'single', 'employed', '01', 1, 2000, 24, 'City 1', 'Province 1', 'Region 1', 'college_graduate_or_higher', 'Guardian1', 'Guardian Address 1', 'Classification1', 'Disability1', 'Injury', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship1', 'Agree', 'Signature1', '2024-11-06', 'Registrar1', '2024-11-06', 'Upload-image/image1.png', 'Enroll', 0),
(3, 'user2', 'password2', 'user2@example.com', 'Upload-image/image2.png', '1002', '2024-11-06', 'LastName2', 'FirstName2', 'MiddleName2', 'Street 2', 'Barangay 2', 'District 2', 'City 2', 'Province 2', 'Region 2', 'user2_fb@example.com', '0909000002', 'Nationality2', 'female', 'married', 'unemployed', '02', 2, 1995, 29, 'City 2', 'Province 2', 'Region 2', 'high_school_graduate', 'Guardian2', 'Guardian Address 2', 'Classification2', 'Disability2', 'Illness', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship2', 'Agree', 'Signature2', '2024-11-06', 'Registrar2', '2024-11-06', 'Upload-image/image2.png', 'Enroll', 0),
(4, 'user30', 'password30', 'user30@example.com', 'Upload-image/image30.png', '1030', '2024-11-06', 'LastName30', 'FirstName30', 'MiddleName30', 'Street 30', 'Barangay 30', 'District 30', 'City 30', 'Province 30', 'Region 30', 'user30_fb@example.com', '0909000030', 'Nationality30', 'male', 'widowed', 'self-employed', '12', 30, 1985, 39, 'City 30', 'Province 30', 'Region 30', 'post_secondary_graduate', 'Guardian30', 'Guardian Address 30', 'Classification30', 'Disability30', 'Injury', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship30', 'Agree', 'Signature30', '2024-11-06', 'Registrar30', '2024-11-06', 'Upload-image/image30.png', 'Enroll', 0),
(5, 'user31', 'password31', 'user31@example.com', 'Upload-image/image31.png', '1031', '2024-11-06', 'LastName31', 'FirstName31', 'MiddleName31', 'Street 31', 'Barangay 31', 'District 31', 'City 31', 'Province 31', 'Region 31', 'user31_fb@example.com', '0909000031', 'Nationality31', 'female', 'single', 'employed', '01', 1, 1993, 31, 'City 31', 'Province 31', 'Region 31', 'junior_high_graduate', 'Guardian31', 'Guardian Address 31', 'Classification31', 'Disability31', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship31', 'Agree', 'Signature31', '2024-11-06', 'Registrar31', '2024-11-06', 'Upload-image/image31.png', 'Enroll', 0),
(6, 'user32', 'password32', 'user32@example.com', 'Upload-image/image32.png', '1032', '2024-11-06', 'LastName32', 'FirstName32', 'MiddleName32', 'Street 32', 'Barangay 32', 'District 32', 'City 32', 'Province 32', 'Region 32', 'user32_fb@example.com', '0909000032', 'Nationality32', 'male', 'married', 'unemployed', '02', 2, 1990, 34, 'City 32', 'Province 32', 'Region 32', 'college_undergraduate', 'Guardian32', 'Guardian Address 32', 'Classification32', 'Disability32', 'Illness', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship32', 'Agree', 'Signature32', '2024-11-06', 'Registrar32', '2024-11-06', 'Upload-image/image32.png', 'Enroll', 0),
(7, 'user33', 'password33', 'user33@example.com', 'Upload-image/image33.png', '1033', '2024-11-06', 'LastName33', 'FirstName33', 'MiddleName33', 'Street 33', 'Barangay 33', 'District 33', 'City 33', 'Province 33', 'Region 33', 'user33_fb@example.com', '0909000033', 'Nationality33', 'female', 'single', 'self-employed', '03', 3, 1985, 39, 'City 33', 'Province 33', 'Region 33', 'senior_high_graduate', 'Guardian33', 'Guardian Address 33', 'Classification33', 'Disability33', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship33', 'Agree', 'Signature33', '2024-11-06', 'Registrar33', '2024-11-06', 'Upload-image/image33.png', 'Enroll', 0),
(8, 'user34', 'password34', 'user34@example.com', 'Upload-image/image34.png', '1034', '2024-11-06', 'LastName34', 'FirstName34', 'MiddleName34', 'Street 34', 'Barangay 34', 'District 34', 'City 34', 'Province 34', 'Region 34', 'user34_fb@example.com', '0909000034', 'Nationality34', 'male', 'widowed', 'employed', '04', 4, 1984, 40, 'City 34', 'Province 34', 'Region 34', 'elementary_graduate', 'Guardian34', 'Guardian Address 34', 'Classification34', 'Disability34', 'Injury', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship34', 'Agree', 'Signature34', '2024-11-06', 'Registrar34', '2024-11-06', 'Upload-image/image34.png', 'Enroll', 0),
(9, 'user35', 'password35', 'user35@example.com', 'Upload-image/image35.png', '1035', '2024-11-06', 'LastName35', 'FirstName35', 'MiddleName35', 'Street 35', 'Barangay 35', 'District 35', 'City 35', 'Province 35', 'Region 35', 'user35_fb@example.com', '0909000035', 'Nationality35', 'female', 'married', 'unemployed', '05', 5, 1987, 37, 'City 35', 'Province 35', 'Region 35', 'elementary_undergraduate', 'Guardian35', 'Guardian Address 35', 'Classification35', 'Disability35', 'Illness', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship35', 'Agree', 'Signature35', '2024-11-06', 'Registrar35', '2024-11-06', 'Upload-image/image35.png', 'Enroll', 0),
(10, 'user36', 'password36', 'user36@example.com', 'Upload-image/image36.png', '1036', '2024-11-06', 'LastName36', 'FirstName36', 'MiddleName36', 'Street 36', 'Barangay 36', 'District 36', 'City 36', 'Province 36', 'Region 36', 'user36_fb@example.com', '0909000036', 'Nationality36', 'male', 'single', 'self-employed', '06', 6, 1986, 38, 'City 36', 'Province 36', 'Region 36', 'post_secondary_graduate', 'Guardian36', 'Guardian Address 36', 'Classification36', 'Disability36', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship36', 'Agree', 'Signature36', '2024-11-06', 'Registrar36', '2024-11-06', 'Upload-image/image36.png', 'Enroll', 0),
(11, 'user37', 'password37', 'user37@example.com', 'Upload-image/image37.png', '1037', '2024-11-06', 'LastName37', 'FirstName37', 'MiddleName37', 'Street 37', 'Barangay 37', 'District 37', 'City 37', 'Province 37', 'Region 37', 'user37_fb@example.com', '0909000037', 'Nationality37', 'female', 'married', 'unemployed', '07', 7, 1989, 35, 'City 37', 'Province 37', 'Region 37', 'college_graduate_or_higher', 'Guardian37', 'Guardian Address 37', 'Classification37', 'Disability37', 'Illness', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship37', 'Agree', 'Signature37', '2024-11-06', 'Registrar37', '2024-11-06', 'Upload-image/image37.png', 'Enroll', 0),
(12, 'user50', 'password50', 'user50@example.com', 'Upload-image/image50.png', '1050', '2024-11-06', 'LastName50', 'FirstName50', 'MiddleName50', 'Street 50', 'Barangay 50', 'District 50', 'City 50', 'Province 50', 'Region 50', 'user50_fb@example.com', '0909000050', 'Nationality50', 'male', 'single', 'employed', '10', 10, 1991, 33, 'City 50', 'Province 50', 'Region 50', 'high_school_graduate', 'Guardian50', 'Guardian Address 50', 'Classification50', 'Disability50', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship50', 'Agree', 'Signature50', '2024-11-06', 'Registrar50', '2024-11-06', 'Upload-image/image50.png', 'Enroll', 0),
(13, 'user51', 'password51', 'user51@example.com', 'Upload-image/image51.png', '1051', '2024-11-06', 'LastName51', 'FirstName51', 'MiddleName51', 'Street 51', 'Barangay 51', 'District 51', 'City 51', 'Province 51', 'Region 51', 'user51_fb@example.com', '0909000051', 'Nationality51', 'female', 'married', 'unemployed', '11', 11, 1983, 41, 'City 51', 'Province 51', 'Region 51', 'junior_high_graduate', 'Guardian51', 'Guardian Address 51', 'Classification51', 'Disability51', 'Injury', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship51', 'Agree', 'Signature51', '2024-11-06', 'Registrar51', '2024-11-06', 'Upload-image/image51.png', 'Enroll', 0),
(14, 'user52', 'password52', 'user52@example.com', 'Upload-image/image52.png', '1052', '2024-11-06', 'LastName52', 'FirstName52', 'MiddleName52', 'Street 52', 'Barangay 52', 'District 52', 'City 52', 'Province 52', 'Region 52', 'user52_fb@example.com', '0909000052', 'Nationality52', 'male', 'single', 'self-employed', '12', 12, 1984, 40, 'City 52', 'Province 52', 'Region 52', 'senior_high_graduate', 'Guardian52', 'Guardian Address 52', 'Classification52', 'Disability52', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship52', 'Agree', 'Signature52', '2024-11-06', 'Registrar52', '2024-11-06', 'Upload-image/image52.png', 'Enroll', 0),
(15, 'user53', 'password53', 'user53@example.com', 'Upload-image/image53.png', '1053', '2024-11-06', 'LastName53', 'FirstName53', 'MiddleName53', 'Street 53', 'Barangay 53', 'District 53', 'City 53', 'Province 53', 'Region 53', 'user53_fb@example.com', '0909000053', 'Nationality53', 'female', 'widowed', 'employed', '01', 13, 1980, 44, 'City 53', 'Province 53', 'Region 53', 'elementary_graduate', 'Guardian53', 'Guardian Address 53', 'Classification53', 'Disability53', 'Illness', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship53', 'Agree', 'Signature53', '2024-11-06', 'Registrar53', '2024-11-06', 'Upload-image/image53.png', 'Enroll', 0),
(16, 'user54', 'password54', 'user54@example.com', 'Upload-image/image54.png', '1054', '2024-11-06', 'LastName54', 'FirstName54', 'MiddleName54', 'Street 54', 'Barangay 54', 'District 54', 'City 54', 'Province 54', 'Region 54', 'user54_fb@example.com', '0909000054', 'Nationality54', 'male', 'married', 'self-employed', '02', 14, 1979, 45, 'City 54', 'Province 54', 'Region 54', 'post_secondary_graduate', 'Guardian54', 'Guardian Address 54', 'Classification54', 'Disability54', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship54', 'Agree', 'Signature54', '2024-11-06', 'Registrar54', '2024-11-06', 'Upload-image/image54.png', 'Enroll', 0),
(17, 'user55', 'password55', 'user55@example.com', 'Upload-image/image55.png', '1055', '2024-11-06', 'LastName55', 'FirstName55', 'MiddleName55', 'Street 55', 'Barangay 55', 'District 55', 'City 55', 'Province 55', 'Region 55', 'user55_fb@example.com', '0909000055', 'Nationality55', 'female', 'single', 'unemployed', '03', 15, 1982, 42, 'City 55', 'Province 55', 'Region 55', 'college_graduate_or_higher', 'Guardian55', 'Guardian Address 55', 'Classification55', 'Disability55', 'Injury', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship55', 'Agree', 'Signature55', '2024-11-06', 'Registrar55', '2024-11-06', 'Upload-image/image55.png', 'Enroll', 0),
(18, 'user56', 'password56', 'user56@example.com', 'Upload-image/image56.png', '1056', '2024-11-06', 'LastName56', 'FirstName56', 'MiddleName56', 'Street 56', 'Barangay 56', 'District 56', 'City 56', 'Province 56', 'Region 56', 'user56_fb@example.com', '0909000056', 'Nationality56', 'male', 'married', 'employed', '04', 16, 1981, 43, 'City 56', 'Province 56', 'Region 56', 'elementary_undergraduate', 'Guardian56', 'Guardian Address 56', 'Classification56', 'Disability56', 'Illness', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship56', 'Agree', 'Signature56', '2024-11-06', 'Registrar56', '2024-11-06', 'Upload-image/image56.png', 'Enroll', 0),
(19, 'user57', 'password57', 'user57@example.com', 'Upload-image/image57.png', '1057', '2024-11-06', 'LastName57', 'FirstName57', 'MiddleName57', 'Street 57', 'Barangay 57', 'District 57', 'City 57', 'Province 57', 'Region 57', 'user57_fb@example.com', '0909000057', 'Nationality57', 'female', 'widowed', 'self-employed', '05', 17, 1978, 46, 'City 57', 'Province 57', 'Region 57', 'high_school_graduate', 'Guardian57', 'Guardian Address 57', 'Classification57', 'Disability57', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship57', 'Agree', 'Signature57', '2024-11-06', 'Registrar57', '2024-11-06', 'Upload-image/image57.png', 'Enroll', 0),
(20, 'user58', 'password58', 'user58@example.com', 'Upload-image/image58.png', '1058', '2024-11-06', 'LastName58', 'FirstName58', 'MiddleName58', 'Street 58', 'Barangay 58', 'District 58', 'City 58', 'Province 58', 'Region 58', 'user58_fb@example.com', '0909000058', 'Nationality58', 'male', 'single', 'employed', '06', 18, 1987, 37, 'City 58', 'Province 58', 'Region 58', 'elementary_graduate', 'Guardian58', 'Guardian Address 58', 'Classification58', 'Disability58', 'Injury', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship58', 'Agree', 'Signature58', '2024-11-06', 'Registrar58', '2024-11-06', 'Upload-image/image58.png', 'Enroll', 0),
(21, 'user59', 'password59', 'user59@example.com', 'Upload-image/image59.png', '1059', '2024-11-06', 'LastName59', 'FirstName59', 'MiddleName59', 'Street 59', 'Barangay 59', 'District 59', 'City 59', 'Province 59', 'Region 59', 'user59_fb@example.com', '0909000059', 'Nationality59', 'female', 'married', 'unemployed', '07', 19, 1975, 49, 'City 59', 'Province 59', 'Region 59', 'college_undergraduate', 'Guardian59', 'Guardian Address 59', 'Classification59', 'Disability59', 'Illness', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship59', 'Agree', 'Signature59', '2024-11-06', 'Registrar59', '2024-11-06', 'Upload-image/image59.png', 'Enroll', 0),
(22, 'user60', 'password60', 'user60@example.com', 'Upload-image/image60.png', '1060', '2024-11-06', 'LastName60', 'FirstName60', 'MiddleName60', 'Street 60', 'Barangay 60', 'District 60', 'City 60', 'Province 60', 'Region 60', 'user60_fb@example.com', '0909000060', 'Nationality60', 'male', 'single', 'self-employed', '08', 20, 1988, 36, 'City 60', 'Province 60', 'Region 60', 'college_graduate_or_higher', 'Guardian60', 'Guardian Address 60', 'Classification60', 'Disability60', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship60', 'Agree', 'Signature60', '2024-11-06', 'Registrar60', '2024-11-06', 'Upload-image/image60.png', 'Enroll', 0),
(23, 'user61', 'password61', 'user61@example.com', 'Upload-image/image61.png', '1061', '2024-11-06', 'LastName61', 'FirstName61', 'MiddleName61', 'Street 61', 'Barangay 61', 'District 61', 'City 61', 'Province 61', 'Region 61', 'user61_fb@example.com', '0909000061', 'Nationality61', 'female', 'married', 'unemployed', '09', 21, 1985, 39, 'City 61', 'Province 61', 'Region 61', 'junior_high_graduate', 'Guardian61', 'Guardian Address 61', 'Classification61', 'Disability61', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship61', 'Agree', 'Signature61', '2024-11-06', 'Registrar61', '2024-11-06', 'Upload-image/image61.png', 'Pending', 0),
(24, 'user62', 'password62', 'user62@example.com', 'Upload-image/image62.png', '1062', '2024-11-06', 'LastName62', 'FirstName62', 'MiddleName62', 'Street 62', 'Barangay 62', 'District 62', 'City 62', 'Province 62', 'Region 62', 'user62_fb@example.com', '0909000062', 'Nationality62', 'male', 'single', 'self-employed', '10', 22, 1986, 38, 'City 62', 'Province 62', 'Region 62', 'senior_high_graduate', 'Guardian62', 'Guardian Address 62', 'Classification62', 'Disability62', 'Injury', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship62', 'Agree', 'Signature62', '2024-11-06', 'Registrar62', '2024-11-06', 'Upload-image/image62.png', 'Enroll', 0),
(25, 'user63', 'password63', 'user63@example.com', 'Upload-image/image63.png', '1063', '2024-11-06', 'LastName63', 'FirstName63', 'MiddleName63', 'Street 63', 'Barangay 63', 'District 63', 'City 63', 'Province 63', 'Region 63', 'user63_fb@example.com', '0909000063', 'Nationality63', 'female', 'widowed', 'employed', '11', 23, 1977, 47, 'City 63', 'Province 63', 'Region 63', 'high_school_graduate', 'Guardian63', 'Guardian Address 63', 'Classification63', 'Disability63', 'Illness', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship63', 'Agree', 'Signature63', '2024-11-06', 'Registrar63', '2024-11-06', 'Upload-image/image63.png', 'Enroll', 0),
(26, 'user64', 'password64', 'user64@example.com', 'Upload-image/image64.png', '1064', '2024-11-06', 'LastName64', 'FirstName64', 'MiddleName64', 'Street 64', 'Barangay 64', 'District 64', 'City 64', 'Province 64', 'Region 64', 'user64_fb@example.com', '0909000064', 'Nationality64', 'male', 'single', 'self-employed', '12', 24, 1990, 34, 'City 64', 'Province 64', 'Region 64', 'college_graduate_or_higher', 'Guardian64', 'Guardian Address 64', 'Classification64', 'Disability64', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship64', 'Agree', 'Signature64', '2024-11-06', 'Registrar64', '2024-11-06', 'Upload-image/image64.png', 'Enroll', 0),
(27, 'user65', 'password65', 'user65@example.com', 'Upload-image/image65.png', '1065', '2024-11-06', 'LastName65', 'FirstName65', 'MiddleName65', 'Street 65', 'Barangay 65', 'District 65', 'City 65', 'Province 65', 'Region 65', 'user65_fb@example.com', '0909000065', 'Nationality65', 'female', 'married', 'unemployed', '01', 25, 1984, 40, 'City 65', 'Province 65', 'Region 65', 'post_secondary_undergraduate', 'Guardian65', 'Guardian Address 65', 'Classification65', 'Disability65', 'Injury', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship65', 'Agree', 'Signature65', '2024-11-06', 'Registrar65', '2024-11-06', 'Upload-image/image65.png', 'Enroll', 0),
(28, 'user66', 'password66', 'user66@example.com', 'Upload-image/image66.png', '1066', '2024-11-06', 'LastName66', 'FirstName66', 'MiddleName66', 'Street 66', 'Barangay 66', 'District 66', 'City 66', 'Province 66', 'Region 66', 'user66_fb@example.com', '0909000066', 'Nationality66', 'male', 'single', 'employed', '02', 26, 1976, 48, 'City 66', 'Province 66', 'Region 66', 'elementary_undergraduate', 'Guardian66', 'Guardian Address 66', 'Classification66', 'Disability66', 'Illness', 'Yes', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship66', 'Agree', 'Signature66', '2024-11-06', 'Registrar66', '2024-11-06', 'Upload-image/image66.png', 'Enroll', 0),
(29, 'user67', 'password67', 'user67@example.com', 'Upload-image/image67.png', '1067', '2024-11-06', 'LastName67', 'FirstName67', 'MiddleName67', 'Street 67', 'Barangay 67', 'District 67', 'City 67', 'Province 67', 'Region 67', 'user67_fb@example.com', '0909000067', 'Nationality67', 'female', 'widowed', 'self-employed', '03', 27, 1974, 50, 'City 67', 'Province 67', 'Region 67', 'college_undergraduate', 'Guardian67', 'Guardian Address 67', 'Classification67', 'Disability67', 'None', 'No', 'n/a', 'n/a', 'Cookery NC II', 'Scholarship67', 'Agree', 'Signature67', '2024-11-06', 'Registrar67', '2024-11-06', 'Upload-image/image67.png', 'Enroll', 0),
(30, 'user68', 'password68', 'user68@example.com', 'Upload-image/image68.png', '1068', '2024-11-06', 'LastName68', 'FirstName68', 'MiddleName68', 'Street 68', 'Barangay 68', 'District 68', 'City 68', 'Province 68', 'Region 68', 'user68_fb@example.com', '0909000068', 'Nationality68', 'male', 'single', 'employed', '04', 28, 1992, 32, 'City 68', 'Province 68', 'Region 68', 'elementary_graduate', 'Guardian68', 'Guardian Address 68', 'Classification68', 'Disability68', 'None', 'No', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'Scholarship68', 'Agree', 'Signature68', '2024-11-06', 'Registrar68', '2024-11-06', 'Upload-image/image68.png', 'Enroll', 0),
(31, 'user69', 'password69', 'user69@example.com', 'Upload-image/image69.png', '1069', '2024-11-06', 'LastName69', 'FirstName69', 'MiddleName69', 'Street 69', 'Barangay 69', 'District 69', 'City 69', 'Province 69', 'Region 69', 'user69_fb@example.com', '0909000069', 'Nationality69', 'female', 'married', 'unemployed', '05', 29, 1993, 31, 'City 69', 'Province 69', 'Region 69', 'post_secondary_graduate', 'Guardian69', 'Guardian Address 69', 'Classification69', 'Disability69', 'Illness', 'Yes', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'Scholarship69', 'Agree', 'Signature69', '2024-11-06', 'Registrar69', '2024-11-06', 'Upload-image/image69.png', 'Enroll', 0),
(32, 'user70', 'password70', 'user70@example.com', 'Upload-image/image70.png', '1070', '2024-11-06', 'LastName70', 'FirstName70', 'MiddleName70', 'Street 70', 'Barangay 70', 'District 70', 'City 70', 'Province 70', 'Region 70', 'user70_fb@example.com', '0909000070', 'Nationality70', 'male', 'single', 'self-employed', '06', 30, 1988, 36, 'City 70', 'Province 70', 'Region 70', 'college_graduate_or_higher', 'Guardian70', 'Guardian Address 70', 'Classification70', 'Disability70', 'Injury', 'No', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'Scholarship70', 'Agree', 'Signature70', '2024-11-06', 'Registrar70', '2024-11-06', 'Upload-image/image70.png', 'Enroll', 0),
(33, 'user71', 'password71', 'user71@example.com', 'Upload-image/image71.png', '1071', '2024-11-06', 'LastName71', 'FirstName71', 'MiddleName71', 'Street 71', 'Barangay 71', 'District 71', 'City 71', 'Province 71', 'Region 71', 'user71_fb@example.com', '0909000071', 'Nationality71', 'female', 'widowed', 'employed', '07', 31, 1979, 45, 'City 71', 'Province 71', 'Region 71', 'junior_high_graduate', 'Guardian71', 'Guardian Address 71', 'Classification71', 'Disability71', 'None', 'No', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'Scholarship71', 'Agree', 'Signature71', '2024-11-06', 'Registrar71', '2024-11-06', 'Upload-image/image71.png', 'Enroll', 0),
(34, 'user72', 'password72', 'user72@example.com', 'Upload-image/image72.png', '1072', '2024-11-06', 'LastName72', 'FirstName72', 'MiddleName72', 'Street 72', 'Barangay 72', 'District 72', 'City 72', 'Province 72', 'Region 72', 'user72_fb@example.com', '0909000072', 'Nationality72', 'male', 'single', 'self-employed', '08', 1, 1982, 42, 'City 72', 'Province 72', 'Region 72', 'senior_high_graduate', 'Guardian72', 'Guardian Address 72', 'Classification72', 'Disability72', 'Illness', 'No', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'Scholarship72', 'Agree', 'Signature72', '2024-11-06', 'Registrar72', '2024-11-06', 'Upload-image/image72.png', 'Enroll', 0),
(35, 'user73', 'password73', 'user73@example.com', 'Upload-image/image73.png', '1073', '2024-11-06', 'LastName73', 'FirstName73', 'MiddleName73', 'Street 73', 'Barangay 73', 'District 73', 'City 73', 'Province 73', 'Region 73', 'user73_fb@example.com', '0909000073', 'Nationality73', 'female', 'married', 'unemployed', '09', 2, 1987, 37, 'City 73', 'Province 73', 'Region 73', 'high_school_graduate', 'Guardian73', 'Guardian Address 73', 'Classification73', 'Disability73', 'None', 'Yes', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'Scholarship73', 'Agree', 'Signature73', '2024-11-06', 'Registrar73', '2024-11-06', 'Upload-image/image73.png', 'Enroll', 0),
(36, 'user74', 'password74', 'user74@example.com', 'Upload-image/image74.png', '1074', '2024-11-06', 'LastName74', 'FirstName74', 'MiddleName74', 'Street 74', 'Barangay 74', 'District 74', 'City 74', 'Province 74', 'Region 74', 'user74_fb@example.com', '0909000074', 'Nationality74', 'male', 'single', 'employed', '10', 3, 1990, 34, 'City 74', 'Province 74', 'Region 74', 'post_secondary_undergraduate', 'Guardian74', 'Guardian Address 74', 'Classification74', 'Disability74', 'Illness', 'No', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'Scholarship74', 'Agree', 'Signature74', '2024-11-06', 'Registrar74', '2024-11-06', 'Upload-image/image74.png', 'Enroll', 0),
(37, 'user75', 'password75', 'user75@example.com', 'Upload-image/image75.png', '1075', '2024-11-06', 'LastName75', 'FirstName75', 'MiddleName75', 'Street 75', 'Barangay 75', 'District 75', 'City 75', 'Province 75', 'Region 75', 'user75_fb@example.com', '0909000075', 'Nationality75', 'female', 'widowed', 'self-employed', '11', 4, 1984, 40, 'City 75', 'Province 75', 'Region 75', 'college_undergraduate', 'Guardian75', 'Guardian Address 75', 'Classification75', 'Disability75', 'None', 'Yes', 'n/a', 'n/a', 'Food and Beverage Service NC II', 'Scholarship75', 'Agree', 'Signature75', '2024-11-06', 'Registrar75', '2024-11-06', 'Upload-image/image75.png', 'Enroll', 0),
(38, 'user76', 'password76', 'user76@example.com', 'Upload-image/image76.png', '1076', '2024-11-06', 'LastName76', 'FirstName76', 'MiddleName76', 'Street 76', 'Barangay 76', 'District 76', 'City 76', 'Province 76', 'Region 76', 'user76_fb@example.com', '0909000076', 'Nationality76', 'male', 'single', 'employed', '12', 10, 1990, 34, 'City 76', 'Province 76', 'Region 76', 'college_graduate_or_higher', 'Guardian76', 'Guardian Address 76', 'Classification76', 'Disability76', 'None', 'No', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship76', 'Agree', 'Signature76', '2024-11-06', 'Registrar76', '2024-11-06', 'Upload-image/image76.png', 'Enroll', 0),
(39, 'user77', 'password77', 'user77@example.com', 'Upload-image/image77.png', '1077', '2024-11-06', 'LastName77', 'FirstName77', 'MiddleName77', 'Street 77', 'Barangay 77', 'District 77', 'City 77', 'Province 77', 'Region 77', 'user77_fb@example.com', '0909000077', 'Nationality77', 'female', 'married', 'unemployed', '01', 15, 1985, 39, 'City 77', 'Province 77', 'Region 77', 'high_school_graduate', 'Guardian77', 'Guardian Address 77', 'Classification77', 'Disability77', 'Illness', 'Yes', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship77', 'Agree', 'Signature77', '2024-11-06', 'Registrar77', '2024-11-06', 'Upload-image/image77.png', 'Enroll', 0),
(40, 'user78', 'password78', 'user78@example.com', 'Upload-image/image78.png', '1078', '2024-11-06', 'LastName78', 'FirstName78', 'MiddleName78', 'Street 78', 'Barangay 78', 'District 78', 'City 78', 'Province 78', 'Region 78', 'user78_fb@example.com', '0909000078', 'Nationality78', 'male', 'single', 'self-employed', '02', 20, 1992, 32, 'City 78', 'Province 78', 'Region 78', 'junior_high_graduate', 'Guardian78', 'Guardian Address 78', 'Classification78', 'Disability78', 'None', 'No', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship78', 'Agree', 'Signature78', '2024-11-06', 'Registrar78', '2024-11-06', 'Upload-image/image78.png', 'Enroll', 0),
(41, 'user79', 'password79', 'user79@example.com', 'Upload-image/image79.png', '1079', '2024-11-06', 'LastName79', 'FirstName79', 'MiddleName79', 'Street 79', 'Barangay 79', 'District 79', 'City 79', 'Province 79', 'Region 79', 'user79_fb@example.com', '0909000079', 'Nationality79', 'female', 'widowed', 'employed', '03', 25, 1988, 36, 'City 79', 'Province 79', 'Region 79', 'post_secondary_undergraduate', 'Guardian79', 'Guardian Address 79', 'Classification79', 'Disability79', 'Illness', 'Yes', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship79', 'Agree', 'Signature79', '2024-11-06', 'Registrar79', '2024-11-06', 'Upload-image/image79.png', 'Enroll', 0),
(42, 'user80', 'password80', 'user80@example.com', 'Upload-image/image80.png', '1080', '2024-11-06', 'LastName80', 'FirstName80', 'MiddleName80', 'Street 80', 'Barangay 80', 'District 80', 'City 80', 'Province 80', 'Region 80', 'user80_fb@example.com', '0909000080', 'Nationality80', 'male', 'single', 'self-employed', '04', 12, 1993, 31, 'City 80', 'Province 80', 'Region 80', 'college_undergraduate', 'Guardian80', 'Guardian Address 80', 'Classification80', 'Disability80', 'None', 'No', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship80', 'Agree', 'Signature80', '2024-11-06', 'Registrar80', '2024-11-06', 'Upload-image/image80.png', 'Enroll', 0),
(43, 'user81', 'password81', 'user81@example.com', 'Upload-image/image81.png', '1081', '2024-11-06', 'LastName81', 'FirstName81', 'MiddleName81', 'Street 81', 'Barangay 81', 'District 81', 'City 81', 'Province 81', 'Region 81', 'user81_fb@example.com', '0909000081', 'Nationality81', 'female', 'married', 'unemployed', '05', 18, 1990, 34, 'City 81', 'Province 81', 'Region 81', 'elementary_graduate', 'Guardian81', 'Guardian Address 81', 'Classification81', 'Disability81', 'None', 'Yes', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship81', 'Agree', 'Signature81', '2024-11-06', 'Registrar81', '2024-11-06', 'Upload-image/image81.png', 'Enroll', 0),
(44, 'user82', 'password82', 'user82@example.com', 'Upload-image/image82.png', '1082', '2024-11-06', 'LastName82', 'FirstName82', 'MiddleName82', 'Street 82', 'Barangay 82', 'District 82', 'City 82', 'Province 82', 'Region 82', 'user82_fb@example.com', '0909000082', 'Nationality82', 'male', 'single', 'self-employed', '06', 30, 1991, 33, 'City 82', 'Province 82', 'Region 82', 'high_school_graduate', 'Guardian82', 'Guardian Address 82', 'Classification82', 'Disability82', 'Illness', 'Yes', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship82', 'Agree', 'Signature82', '2024-11-06', 'Registrar82', '2024-11-06', 'Upload-image/image82.png', 'Enroll', 0),
(45, 'user83', 'password83', 'user83@example.com', 'Upload-image/image83.png', '1083', '2024-11-06', 'LastName83', 'FirstName83', 'MiddleName83', 'Street 83', 'Barangay 83', 'District 83', 'City 83', 'Province 83', 'Region 83', 'user83_fb@example.com', '0909000083', 'Nationality83', 'female', 'widowed', 'employed', '07', 20, 1989, 35, 'City 83', 'Province 83', 'Region 83', 'junior_high_graduate', 'Guardian83', 'Guardian Address 83', 'Classification83', 'Disability83', 'Illness', 'Yes', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship83', 'Agree', 'Signature83', '2024-11-06', 'Registrar83', '2024-11-06', 'Upload-image/image83.png', 'Enroll', 0),
(46, 'user84', 'password84', 'user84@example.com', 'Upload-image/image84.png', '1084', '2024-11-06', 'LastName84', 'FirstName84', 'MiddleName84', 'Street 84', 'Barangay 84', 'District 84', 'City 84', 'Province 84', 'Region 84', 'user84_fb@example.com', '0909000084', 'Nationality84', 'male', 'single', 'self-employed', '08', 22, 1992, 32, 'City 84', 'Province 84', 'Region 84', 'college_graduate_or_higher', 'Guardian84', 'Guardian Address 84', 'Classification84', 'Disability84', 'None', 'No', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship84', 'Agree', 'Signature84', '2024-11-06', 'Registrar84', '2024-11-06', 'Upload-image/image84.png', 'Enroll', 0),
(47, 'user85', 'password85', 'user85@example.com', 'Upload-image/image85.png', '1085', '2024-11-06', 'LastName85', 'FirstName85', 'MiddleName85', 'Street 85', 'Barangay 85', 'District 85', 'City 85', 'Province 85', 'Region 85', 'user85_fb@example.com', '0909000085', 'Nationality85', 'female', 'married', 'unemployed', '09', 28, 1987, 37, 'City 85', 'Province 85', 'Region 85', 'high_school_undergraduate', 'Guardian85', 'Guardian Address 85', 'Classification85', 'Disability85', 'Illness', 'Yes', 'n/a', 'n/a', 'Front Office Service NC II', 'Scholarship85', 'Agree', 'Signature85', '2024-11-06', 'Registrar85', '2024-11-06', 'Upload-image/image85.png', 'Enroll', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_admin` (`username_admin`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
