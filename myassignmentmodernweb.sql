-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 07:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myassignmentmodernweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add genre', 7, 'add_genre'),
(26, 'Can change genre', 7, 'change_genre'),
(27, 'Can delete genre', 7, 'delete_genre'),
(28, 'Can view genre', 7, 'view_genre'),
(29, 'Can add request', 8, 'add_request'),
(30, 'Can change request', 8, 'change_request'),
(31, 'Can delete request', 8, 'delete_request'),
(32, 'Can view request', 8, 'view_request'),
(33, 'Can add requeste', 8, 'add_requeste'),
(34, 'Can change requeste', 8, 'change_requeste'),
(35, 'Can delete requeste', 8, 'delete_requeste'),
(36, 'Can view requeste', 8, 'view_requeste');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$pEuPqouui6tn$nYwPR/KokDmOleG22O+OJLf+mVkF8LlOpaUz7/5rdjE=', '2020-02-14 07:08:57.791970', 1, 'admin', '', '', 'lebitmagar@gmail.com', 1, 1, '2020-02-04 07:01:20.825407'),
(3, 'pbkdf2_sha256$180000$hiDwLwT47jH3$Sw9OV8EBnfsjbSAFlDNPkfN1wQ1+4PasjNeMPbjfphs=', '2020-02-08 06:27:23.675680', 0, 'lebit_magar007', 'lebit', 'magar', 'lebitmagar@gmail.com', 0, 1, '2020-02-05 05:32:32.661151'),
(4, 'pbkdf2_sha256$180000$4jVGy1cll5Cu$dBECnbEfSm12EkZTGRudo9kFNQybG3TZr17rWuABeGU=', '2020-02-06 03:19:51.978930', 1, 'lebit', '', '', 'lebit@gmail.com', 1, 1, '2020-02-06 03:05:47.122162');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-06 03:43:16.952984', '1', 'Genre object (1)', 1, '[{\"added\": {}}]', 7, 4),
(2, '2020-02-06 03:44:50.211787', '2', 'Genre object (2)', 1, '[{\"added\": {}}]', 7, 4),
(3, '2020-02-06 05:42:29.197509', '3', 'Genre object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-02-06 05:43:03.219287', '4', 'Genre object (4)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-02-06 05:43:19.951100', '5', 'Genre object (5)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-02-06 05:44:30.448227', '6', 'Genre object (6)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-02-06 05:45:00.355005', '7', 'Genre object (7)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-02-10 05:03:17.375451', '8', 'Genre object (8)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-02-10 05:03:37.190173', '9', 'Genre object (9)', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-02-10 05:04:01.709967', '10', 'Genre object (10)', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-02-10 05:04:17.934257', '11', 'Genre object (11)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-02-10 05:07:25.882224', '12', 'Genre object (12)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2020-02-10 05:07:59.112190', '13', 'Genre object (13)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2020-02-11 03:24:58.860541', '14', 'Genre object (14)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2020-02-11 03:36:50.970313', '15', 'Genre object (15)', 1, '[{\"added\": {}}]', 7, 1),
(16, '2020-02-11 07:48:27.982587', '16', 'Genre object (16)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'server', 'genre'),
(8, 'server', 'requeste'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-04 06:59:24.264053'),
(2, 'auth', '0001_initial', '2020-02-04 06:59:24.533541'),
(3, 'admin', '0001_initial', '2020-02-04 06:59:25.069958'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-04 06:59:25.184595'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-04 06:59:25.216345'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-04 06:59:25.300446'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-04 06:59:25.370281'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-04 06:59:25.397880'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-04 06:59:25.408216'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-04 06:59:25.476821'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-04 06:59:25.482707'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-04 06:59:25.487677'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-04 06:59:25.516946'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-04 06:59:25.545997'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-04 06:59:25.568777'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-04 06:59:25.589517'),
(17, 'sessions', '0001_initial', '2020-02-04 06:59:25.621835'),
(18, 'server', '0001_initial', '2020-02-06 03:17:15.032829'),
(19, 'server', '0002_request', '2020-02-06 07:07:51.092330'),
(20, 'server', '0003_auto_20200206_1308', '2020-02-06 07:23:26.586634');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `server_genre`
--

CREATE TABLE `server_genre` (
  `id` int(11) NOT NULL,
  `Anime_trending` varchar(100) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_genre`
--

INSERT INTO `server_genre` (`id`, `Anime_trending`, `Genre`, `Rating`) VALUES
(15, 'One Piece', 'Adventure', 3),
(16, 'Naruto', 'Action', 3);

-- --------------------------------------------------------

--
-- Table structure for table `server_requeste`
--

CREATE TABLE `server_requeste` (
  `id` int(11) NOT NULL,
  `anime_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_requeste`
--

INSERT INTO `server_requeste` (`id`, `anime_name`, `username`) VALUES
(7, 'Dororo', 'lebit_magar007'),
(8, 'Your Name', 'lrbit_magar007');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `server_genre`
--
ALTER TABLE `server_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_requeste`
--
ALTER TABLE `server_requeste`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `server_genre`
--
ALTER TABLE `server_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `server_requeste`
--
ALTER TABLE `server_requeste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
