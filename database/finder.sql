-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2023 a las 07:35:07
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `finder`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `remember_token`) VALUES
(1, 'andrygc', '$2y$10$QNFdabVeMYLXyCheIuIzJealNS9zZgJHCs8rPVIgliUwuXk5KnoHe', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_pages`
--

CREATE TABLE `info_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(4) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `info_pages`
--

INSERT INTO `info_pages` (`id`, `title`, `url`, `public`, `content`) VALUES
(1, 'Contacto', 'contact', 1, 'Add your Contact information'),
(2, 'Acerca', 'about', 1, 'Add your About information');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `search_limit`
--

CREATE TABLE `search_limit` (
  `ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `search_limit`
--

INSERT INTO `search_limit` (`ip`, `count`, `updated_at`) VALUES
('::1', 3, '2023-08-14 20:38:16'),
('10.107.97.20', 6, '2023-08-14 15:33:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('ads_1', ''),
('ads_2', ''),
('ads_3', ''),
('ads_safe', '0'),
('cookie_policy_url', ''),
('favicon', 'favicon.png'),
('images_per_page', '100'),
('logo_large', 'logo_finder.svg'),
('logo_large_dark', 'logo_finder_dark.svg'),
('logo_small', 'logo_small.svg'),
('logo_small_dark', 'logo_small_dark.svg'),
('news_per_page', '10'),
('search_answers', '1'),
('search_api_key', '84d87c5df20a4b3586f75446cda02a1f'),
('search_entities', '1'),
('search_highlight', 'false'),
('search_market', 'en-US'),
('search_new_window', '0'),
('search_per_ip', '100'),
('search_privacy', '0'),
('search_related', '1'),
('search_safe_search', 'Moderate'),
('search_sites', ''),
('search_suggestions', '1'),
('search_time', '86400'),
('site_backgrounds', '1'),
('site_center_content', '1'),
('site_dark_mode', '1'),
('site_language', 'español'),
('site_tagline', 'Descubriendo el mundo en un click'),
('site_theme', 'search'),
('site_title', 'Finder'),
('suggestions_per_ip', '300'),
('timezone', 'America/Havana'),
('tracking_code', ''),
('videos_per_page', '10'),
('web_per_page', '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suggestions_limit`
--

CREATE TABLE `suggestions_limit` (
  `ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `suggestions_limit`
--

INSERT INTO `suggestions_limit` (`ip`, `count`, `updated_at`) VALUES
('::1', 6, '2023-08-14 20:37:28'),
('10.107.97.20', 12, '2023-08-14 15:29:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `info_pages`
--
ALTER TABLE `info_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `search_limit`
--
ALTER TABLE `search_limit`
  ADD PRIMARY KEY (`ip`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `suggestions_limit`
--
ALTER TABLE `suggestions_limit`
  ADD PRIMARY KEY (`ip`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `info_pages`
--
ALTER TABLE `info_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
