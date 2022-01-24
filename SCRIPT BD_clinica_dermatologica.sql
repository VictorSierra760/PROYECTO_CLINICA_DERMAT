-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2021 a las 00:58:25
-- Versión del servidor: 10.6.4-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_clinica_eylinlopez`
--

drop database if exists db_clinica_eylinlopez;
create database db_clinica_eylinlopez charset = utf8mb3 collate = utf8mb3_general_ci;
use db_clinica_eylinlopez;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_11_14_112903_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5IIPdeUrKTTTOPsrjM8MfC7OVROmIELP0Aao4XhA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidFJPcDZja1EwV3Y5Yzd0V2RIMFo3Q3NwRVI3dkIySjZsVjVpSkFTbiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDA1Z2dNNXl4Njk2RUN4dDRZbDVLLi5iQ1h6eDA5eFkudm1OVVZJellRaTRQcGtuWFRnL2VPIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638654441),
('aUUOhqZCMFpxekKUT0XcovmNhT1Cu3VSEmvTTMaW', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQUlHeEN5UHBVZjdSRFFCWGcyRGkwR3JBQ1ZUdUxXUkFQYUx3UG5tSiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDA1Z2dNNXl4Njk2RUN4dDRZbDVLLi5iQ1h6eDA5eFkudm1OVVZJellRaTRQcGtuWFRnL2VPIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0OToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2FkbWluL3BhY2llbnRlL2VkaXQvMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638661949),
('DlEHBshGaGLkIYqykP86vk8px637uR3l1l5YowJc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRjJaOEpBeXNKdkZWQmlVYW5BUlFsUnpJMnFZcldaS1VVVGdCVUF4TiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDA1Z2dNNXl4Njk2RUN4dDRZbDVLLi5iQ1h6eDA5eFkudm1OVVZJellRaTRQcGtuWFRnL2VPIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638654438);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ant_obstetricos`
--

CREATE TABLE `tbl_ant_obstetricos` (
  `COD_ANT_OBSTETRICOS` int(11) NOT NULL,
  `MENARQUIA` varchar(20) DEFAULT NULL,
  `EMABARAZOS` varchar(20) DEFAULT NULL,
  `PLANIFICACION` varchar(20) DEFAULT NULL,
  `PERIODO_MESTRUAL` varchar(20) DEFAULT NULL,
  `FECHA_ULTIMA_MESTRU` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_ant_obstetricos`
--

INSERT INTO `tbl_ant_obstetricos` (`COD_ANT_OBSTETRICOS`, `MENARQUIA`, `EMABARAZOS`, `PLANIFICACION`, `PERIODO_MESTRUAL`, `FECHA_ULTIMA_MESTRU`) VALUES
(1, '', '', '', '', '0000-00-00 00:00:00'),
(19, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(20, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(21, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(22, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(23, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(24, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(25, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(26, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(27, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(28, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(29, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(30, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(31, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(32, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(33, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(34, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(35, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(36, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(37, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(38, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(39, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(40, NULL, NULL, NULL, 'no', '0000-00-00 00:00:00'),
(41, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(47, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(48, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(50, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(51, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(52, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(53, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(54, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(55, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(56, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(57, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(58, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(59, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(60, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(61, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(62, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(63, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(64, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(65, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(66, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(67, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL, NULL),
(86, '-', '0', '-', '0', '2021-11-23 00:00:00'),
(89, '-', '0', '-', '0', '2021-11-23 00:00:00'),
(91, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(92, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(93, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(94, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(95, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(96, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(97, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(98, '-', '0', '-', '0', '2021-11-23 00:00:00'),
(99, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(100, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(101, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(102, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(103, '-', NULL, '-', NULL, '2021-11-23 00:00:00'),
(104, '-', NULL, '-', '0', '2021-11-30 00:18:00'),
(108, '-', NULL, '-', '0', '2021-11-27 06:14:00'),
(109, '-', NULL, '-', '0', '2021-11-29 16:21:00'),
(110, '-', NULL, '-', '0', '2021-11-30 03:35:00'),
(112, '-', '0', '-', '0', '2021-11-30T03:24'),
(113, '-', '0', '-', '0', '2021-11-30T03:26'),
(114, '-', '0', '-', '0', '2021-11-30T03:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ant_patologicos`
--

CREATE TABLE `tbl_ant_patologicos` (
  `COD_ANT_PATOLOGICO` int(11) NOT NULL,
  `ANT_PATOLOGICO` varchar(30) DEFAULT NULL,
  `TIPO_ANTECEDENTE` varchar(30) DEFAULT NULL,
  `ENFERMEDAD` varchar(30) DEFAULT NULL,
  `ALERGIAS` varchar(30) DEFAULT NULL,
  `HABITOS` varchar(30) DEFAULT NULL,
  `CONSUMO_MEDICAMENTO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_ant_patologicos`
--

INSERT INTO `tbl_ant_patologicos` (`COD_ANT_PATOLOGICO`, `ANT_PATOLOGICO`, `TIPO_ANTECEDENTE`, `ENFERMEDAD`, `ALERGIAS`, `HABITOS`, `CONSUMO_MEDICAMENTO`) VALUES
(1, '', '', '', '', '', ''),
(19, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'no tiene', 'no tiene', 'no tiene', 'no tiene', 'no tiene', 'no tiene'),
(39, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, 'no tiene', NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '-', '-', '-', '-', '-', '-'),
(89, '-', '-', '-', '-', '-', '-'),
(91, '-', '-', '-', '-', '-', '-'),
(92, '-', '-', '-', '-', '-', '-'),
(93, '-', '-', '-', '-', '-', '-'),
(94, '-', '-', '-', '-', '-', '-'),
(95, '-', '-', '-', '-', '-', '-'),
(96, '-', '-', '-', '-', '-', '-'),
(97, '-', '-', '-', '-', '-', '-'),
(98, '-', '-', '-', '-', '-', '-'),
(99, '-', '-', '-', '-', '-', '-'),
(100, '-', '-', '-', '-', '-', '-'),
(101, '-', '-', '-', '-', '-', '-'),
(102, '-', '-', '-', '-', '-', '-'),
(103, '-', '-', '-', '-', '-', '-'),
(104, NULL, '-', NULL, '-', '-', '-'),
(108, NULL, '-', NULL, '-', '-', '-'),
(109, NULL, '-', NULL, '-', '-', '-'),
(110, NULL, '-', NULL, '-', '-', '-'),
(112, '-', '-', '-', '-', '-', '-'),
(113, '-', '-', '-', '-', '-', '-'),
(114, '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_citas`
--

CREATE TABLE `tbl_citas` (
  `COD_CITA` int(11) NOT NULL,
  `COD_PACIENTE` int(11) NOT NULL,
  `ASUNTO_NOMBRE` varchar(30) NOT NULL,
  `LUGAR_CLINICA` varchar(30) NOT NULL,
  `FECHA_INICIO` datetime NOT NULL,
  `FECHA_FIN` datetime NOT NULL,
  `ESTADO_CITA` varchar(2) NOT NULL,
  `FECHA_REGISTRO` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_citas`
--

INSERT INTO `tbl_citas` (`COD_CITA`, `COD_PACIENTE`, `ASUNTO_NOMBRE`, `LUGAR_CLINICA`, `FECHA_INICIO`, `FECHA_FIN`, `ESTADO_CITA`, `FECHA_REGISTRO`) VALUES
(6, 1, 'SAYRONV', 'EYLIN LOPEZ', '2020-05-21 00:00:00', '2020-06-21 00:00:00', 'A', '2025-04-21 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clinica`
--

CREATE TABLE `tbl_clinica` (
  `COD_CLINICA` int(11) NOT NULL,
  `NOM_CLINICA` varchar(20) NOT NULL,
  `HORARIO_CLINICA` varchar(20) NOT NULL,
  `TELEFONO_CLINICA` varchar(15) NOT NULL,
  `UBICACION_CLI` varchar(40) NOT NULL,
  `RTN_CLINICA` varchar(20) NOT NULL,
  `RED_SOCIAL` varchar(11) NOT NULL,
  `LOGO_CLINICA` varchar(20) NOT NULL,
  `COD_CAI` int(11) NOT NULL,
  `FECHA_REGISTRO` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_clinica`
--

INSERT INTO `tbl_clinica` (`COD_CLINICA`, `NOM_CLINICA`, `HORARIO_CLINICA`, `TELEFONO_CLINICA`, `UBICACION_CLI`, `RTN_CLINICA`, `RED_SOCIAL`, `LOGO_CLINICA`, `COD_CAI`, `FECHA_REGISTRO`) VALUES
(1, 'EYLIN LOPEZ', '6AM-7PM', '22558847', 'HOSPITAL DEL VALLE CLINICA#509', '654654165465', 'FACEBOOK', 'AGREGAR', 1, '2025-04-21 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_consultas`
--

CREATE TABLE `tbl_consultas` (
  `COD_CONSULTA` int(11) NOT NULL,
  `COD_PACIENTE` int(11) DEFAULT NULL,
  `TIPO_CONSULTA` varchar(30) DEFAULT NULL,
  `LUGAR` varchar(30) DEFAULT NULL,
  `SEGURO_MEDICO` varchar(2) DEFAULT NULL,
  `ASEGURADORA` varchar(30) DEFAULT NULL,
  `RELACION_POLIZA` varchar(30) DEFAULT NULL,
  `COD_SIGNOS` int(11) DEFAULT NULL,
  `COD_DIAGNOSTICO` int(11) DEFAULT NULL,
  `COD_EXAMEN` int(11) DEFAULT NULL,
  `COD_TRATAMIENTO` int(11) DEFAULT NULL,
  `COD_ANT_OBSTETRICOS` int(11) DEFAULT NULL,
  `COD_ANT_PATOLOGICO` int(11) DEFAULT NULL,
  `COD_IIMAGEN` int(11) DEFAULT NULL,
  `COD_FACTURA` int(11) DEFAULT NULL,
  `FECHA_REGISTRO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_consultas`
--

INSERT INTO `tbl_consultas` (`COD_CONSULTA`, `COD_PACIENTE`, `TIPO_CONSULTA`, `LUGAR`, `SEGURO_MEDICO`, `ASEGURADORA`, `RELACION_POLIZA`, `COD_SIGNOS`, `COD_DIAGNOSTICO`, `COD_EXAMEN`, `COD_TRATAMIENTO`, `COD_ANT_OBSTETRICOS`, `COD_ANT_PATOLOGICO`, `COD_IIMAGEN`, `COD_FACTURA`, `FECHA_REGISTRO`) VALUES
(26, NULL, 'PIEL', 'clinica', 'NO', 'crefisa', 'PADRE', 44, 44, 44, 39, 40, 40, 39, 39, NULL),
(27, NULL, 'DERMATITIS', NULL, 'SI', NULL, 'PADRE', 45, 45, 45, 40, 41, 41, 40, 40, NULL),
(33, NULL, 'PIEL', NULL, 'SI', '11111', 'PADRE', 51, 51, 51, 46, 47, 47, 46, 46, NULL),
(34, NULL, 'PIEL', NULL, 'SI', NULL, 'PADRE', 52, 52, 52, 47, 48, 48, 47, 47, NULL),
(36, NULL, 'PIEL', NULL, 'SI', NULL, 'seleccione una Relación', 54, 54, 54, 49, 50, 50, 49, 49, NULL),
(37, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 55, 55, 55, 50, 51, 51, 50, 50, NULL),
(38, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 56, 56, 56, 51, 52, 52, 51, 51, NULL),
(39, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 57, 57, 57, 52, 53, 53, 52, 52, NULL),
(40, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 58, 58, 58, 53, 54, 54, 53, 53, NULL),
(41, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 59, 59, 59, 54, 55, 55, 54, 54, NULL),
(42, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 60, 60, 60, 55, 56, 56, 55, 55, NULL),
(43, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 61, 61, 61, 56, 57, 57, 56, 56, NULL),
(44, NULL, '-selecionar-', NULL, 'SI', 'crefisa', 'seleccione una Relación', 62, 62, 62, 57, 58, 58, 57, 57, NULL),
(45, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 63, 63, 63, 58, 59, 59, 58, 58, NULL),
(46, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 64, 64, 64, 59, 60, 60, 59, 59, NULL),
(47, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 65, 65, 65, 60, 61, 61, 60, 60, NULL),
(48, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 66, 66, 66, 61, 62, 62, 61, 61, NULL),
(49, NULL, '-selecionar-', NULL, 'SI', 'gfgettyeyy', 'seleccione una Relación', 67, 67, 67, 62, 63, 63, 62, 62, NULL),
(50, NULL, '-selecionar-', NULL, 'SI', 'gfgettyeyy', 'seleccione una Relación', 68, 68, 68, 63, 64, 64, 63, 63, NULL),
(51, NULL, '-selecionar-', NULL, 'SI', NULL, 'seleccione una Relación', 69, 69, 69, 64, 65, 65, 64, 64, NULL),
(52, NULL, '-selecionar-', 'clinica', 'SI', 'crefisa', 'seleccione una Relación', 70, 70, 70, 65, 66, 66, 65, 65, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, 71, 71, 71, 66, 67, 67, 66, 66, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, 74, 74, 74, 69, 70, 70, 69, 69, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, 75, 75, 75, 70, 71, 71, 70, 70, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, 76, 76, 76, 71, 72, 72, 71, 71, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, 77, 77, 77, 72, 73, 73, 72, 72, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, 78, 78, 78, 73, 74, 74, 73, 73, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, 79, 79, 79, 74, 75, 75, 74, 74, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 80, 75, 76, 76, 75, 75, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL, 81, 81, 81, 76, 77, 77, 76, 76, NULL),
(64, 1, 'dermatología', 'clinica eylin lopez', 'no', 'no tiene', 'hijo(a)', 90, 90, 90, 85, 86, 86, 85, 85, NULL),
(67, 2, 'dermatología', 'clinica', 'si', 'crefisa', 'ninguna', 93, 93, 93, 88, 89, 89, 88, 88, NULL),
(69, NULL, NULL, NULL, NULL, NULL, NULL, 95, 95, 95, 90, 91, 91, 90, 90, NULL),
(70, NULL, NULL, NULL, NULL, NULL, NULL, 96, 96, 96, 91, 92, 92, 91, 91, NULL),
(71, NULL, NULL, NULL, NULL, NULL, NULL, 97, 97, 97, 92, 93, 93, 92, 92, NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL, 98, 98, 98, 93, 94, 94, 93, 93, NULL),
(73, NULL, NULL, NULL, NULL, NULL, NULL, 99, 99, 99, 94, 95, 95, 94, 94, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 100, 95, 96, 96, 95, 95, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, 101, 101, 101, 96, 97, 97, 96, 96, NULL),
(76, 0, 'dermatología', 'clinica', 'si', 'crefisa', 'hijo(a)', 102, 102, 102, 97, 98, 98, 97, 97, NULL),
(77, NULL, NULL, NULL, NULL, NULL, NULL, 103, 103, 103, 98, 99, 99, 98, 98, NULL),
(78, NULL, NULL, NULL, NULL, NULL, NULL, 104, 104, 104, 99, 100, 100, 99, 99, NULL),
(79, NULL, NULL, NULL, NULL, NULL, NULL, 105, 105, 105, 100, 101, 101, 100, 100, NULL),
(80, NULL, NULL, NULL, NULL, NULL, NULL, 106, 106, 106, 101, 102, 102, 101, 101, NULL),
(81, NULL, NULL, NULL, NULL, NULL, NULL, 107, 107, 107, 102, 103, 103, 102, 102, NULL),
(82, 0, 'dermatología', 'clinica', 'no', 'crefisa', 'ninguna', 108, 108, 108, 103, 104, 104, 103, 103, '2021-11-30 00:19:38'),
(85, 1, 'dermatología', 'clinica', 'no', 'no tiene', 'ninguna', 117, 117, 117, 109, 110, 110, 109, 109, '2021-11-30 03:35:50'),
(86, 2, 'dermatología', 'clinica', 'no', 'no tiene', 'ninguna', 115, 115, 115, 107, 108, 108, 107, 107, '2021-11-30 00:23:36'),
(87, 2, 'dermatologia', 'clinica', 'no', 'crefisa', 'ninguna', 116, 116, 116, 108, 109, 109, 108, 108, '2021-11-30 00:22:33'),
(88, 2, 'DERMATITIS', 'clinica eylin', 'no', 'no tiene', 'ninguna', 119, 119, 119, 111, 112, 112, 111, 111, '2021-11-30T03:24'),
(89, 1, 'PIEL', 'clinica eylin', 'no', 'crefisa', 'ninguna', 120, 120, 120, 112, 113, 113, 112, 112, '2021-11-30T03:26'),
(90, 1, 'DERMATITIS', 'clinica eylin lopez', 'si', 'IHSS', 'hijo(a)', 121, 121, 121, 113, 114, 114, 113, 113, '2021-11-30T03:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_departamentos`
--

CREATE TABLE `tbl_departamentos` (
  `COD_DEPARTAMENTO` int(11) NOT NULL,
  `DEPARTAMENTO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_departamentos`
--

INSERT INTO `tbl_departamentos` (`COD_DEPARTAMENTO`, `DEPARTAMENTO`) VALUES
(3, 'Colón'),
(4, 'Comayagua'),
(5, 'Copán'),
(6, 'Cortés'),
(7, 'Choluteca'),
(8, 'El Paraíso'),
(9, 'Francisco Morazán'),
(10, 'Gracias a Dios'),
(11, 'Intibucá'),
(12, 'Islas de la Bahía'),
(13, 'La Paz'),
(14, 'Lempira'),
(15, 'Ocotepeque'),
(16, 'Olancho'),
(17, 'Valle'),
(18, 'Yoro'),
(19, 'Atlántida'),
(20, 'Santa Bárbara');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_diagnosticos`
--

CREATE TABLE `tbl_diagnosticos` (
  `COD_DIAGNOSTICO` int(11) NOT NULL,
  `CIE` varchar(30) DEFAULT NULL,
  `NOMBRE_DIAGNOSTICO` varchar(50) DEFAULT NULL,
  `EQUIVALENCIAS` varchar(30) DEFAULT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_diagnosticos`
--

INSERT INTO `tbl_diagnosticos` (`COD_DIAGNOSTICO`, `CIE`, `NOMBRE_DIAGNOSTICO`, `EQUIVALENCIAS`, `DESCRIPCION`) VALUES
(23, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL),
(42, 'no', 'dljijm5', 'no', 'sin descripcion'),
(43, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, 'sin descripcion'),
(45, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, NULL),
(68, NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, NULL),
(90, '-', '-', '-', '-'),
(93, '-', '-', '-', '-'),
(95, '-', '-', '-', '-'),
(96, '-', '-', '-', '-'),
(97, '-', '-', '-', '-'),
(98, '-', '-', '-', '-'),
(99, '-', '-', '-', '-'),
(100, '-', '-', '-', '-'),
(101, '-', '-', '-', '-'),
(102, '-', '-', '-', '-'),
(103, '-', '-', '-', '-'),
(104, '-', '-', '-', '-'),
(105, '-', '-', '-', '-'),
(106, '-', '-', '-', '-'),
(107, '-', '-', '-', '-'),
(108, '-', '-', '-', '-'),
(115, '-', '-', '-', '-'),
(116, '-', '-', '-', '-'),
(117, '-', '-', '-', '-'),
(119, '-', '-', '-', '-'),
(120, '-', '-', '-', '-'),
(121, '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_encargado`
--

CREATE TABLE `tbl_encargado` (
  `COD_ENCARGADO` int(11) NOT NULL,
  `NOM_ENCARGADO` varchar(30) DEFAULT NULL,
  `PARENTESCO` varchar(30) DEFAULT NULL,
  `IDENTIFICACION` varchar(30) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_encargado`
--

INSERT INTO `tbl_encargado` (`COD_ENCARGADO`, `NOM_ENCARGADO`, `PARENTESCO`, `IDENTIFICACION`, `TELEFONO`) VALUES
(3, 'ELIU', 'HIJO', '321651654647', '95177521'),
(6, '', '', '', ''),
(10, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_examenes`
--

CREATE TABLE `tbl_examenes` (
  `COD_EXAMEN` int(11) NOT NULL,
  `NOMBRE_EXAMEN` varchar(30) DEFAULT NULL,
  `ETIQUETAS` varchar(30) DEFAULT NULL,
  `CODIGO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_examenes`
--

INSERT INTO `tbl_examenes` (`COD_EXAMEN`, `NOMBRE_EXAMEN`, `ETIQUETAS`, `CODIGO`) VALUES
(23, NULL, NULL, NULL),
(24, NULL, NULL, NULL),
(25, NULL, NULL, NULL),
(26, NULL, NULL, NULL),
(27, NULL, NULL, NULL),
(28, NULL, NULL, NULL),
(29, NULL, NULL, NULL),
(30, NULL, NULL, NULL),
(31, NULL, NULL, NULL),
(32, NULL, NULL, NULL),
(33, NULL, NULL, NULL),
(34, NULL, NULL, NULL),
(35, NULL, NULL, NULL),
(36, NULL, NULL, NULL),
(37, NULL, NULL, NULL),
(38, NULL, NULL, NULL),
(39, NULL, NULL, NULL),
(40, NULL, NULL, NULL),
(41, NULL, NULL, NULL),
(42, 'sanguineo', 'sin etiquetas', '462'),
(43, NULL, NULL, NULL),
(44, NULL, 'sin etiquetas', NULL),
(45, NULL, NULL, NULL),
(51, NULL, NULL, NULL),
(52, NULL, NULL, NULL),
(54, NULL, NULL, NULL),
(55, NULL, NULL, NULL),
(56, NULL, NULL, NULL),
(57, NULL, NULL, NULL),
(58, NULL, NULL, NULL),
(59, NULL, NULL, NULL),
(60, NULL, NULL, NULL),
(61, NULL, NULL, NULL),
(62, NULL, NULL, NULL),
(63, NULL, NULL, NULL),
(64, NULL, NULL, NULL),
(65, NULL, NULL, NULL),
(66, NULL, NULL, NULL),
(67, NULL, NULL, NULL),
(68, NULL, NULL, NULL),
(69, NULL, NULL, NULL),
(70, NULL, NULL, NULL),
(71, NULL, NULL, NULL),
(74, NULL, NULL, NULL),
(75, NULL, NULL, NULL),
(76, NULL, NULL, NULL),
(77, NULL, NULL, NULL),
(78, NULL, NULL, NULL),
(79, NULL, NULL, NULL),
(80, NULL, NULL, NULL),
(81, NULL, NULL, NULL),
(90, '-', '-', '0'),
(93, '-', '-', '0'),
(95, '-', '-', '0'),
(96, '-', '-', '0'),
(97, '-', '-', '0'),
(98, '-', '-', '0'),
(99, '-', '-', '0'),
(100, '-', '-', '0'),
(101, '-', '-', '0'),
(102, '-', '-', '0'),
(103, '-', '-', '0'),
(104, '-', '-', '0'),
(105, '-', '-', '0'),
(106, '-', '-', '0'),
(107, '-', '-', '0'),
(108, '-', '-', '0'),
(115, '-', '-', '0'),
(116, '-', '-', '0'),
(117, '-', '-', '0'),
(119, '-', '-', '0'),
(120, '-', '-', '0'),
(121, '-', '-', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facturas`
--

CREATE TABLE `tbl_facturas` (
  `COD_FACTURA` int(11) NOT NULL,
  `SUB_TOTAL` decimal(10,0) DEFAULT NULL,
  `IMPUESTO` decimal(10,0) DEFAULT NULL,
  `TOTAL` decimal(10,0) DEFAULT NULL,
  `DESCRIPCION` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_facturas`
--

INSERT INTO `tbl_facturas` (`COD_FACTURA`, `SUB_TOTAL`, `IMPUESTO`, `TOTAL`, `DESCRIPCION`) VALUES
(18, '0', '0', '0', NULL),
(19, '0', '0', '0', NULL),
(20, '0', '0', '0', NULL),
(21, '0', '0', '0', NULL),
(22, '0', '0', '0', NULL),
(23, '0', '0', '0', NULL),
(24, '0', '0', '0', NULL),
(25, '0', '0', '0', NULL),
(26, '0', '0', '0', NULL),
(27, '0', '0', '0', NULL),
(28, '0', '0', '0', NULL),
(29, '0', '0', '0', NULL),
(30, '0', '0', '0', NULL),
(31, '0', '0', '0', NULL),
(32, '0', '0', '0', NULL),
(33, '0', '0', '0', NULL),
(34, '0', '0', '0', NULL),
(35, '0', '0', '0', NULL),
(36, '0', '0', '0', NULL),
(37, '1000', '0', '3000', NULL),
(38, '0', '0', '0', NULL),
(39, '0', '0', '0', NULL),
(40, '0', '0', '0', NULL),
(46, '0', '0', '0', NULL),
(47, '0', '0', '0', NULL),
(49, '0', '0', '0', NULL),
(50, '0', '0', '0', NULL),
(51, '0', '0', '0', NULL),
(52, '0', '0', '0', NULL),
(53, '0', '0', '0', NULL),
(54, '0', '0', '0', NULL),
(55, '0', '0', '0', NULL),
(56, '0', '0', '0', NULL),
(57, '0', '0', '0', NULL),
(58, '0', '0', '0', NULL),
(59, '0', '0', '0', NULL),
(60, '0', '0', '0', NULL),
(61, '0', '0', '0', NULL),
(62, '0', '0', '0', NULL),
(63, '0', '0', '0', NULL),
(64, '0', '0', '0', NULL),
(65, '0', '0', '0', NULL),
(66, NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL),
(85, '0', '0', '0', 'pago en efectivo'),
(88, '0', '0', '0', 'pago en efectivo'),
(90, NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, NULL),
(97, '0', '0', '0', 'pago en efectivo'),
(98, NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, NULL),
(101, NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, NULL),
(103, '0', '0', '0', 'pago en efectivo'),
(107, '0', '0', '0', '0'),
(108, '0', '0', '0', 'pago en efectivo'),
(109, '0', '0', '3000', 'pago en efectivo'),
(111, '0', '0', '0', '.'),
(112, '0', '0', '0', '.'),
(113, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_galeria`
--

CREATE TABLE `tbl_galeria` (
  `COD_IMAGEN` int(11) NOT NULL,
  `IMAGEN` varchar(30) DEFAULT NULL,
  `OBSERVACIONES` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_galeria`
--

INSERT INTO `tbl_galeria` (`COD_IMAGEN`, `IMAGEN`, `OBSERVACIONES`) VALUES
(18, NULL, NULL),
(19, NULL, NULL),
(20, NULL, NULL),
(21, NULL, NULL),
(22, NULL, NULL),
(23, NULL, NULL),
(24, NULL, NULL),
(25, NULL, NULL),
(26, NULL, NULL),
(27, NULL, NULL),
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL),
(36, NULL, NULL),
(37, 'hola', 'hola'),
(38, NULL, NULL),
(39, NULL, 'hola'),
(40, NULL, NULL),
(46, NULL, NULL),
(47, NULL, NULL),
(49, NULL, NULL),
(50, NULL, NULL),
(51, NULL, NULL),
(52, NULL, NULL),
(53, NULL, NULL),
(54, NULL, NULL),
(55, NULL, NULL),
(56, NULL, NULL),
(57, NULL, NULL),
(58, NULL, NULL),
(59, NULL, NULL),
(60, NULL, NULL),
(61, NULL, NULL),
(62, NULL, NULL),
(63, NULL, NULL),
(64, NULL, NULL),
(65, NULL, NULL),
(66, NULL, NULL),
(69, NULL, NULL),
(70, NULL, NULL),
(71, NULL, NULL),
(72, NULL, NULL),
(73, NULL, NULL),
(74, NULL, NULL),
(75, NULL, NULL),
(76, NULL, NULL),
(85, '-', 'opción'),
(88, '-', 'opción'),
(90, '-', 'opción'),
(91, '-', 'opción'),
(92, '-', 'opción'),
(93, '-', 'opción'),
(94, '-', 'opción'),
(95, '-', 'opción'),
(96, '-', 'opción'),
(97, '-', 'opción'),
(98, '-', 'opción'),
(99, '-', 'opción'),
(100, '-', 'opción'),
(101, '-', 'opción'),
(102, '-', 'opción'),
(103, '-', 'opción'),
(107, '-', 'opción'),
(108, '-', 'opción'),
(109, '-', 'opción'),
(111, '-', 'opción'),
(112, '-', 'opción'),
(113, '-', 'opción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_leg_tributaria`
--

CREATE TABLE `tbl_leg_tributaria` (
  `COD_CAI` int(11) NOT NULL,
  `NOMBRE_CAI` varchar(20) NOT NULL,
  `FECHA_INICIAL` datetime NOT NULL,
  `FECHA_FINAL` datetime NOT NULL,
  `RAN_INICIAL` int(11) NOT NULL,
  `RAN_FINAL` int(11) NOT NULL,
  `ESTADO_CAI` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_leg_tributaria`
--

INSERT INTO `tbl_leg_tributaria` (`COD_CAI`, `NOMBRE_CAI`, `FECHA_INICIAL`, `FECHA_FINAL`, `RAN_INICIAL`, `RAN_FINAL`, `ESTADO_CAI`) VALUES
(1, 'IMPUESTOS', '2025-04-21 00:00:00', '2025-04-25 00:00:00', 5, 9, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pacientes`
--

CREATE TABLE `tbl_pacientes` (
  `COD_PACIENTE` int(11) NOT NULL,
  `PRI_NOMBRE` varchar(30) DEFAULT NULL,
  `SEG_NOMBRE` varchar(30) DEFAULT NULL,
  `PRI_APELLIDO` varchar(30) DEFAULT NULL,
  `SEG_APELLIDO` varchar(30) DEFAULT NULL,
  `GENERO` varchar(20) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL,
  `EDAD` tinyint(4) DEFAULT NULL,
  `TIPO_ID` varchar(30) DEFAULT NULL,
  `NUMERO_ID` varchar(30) DEFAULT NULL,
  `ACTIVO_INACTIVO` varchar(20) DEFAULT NULL,
  `CORREO` varchar(40) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `COD_DEPARTAMENTO` int(11) DEFAULT NULL,
  `COD_ENCARGADO` int(11) DEFAULT NULL,
  `FECHA_REGISTRO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_pacientes`
--

INSERT INTO `tbl_pacientes` (`COD_PACIENTE`, `PRI_NOMBRE`, `SEG_NOMBRE`, `PRI_APELLIDO`, `SEG_APELLIDO`, `GENERO`, `FECHA_NACIMIENTO`, `EDAD`, `TIPO_ID`, `NUMERO_ID`, `ACTIVO_INACTIVO`, `CORREO`, `TELEFONO`, `DIRECCION`, `COD_DEPARTAMENTO`, `COD_ENCARGADO`, `FECHA_REGISTRO`) VALUES
(0, 'ALBA', 'CARMEN', 'VILLANUEVA', 'FLORES', 'F', '1996-02-20', 24, 'IDENTIFICACION', '825698547', 'A', 'correoinstante@gmail.com', '89652312', 'PARQUE LA AMISTAD CALLE REAL,LOS ALCALDES', 6, 6, '2025-04-20 00:00:00'),
(1, 'SAYRON', 'ELI', 'VASQUEZ', 'IZAGUIRRE', 'M', '1996-02-20', 25, 'PASAPORTE', '15263524123', 'A', 'sayronvasquez@gmail.com', '95177521', 'PARQUE LA AMISTAD CALLE REAL,LOS ALCALDES', 3, 3, '2025-04-21 00:00:00'),
(2, 'JOSE', 'DANIEL', '', '', '', '1996-02-20', 25, '', '', '', '', '', '', 6, 6, '2025-09-21 00:00:00'),
(4, 'CARMEN', 'IRIS', 'VELASQUEZ', 'MUÑOZ', 'FEMENINO', '1995-07-07', 26, 'PASSPORT', '963256854', 'ACTIVO', 'iris@gmail.com', '96584458', 'san pedro sula valle', 7, 3, '2021-12-04 22:00:09'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, '2021-12-04 22:00:09'),
(12, 'eli', 'josue', 'izaguirre', 'valdez', 'Masculino', '1996-02-02', 26, 'pasaporte', '5419854115', 'Activo', 'dzfdfsa@gmail.com', '9526262', 'hola como estas', 6, 10, '2021-12-04 16:41:04'),
(14, 'eli', 'josue', 'izaguirre', 'valdez', 'Masculino', '1997-02-07', 26, 'pasaporte', '8695242165', 'Activo', 'sippersa@gmail.com', '9526262', 'hola como estas', 9, 12, '2021-12-04 17:15:38'),
(18, 'eli', 'josue', 'izaguirre', 'valdez', 'Masculino', '1997-02-07', 26, 'pasaporte', '784596651', 'Activo', 'eliusa@gmail.com', '9526262', 'hola como estas', 9, 16, '2021-12-04 17:19:18'),
(21, 'eli', 'josue', 'izaguirre', 'valdez', 'Masculino', '1997-02-07', 26, 'pasaporte', '95959523', 'Activo', 'kakaka@gmail.com', '95485788', 'hola como estas', 9, 19, '2021-12-04 17:22:39'),
(22, 'eli', 'josue', 'izaguirre', 'valdez', 'Masculino', '1997-02-07', 26, 'pasaporte', '86161', 'Activo', 'dlddkdaka@gmail.com', '95485788', 'hola como estas', 9, 20, '2021-12-04 17:23:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_signos_vitales`
--

CREATE TABLE `tbl_signos_vitales` (
  `COD_SIGNOS` int(11) NOT NULL,
  `ESTATURA` varchar(20) DEFAULT NULL,
  `SATO2` varchar(20) DEFAULT NULL,
  `PESO` varchar(20) DEFAULT NULL,
  `TEMPERATURA` varchar(20) DEFAULT NULL,
  `PRESIÓN_ALTERIAL` varchar(20) DEFAULT NULL,
  `FRECUENCIA_CARDIACA` varchar(20) DEFAULT NULL,
  `FRECUENCIA_RESPIRATORIA` varchar(20) DEFAULT NULL,
  `NOTAS` varchar(50) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `FECHA_REGISTRO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_signos_vitales`
--

INSERT INTO `tbl_signos_vitales` (`COD_SIGNOS`, `ESTATURA`, `SATO2`, `PESO`, `TEMPERATURA`, `PRESIÓN_ALTERIAL`, `FRECUENCIA_CARDIACA`, `FRECUENCIA_RESPIRATORIA`, `NOTAS`, `DESCRIPCION`, `FECHA_REGISTRO`) VALUES
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(42, '1.85m', '98%', '98%', '30º', '90/60mm hg', '80', '90/60mm hg', 'estable', 'muy bien', '0000-00-00 00:00:00'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(44, NULL, NULL, NULL, NULL, NULL, '80', NULL, NULL, NULL, '0000-00-00 00:00:00'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 00:00:00'),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '1.95m', '98%', '98%', '30º', '90/60mm hg', '80', '90/60mm hg', 'estable', 'muy bien', '2021-12-23 00:00:00'),
(93, '1.85m', '98%', '98%', '30º', '90/60mm hg', '80', '90/60mm hg', 'estable', 'muy bien', '2021-12-23 00:00:00'),
(95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(102, '1.85m', '98%', '98%', '30º', '90/60mm hg', '80', '90/60mm hg', 'estable', 'muy bien', '2021-12-23 00:00:00'),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 00:00:00'),
(108, '1.85m', '98%', '98%', '30º', '90/60mm hg', '80', '90/60mm hg', 'estable', 'muy bien', '2021-11-30 00:19:38'),
(115, '1.85m', '98%', '98%', '30º', '90/60mm hg', '80', '90/60mm hg', 'estable', 'muy bien', '2021-11-30 00:23:36'),
(116, '1.85m', '98%', '98%', '30º', '90/60mm hg', '80', '90/60mm hg', 'estable', 'excelente signos', '2021-11-30 00:22:33'),
(117, '1.85m', '98%', '150LB', '30º', '90/60mm hg', '80', '90/60mm hg', 'estable', 'REVISION RAPIDA', '2021-11-30 03:35:50'),
(119, '1.95m', '98%', '185LB', '35º', '80/70mm hg', '75', '80/60mm hg', 'estable', 'muy bien', '2021-11-30T03:24'),
(120, '1.85m', '98%', '98%', '30º', '80/70mm hg', '75', '90/60mm hg', 'BIEN DE SALUD', 'muy bien', '2021-11-30T03:26'),
(121, '1.95m', '95%', '185LB', '35º', '90/60mm hg', '75', '80/60mm hg', 'nadA', 'muy bien', '2021-11-30T03:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tratamientos`
--

CREATE TABLE `tbl_tratamientos` (
  `COD_TRATAMIENTO` int(11) NOT NULL,
  `MEDICAMENTO` varchar(30) DEFAULT NULL,
  `MARCA` varchar(30) DEFAULT NULL,
  `CANTIDAD` tinyint(4) DEFAULT NULL,
  `DOSIS_INDICACIONES` varchar(30) DEFAULT NULL,
  `DESCRIPCION` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_tratamientos`
--

INSERT INTO `tbl_tratamientos` (`COD_TRATAMIENTO`, `MEDICAMENTO`, `MARCA`, `CANTIDAD`, `DOSIS_INDICACIONES`, `DESCRIPCION`) VALUES
(18, NULL, NULL, 0, NULL, NULL),
(19, NULL, NULL, 0, NULL, NULL),
(20, NULL, NULL, 0, NULL, NULL),
(21, NULL, NULL, 0, NULL, NULL),
(22, NULL, NULL, 0, NULL, NULL),
(23, NULL, NULL, 0, NULL, NULL),
(24, NULL, NULL, 0, NULL, NULL),
(25, NULL, NULL, 0, NULL, NULL),
(26, NULL, NULL, 0, NULL, NULL),
(27, NULL, NULL, 0, NULL, NULL),
(28, NULL, NULL, 0, NULL, NULL),
(29, NULL, NULL, 0, NULL, NULL),
(30, NULL, NULL, 0, NULL, NULL),
(31, NULL, NULL, 0, NULL, NULL),
(32, NULL, NULL, 0, NULL, NULL),
(33, NULL, NULL, 0, NULL, NULL),
(34, NULL, NULL, 0, NULL, NULL),
(35, NULL, NULL, 0, NULL, NULL),
(36, NULL, NULL, 0, NULL, NULL),
(37, 'trinina', 'asusu', 4, '3 diarias', 'ning8na'),
(38, NULL, NULL, 0, NULL, NULL),
(39, NULL, NULL, 0, '3 diarias', NULL),
(40, NULL, NULL, 0, NULL, NULL),
(46, NULL, NULL, 0, NULL, NULL),
(47, NULL, NULL, 0, NULL, NULL),
(49, NULL, NULL, 0, NULL, NULL),
(50, NULL, NULL, 0, NULL, NULL),
(51, NULL, NULL, 0, NULL, NULL),
(52, NULL, NULL, 0, NULL, NULL),
(53, NULL, NULL, 0, NULL, NULL),
(54, NULL, NULL, 0, NULL, NULL),
(55, NULL, NULL, 0, NULL, NULL),
(56, NULL, NULL, 0, NULL, NULL),
(57, NULL, NULL, 0, NULL, NULL),
(58, NULL, NULL, 0, NULL, NULL),
(59, NULL, NULL, 0, NULL, NULL),
(60, NULL, NULL, 0, NULL, NULL),
(61, NULL, NULL, 0, NULL, NULL),
(62, NULL, NULL, 0, NULL, NULL),
(63, NULL, NULL, 0, NULL, NULL),
(64, NULL, NULL, 0, NULL, NULL),
(65, NULL, NULL, 0, NULL, NULL),
(66, NULL, NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, NULL),
(85, '-', '-', 0, '-', '-'),
(88, '-', '-', 0, '-', '-'),
(90, '-', '-', 0, '-', '-'),
(91, '-', '-', 0, '-', '-'),
(92, '-', '-', 0, '-', '-'),
(93, '-', '-', 0, '-', '-'),
(94, '-', '-', 0, '-', '-'),
(95, '-', '-', 0, '-', '-'),
(96, '-', '-', 0, '-', '-'),
(97, '-', '-', 0, '-', '-'),
(98, '-', '-', 0, '-', '-'),
(99, '-', '-', 0, '-', '-'),
(100, '-', '-', 0, '-', '-'),
(101, '-', '-', 0, '-', '-'),
(102, '-', '-', 0, '-', '-'),
(103, '-', '-', 0, '-', '-'),
(107, '-', '-', 0, '-', '-'),
(108, '-', '-', 0, '-', '-'),
(109, '-', '-', 0, '-', '-'),
(111, '-', '-', 0, '-', '-'),
(112, '-', '-', 0, '-', '-'),
(113, '-', '-', 0, '-', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `COD_USUARIO` int(10) NOT NULL,
  `NOM_USUARIO` varchar(20) CHARACTER SET armscii8 NOT NULL,
  `TIPO_USUARIO` varchar(2) NOT NULL,
  `CONTRASEÑA` varchar(20) CHARACTER SET armscii8 NOT NULL,
  `CORREO` varchar(30) NOT NULL,
  `FECHA_REGISTRO` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`COD_USUARIO`, `NOM_USUARIO`, `TIPO_USUARIO`, `CONTRASEÑA`, `CORREO`, `FECHA_REGISTRO`) VALUES
(2, 'SAYRONV', 'G', '020FEB94CA', 'sayronvasquez@gmail.com', '2025-09-21 00:00:00'),
(5, 'JOSE', 'AS', '020FEB94CA', 'ELIIZAGUIRRE@GMAIL.COM', '2025-09-21 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'sayron\'s Team', 1, '2021-11-17 13:57:42', '2021-11-17 13:57:42'),
(2, 2, 'sayron\'s Team', 1, '2021-11-30 04:18:02', '2021-11-30 04:18:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'sayron vasquez', 'sayronvasquez@gmail.com', NULL, '$2y$10$05ggM5yx696ECxt4Yl5K..bCXzx09xY.vmNUVIzYQi4PpknXTg/eO', NULL, NULL, 'LhBN5IyTrExRoPCsFqwwjM3qWyOXiiPbdUgVEshZWvjylFOH9vlFM01jWUBw', NULL, NULL, '2021-11-17 13:57:41', '2021-11-17 13:57:41'),
(2, 'sayron eli', 'eli@gmail.com', NULL, '$2y$10$cqiDOH0Uj6aYc9DO0qmPQO6l3bKkoNL9B8Gqkbp0eDwMvRGiFEWve', NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:18:01', '2021-11-30 04:18:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tbl_ant_obstetricos`
--
ALTER TABLE `tbl_ant_obstetricos`
  ADD PRIMARY KEY (`COD_ANT_OBSTETRICOS`);

--
-- Indices de la tabla `tbl_ant_patologicos`
--
ALTER TABLE `tbl_ant_patologicos`
  ADD PRIMARY KEY (`COD_ANT_PATOLOGICO`);

--
-- Indices de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  ADD PRIMARY KEY (`COD_CITA`),
  ADD KEY `COD_PACIENTE` (`COD_PACIENTE`);

--
-- Indices de la tabla `tbl_clinica`
--
ALTER TABLE `tbl_clinica`
  ADD PRIMARY KEY (`COD_CLINICA`),
  ADD KEY `COD_CAI` (`COD_CAI`);

--
-- Indices de la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  ADD PRIMARY KEY (`COD_CONSULTA`),
  ADD KEY `COD_PACIENTE` (`COD_PACIENTE`),
  ADD KEY `COD_SIGNOS` (`COD_SIGNOS`),
  ADD KEY `COD_DIAGNOSTICO` (`COD_DIAGNOSTICO`),
  ADD KEY `COD_EXAMEN` (`COD_EXAMEN`),
  ADD KEY `COD_TRATAMIENTO` (`COD_TRATAMIENTO`),
  ADD KEY `COD_ANT_OBSTETRICOS` (`COD_ANT_OBSTETRICOS`),
  ADD KEY `COD_ANT_PATOLOGICO` (`COD_ANT_PATOLOGICO`),
  ADD KEY `COD_IIMAGEN` (`COD_IIMAGEN`),
  ADD KEY `COD_FACTURA` (`COD_FACTURA`);

--
-- Indices de la tabla `tbl_departamentos`
--
ALTER TABLE `tbl_departamentos`
  ADD PRIMARY KEY (`COD_DEPARTAMENTO`);

--
-- Indices de la tabla `tbl_diagnosticos`
--
ALTER TABLE `tbl_diagnosticos`
  ADD PRIMARY KEY (`COD_DIAGNOSTICO`);

--
-- Indices de la tabla `tbl_encargado`
--
ALTER TABLE `tbl_encargado`
  ADD PRIMARY KEY (`COD_ENCARGADO`);

--
-- Indices de la tabla `tbl_examenes`
--
ALTER TABLE `tbl_examenes`
  ADD PRIMARY KEY (`COD_EXAMEN`);

--
-- Indices de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD PRIMARY KEY (`COD_FACTURA`);

--
-- Indices de la tabla `tbl_galeria`
--
ALTER TABLE `tbl_galeria`
  ADD PRIMARY KEY (`COD_IMAGEN`);

--
-- Indices de la tabla `tbl_leg_tributaria`
--
ALTER TABLE `tbl_leg_tributaria`
  ADD PRIMARY KEY (`COD_CAI`);

--
-- Indices de la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  ADD PRIMARY KEY (`COD_PACIENTE`),
  ADD UNIQUE KEY `CORREO_PACIENTE` (`CORREO`) USING BTREE,
  ADD UNIQUE KEY `NUMERO_ID_PACIENTE` (`NUMERO_ID`),
  ADD KEY `COD_DEPARTAMENTO` (`COD_DEPARTAMENTO`),
  ADD KEY `COD_ENCARGADO` (`COD_ENCARGADO`);

--
-- Indices de la tabla `tbl_signos_vitales`
--
ALTER TABLE `tbl_signos_vitales`
  ADD PRIMARY KEY (`COD_SIGNOS`);

--
-- Indices de la tabla `tbl_tratamientos`
--
ALTER TABLE `tbl_tratamientos`
  ADD PRIMARY KEY (`COD_TRATAMIENTO`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`COD_USUARIO`),
  ADD UNIQUE KEY `CORREO` (`CORREO`),
  ADD UNIQUE KEY `NOM_USUARIO` (`NOM_USUARIO`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indices de la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indices de la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ant_obstetricos`
--
ALTER TABLE `tbl_ant_obstetricos`
  MODIFY `COD_ANT_OBSTETRICOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `tbl_ant_patologicos`
--
ALTER TABLE `tbl_ant_patologicos`
  MODIFY `COD_ANT_PATOLOGICO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  MODIFY `COD_CITA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_clinica`
--
ALTER TABLE `tbl_clinica`
  MODIFY `COD_CLINICA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  MODIFY `COD_CONSULTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `tbl_departamentos`
--
ALTER TABLE `tbl_departamentos`
  MODIFY `COD_DEPARTAMENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tbl_diagnosticos`
--
ALTER TABLE `tbl_diagnosticos`
  MODIFY `COD_DIAGNOSTICO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `tbl_encargado`
--
ALTER TABLE `tbl_encargado`
  MODIFY `COD_ENCARGADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tbl_examenes`
--
ALTER TABLE `tbl_examenes`
  MODIFY `COD_EXAMEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `COD_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `tbl_galeria`
--
ALTER TABLE `tbl_galeria`
  MODIFY `COD_IMAGEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `tbl_leg_tributaria`
--
ALTER TABLE `tbl_leg_tributaria`
  MODIFY `COD_CAI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  MODIFY `COD_PACIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tbl_signos_vitales`
--
ALTER TABLE `tbl_signos_vitales`
  MODIFY `COD_SIGNOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `tbl_tratamientos`
--
ALTER TABLE `tbl_tratamientos`
  MODIFY `COD_TRATAMIENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `COD_USUARIO` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  ADD CONSTRAINT `tbl_citas_ibfk_1` FOREIGN KEY (`COD_PACIENTE`) REFERENCES `tbl_pacientes` (`COD_PACIENTE`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_clinica`
--
ALTER TABLE `tbl_clinica`
  ADD CONSTRAINT `tbl_clinica_ibfk_1` FOREIGN KEY (`COD_CAI`) REFERENCES `tbl_leg_tributaria` (`COD_CAI`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  ADD CONSTRAINT `tbl_consultas_ibfk_1` FOREIGN KEY (`COD_PACIENTE`) REFERENCES `tbl_pacientes` (`COD_PACIENTE`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_2` FOREIGN KEY (`COD_TRATAMIENTO`) REFERENCES `tbl_tratamientos` (`COD_TRATAMIENTO`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_3` FOREIGN KEY (`COD_SIGNOS`) REFERENCES `tbl_signos_vitales` (`COD_SIGNOS`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_4` FOREIGN KEY (`COD_FACTURA`) REFERENCES `tbl_facturas` (`COD_FACTURA`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_5` FOREIGN KEY (`COD_EXAMEN`) REFERENCES `tbl_examenes` (`COD_EXAMEN`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_6` FOREIGN KEY (`COD_IIMAGEN`) REFERENCES `tbl_galeria` (`COD_IMAGEN`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_7` FOREIGN KEY (`COD_DIAGNOSTICO`) REFERENCES `tbl_diagnosticos` (`COD_DIAGNOSTICO`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_8` FOREIGN KEY (`COD_ANT_PATOLOGICO`) REFERENCES `tbl_ant_patologicos` (`COD_ANT_PATOLOGICO`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_9` FOREIGN KEY (`COD_ANT_OBSTETRICOS`) REFERENCES `tbl_ant_obstetricos` (`COD_ANT_OBSTETRICOS`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  ADD CONSTRAINT `tbl_pacientes_ibfk_1` FOREIGN KEY (`COD_ENCARGADO`) REFERENCES `tbl_encargado` (`COD_ENCARGADO`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_2` FOREIGN KEY (`COD_DEPARTAMENTO`) REFERENCES `tbl_departamentos` (`COD_DEPARTAMENTO`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
