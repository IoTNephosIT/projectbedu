-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-09-2019 a las 04:28:03
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iotsensor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_permission`
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
(25, 'Can add profile', 7, 'add_profile'),
(26, 'Can change profile', 7, 'change_profile'),
(27, 'Can delete profile', 7, 'delete_profile'),
(28, 'Can view profile', 7, 'view_profile'),
(29, 'Can add menu', 8, 'add_menu'),
(30, 'Can change menu', 8, 'change_menu'),
(31, 'Can delete menu', 8, 'delete_menu'),
(32, 'Can view menu', 8, 'view_menu'),
(33, 'Can add menu', 9, 'add_menu'),
(34, 'Can change menu', 9, 'change_menu'),
(35, 'Can delete menu', 9, 'delete_menu'),
(36, 'Can view menu', 9, 'view_menu'),
(37, 'Can add device', 10, 'add_device'),
(38, 'Can change device', 10, 'change_device'),
(39, 'Can delete device', 10, 'delete_device'),
(40, 'Can view device', 10, 'view_device'),
(41, 'Can add usuario', 11, 'add_usuario'),
(42, 'Can change usuario', 11, 'change_usuario'),
(43, 'Can delete usuario', 11, 'delete_usuario'),
(44, 'Can view usuario', 11, 'view_usuario'),
(45, 'Can add usuario permisos', 12, 'add_usuariopermisos'),
(46, 'Can change usuario permisos', 12, 'change_usuariopermisos'),
(47, 'Can delete usuario permisos', 12, 'delete_usuariopermisos'),
(48, 'Can view usuario permisos', 12, 'view_usuariopermisos'),
(49, 'Can add module', 13, 'add_module'),
(50, 'Can change module', 13, 'change_module'),
(51, 'Can delete module', 13, 'delete_module'),
(52, 'Can view module', 13, 'view_module'),
(53, 'administracion', 7, 'pueden_ver_administracion'),
(54, 'dispositivos', 7, 'pueden_ver_dispositivos'),
(55, 'reportes', 7, 'pueden_ver_reportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$eOYpjsVHEkWh$2mw7FO6rZbYCGbz1LYov7QAUuim1qXOVei9aAidiZ8o=', '2019-08-24 19:40:14.000000', 1, 'jlvaldespino', '', '', 'jlvaldespino@gmail.com', 1, 1, '2019-08-24 15:49:50.000000'),
(2, 'pbkdf2_sha256$150000$6F8HFVjIlkmx$NJA1Dr99iXfEE2AlpevLOIn2ugGJVvh3fbJBRQ9qv64=', '2019-09-12 23:39:11.226629', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2019-08-30 16:50:34.000000'),
(3, 'pbkdf2_sha256$150000$wDy6oRqOIbYR$RBWI+24ZM5XmzTxC8Jn7HExMM4H39D4J9I1u9qkzMus=', '2019-09-12 19:15:46.971114', 0, 'ivan', 'Ivan', 'Alejandro', 'ivan.hernandez@iot-innovaciones.com', 0, 1, '2019-10-08 18:41:11.000000'),
(4, 'pbkdf2_sha256$150000$ZKKdkr6u1FeY$Shzd6lEPH9mK84ioHFtOGMbba3Ey37biz9GX5EBeYxw=', '2019-09-12 19:09:36.585787', 0, 'sebastian', '', '', '', 0, 1, '2019-09-12 18:09:37.367848'),
(5, 'pbkdf2_sha256$150000$RycrrIdrHFof$ZfBS4H0N3Ll1CvDNcj3UFcVTTrVy5+64ztrja99wp2I=', '2019-09-12 20:38:16.325333', 0, 'yan', '', '', '', 0, 1, '2019-09-12 19:30:50.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish2_ci,
  `object_repr` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-09-02 16:35:23.262863', '1', 'menu1', 1, '[{\"added\": {}}]', 8, 2),
(2, '2019-09-02 16:35:32.272139', '2', 'menu2', 1, '[{\"added\": {}}]', 8, 2),
(3, '2019-09-02 18:22:03.968294', '1', 'Administración', 1, '[{\"added\": {}}]', 9, 2),
(4, '2019-09-02 18:24:10.808780', '2', 'Administración', 1, '[{\"added\": {}}]', 9, 2),
(5, '2019-09-02 18:26:14.723102', '3', 'Dispositivos', 1, '[{\"added\": {}}]', 9, 2),
(6, '2019-09-02 18:26:56.725205', '4', 'Reportes', 1, '[{\"added\": {}}]', 9, 2),
(7, '2019-09-02 18:27:27.997423', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"submenu\"]}}]', 9, 2),
(8, '2019-09-04 16:22:48.261830', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"icono\"]}}]', 9, 2),
(9, '2019-09-04 16:23:26.239714', '4', 'Reportes', 2, '[{\"changed\": {\"fields\": [\"icono\"]}}]', 9, 2),
(10, '2019-09-04 17:04:06.668857', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(11, '2019-09-04 17:04:35.880768', '3', 'Dispositivos', 2, '[]', 9, 2),
(12, '2019-09-04 17:06:55.839578', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(13, '2019-09-04 17:25:15.383983', '2', 'Administración', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(14, '2019-09-05 18:28:15.577668', '1', 'Administración', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(15, '2019-09-05 18:28:23.064151', '2', 'Administración', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(16, '2019-09-05 18:28:31.838334', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(17, '2019-09-05 18:28:38.164634', '4', 'Reportes', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(18, '2019-09-05 18:53:21.011108', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(19, '2019-09-05 18:53:32.932621', '3', 'Dispositivos', 2, '[]', 9, 2),
(20, '2019-09-05 18:57:28.258650', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(21, '2019-09-05 18:57:37.046691', '2', 'Administración', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(22, '2019-09-05 18:59:05.259974', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(23, '2019-09-05 18:59:12.861127', '2', 'Administración', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(24, '2019-09-06 17:39:50.503295', '3', 'no lo se', 3, '', 10, 2),
(25, '2019-09-06 17:39:50.511273', '2', 'a', 3, '', 10, 2),
(26, '2019-09-06 17:39:50.519317', '1', 'a', 3, '', 10, 2),
(27, '2019-09-06 17:39:59.925919', '4', 'Oxxo_001', 2, '[]', 10, 2),
(28, '2019-09-06 18:05:52.952599', '9', 'p', 3, '', 10, 2),
(29, '2019-09-06 18:05:52.961481', '8', 'holis', 3, '', 10, 2),
(30, '2019-09-06 18:05:52.970215', '7', 'holis', 3, '', 10, 2),
(31, '2019-09-06 18:35:35.461222', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(32, '2019-09-06 18:35:45.590528', '2', 'Administración', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(33, '2019-09-06 18:36:52.317715', '2', 'Administración', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(34, '2019-09-06 18:37:13.650428', '2', 'Administración', 2, '[]', 9, 2),
(35, '2019-09-06 18:43:51.092960', '2', 'Administración', 2, '[]', 9, 2),
(36, '2019-09-06 18:43:57.229463', '4', 'Reportes', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(37, '2019-09-06 18:44:24.831559', '1', 'Administración', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(38, '2019-09-06 18:44:37.641194', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(39, '2019-09-06 18:44:42.412459', '2', 'Administración', 2, '[]', 9, 2),
(40, '2019-09-06 18:45:10.958561', '3', 'Dispositivos', 2, '[{\"changed\": {\"fields\": [\"pagina\"]}}]', 9, 2),
(41, '2019-09-06 18:59:06.815883', '3', 'dispositivos', 2, '[{\"changed\": {\"fields\": [\"menu\"]}}]', 9, 2),
(42, '2019-09-10 18:40:36.417991', '1', 'jlvaldespino', 2, '[]', 4, 2),
(43, '2019-09-10 18:41:12.047103', '3', 'ivan', 1, '[{\"added\": {}}]', 4, 2),
(44, '2019-09-12 18:06:13.041210', '3', 'ivan', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"last_login\", \"date_joined\"]}}]', 4, 2),
(45, '2019-09-12 18:09:12.061932', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"last_login\"]}}]', 4, 2),
(46, '2019-09-12 18:09:37.577282', '4', 'sebastian', 1, '[{\"added\": {}}]', 4, 2),
(47, '2019-09-12 18:14:15.643793', '1', 'ivan', 1, '[{\"added\": {}}]', 7, 2),
(48, '2019-09-12 18:15:14.173631', '2', 'sebastian', 1, '[{\"added\": {}}]', 7, 2),
(49, '2019-09-12 19:08:45.088599', '2', 'sebastian', 2, '[]', 7, 2),
(50, '2019-09-12 19:14:41.712766', '3', 'admin', 1, '[{\"added\": {}}]', 7, 2),
(51, '2019-09-12 19:30:50.672184', '5', 'yan', 1, '[{\"added\": {}}]', 4, 2),
(52, '2019-09-12 19:31:13.830255', '4', 'yan', 1, '[{\"added\": {}}]', 7, 2),
(53, '2019-09-12 19:49:02.119334', '4', 'yan', 2, '[{\"changed\": {\"fields\": [\"MenusParaUsuario\"]}}]', 7, 2),
(54, '2019-09-12 20:22:53.902825', '5', 'yan', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\", \"date_joined\"]}}]', 4, 2),
(55, '2019-09-12 20:30:37.419463', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 2),
(56, '2019-09-12 20:32:13.315690', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 2),
(57, '2019-09-12 20:33:59.620988', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 2),
(58, '2019-09-12 20:34:17.840001', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 2),
(59, '2019-09-12 20:35:56.386184', '5', 'yan', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\", \"date_joined\"]}}]', 4, 2),
(60, '2019-09-12 20:36:43.142400', '5', 'yan', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\", \"date_joined\"]}}]', 4, 2),
(61, '2019-09-12 20:37:54.796858', '5', 'yan', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\", \"date_joined\"]}}]', 4, 2),
(62, '2019-09-12 23:39:34.091606', '2', 'Administracion', 2, '[{\"changed\": {\"fields\": [\"menu\"]}}]', 9, 2),
(63, '2019-09-12 23:39:43.540918', '1', 'Administracion', 2, '[{\"changed\": {\"fields\": [\"menu\"]}}]', 9, 2),
(64, '2019-09-12 23:40:05.806856', '5', 'jlvaldespino', 1, '[{\"added\": {}}]', 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'azureCosmos', 'device'),
(5, 'contenttypes', 'contenttype'),
(13, 'frontend', 'module'),
(7, 'loginapp', 'profile'),
(8, 'menus', 'menu'),
(9, 'menus2', 'menu'),
(11, 'menus2', 'usuario'),
(12, 'menus2', 'usuariopermisos'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-08-24 15:46:38.407488'),
(2, 'auth', '0001_initial', '2019-08-24 15:46:38.628809'),
(3, 'admin', '0001_initial', '2019-08-24 15:46:38.995512'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-08-24 15:46:39.066767'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-08-24 15:46:39.081282'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-08-24 15:46:39.141698'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-08-24 15:46:39.183398'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-08-24 15:46:39.234556'),
(9, 'auth', '0004_alter_user_username_opts', '2019-08-24 15:46:39.248004'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-08-24 15:46:39.268715'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-08-24 15:46:39.270888'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-08-24 15:46:39.286378'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-08-24 15:46:39.341562'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-08-24 15:46:39.383960'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-08-24 15:46:39.433300'),
(16, 'auth', '0011_update_proxy_permissions', '2019-08-24 15:46:39.449032'),
(17, 'loginapp', '0001_initial', '2019-08-24 15:46:39.499992'),
(18, 'sessions', '0001_initial', '2019-08-24 15:46:39.558656'),
(19, 'menus', '0001_initial', '2019-09-02 16:22:44.263805'),
(20, 'menus2', '0001_initial', '2019-09-02 17:55:32.744722'),
(21, 'azureCosmos', '0001_initial', '2019-09-05 20:41:47.905159'),
(22, 'menus2', '0002_auto_20190905_1541', '2019-09-05 20:41:47.972727'),
(23, 'menus2', '0003_auto_20190909_1246', '2019-09-09 17:46:40.458288'),
(24, 'frontend', '0001_initial', '2019-09-09 18:50:42.393123'),
(25, 'frontend', '0002_i18n', '2019-09-09 18:50:42.451546'),
(26, 'menus2', '0004_auto_20190909_1350', '2019-09-09 18:50:42.474433'),
(27, 'menus2', '0002_auto_20190904_1637', '2019-09-12 18:00:15.825202'),
(28, 'menus2', '0003_merge_20190906_1926', '2019-09-12 18:00:15.840160'),
(29, 'menus2', '0005_merge_20190910_2001', '2019-09-12 18:00:15.852128'),
(30, 'menus2', '0006_auto_20190912_1300', '2019-09-12 18:00:15.919949'),
(31, 'menus2', '0007_auto_20190912_1304', '2019-09-12 18:04:31.112854'),
(32, 'loginapp', '0002_profile_menusparausuario', '2019-09-12 18:04:31.164677'),
(33, 'menus2', '0006_auto_20190912_1843', '2019-09-12 20:17:13.357427'),
(34, 'menus2', '0008_merge_20190912_1517', '2019-09-12 20:17:13.368397'),
(35, 'loginapp', '0003_auto_20190912_1522', '2019-09-12 20:22:21.565435'),
(36, 'menus2', '0009_auto_20190912_1522', '2019-09-12 20:22:21.602335');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5hg3qotw0swsyeh1q2euhhb7gb6wgduq', 'ODE5M2FmYmI1MmU2NmE3NzJjMTlhZTdjNmE4ZDBkZjVmNTA1MGY0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGU2YTdmNGMzZDI4NTE5ZTFiZWM0YzY5NGNiNzgxNDliYjVhYTFmIn0=', '2019-09-23 19:02:14.238908'),
('98w3v40r6vg7upfibnkzakk3tjf77056', 'ODE5M2FmYmI1MmU2NmE3NzJjMTlhZTdjNmE4ZDBkZjVmNTA1MGY0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGU2YTdmNGMzZDI4NTE5ZTFiZWM0YzY5NGNiNzgxNDliYjVhYTFmIn0=', '2019-09-26 23:39:11.229508'),
('f1dw6d6j093fm09cvuwr2n86ljzngc5y', 'ODE5M2FmYmI1MmU2NmE3NzJjMTlhZTdjNmE4ZDBkZjVmNTA1MGY0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGU2YTdmNGMzZDI4NTE5ZTFiZWM0YzY5NGNiNzgxNDliYjVhYTFmIn0=', '2019-09-24 17:52:24.385217'),
('kcb58a132eo84y9x0mr82emmuecec9w5', 'ZTU0NDRjYTFmYWMxYzIyYWI5MDdkZWRjOTM1ZjY0OTAxMzJiZmY0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZDg3NmI4YTYzZTQ2Nzc0YjhiMWFjY2Q1MGE5NzVmOTg5MjM0M2Y2In0=', '2019-09-07 19:40:14.509243'),
('lw0pdml6gstj810b02lgjdpjn6uru5x5', 'ODE5M2FmYmI1MmU2NmE3NzJjMTlhZTdjNmE4ZDBkZjVmNTA1MGY0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGU2YTdmNGMzZDI4NTE5ZTFiZWM0YzY5NGNiNzgxNDliYjVhYTFmIn0=', '2019-09-26 20:49:29.674039'),
('spzjyxopmsgf3h9dswghqi7h3gb65cff', 'ODE5M2FmYmI1MmU2NmE3NzJjMTlhZTdjNmE4ZDBkZjVmNTA1MGY0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZGU2YTdmNGMzZDI4NTE5ZTFiZWM0YzY5NGNiNzgxNDliYjVhYTFmIn0=', '2019-09-24 17:33:03.133784');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginapp_profile`
--

CREATE TABLE `loginapp_profile` (
  `id` int(11) NOT NULL,
  `phoneNumber` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `loginapp_profile`
--

INSERT INTO `loginapp_profile` (`id`, `phoneNumber`, `created`, `user_id`) VALUES
(1, '5538361008', '2019-09-12 18:14:15.633817', 3),
(2, '5538361008', '2019-09-12 18:15:14.151690', 4),
(3, '', '2019-09-12 19:14:41.707802', 2),
(4, '5538361008', '2019-09-12 19:31:13.823272', 5),
(5, '', '2019-09-12 23:40:05.793785', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `loginapp_profile`
--
ALTER TABLE `loginapp_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `loginapp_profile`
--
ALTER TABLE `loginapp_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `loginapp_profile`
--
ALTER TABLE `loginapp_profile`
  ADD CONSTRAINT `loginapp_profile_user_id_239364ff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
