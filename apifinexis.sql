-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for finexisdb
CREATE DATABASE IF NOT EXISTS `finexisdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `finexisdb`;

-- Dumping structure for table finexisdb.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.auth_group: ~0 rows (approximately)

-- Dumping structure for table finexisdb.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.auth_group_permissions: ~0 rows (approximately)

-- Dumping structure for table finexisdb.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.auth_permission: ~36 rows (approximately)
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
	(25, 'Can add tb meranti', 7, 'add_tbmeranti'),
	(26, 'Can change tb meranti', 7, 'change_tbmeranti'),
	(27, 'Can delete tb meranti', 7, 'delete_tbmeranti'),
	(28, 'Can view tb meranti', 7, 'view_tbmeranti'),
	(29, 'Can add tb fam', 8, 'add_tbfam'),
	(30, 'Can change tb fam', 8, 'change_tbfam'),
	(31, 'Can delete tb fam', 8, 'delete_tbfam'),
	(32, 'Can view tb fam', 8, 'view_tbfam'),
	(33, 'Can add tb user finexis', 9, 'add_tbuserfinexis'),
	(34, 'Can change tb user finexis', 9, 'change_tbuserfinexis'),
	(35, 'Can delete tb user finexis', 9, 'delete_tbuserfinexis'),
	(36, 'Can view tb user finexis', 9, 'view_tbuserfinexis');

-- Dumping structure for table finexisdb.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.auth_user: ~0 rows (approximately)

-- Dumping structure for table finexisdb.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.auth_user_groups: ~0 rows (approximately)

-- Dumping structure for table finexisdb.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.auth_user_user_permissions: ~0 rows (approximately)

-- Dumping structure for table finexisdb.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.django_admin_log: ~0 rows (approximately)

-- Dumping structure for table finexisdb.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.django_content_type: ~9 rows (approximately)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(8, 'homecontent', 'tbfam'),
	(7, 'homecontent', 'tbmeranti'),
	(9, 'homecontent', 'tbuserfinexis'),
	(6, 'sessions', 'session');

-- Dumping structure for table finexisdb.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.django_migrations: ~24 rows (approximately)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2023-04-14 01:54:16.196456'),
	(2, 'auth', '0001_initial', '2023-04-14 01:54:16.889582'),
	(3, 'admin', '0001_initial', '2023-04-14 01:54:17.075329'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-14 01:54:17.098110'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-14 01:54:17.123201'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-14 01:54:17.205156'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-14 01:54:17.272327'),
	(8, 'auth', '0003_alter_user_email_max_length', '2023-04-14 01:54:17.296710'),
	(9, 'auth', '0004_alter_user_username_opts', '2023-04-14 01:54:17.310869'),
	(10, 'auth', '0005_alter_user_last_login_null', '2023-04-14 01:54:17.366041'),
	(11, 'auth', '0006_require_contenttypes_0002', '2023-04-14 01:54:17.372159'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-14 01:54:17.387979'),
	(13, 'auth', '0008_alter_user_username_max_length', '2023-04-14 01:54:17.417240'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-14 01:54:17.447939'),
	(15, 'auth', '0010_alter_group_name_max_length', '2023-04-14 01:54:17.476500'),
	(16, 'auth', '0011_update_proxy_permissions', '2023-04-14 01:54:17.490438'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-14 01:54:17.521126'),
	(18, 'homecontent', '0001_initial', '2023-04-14 01:54:17.547947'),
	(19, 'homecontent', '0002_tbfam', '2023-04-14 01:54:17.569280'),
	(20, 'homecontent', '0003_tbfam_cl_invest_dest_tbmeranti_cl_invest_desc', '2023-04-14 01:54:17.604049'),
	(21, 'homecontent', '0004_rename_cl_invest_dest_tbfam_cl_invest_desc', '2023-04-14 01:54:17.623321'),
	(22, 'homecontent', '0005_tbuserfinexis', '2023-04-14 01:54:17.647981'),
	(23, 'homecontent', '0006_alter_tbuserfinexis_cl_username', '2023-04-14 01:54:17.679842'),
	(24, 'sessions', '0001_initial', '2023-04-14 01:54:17.724639');

-- Dumping structure for table finexisdb.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.django_session: ~0 rows (approximately)

-- Dumping structure for table finexisdb.homecontent_tbfam
CREATE TABLE IF NOT EXISTS `homecontent_tbfam` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cl_invest_name` varchar(100) NOT NULL,
  `cl_current_price` decimal(12,2) NOT NULL,
  `cl_precentage_stonk` decimal(5,2) NOT NULL,
  `cl_invest_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.homecontent_tbfam: ~2 rows (approximately)
INSERT INTO `homecontent_tbfam` (`id`, `cl_invest_name`, `cl_current_price`, `cl_precentage_stonk`, `cl_invest_desc`) VALUES
	(1, 'FAM Secure Invest', 9.12, 1.43, 'Save your salary for investment'),
	(2, 'FAM Future Invest', 19.20, 3.10, 'Your solution for investment'),
	(3, 'FAM Retirement Invest', 23.10, 5.05, 'Your retirement save');

-- Dumping structure for table finexisdb.homecontent_tbmeranti
CREATE TABLE IF NOT EXISTS `homecontent_tbmeranti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cl_invest_name` varchar(100) NOT NULL,
  `cl_current_price` decimal(12,2) NOT NULL,
  `cl_precentage_stonk` decimal(5,2) NOT NULL,
  `cl_invest_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.homecontent_tbmeranti: ~2 rows (approximately)
INSERT INTO `homecontent_tbmeranti` (`id`, `cl_invest_name`, `cl_current_price`, `cl_precentage_stonk`, `cl_invest_desc`) VALUES
	(1, 'Meranti Secure Inves', 80.30, -5.90, 'You need to save your salary for emergency situation'),
	(2, 'Meranti Future Invest', 50.10, 2.99, 'Secure your salary for your retirement days'),
	(3, 'Meranti Safety Invest', 19.40, 5.91, 'Save your salary ');

-- Dumping structure for table finexisdb.homecontent_tbuserfinexis
CREATE TABLE IF NOT EXISTS `homecontent_tbuserfinexis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cl_username` varchar(100) NOT NULL,
  `cl_password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `homecontent_tbuserfinexis_cl_username_0d2de17d_uniq` (`cl_username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table finexisdb.homecontent_tbuserfinexis: ~2 rows (approximately)
INSERT INTO `homecontent_tbuserfinexis` (`id`, `cl_username`, `cl_password`) VALUES
	(1, 'ini', 'pbkdf2_sha256$390000$yiHo5LNORtnayTI6p1SVro$qm4Lq3MtvSErVuhpycP2DzvdrjFm1MTbt1ph8bSTGpM='),
	(2, 'itu', 'pbkdf2_sha256$390000$3cXlKPdEibsEd360s22Icv$uioQFCQphUj/Odyq2Rqpg8t24QfO5tDJEFMlQvMBMSk=');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
