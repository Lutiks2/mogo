-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Січ 15 2021 р., 09:56
-- Версія сервера: 10.1.21-MariaDB
-- Версія PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `mogo`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-01-09 16:00:12', '2021-01-09 16:00:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://mogo.loc', 'yes'),
(2, 'home', 'http://mogo.loc', 'yes'),
(3, 'blogname', 'Mogo', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lutiks2013@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '3', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '1', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/archives/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:140:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:16:\"archives/team/?$\";s:24:\"index.php?post_type=team\";s:46:\"archives/team/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:41:\"archives/team/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:33:\"archives/team/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=team&paged=$matches[1]\";s:20:\"archives/services/?$\";s:28:\"index.php?post_type=services\";s:50:\"archives/services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:45:\"archives/services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:37:\"archives/services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:56:\"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:44:\"archives/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:29:\"archives/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:41:\"archives/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:23:\"archives/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:30:\"archives/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:42:\"archives/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:24:\"archives/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"archives/team/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"archives/team/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"archives/team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"archives/team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"archives/team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"archives/team/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"archives/team/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:34:\"archives/team/([^/]+)/trackback/?$\";s:31:\"index.php?team=$matches[1]&tb=1\";s:54:\"archives/team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:49:\"archives/team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:42:\"archives/team/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:49:\"archives/team/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&cpage=$matches[2]\";s:38:\"archives/team/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?team=$matches[1]&page=$matches[2]\";s:30:\"archives/team/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"archives/team/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"archives/team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"archives/team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"archives/team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"archives/team/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"archives/services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"archives/services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"archives/services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"archives/services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"archives/services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"archives/services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"archives/services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:38:\"archives/services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:58:\"archives/services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:53:\"archives/services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:46:\"archives/services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:53:\"archives/services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:42:\"archives/services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:34:\"archives/services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"archives/services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"archives/services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"archives/services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"archives/services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"archives/services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:44:\"archives/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:78:\"archives/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:73:\"archives/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:54:\"archives/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:66:\"archives/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:48:\"archives/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:65:\"archives/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:60:\"archives/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:41:\"archives/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:53:\"archives/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:35:\"archives/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:52:\"archives/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:47:\"archives/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:28:\"archives/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:40:\"archives/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:22:\"archives/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:36:\"archives/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"archives/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"archives/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"archives/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"archives/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"archives/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"archives/([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:29:\"archives/([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:49:\"archives/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:44:\"archives/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:37:\"archives/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:44:\"archives/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:33:\"archives/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:25:\"archives/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"archives/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"archives/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"archives/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"archives/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"archives/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mogo', 'yes'),
(41, 'stylesheet', 'mogo', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '13', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1625760002', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1610701215;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610726414;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610726415;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610726476;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610726479;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610899214;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1610699306;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1610214930;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(125, '_site_transient_timeout_browser_6279ce7fdbcd0067abea417c6ba96af0', '1610812877', 'no'),
(126, '_site_transient_browser_6279ce7fdbcd0067abea417c6ba96af0', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"84.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_e07d3b5b60161a40c9887e1155defaa1', '1610812878', 'no'),
(128, '_site_transient_php_check_e07d3b5b60161a40c9887e1155defaa1', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(145, 'finished_updating_comment_type', '1', 'yes'),
(146, '_site_transient_timeout_browser_741c1e13b17b11d116ee164c081a8e94', '1610814822', 'no'),
(147, '_site_transient_browser_741c1e13b17b11d116ee164c081a8e94', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(151, 'current_theme', 'Mogo Theme', 'yes'),
(152, 'theme_mods_mogo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"header\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:36;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'acf_version', '5.9.0', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(172, 'recovery_mode_email_last_sent', '1610220242', 'yes'),
(200, '_transient_health-check-site-status-result', '{\"good\":\"9\",\"recommended\":\"10\",\"critical\":\"1\"}', 'yes'),
(309, '_site_transient_timeout_browser_fd1542b917793d4750d2c355a2c7470a', '1611184452', 'no'),
(310, '_site_transient_browser_fd1542b917793d4750d2c355a2c7470a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(343, '_transient_timeout_acf_plugin_updates', '1610872110', 'no'),
(344, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.0\";}}', 'no'),
(345, '_site_transient_timeout_theme_roots', '1610701112', 'no'),
(346, '_site_transient_theme_roots', 'a:2:{s:4:\"mogo\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(347, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610699314;s:7:\"checked\";a:2:{s:4:\"mogo\";s:3:\"1.0\";s:15:\"twentyseventeen\";s:3:\"2.4\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(348, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610699316;s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1610580551:1'),
(4, 9, '_edit_lock', '1610215899:1'),
(5, 11, '_edit_lock', '1610215916:1'),
(6, 13, '_edit_lock', '1610578724:1'),
(7, 15, '_edit_lock', '1610215956:1'),
(8, 17, '_menu_item_type', 'post_type'),
(9, 17, '_menu_item_menu_item_parent', '0'),
(10, 17, '_menu_item_object_id', '6'),
(11, 17, '_menu_item_object', 'page'),
(12, 17, '_menu_item_target', ''),
(13, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 17, '_menu_item_xfn', ''),
(15, 17, '_menu_item_url', ''),
(17, 18, '_menu_item_type', 'post_type'),
(18, 18, '_menu_item_menu_item_parent', '0'),
(19, 18, '_menu_item_object_id', '13'),
(20, 18, '_menu_item_object', 'page'),
(21, 18, '_menu_item_target', ''),
(22, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 18, '_menu_item_xfn', ''),
(24, 18, '_menu_item_url', ''),
(26, 19, '_menu_item_type', 'post_type'),
(27, 19, '_menu_item_menu_item_parent', '0'),
(28, 19, '_menu_item_object_id', '15'),
(29, 19, '_menu_item_object', 'page'),
(30, 19, '_menu_item_target', ''),
(31, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 19, '_menu_item_xfn', ''),
(33, 19, '_menu_item_url', ''),
(35, 20, '_menu_item_type', 'post_type'),
(36, 20, '_menu_item_menu_item_parent', '0'),
(37, 20, '_menu_item_object_id', '2'),
(38, 20, '_menu_item_object', 'page'),
(39, 20, '_menu_item_target', ''),
(40, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 20, '_menu_item_xfn', ''),
(42, 20, '_menu_item_url', ''),
(43, 20, '_menu_item_orphaned', '1610216999'),
(44, 21, '_menu_item_type', 'post_type'),
(45, 21, '_menu_item_menu_item_parent', '0'),
(46, 21, '_menu_item_object_id', '9'),
(47, 21, '_menu_item_object', 'page'),
(48, 21, '_menu_item_target', ''),
(49, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 21, '_menu_item_xfn', ''),
(51, 21, '_menu_item_url', ''),
(53, 22, '_menu_item_type', 'post_type'),
(54, 22, '_menu_item_menu_item_parent', '0'),
(55, 22, '_menu_item_object_id', '11'),
(56, 22, '_menu_item_object', 'page'),
(57, 22, '_menu_item_target', ''),
(58, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 22, '_menu_item_xfn', ''),
(60, 22, '_menu_item_url', ''),
(62, 23, '_wp_attached_file', '2021/01/Logo.png'),
(63, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:23;s:4:\"file\";s:16:\"2021/01/Logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 23, '_wp_attachment_image_alt', 'mogo'),
(65, 24, '_wp_attached_file', '2021/01/cropped-Logo.png'),
(66, 24, '_wp_attachment_context', 'custom-logo'),
(67, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:23;s:4:\"file\";s:24:\"2021/01/cropped-Logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 25, '_wp_trash_meta_status', 'publish'),
(69, 25, '_wp_trash_meta_time', '1610220915'),
(70, 26, '_edit_last', '1'),
(71, 26, '_edit_lock', '1610604057:1'),
(72, 6, '_wp_page_template', 'front-page.php'),
(73, 6, '_edit_last', '1'),
(74, 6, 'about_0_welcome_slider_0_slider_image', '34'),
(75, 6, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(76, 6, 'about_0_welcome_slider', '4'),
(77, 6, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(78, 6, 'about_0_welcome_heading', 'Welcome to MoGo'),
(79, 6, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(80, 6, 'about_0_welcome_subheading', 'Creative Template'),
(81, 6, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(82, 6, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(83, 6, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(84, 6, 'about', 'a:4:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";i:2;s:12:\"team_section\";i:3;s:15:\"stories_section\";}'),
(85, 6, '_about', 'field_5ffa09983f46d'),
(86, 33, 'about_0_welcome_slider_0_slider_image', ''),
(87, 33, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(88, 33, 'about_0_welcome_slider', '1'),
(89, 33, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(90, 33, 'about_0_welcome_heading', ''),
(91, 33, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(92, 33, 'about_0_welcome_subheading', ''),
(93, 33, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(94, 33, 'about_0_welcome_link', ''),
(95, 33, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(96, 33, 'about', 'a:1:{i:0;s:15:\"welcome_section\";}'),
(97, 33, '_about', 'field_5ffa09983f46d'),
(98, 34, '_wp_attached_file', '2021/01/welcome-slider.png'),
(99, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1134;s:4:\"file\";s:26:\"2021/01/welcome-slider.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"welcome-slider-300x177.png\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"welcome-slider-1024x605.png\";s:5:\"width\";i:1024;s:6:\"height\";i:605;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"welcome-slider-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"welcome-slider-768x454.png\";s:5:\"width\";i:768;s:6:\"height\";i:454;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"welcome-slider-1536x907.png\";s:5:\"width\";i:1536;s:6:\"height\";i:907;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 35, 'about_0_welcome_slider_0_slider_image', '34'),
(101, 35, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(102, 35, 'about_0_welcome_slider', '1'),
(103, 35, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(104, 35, 'about_0_welcome_heading', ''),
(105, 35, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(106, 35, 'about_0_welcome_subheading', ''),
(107, 35, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(108, 35, 'about_0_welcome_link', ''),
(109, 35, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(110, 35, 'about', 'a:1:{i:0;s:15:\"welcome_section\";}'),
(111, 35, '_about', 'field_5ffa09983f46d'),
(112, 36, '_wp_attached_file', '2021/01/cropped-Logo-1.png'),
(113, 36, '_wp_attachment_context', 'custom-logo'),
(114, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:23;s:4:\"file\";s:26:\"2021/01/cropped-Logo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 37, '_wp_trash_meta_status', 'publish'),
(116, 37, '_wp_trash_meta_time', '1610226717'),
(117, 43, 'about_0_welcome_slider_0_slider_image', '34'),
(118, 43, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(119, 43, 'about_0_welcome_slider', '1'),
(120, 43, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(121, 43, 'about_0_welcome_heading', ''),
(122, 43, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(123, 43, 'about_0_welcome_subheading', ''),
(124, 43, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(125, 43, 'about_0_welcome_link', ''),
(126, 43, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(127, 43, 'about', 'a:1:{i:0;s:15:\"welcome_section\";}'),
(128, 43, '_about', 'field_5ffa09983f46d'),
(129, 46, '_edit_last', '1'),
(130, 46, '_edit_lock', '1610378930:1'),
(131, 48, '_edit_last', '1'),
(132, 48, '_edit_lock', '1610433484:1'),
(133, 53, '_wp_attached_file', '2021/01/alarm.png'),
(134, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:31;s:4:\"file\";s:17:\"2021/01/alarm.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 53, '_wp_attachment_image_alt', 'alarm'),
(137, 48, 'short_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dolore'),
(138, 48, '_short_description', 'field_5ffa302327b3a'),
(139, 59, '_wp_attached_file', '2021/01/what-we-do.png'),
(140, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:397;s:4:\"file\";s:22:\"2021/01/what-we-do.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"what-we-do-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"what-we-do-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 59, '_wp_attachment_image_alt', 'what-we-do'),
(142, 6, 'about_1_subheading', 'Service'),
(143, 6, '_about_1_subheading', 'field_5ffac57086c96'),
(144, 6, 'about_1_heading', 'what we do'),
(145, 6, '_about_1_heading', 'field_5ffac58586c97'),
(146, 6, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(147, 6, '_about_1_description', 'field_5ffac59686c98'),
(148, 6, 'about_1_image', '59'),
(149, 6, '_about_1_image', 'field_5ffac5c886c99'),
(150, 6, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(151, 6, '_about_1_service', 'field_5ffac5ed86c9a'),
(152, 60, 'about_0_welcome_slider_0_slider_image', '34'),
(153, 60, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(154, 60, 'about_0_welcome_slider', '1'),
(155, 60, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(156, 60, 'about_0_welcome_heading', ''),
(157, 60, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(158, 60, 'about_0_welcome_subheading', ''),
(159, 60, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(160, 60, 'about_0_welcome_link', ''),
(161, 60, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(162, 60, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(163, 60, '_about', 'field_5ffa09983f46d'),
(164, 60, 'about_1_subheading', 'Service'),
(165, 60, '_about_1_subheading', 'field_5ffac57086c96'),
(166, 60, 'about_1_heading', 'what we do'),
(167, 60, '_about_1_heading', 'field_5ffac58586c97'),
(168, 60, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(169, 60, '_about_1_description', 'field_5ffac59686c98'),
(170, 60, 'about_1_image', '59'),
(171, 60, '_about_1_image', 'field_5ffac5c886c99'),
(172, 60, 'about_1_service', 'a:1:{i:0;s:2:\"48\";}'),
(173, 60, '_about_1_service', 'field_5ffac5ed86c9a'),
(174, 48, 'services_0_heading', 'Photography'),
(175, 48, '_services_0_heading', 'field_5ffb1432ded90'),
(176, 48, 'services_0_image', '66'),
(177, 48, '_services_0_image', 'field_5ffb145dded91'),
(178, 48, 'services_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(179, 48, '_services_0_description', 'field_5ffb146bded92'),
(180, 48, 'services_0_short_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'),
(181, 48, '_services_0_short_description', 'field_5ffb148bded93'),
(182, 48, 'services', 'a:1:{i:0;s:13:\"service_block\";}'),
(183, 48, '_services', 'field_5ffa302327b3a'),
(184, 65, '_wp_attached_file', '2021/01/equalizer.png'),
(185, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:28;s:6:\"height\";i:32;s:4:\"file\";s:21:\"2021/01/equalizer.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 65, '_wp_attachment_image_alt', 'Creativity'),
(187, 66, '_wp_attached_file', '2021/01/photography.png'),
(188, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:23:\"2021/01/photography.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 66, '_wp_attachment_image_alt', 'photography'),
(190, 67, '_edit_last', '1'),
(191, 67, '_edit_lock', '1610293963:1'),
(192, 67, 'services_0_heading', 'Creativity'),
(193, 67, '_services_0_heading', 'field_5ffb1432ded90'),
(194, 67, 'services_0_image', '65'),
(195, 67, '_services_0_image', 'field_5ffb145dded91'),
(196, 67, 'services_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet, consectetur'),
(197, 67, '_services_0_description', 'field_5ffb146bded92'),
(198, 67, 'services_0_short_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectet'),
(199, 67, '_services_0_short_description', 'field_5ffb148bded93'),
(200, 67, 'services', 'a:1:{i:0;s:13:\"service_block\";}'),
(201, 67, '_services', 'field_5ffa302327b3a'),
(202, 68, '_edit_last', '1'),
(203, 68, '_edit_lock', '1610318125:1'),
(204, 69, '_wp_attached_file', '2021/01/bullseye.png'),
(205, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:20:\"2021/01/bullseye.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 69, '_wp_attachment_image_alt', 'Web design'),
(207, 68, 'services_0_heading', 'Web design'),
(208, 68, '_services_0_heading', 'field_5ffb1432ded90'),
(209, 68, 'services_0_image', '69'),
(210, 68, '_services_0_image', 'field_5ffb145dded91'),
(211, 68, 'services_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(212, 68, '_services_0_description', 'field_5ffb146bded92'),
(213, 68, 'services_0_short_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor si'),
(214, 68, '_services_0_short_description', 'field_5ffb148bded93'),
(215, 68, 'services', 'a:1:{i:0;s:13:\"service_block\";}'),
(216, 68, '_services', 'field_5ffa302327b3a'),
(217, 70, 'about_0_welcome_slider_0_slider_image', '34'),
(218, 70, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(219, 70, 'about_0_welcome_slider', '1'),
(220, 70, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(221, 70, 'about_0_welcome_heading', ''),
(222, 70, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(223, 70, 'about_0_welcome_subheading', ''),
(224, 70, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(225, 70, 'about_0_welcome_link', ''),
(226, 70, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(227, 70, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(228, 70, '_about', 'field_5ffa09983f46d'),
(229, 70, 'about_1_subheading', 'Service'),
(230, 70, '_about_1_subheading', 'field_5ffac57086c96'),
(231, 70, 'about_1_heading', 'what we do'),
(232, 70, '_about_1_heading', 'field_5ffac58586c97'),
(233, 70, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(234, 70, '_about_1_description', 'field_5ffac59686c98'),
(235, 70, 'about_1_image', '59'),
(236, 70, '_about_1_image', 'field_5ffac5c886c99'),
(237, 70, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(238, 70, '_about_1_service', 'field_5ffac5ed86c9a'),
(239, 71, '_wp_attached_file', '2021/01/clock.jpg'),
(240, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:17:\"2021/01/clock.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"clock-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"clock-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"clock-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-T2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"80\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 72, '_wp_attached_file', '2021/01/services_bg.png'),
(242, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2021/01/services_bg.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"services_bg-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"services_bg-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"services_bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"services_bg-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"services_bg-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 6, 'about_0_welcome_slider_1_slider_image', '71'),
(244, 6, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(245, 6, 'about_0_welcome_slider_2_slider_image', '72'),
(246, 6, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(247, 73, 'about_0_welcome_slider_0_slider_image', '34'),
(248, 73, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(249, 73, 'about_0_welcome_slider', '3'),
(250, 73, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(251, 73, 'about_0_welcome_heading', ''),
(252, 73, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(253, 73, 'about_0_welcome_subheading', ''),
(254, 73, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(255, 73, 'about_0_welcome_link', ''),
(256, 73, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(257, 73, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(258, 73, '_about', 'field_5ffa09983f46d'),
(259, 73, 'about_1_subheading', 'Service'),
(260, 73, '_about_1_subheading', 'field_5ffac57086c96'),
(261, 73, 'about_1_heading', 'what we do'),
(262, 73, '_about_1_heading', 'field_5ffac58586c97'),
(263, 73, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(264, 73, '_about_1_description', 'field_5ffac59686c98'),
(265, 73, 'about_1_image', '59'),
(266, 73, '_about_1_image', 'field_5ffac5c886c99'),
(267, 73, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(268, 73, '_about_1_service', 'field_5ffac5ed86c9a'),
(269, 73, 'about_0_welcome_slider_1_slider_image', '71'),
(270, 73, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(271, 73, 'about_0_welcome_slider_2_slider_image', '72'),
(272, 73, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(273, 74, 'about_0_welcome_slider_0_slider_image', '34'),
(274, 74, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(275, 74, 'about_0_welcome_slider', '3'),
(276, 74, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(277, 74, 'about_0_welcome_heading', 'Welcome to MoGo'),
(278, 74, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(279, 74, 'about_0_welcome_subheading', ''),
(280, 74, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(281, 74, 'about_0_welcome_link', ''),
(282, 74, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(283, 74, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(284, 74, '_about', 'field_5ffa09983f46d'),
(285, 74, 'about_1_subheading', 'Service'),
(286, 74, '_about_1_subheading', 'field_5ffac57086c96'),
(287, 74, 'about_1_heading', 'what we do'),
(288, 74, '_about_1_heading', 'field_5ffac58586c97'),
(289, 74, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(290, 74, '_about_1_description', 'field_5ffac59686c98'),
(291, 74, 'about_1_image', '59'),
(292, 74, '_about_1_image', 'field_5ffac5c886c99'),
(293, 74, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(294, 74, '_about_1_service', 'field_5ffac5ed86c9a'),
(295, 74, 'about_0_welcome_slider_1_slider_image', '71'),
(296, 74, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(297, 74, 'about_0_welcome_slider_2_slider_image', '72'),
(298, 74, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(299, 75, 'about_0_welcome_slider_0_slider_image', '34'),
(300, 75, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(301, 75, 'about_0_welcome_slider', '3'),
(302, 75, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(303, 75, 'about_0_welcome_heading', 'Welcome to MoGo'),
(304, 75, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(305, 75, 'about_0_welcome_subheading', ''),
(306, 75, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(307, 75, 'about_0_welcome_link', ''),
(308, 75, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(309, 75, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(310, 75, '_about', 'field_5ffa09983f46d'),
(311, 75, 'about_1_subheading', 'Service'),
(312, 75, '_about_1_subheading', 'field_5ffac57086c96'),
(313, 75, 'about_1_heading', 'what we do'),
(314, 75, '_about_1_heading', 'field_5ffac58586c97'),
(315, 75, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(316, 75, '_about_1_description', 'field_5ffac59686c98'),
(317, 75, 'about_1_image', '59'),
(318, 75, '_about_1_image', 'field_5ffac5c886c99'),
(319, 75, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(320, 75, '_about_1_service', 'field_5ffac5ed86c9a'),
(321, 75, 'about_0_welcome_slider_1_slider_image', '71'),
(322, 75, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(323, 75, 'about_0_welcome_slider_2_slider_image', '72'),
(324, 75, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(325, 76, 'about_0_welcome_slider_0_slider_image', '34'),
(326, 76, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(327, 76, 'about_0_welcome_slider', '3'),
(328, 76, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(329, 76, 'about_0_welcome_heading', 'Welcome to MoGo'),
(330, 76, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(331, 76, 'about_0_welcome_subheading', 'Creative Template'),
(332, 76, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(333, 76, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(334, 76, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(335, 76, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(336, 76, '_about', 'field_5ffa09983f46d'),
(337, 76, 'about_1_subheading', 'Service'),
(338, 76, '_about_1_subheading', 'field_5ffac57086c96'),
(339, 76, 'about_1_heading', 'what we do'),
(340, 76, '_about_1_heading', 'field_5ffac58586c97'),
(341, 76, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(342, 76, '_about_1_description', 'field_5ffac59686c98'),
(343, 76, 'about_1_image', '59'),
(344, 76, '_about_1_image', 'field_5ffac5c886c99'),
(345, 76, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(346, 76, '_about_1_service', 'field_5ffac5ed86c9a'),
(347, 76, 'about_0_welcome_slider_1_slider_image', '71'),
(348, 76, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(349, 76, 'about_0_welcome_slider_2_slider_image', '72'),
(350, 76, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(351, 6, 'about_0_welcome_slider_3_slider_image', '78'),
(352, 6, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(353, 77, 'about_0_welcome_slider_0_slider_image', '34'),
(354, 77, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(355, 77, 'about_0_welcome_slider', '4'),
(356, 77, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(357, 77, 'about_0_welcome_heading', 'Welcome to MoGo'),
(358, 77, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(359, 77, 'about_0_welcome_subheading', 'Creative Template'),
(360, 77, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(361, 77, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(362, 77, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(363, 77, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(364, 77, '_about', 'field_5ffa09983f46d'),
(365, 77, 'about_1_subheading', 'Service'),
(366, 77, '_about_1_subheading', 'field_5ffac57086c96'),
(367, 77, 'about_1_heading', 'what we do'),
(368, 77, '_about_1_heading', 'field_5ffac58586c97'),
(369, 77, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(370, 77, '_about_1_description', 'field_5ffac59686c98'),
(371, 77, 'about_1_image', '59'),
(372, 77, '_about_1_image', 'field_5ffac5c886c99'),
(373, 77, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(374, 77, '_about_1_service', 'field_5ffac5ed86c9a'),
(375, 77, 'about_0_welcome_slider_1_slider_image', '71'),
(376, 77, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(377, 77, 'about_0_welcome_slider_2_slider_image', '72'),
(378, 77, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(379, 77, 'about_0_welcome_slider_3_slider_image', '71'),
(380, 77, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(381, 78, '_wp_attached_file', '2021/01/price_table_bg.png'),
(382, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1108;s:4:\"file\";s:26:\"2021/01/price_table_bg.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"price_table_bg-300x173.png\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"price_table_bg-1024x591.png\";s:5:\"width\";i:1024;s:6:\"height\";i:591;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"price_table_bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"price_table_bg-768x443.png\";s:5:\"width\";i:768;s:6:\"height\";i:443;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"price_table_bg-1536x886.png\";s:5:\"width\";i:1536;s:6:\"height\";i:886;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 79, 'about_0_welcome_slider_0_slider_image', '34'),
(384, 79, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(385, 79, 'about_0_welcome_slider', '4'),
(386, 79, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(387, 79, 'about_0_welcome_heading', 'Welcome to MoGo'),
(388, 79, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(389, 79, 'about_0_welcome_subheading', 'Creative Template'),
(390, 79, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(391, 79, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(392, 79, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(393, 79, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(394, 79, '_about', 'field_5ffa09983f46d'),
(395, 79, 'about_1_subheading', 'Service'),
(396, 79, '_about_1_subheading', 'field_5ffac57086c96'),
(397, 79, 'about_1_heading', 'what we do'),
(398, 79, '_about_1_heading', 'field_5ffac58586c97'),
(399, 79, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(400, 79, '_about_1_description', 'field_5ffac59686c98'),
(401, 79, 'about_1_image', '59'),
(402, 79, '_about_1_image', 'field_5ffac5c886c99'),
(403, 79, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(404, 79, '_about_1_service', 'field_5ffac5ed86c9a'),
(405, 79, 'about_0_welcome_slider_1_slider_image', '71'),
(406, 79, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(407, 79, 'about_0_welcome_slider_2_slider_image', '72'),
(408, 79, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(409, 79, 'about_0_welcome_slider_3_slider_image', '78'),
(410, 79, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(411, 6, 'about_0_welcome_slider_0_slide_number', '01'),
(412, 6, '_about_0_welcome_slider_0_slide_number', 'field_5ffda4db8d8a8'),
(413, 6, 'about_0_welcome_slider_0_slide_text', 'Intro'),
(414, 6, '_about_0_welcome_slider_0_slide_text', 'field_5ffda4ff8d8a9'),
(415, 6, 'about_0_welcome_slider_1_slide_number', '02'),
(416, 6, '_about_0_welcome_slider_1_slide_number', 'field_5ffda4db8d8a8'),
(417, 6, 'about_0_welcome_slider_1_slide_text', 'Work'),
(418, 6, '_about_0_welcome_slider_1_slide_text', 'field_5ffda4ff8d8a9'),
(419, 6, 'about_0_welcome_slider_2_slide_number', '03'),
(420, 6, '_about_0_welcome_slider_2_slide_number', 'field_5ffda4db8d8a8'),
(421, 6, 'about_0_welcome_slider_2_slide_text', 'About'),
(422, 6, '_about_0_welcome_slider_2_slide_text', 'field_5ffda4ff8d8a9'),
(423, 6, 'about_0_welcome_slider_3_slide_number', '04'),
(424, 6, '_about_0_welcome_slider_3_slide_number', 'field_5ffda4db8d8a8'),
(425, 6, 'about_0_welcome_slider_3_slide_text', 'Contacts'),
(426, 6, '_about_0_welcome_slider_3_slide_text', 'field_5ffda4ff8d8a9'),
(427, 82, 'about_0_welcome_slider_0_slider_image', '34'),
(428, 82, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(429, 82, 'about_0_welcome_slider', '4'),
(430, 82, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(431, 82, 'about_0_welcome_heading', 'Welcome to MoGo'),
(432, 82, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(433, 82, 'about_0_welcome_subheading', 'Creative Template'),
(434, 82, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(435, 82, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(436, 82, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(437, 82, 'about', 'a:2:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";}'),
(438, 82, '_about', 'field_5ffa09983f46d'),
(439, 82, 'about_1_subheading', 'Service'),
(440, 82, '_about_1_subheading', 'field_5ffac57086c96'),
(441, 82, 'about_1_heading', 'what we do'),
(442, 82, '_about_1_heading', 'field_5ffac58586c97'),
(443, 82, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(444, 82, '_about_1_description', 'field_5ffac59686c98'),
(445, 82, 'about_1_image', '59'),
(446, 82, '_about_1_image', 'field_5ffac5c886c99'),
(447, 82, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(448, 82, '_about_1_service', 'field_5ffac5ed86c9a'),
(449, 82, 'about_0_welcome_slider_1_slider_image', '71'),
(450, 82, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(451, 82, 'about_0_welcome_slider_2_slider_image', '72'),
(452, 82, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(453, 82, 'about_0_welcome_slider_3_slider_image', '78'),
(454, 82, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(455, 82, 'about_0_welcome_slider_0_slide_number', '01'),
(456, 82, '_about_0_welcome_slider_0_slide_number', 'field_5ffda4db8d8a8'),
(457, 82, 'about_0_welcome_slider_0_slide_text', 'Intro'),
(458, 82, '_about_0_welcome_slider_0_slide_text', 'field_5ffda4ff8d8a9'),
(459, 82, 'about_0_welcome_slider_1_slide_number', '02'),
(460, 82, '_about_0_welcome_slider_1_slide_number', 'field_5ffda4db8d8a8'),
(461, 82, 'about_0_welcome_slider_1_slide_text', 'Work'),
(462, 82, '_about_0_welcome_slider_1_slide_text', 'field_5ffda4ff8d8a9'),
(463, 82, 'about_0_welcome_slider_2_slide_number', '03'),
(464, 82, '_about_0_welcome_slider_2_slide_number', 'field_5ffda4db8d8a8'),
(465, 82, 'about_0_welcome_slider_2_slide_text', 'About'),
(466, 82, '_about_0_welcome_slider_2_slide_text', 'field_5ffda4ff8d8a9'),
(467, 82, 'about_0_welcome_slider_3_slide_number', '04'),
(468, 82, '_about_0_welcome_slider_3_slide_number', 'field_5ffda4db8d8a8'),
(469, 82, 'about_0_welcome_slider_3_slide_text', 'Contacts'),
(470, 82, '_about_0_welcome_slider_3_slide_text', 'field_5ffda4ff8d8a9'),
(471, 85, '_edit_last', '1'),
(472, 85, '_edit_lock', '1610566818:1'),
(473, 87, '_edit_last', '1'),
(474, 87, '_edit_lock', '1610580920:1'),
(475, 87, 'team_name', 'Matthew Dix'),
(476, 87, '_team_name', 'field_5ffea024f2f80'),
(477, 6, 'about_2_subheading', 'Who we are'),
(478, 6, '_about_2_subheading', 'field_5ffe9c483cd73'),
(479, 6, 'about_2_heading', 'Meet our team'),
(480, 6, '_about_2_heading', 'field_5ffe9c583cd74'),
(481, 6, 'about_2_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(482, 6, '_about_2_description', 'field_5ffe9e6b3cd75'),
(483, 6, 'about_2_teams', 'a:3:{i:0;s:2:\"87\";i:1;s:3:\"100\";i:2;s:3:\"102\";}'),
(484, 6, '_about_2_teams', 'field_5ffea1263cd7a'),
(485, 92, 'about_0_welcome_slider_0_slider_image', '34'),
(486, 92, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(487, 92, 'about_0_welcome_slider', '4'),
(488, 92, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(489, 92, 'about_0_welcome_heading', 'Welcome to MoGo'),
(490, 92, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(491, 92, 'about_0_welcome_subheading', 'Creative Template'),
(492, 92, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(493, 92, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(494, 92, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(495, 92, 'about', 'a:3:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";i:2;s:12:\"team_section\";}'),
(496, 92, '_about', 'field_5ffa09983f46d'),
(497, 92, 'about_1_subheading', 'Service'),
(498, 92, '_about_1_subheading', 'field_5ffac57086c96'),
(499, 92, 'about_1_heading', 'what we do'),
(500, 92, '_about_1_heading', 'field_5ffac58586c97'),
(501, 92, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(502, 92, '_about_1_description', 'field_5ffac59686c98'),
(503, 92, 'about_1_image', '59'),
(504, 92, '_about_1_image', 'field_5ffac5c886c99'),
(505, 92, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(506, 92, '_about_1_service', 'field_5ffac5ed86c9a'),
(507, 92, 'about_0_welcome_slider_1_slider_image', '71'),
(508, 92, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(509, 92, 'about_0_welcome_slider_2_slider_image', '72'),
(510, 92, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(511, 92, 'about_0_welcome_slider_3_slider_image', '78'),
(512, 92, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(513, 92, 'about_0_welcome_slider_0_slide_number', '01'),
(514, 92, '_about_0_welcome_slider_0_slide_number', 'field_5ffda4db8d8a8'),
(515, 92, 'about_0_welcome_slider_0_slide_text', 'Intro'),
(516, 92, '_about_0_welcome_slider_0_slide_text', 'field_5ffda4ff8d8a9'),
(517, 92, 'about_0_welcome_slider_1_slide_number', '02'),
(518, 92, '_about_0_welcome_slider_1_slide_number', 'field_5ffda4db8d8a8'),
(519, 92, 'about_0_welcome_slider_1_slide_text', 'Work'),
(520, 92, '_about_0_welcome_slider_1_slide_text', 'field_5ffda4ff8d8a9'),
(521, 92, 'about_0_welcome_slider_2_slide_number', '03'),
(522, 92, '_about_0_welcome_slider_2_slide_number', 'field_5ffda4db8d8a8'),
(523, 92, 'about_0_welcome_slider_2_slide_text', 'About'),
(524, 92, '_about_0_welcome_slider_2_slide_text', 'field_5ffda4ff8d8a9'),
(525, 92, 'about_0_welcome_slider_3_slide_number', '04'),
(526, 92, '_about_0_welcome_slider_3_slide_number', 'field_5ffda4db8d8a8'),
(527, 92, 'about_0_welcome_slider_3_slide_text', 'Contacts'),
(528, 92, '_about_0_welcome_slider_3_slide_text', 'field_5ffda4ff8d8a9'),
(529, 92, 'about_2_subheading', 'Who we are'),
(530, 92, '_about_2_subheading', 'field_5ffe9c483cd73'),
(531, 92, 'about_2_heading', 'Meet our team'),
(532, 92, '_about_2_heading', 'field_5ffe9c583cd74'),
(533, 92, 'about_2_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(534, 92, '_about_2_description', 'field_5ffe9e6b3cd75'),
(535, 92, 'about_2_teams', 'a:1:{i:0;s:2:\"87\";}'),
(536, 92, '_about_2_teams', 'field_5ffea1263cd7a'),
(537, 93, 'about_0_welcome_slider_0_slider_image', '34'),
(538, 93, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(539, 93, 'about_0_welcome_slider', '4'),
(540, 93, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(541, 93, 'about_0_welcome_heading', 'Welcome to MoGo'),
(542, 93, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(543, 93, 'about_0_welcome_subheading', 'Creative Template'),
(544, 93, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(545, 93, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(546, 93, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(547, 93, 'about', 'a:3:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";i:2;s:12:\"team_section\";}'),
(548, 93, '_about', 'field_5ffa09983f46d'),
(549, 93, 'about_1_subheading', 'Service'),
(550, 93, '_about_1_subheading', 'field_5ffac57086c96'),
(551, 93, 'about_1_heading', 'what we do'),
(552, 93, '_about_1_heading', 'field_5ffac58586c97'),
(553, 93, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(554, 93, '_about_1_description', 'field_5ffac59686c98'),
(555, 93, 'about_1_image', '59'),
(556, 93, '_about_1_image', 'field_5ffac5c886c99'),
(557, 93, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(558, 93, '_about_1_service', 'field_5ffac5ed86c9a'),
(559, 93, 'about_0_welcome_slider_1_slider_image', '71'),
(560, 93, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(561, 93, 'about_0_welcome_slider_2_slider_image', '72'),
(562, 93, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(563, 93, 'about_0_welcome_slider_3_slider_image', '78'),
(564, 93, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(565, 93, 'about_0_welcome_slider_0_slide_number', '01'),
(566, 93, '_about_0_welcome_slider_0_slide_number', 'field_5ffda4db8d8a8'),
(567, 93, 'about_0_welcome_slider_0_slide_text', 'Intro'),
(568, 93, '_about_0_welcome_slider_0_slide_text', 'field_5ffda4ff8d8a9'),
(569, 93, 'about_0_welcome_slider_1_slide_number', '02'),
(570, 93, '_about_0_welcome_slider_1_slide_number', 'field_5ffda4db8d8a8'),
(571, 93, 'about_0_welcome_slider_1_slide_text', 'Work'),
(572, 93, '_about_0_welcome_slider_1_slide_text', 'field_5ffda4ff8d8a9'),
(573, 93, 'about_0_welcome_slider_2_slide_number', '03'),
(574, 93, '_about_0_welcome_slider_2_slide_number', 'field_5ffda4db8d8a8'),
(575, 93, 'about_0_welcome_slider_2_slide_text', 'About'),
(576, 93, '_about_0_welcome_slider_2_slide_text', 'field_5ffda4ff8d8a9'),
(577, 93, 'about_0_welcome_slider_3_slide_number', '04'),
(578, 93, '_about_0_welcome_slider_3_slide_number', 'field_5ffda4db8d8a8'),
(579, 93, 'about_0_welcome_slider_3_slide_text', 'Contacts'),
(580, 93, '_about_0_welcome_slider_3_slide_text', 'field_5ffda4ff8d8a9'),
(581, 93, 'about_2_subheading', 'Who we are'),
(582, 93, '_about_2_subheading', 'field_5ffe9c483cd73'),
(583, 93, 'about_2_heading', 'Meet our team'),
(584, 93, '_about_2_heading', 'field_5ffe9c583cd74'),
(585, 93, 'about_2_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(586, 93, '_about_2_description', 'field_5ffe9e6b3cd75'),
(587, 93, 'about_2_teams', 'a:1:{i:0;s:2:\"87\";}'),
(588, 93, '_about_2_teams', 'field_5ffea1263cd7a'),
(589, 87, 'member_name', 'Matthew Dix'),
(590, 87, '_member_name', 'field_5ffea024f2f80'),
(591, 94, '_edit_lock', '1610578706:1'),
(592, 94, '_wp_page_template', 'page-team.php'),
(593, 96, '_menu_item_type', 'post_type'),
(594, 96, '_menu_item_menu_item_parent', '0'),
(595, 96, '_menu_item_object_id', '94'),
(596, 96, '_menu_item_object', 'page'),
(597, 96, '_menu_item_target', ''),
(598, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(599, 96, '_menu_item_xfn', ''),
(600, 96, '_menu_item_url', ''),
(605, 87, 'member_position', 'Graphic Design'),
(606, 87, '_member_position', 'field_5ffecd47dab97'),
(607, 87, 'member_foto', '108'),
(608, 87, '_member_foto', 'field_5ffecd5ddab98'),
(609, 100, '_edit_last', '1'),
(610, 100, '_edit_lock', '1610580911:1'),
(614, 100, 'member_name', 'Christopher Campbell'),
(615, 100, '_member_name', 'field_5ffea024f2f80'),
(616, 100, 'member_position', 'Branding/UX design'),
(617, 100, '_member_position', 'field_5ffecd47dab97'),
(618, 100, 'member_foto', '107'),
(619, 100, '_member_foto', 'field_5ffecd5ddab98'),
(623, 102, '_edit_last', '1'),
(624, 102, 'member_name', 'Michael Fertig '),
(625, 102, '_member_name', 'field_5ffea024f2f80'),
(626, 102, 'member_position', 'Developer'),
(627, 102, '_member_position', 'field_5ffecd47dab97'),
(628, 102, 'member_foto', '106'),
(629, 102, '_member_foto', 'field_5ffecd5ddab98'),
(630, 102, '_edit_lock', '1610580808:1'),
(631, 104, 'about_0_welcome_slider_0_slider_image', '34'),
(632, 104, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(633, 104, 'about_0_welcome_slider', '4'),
(634, 104, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(635, 104, 'about_0_welcome_heading', 'Welcome to MoGo'),
(636, 104, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(637, 104, 'about_0_welcome_subheading', 'Creative Template'),
(638, 104, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(639, 104, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(640, 104, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(641, 104, 'about', 'a:3:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";i:2;s:12:\"team_section\";}'),
(642, 104, '_about', 'field_5ffa09983f46d'),
(643, 104, 'about_1_subheading', 'Service'),
(644, 104, '_about_1_subheading', 'field_5ffac57086c96'),
(645, 104, 'about_1_heading', 'what we do'),
(646, 104, '_about_1_heading', 'field_5ffac58586c97'),
(647, 104, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(648, 104, '_about_1_description', 'field_5ffac59686c98'),
(649, 104, 'about_1_image', '59'),
(650, 104, '_about_1_image', 'field_5ffac5c886c99'),
(651, 104, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(652, 104, '_about_1_service', 'field_5ffac5ed86c9a'),
(653, 104, 'about_0_welcome_slider_1_slider_image', '71'),
(654, 104, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(655, 104, 'about_0_welcome_slider_2_slider_image', '72'),
(656, 104, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(657, 104, 'about_0_welcome_slider_3_slider_image', '78'),
(658, 104, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(659, 104, 'about_0_welcome_slider_0_slide_number', '01'),
(660, 104, '_about_0_welcome_slider_0_slide_number', 'field_5ffda4db8d8a8'),
(661, 104, 'about_0_welcome_slider_0_slide_text', 'Intro'),
(662, 104, '_about_0_welcome_slider_0_slide_text', 'field_5ffda4ff8d8a9'),
(663, 104, 'about_0_welcome_slider_1_slide_number', '02'),
(664, 104, '_about_0_welcome_slider_1_slide_number', 'field_5ffda4db8d8a8'),
(665, 104, 'about_0_welcome_slider_1_slide_text', 'Work'),
(666, 104, '_about_0_welcome_slider_1_slide_text', 'field_5ffda4ff8d8a9'),
(667, 104, 'about_0_welcome_slider_2_slide_number', '03'),
(668, 104, '_about_0_welcome_slider_2_slide_number', 'field_5ffda4db8d8a8'),
(669, 104, 'about_0_welcome_slider_2_slide_text', 'About'),
(670, 104, '_about_0_welcome_slider_2_slide_text', 'field_5ffda4ff8d8a9'),
(671, 104, 'about_0_welcome_slider_3_slide_number', '04'),
(672, 104, '_about_0_welcome_slider_3_slide_number', 'field_5ffda4db8d8a8'),
(673, 104, 'about_0_welcome_slider_3_slide_text', 'Contacts'),
(674, 104, '_about_0_welcome_slider_3_slide_text', 'field_5ffda4ff8d8a9'),
(675, 104, 'about_2_subheading', 'Who we are'),
(676, 104, '_about_2_subheading', 'field_5ffe9c483cd73'),
(677, 104, 'about_2_heading', 'Meet our team'),
(678, 104, '_about_2_heading', 'field_5ffe9c583cd74');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(679, 104, 'about_2_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(680, 104, '_about_2_description', 'field_5ffe9e6b3cd75'),
(681, 104, 'about_2_teams', 'a:3:{i:0;s:2:\"87\";i:1;s:3:\"100\";i:2;s:3:\"102\";}'),
(682, 104, '_about_2_teams', 'field_5ffea1263cd7a'),
(683, 105, 'about_0_welcome_slider_0_slider_image', '34'),
(684, 105, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(685, 105, 'about_0_welcome_slider', '4'),
(686, 105, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(687, 105, 'about_0_welcome_heading', 'Welcome to MoGo'),
(688, 105, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(689, 105, 'about_0_welcome_subheading', 'Creative Template'),
(690, 105, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(691, 105, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(692, 105, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(693, 105, 'about', 'a:3:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";i:2;s:12:\"team_section\";}'),
(694, 105, '_about', 'field_5ffa09983f46d'),
(695, 105, 'about_1_subheading', 'Service'),
(696, 105, '_about_1_subheading', 'field_5ffac57086c96'),
(697, 105, 'about_1_heading', 'what we do'),
(698, 105, '_about_1_heading', 'field_5ffac58586c97'),
(699, 105, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(700, 105, '_about_1_description', 'field_5ffac59686c98'),
(701, 105, 'about_1_image', '59'),
(702, 105, '_about_1_image', 'field_5ffac5c886c99'),
(703, 105, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(704, 105, '_about_1_service', 'field_5ffac5ed86c9a'),
(705, 105, 'about_0_welcome_slider_1_slider_image', '71'),
(706, 105, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(707, 105, 'about_0_welcome_slider_2_slider_image', '72'),
(708, 105, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(709, 105, 'about_0_welcome_slider_3_slider_image', '78'),
(710, 105, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(711, 105, 'about_0_welcome_slider_0_slide_number', '01'),
(712, 105, '_about_0_welcome_slider_0_slide_number', 'field_5ffda4db8d8a8'),
(713, 105, 'about_0_welcome_slider_0_slide_text', 'Intro'),
(714, 105, '_about_0_welcome_slider_0_slide_text', 'field_5ffda4ff8d8a9'),
(715, 105, 'about_0_welcome_slider_1_slide_number', '02'),
(716, 105, '_about_0_welcome_slider_1_slide_number', 'field_5ffda4db8d8a8'),
(717, 105, 'about_0_welcome_slider_1_slide_text', 'Work'),
(718, 105, '_about_0_welcome_slider_1_slide_text', 'field_5ffda4ff8d8a9'),
(719, 105, 'about_0_welcome_slider_2_slide_number', '03'),
(720, 105, '_about_0_welcome_slider_2_slide_number', 'field_5ffda4db8d8a8'),
(721, 105, 'about_0_welcome_slider_2_slide_text', 'About'),
(722, 105, '_about_0_welcome_slider_2_slide_text', 'field_5ffda4ff8d8a9'),
(723, 105, 'about_0_welcome_slider_3_slide_number', '04'),
(724, 105, '_about_0_welcome_slider_3_slide_number', 'field_5ffda4db8d8a8'),
(725, 105, 'about_0_welcome_slider_3_slide_text', 'Contacts'),
(726, 105, '_about_0_welcome_slider_3_slide_text', 'field_5ffda4ff8d8a9'),
(727, 105, 'about_2_subheading', 'Who we are'),
(728, 105, '_about_2_subheading', 'field_5ffe9c483cd73'),
(729, 105, 'about_2_heading', 'Meet our team'),
(730, 105, '_about_2_heading', 'field_5ffe9c583cd74'),
(731, 105, 'about_2_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(732, 105, '_about_2_description', 'field_5ffe9e6b3cd75'),
(733, 105, 'about_2_teams', 'a:3:{i:0;s:2:\"87\";i:1;s:3:\"100\";i:2;s:3:\"102\";}'),
(734, 105, '_about_2_teams', 'field_5ffea1263cd7a'),
(735, 106, '_wp_attached_file', '2021/01/michael-develop.png'),
(736, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:470;s:4:\"file\";s:27:\"2021/01/michael-develop.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"michael-develop-243x300.png\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"michael-develop-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(737, 106, '_wp_attachment_image_alt', 'michael-develop'),
(738, 107, '_wp_attached_file', '2021/01/cris.png'),
(739, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:470;s:4:\"file\";s:16:\"2021/01/cris.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"cris-243x300.png\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"cris-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(740, 107, '_wp_attachment_image_alt', 'cris'),
(741, 108, '_wp_attached_file', '2021/01/matt.png'),
(742, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:470;s:4:\"file\";s:16:\"2021/01/matt.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"matt-243x300.png\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"matt-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(743, 108, '_wp_attachment_image_alt', 'matthew'),
(744, 109, '_wp_attached_file', '2021/01/matthew.png'),
(745, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:875;s:6:\"height\";i:492;s:4:\"file\";s:19:\"2021/01/matthew.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"matthew-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"matthew-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"matthew-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(746, 114, '_wp_attached_file', '2021/01/twitter.png'),
(747, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:28;s:6:\"height\";i:24;s:4:\"file\";s:19:\"2021/01/twitter.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(748, 114, '_wp_attachment_image_alt', 'twitter'),
(749, 115, '_wp_attached_file', '2021/01/twitter-1.png'),
(750, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:28;s:6:\"height\";i:24;s:4:\"file\";s:21:\"2021/01/twitter-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(751, 115, '_wp_attachment_image_alt', 'twitter'),
(752, 87, 'member_share_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(753, 87, '_member_share_0_link', 'field_5fff13d390167'),
(754, 87, 'member_share_0_link_image', '114'),
(755, 87, '_member_share_0_link_image', 'field_5fff13f490168'),
(756, 87, 'member_share_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(757, 87, '_member_share_1_link', 'field_5fff13d390167'),
(758, 87, 'member_share_1_link_image', '115'),
(759, 87, '_member_share_1_link_image', 'field_5fff13f490168'),
(760, 87, 'member_share_2_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:14:\"http://twitter\";s:6:\"target\";s:6:\"_blank\";}'),
(761, 87, '_member_share_2_link', 'field_5fff13d390167'),
(762, 87, 'member_share_2_link_image', '114'),
(763, 87, '_member_share_2_link_image', 'field_5fff13f490168'),
(764, 87, 'member_share_3_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(765, 87, '_member_share_3_link', 'field_5fff13d390167'),
(766, 87, 'member_share_3_link_image', '114'),
(767, 87, '_member_share_3_link_image', 'field_5fff13f490168'),
(768, 87, 'member_share', '4'),
(769, 87, '_member_share', 'field_5fff13b490166'),
(770, 116, '_edit_last', '1'),
(771, 116, '_edit_lock', '1610581106:1'),
(772, 116, 'member_name', 'Christopher Campbell'),
(773, 116, '_member_name', 'field_5ffea024f2f80'),
(774, 116, 'member_position', 'Graphic Design'),
(775, 116, '_member_position', 'field_5ffecd47dab97'),
(776, 116, 'member_foto', '106'),
(777, 116, '_member_foto', 'field_5ffecd5ddab98'),
(778, 116, 'member_share_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(779, 116, '_member_share_0_link', 'field_5fff13d390167'),
(780, 116, 'member_share_0_link_image', '114'),
(781, 116, '_member_share_0_link_image', 'field_5fff13f490168'),
(782, 116, 'member_share', '4'),
(783, 116, '_member_share', 'field_5fff13b490166'),
(784, 6, 'about_3_subheading', 'Our stories'),
(785, 6, '_about_3_subheading', 'field_5fff4db0418e7'),
(786, 6, 'about_3_heading', 'Latest blog'),
(787, 6, '_about_3_heading', 'field_5fff4dc6418e8'),
(788, 119, 'about_0_welcome_slider_0_slider_image', '34'),
(789, 119, '_about_0_welcome_slider_0_slider_image', 'field_5ffa09eb3f46f'),
(790, 119, 'about_0_welcome_slider', '4'),
(791, 119, '_about_0_welcome_slider', 'field_5ffa09bd3f46e'),
(792, 119, 'about_0_welcome_heading', 'Welcome to MoGo'),
(793, 119, '_about_0_welcome_heading', 'field_5ffa0a743f470'),
(794, 119, 'about_0_welcome_subheading', 'Creative Template'),
(795, 119, '_about_0_welcome_subheading', 'field_5ffa0a943f471'),
(796, 119, 'about_0_welcome_link', 'a:3:{s:5:\"title\";s:10:\"Learn more\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(797, 119, '_about_0_welcome_link', 'field_5ffa0aa53f472'),
(798, 119, 'about', 'a:4:{i:0;s:15:\"welcome_section\";i:1;s:18:\"what_we_do_section\";i:2;s:12:\"team_section\";i:3;s:15:\"stories_section\";}'),
(799, 119, '_about', 'field_5ffa09983f46d'),
(800, 119, 'about_1_subheading', 'Service'),
(801, 119, '_about_1_subheading', 'field_5ffac57086c96'),
(802, 119, 'about_1_heading', 'what we do'),
(803, 119, '_about_1_heading', 'field_5ffac58586c97'),
(804, 119, 'about_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dovipsum dolor sit amet, consectetur adipiscing elit, sed dodolor sit amet, consectetur adipiscing elit, sed do'),
(805, 119, '_about_1_description', 'field_5ffac59686c98'),
(806, 119, 'about_1_image', '59'),
(807, 119, '_about_1_image', 'field_5ffac5c886c99'),
(808, 119, 'about_1_service', 'a:3:{i:0;s:2:\"48\";i:1;s:2:\"67\";i:2;s:2:\"68\";}'),
(809, 119, '_about_1_service', 'field_5ffac5ed86c9a'),
(810, 119, 'about_0_welcome_slider_1_slider_image', '71'),
(811, 119, '_about_0_welcome_slider_1_slider_image', 'field_5ffa09eb3f46f'),
(812, 119, 'about_0_welcome_slider_2_slider_image', '72'),
(813, 119, '_about_0_welcome_slider_2_slider_image', 'field_5ffa09eb3f46f'),
(814, 119, 'about_0_welcome_slider_3_slider_image', '78'),
(815, 119, '_about_0_welcome_slider_3_slider_image', 'field_5ffa09eb3f46f'),
(816, 119, 'about_0_welcome_slider_0_slide_number', '01'),
(817, 119, '_about_0_welcome_slider_0_slide_number', 'field_5ffda4db8d8a8'),
(818, 119, 'about_0_welcome_slider_0_slide_text', 'Intro'),
(819, 119, '_about_0_welcome_slider_0_slide_text', 'field_5ffda4ff8d8a9'),
(820, 119, 'about_0_welcome_slider_1_slide_number', '02'),
(821, 119, '_about_0_welcome_slider_1_slide_number', 'field_5ffda4db8d8a8'),
(822, 119, 'about_0_welcome_slider_1_slide_text', 'Work'),
(823, 119, '_about_0_welcome_slider_1_slide_text', 'field_5ffda4ff8d8a9'),
(824, 119, 'about_0_welcome_slider_2_slide_number', '03'),
(825, 119, '_about_0_welcome_slider_2_slide_number', 'field_5ffda4db8d8a8'),
(826, 119, 'about_0_welcome_slider_2_slide_text', 'About'),
(827, 119, '_about_0_welcome_slider_2_slide_text', 'field_5ffda4ff8d8a9'),
(828, 119, 'about_0_welcome_slider_3_slide_number', '04'),
(829, 119, '_about_0_welcome_slider_3_slide_number', 'field_5ffda4db8d8a8'),
(830, 119, 'about_0_welcome_slider_3_slide_text', 'Contacts'),
(831, 119, '_about_0_welcome_slider_3_slide_text', 'field_5ffda4ff8d8a9'),
(832, 119, 'about_2_subheading', 'Who we are'),
(833, 119, '_about_2_subheading', 'field_5ffe9c483cd73'),
(834, 119, 'about_2_heading', 'Meet our team'),
(835, 119, '_about_2_heading', 'field_5ffe9c583cd74'),
(836, 119, 'about_2_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(837, 119, '_about_2_description', 'field_5ffe9e6b3cd75'),
(838, 119, 'about_2_teams', 'a:3:{i:0;s:2:\"87\";i:1;s:3:\"100\";i:2;s:3:\"102\";}'),
(839, 119, '_about_2_teams', 'field_5ffea1263cd7a'),
(840, 119, 'about_3_subheading', 'Our stories'),
(841, 119, '_about_3_subheading', 'field_5fff4db0418e7'),
(842, 119, 'about_3_heading', 'Latest blog'),
(843, 119, '_about_3_heading', 'field_5fff4dc6418e8'),
(845, 122, '_wp_attached_file', '2021/01/post3.png'),
(846, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:257;s:4:\"file\";s:17:\"2021/01/post3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x198.png\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(847, 122, '_wp_attachment_image_alt', 'post3'),
(860, 125, '_edit_lock', '1610580523:1'),
(862, 125, '_thumbnail_id', '122'),
(863, 102, 'member_share_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(864, 102, '_member_share_0_link', 'field_5fff13d390167'),
(865, 102, 'member_share_0_link_image', '115'),
(866, 102, '_member_share_0_link_image', 'field_5fff13f490168'),
(867, 102, 'member_share_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(868, 102, '_member_share_1_link', 'field_5fff13d390167'),
(869, 102, 'member_share_1_link_image', '115'),
(870, 102, '_member_share_1_link_image', 'field_5fff13f490168'),
(871, 102, 'member_share_2_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(872, 102, '_member_share_2_link', 'field_5fff13d390167'),
(873, 102, 'member_share_2_link_image', '115'),
(874, 102, '_member_share_2_link_image', 'field_5fff13f490168'),
(875, 102, 'member_share_3_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(876, 102, '_member_share_3_link', 'field_5fff13d390167'),
(877, 102, 'member_share_3_link_image', '115'),
(878, 102, '_member_share_3_link_image', 'field_5fff13f490168'),
(879, 102, 'member_share', '4'),
(880, 102, '_member_share', 'field_5fff13b490166'),
(881, 100, '_wp_old_slug', 'christopher-campbell'),
(882, 100, 'member_share_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(883, 100, '_member_share_0_link', 'field_5fff13d390167'),
(884, 100, 'member_share_0_link_image', '115'),
(885, 100, '_member_share_0_link_image', 'field_5fff13f490168'),
(886, 100, 'member_share_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(887, 100, '_member_share_1_link', 'field_5fff13d390167'),
(888, 100, 'member_share_1_link_image', '115'),
(889, 100, '_member_share_1_link_image', 'field_5fff13f490168'),
(890, 100, 'member_share_2_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(891, 100, '_member_share_2_link', 'field_5fff13d390167'),
(892, 100, 'member_share_2_link_image', '115'),
(893, 100, '_member_share_2_link_image', 'field_5fff13f490168'),
(894, 100, 'member_share_3_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(895, 100, '_member_share_3_link', 'field_5fff13d390167'),
(896, 100, 'member_share_3_link_image', '115'),
(897, 100, '_member_share_3_link_image', 'field_5fff13f490168'),
(898, 100, 'member_share', '4'),
(899, 100, '_member_share', 'field_5fff13b490166'),
(900, 116, 'member_share_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(901, 116, '_member_share_1_link', 'field_5fff13d390167'),
(902, 116, 'member_share_1_link_image', '115'),
(903, 116, '_member_share_1_link_image', 'field_5fff13f490168'),
(904, 116, 'member_share_2_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(905, 116, '_member_share_2_link', 'field_5fff13d390167'),
(906, 116, 'member_share_2_link_image', '115'),
(907, 116, '_member_share_2_link_image', 'field_5fff13f490168'),
(908, 116, 'member_share_3_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(909, 116, '_member_share_3_link', 'field_5fff13d390167'),
(910, 116, 'member_share_3_link_image', '115'),
(911, 116, '_member_share_3_link_image', 'field_5fff13f490168'),
(912, 128, '_edit_lock', '1610581226:1'),
(913, 130, '_wp_attached_file', '2021/01/post2.png'),
(914, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:452;s:6:\"height\";i:255;s:4:\"file\";s:17:\"2021/01/post2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(915, 130, '_wp_attachment_image_alt', 'post4'),
(917, 128, '_thumbnail_id', '130'),
(918, 132, '_edit_lock', '1610592870:1'),
(919, 133, '_wp_attached_file', '2021/01/post1.png'),
(920, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:530;s:6:\"height\";i:353;s:4:\"file\";s:17:\"2021/01/post1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(921, 133, '_wp_attachment_image_alt', 'post1'),
(923, 132, '_thumbnail_id', '133'),
(924, 132, 'post_views_count', '21'),
(925, 128, 'post_views_count', '17'),
(926, 125, 'post_views_count', '12'),
(927, 135, '_edit_lock', '1610604221:1'),
(929, 135, '_thumbnail_id', '130'),
(930, 135, 'post_views_count', '0'),
(931, 1, 'post_views_count', '0');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-01-09 16:00:12', '2021-01-09 16:00:12', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-01-09 16:00:12', '2021-01-09 16:00:12', '', 0, 'http://mogo.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2021-01-09 16:00:12', '2021-01-09 16:00:12', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://mogo.loc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-01-09 16:00:12', '2021-01-09 16:00:12', '', 0, 'http://mogo.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-01-09 16:00:12', '2021-01-09 16:00:12', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://mogo.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-01-09 16:00:12', '2021-01-09 16:00:12', '', 0, 'http://mogo.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-01-09 16:01:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-01-09 16:01:19', '0000-00-00 00:00:00', '', 0, 'http://mogo.loc/?p=4', 0, 'post', '', 0),
(5, 1, '2021-01-09 18:07:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-09 18:07:00', '0000-00-00 00:00:00', '', 0, 'http://mogo.loc/?post_type=acf-field-group&p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2021-01-09 18:08:50', '2021-01-09 18:08:50', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-01-13 21:20:07', '2021-01-13 21:20:07', '', 0, 'http://mogo.loc/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-01-09 18:08:50', '2021-01-09 18:08:50', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-09 18:08:50', '2021-01-09 18:08:50', '', 6, 'http://mogo.loc/2021/01/09/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2021-01-09 18:09:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-09 18:09:51', '0000-00-00 00:00:00', '', 0, 'http://mogo.loc/?post_type=acf-field-group&p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2021-01-09 18:12:36', '2021-01-09 18:12:36', '', 'Service', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2021-01-09 18:13:51', '2021-01-09 18:13:51', '', 0, 'http://mogo.loc/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-01-09 18:12:36', '2021-01-09 18:12:36', '', 'Service', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-01-09 18:12:36', '2021-01-09 18:12:36', '', 9, 'http://mogo.loc/2021/01/09/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2021-01-09 18:14:18', '2021-01-09 18:14:18', '', 'Work', '', 'publish', 'closed', 'closed', '', 'work', '', '', '2021-01-09 18:14:18', '2021-01-09 18:14:18', '', 0, 'http://mogo.loc/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-01-09 18:14:18', '2021-01-09 18:14:18', '', 'Work', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-01-09 18:14:18', '2021-01-09 18:14:18', '', 11, 'http://mogo.loc/2021/01/09/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2021-01-09 18:14:34', '2021-01-09 18:14:34', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-01-09 18:14:34', '2021-01-09 18:14:34', '', 0, 'http://mogo.loc/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-01-09 18:14:34', '2021-01-09 18:14:34', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-01-09 18:14:34', '2021-01-09 18:14:34', '', 13, 'http://mogo.loc/2021/01/09/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2021-01-09 18:14:52', '2021-01-09 18:14:52', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-01-09 18:14:52', '2021-01-09 18:14:52', '', 0, 'http://mogo.loc/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-01-09 18:14:52', '2021-01-09 18:14:52', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-01-09 18:14:52', '2021-01-09 18:14:52', '', 15, 'http://mogo.loc/2021/01/09/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2021-01-09 18:34:01', '2021-01-09 18:34:01', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-01-13 09:18:54', '2021-01-13 09:18:54', '', 0, 'http://mogo.loc/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-01-09 18:34:02', '2021-01-09 18:34:02', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-01-13 09:18:55', '2021-01-13 09:18:55', '', 0, 'http://mogo.loc/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2021-01-09 18:34:03', '2021-01-09 18:34:03', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2021-01-13 09:18:55', '2021-01-13 09:18:55', '', 0, 'http://mogo.loc/?p=19', 6, 'nav_menu_item', '', 0),
(20, 1, '2021-01-09 18:29:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-01-09 18:29:59', '0000-00-00 00:00:00', '', 0, 'http://mogo.loc/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2021-01-09 18:34:02', '2021-01-09 18:34:02', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2021-01-13 09:18:54', '2021-01-13 09:18:54', '', 0, 'http://mogo.loc/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2021-01-09 18:34:02', '2021-01-09 18:34:02', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2021-01-13 09:18:55', '2021-01-13 09:18:55', '', 0, 'http://mogo.loc/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2021-01-09 19:34:39', '2021-01-09 19:34:39', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-01-09 19:34:59', '2021-01-09 19:34:59', '', 0, 'http://mogo.loc/wp-content/uploads/2021/01/Logo.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2021-01-09 19:35:07', '2021-01-09 19:35:07', 'http://mogo.loc/wp-content/uploads/2021/01/cropped-Logo.png', 'cropped-Logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2021-01-09 19:35:07', '2021-01-09 19:35:07', '', 0, 'http://mogo.loc/wp-content/uploads/2021/01/cropped-Logo.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2021-01-09 19:35:14', '2021-01-09 19:35:14', '{\n    \"mogo::custom_logo\": {\n        \"value\": 24,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-09 19:35:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e15dc65-9709-4463-a06c-b135a6637895', '', '', '2021-01-09 19:35:14', '2021-01-09 19:35:14', '', 0, 'http://mogo.loc/2021/01/09/8e15dc65-9709-4463-a06c-b135a6637895/', 0, 'customize_changeset', '', 0),
(26, 1, '2021-01-09 19:36:37', '2021-01-09 19:36:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"front-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_5ffa05920a942', '', '', '2021-01-13 19:58:37', '2021-01-13 19:58:37', '', 0, 'http://mogo.loc/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2021-01-09 19:58:25', '2021-01-09 19:58:25', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:4:{s:20:\"layout_5ffa09b04efbb\";a:6:{s:3:\"key\";s:20:\"layout_5ffa09b04efbb\";s:5:\"label\";s:15:\"Welcome section\";s:4:\"name\";s:15:\"welcome_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:1:\"1\";s:3:\"max\";s:1:\"1\";}s:20:\"layout_5ffac00348f66\";a:6:{s:3:\"key\";s:20:\"layout_5ffac00348f66\";s:5:\"label\";s:18:\"What we do section\";s:4:\"name\";s:18:\"what_we_do_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:1:\"1\";}s:20:\"layout_5ffe9c2d3cd72\";a:6:{s:3:\"key\";s:20:\"layout_5ffe9c2d3cd72\";s:5:\"label\";s:12:\"Team section\";s:4:\"name\";s:12:\"team_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:1:\"1\";}s:20:\"layout_5fff4d81418e6\";a:6:{s:3:\"key\";s:20:\"layout_5fff4d81418e6\";s:5:\"label\";s:15:\"Stories section\";s:4:\"name\";s:15:\"stories_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:1:\"1\";}}s:12:\"button_label\";s:7:\"Add Row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_5ffa09983f46d', '', '', '2021-01-13 19:58:37', '2021-01-13 19:58:37', '', 26, 'http://mogo.loc/?post_type=acf-field&#038;p=27', 0, 'acf-field', '', 0),
(28, 1, '2021-01-09 19:58:25', '2021-01-09 19:58:25', 'a:11:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffa09b04efbb\";s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:4;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Welcome slider', 'welcome_slider', 'publish', 'closed', 'closed', '', 'field_5ffa09bd3f46e', '', '', '2021-01-12 13:33:39', '2021-01-12 13:33:39', '', 27, 'http://mogo.loc/?post_type=acf-field&#038;p=28', 0, 'acf-field', '', 0),
(29, 1, '2021-01-09 19:58:25', '2021-01-09 19:58:25', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider image', 'slider_image', 'publish', 'closed', 'closed', '', 'field_5ffa09eb3f46f', '', '', '2021-01-09 19:58:25', '2021-01-09 19:58:25', '', 28, 'http://mogo.loc/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2021-01-09 19:58:25', '2021-01-09 19:58:25', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffa09b04efbb\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Welcome heading', 'welcome_heading', 'publish', 'closed', 'closed', '', 'field_5ffa0a743f470', '', '', '2021-01-09 19:58:25', '2021-01-09 19:58:25', '', 27, 'http://mogo.loc/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2021-01-09 19:58:25', '2021-01-09 19:58:25', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffa09b04efbb\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Welcome subheading', 'welcome_subheading', 'publish', 'closed', 'closed', '', 'field_5ffa0a943f471', '', '', '2021-01-09 19:58:25', '2021-01-09 19:58:25', '', 27, 'http://mogo.loc/?post_type=acf-field&p=31', 2, 'acf-field', '', 0),
(32, 1, '2021-01-09 19:58:26', '2021-01-09 19:58:26', 'a:7:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffa09b04efbb\";s:13:\"return_format\";s:5:\"array\";}', 'Welcome link', 'welcome_link', 'publish', 'closed', 'closed', '', 'field_5ffa0aa53f472', '', '', '2021-01-09 19:58:26', '2021-01-09 19:58:26', '', 27, 'http://mogo.loc/?post_type=acf-field&p=32', 3, 'acf-field', '', 0),
(33, 1, '2021-01-09 20:36:04', '2021-01-09 20:36:04', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-09 20:36:04', '2021-01-09 20:36:04', '', 6, 'http://mogo.loc/2021/01/09/6-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2021-01-09 21:11:00', '2021-01-09 21:11:00', '', 'welcome-slider', '', 'inherit', 'open', 'closed', '', 'welcome-slider', '', '', '2021-01-09 21:11:00', '2021-01-09 21:11:00', '', 6, 'http://mogo.loc/wp-content/uploads/2021/01/welcome-slider.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2021-01-09 21:11:20', '2021-01-09 21:11:20', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-09 21:11:20', '2021-01-09 21:11:20', '', 6, 'http://mogo.loc/2021/01/09/6-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2021-01-09 21:11:48', '2021-01-09 21:11:48', 'http://mogo.loc/wp-content/uploads/2021/01/cropped-Logo-1.png', 'cropped-Logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2021-01-09 21:11:48', '2021-01-09 21:11:48', '', 0, 'http://mogo.loc/wp-content/uploads/2021/01/cropped-Logo-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2021-01-09 21:11:57', '2021-01-09 21:11:57', '{\n    \"mogo::custom_logo\": {\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-09 21:11:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '86604278-09aa-4ee0-b60c-7dda272e912e', '', '', '2021-01-09 21:11:57', '2021-01-09 21:11:57', '', 0, 'http://mogo.loc/2021/01/09/86604278-09aa-4ee0-b60c-7dda272e912e/', 0, 'customize_changeset', '', 0),
(43, 1, '2021-01-09 22:33:35', '2021-01-09 22:33:35', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-09 22:33:35', '2021-01-09 22:33:35', '', 6, 'http://mogo.loc/2021/01/09/6-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2021-01-09 22:34:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-09 22:34:00', '0000-00-00 00:00:00', '', 0, 'http://mogo.loc/?post_type=services&p=44', 0, 'services', '', 0),
(45, 1, '2021-01-09 22:34:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-09 22:34:30', '0000-00-00 00:00:00', '', 0, 'http://mogo.loc/?post_type=services&p=45', 0, 'services', '', 0),
(46, 1, '2021-01-09 22:39:04', '2021-01-09 22:39:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'group_5ffa301394af1', '', '', '2021-01-10 14:53:10', '2021-01-10 14:53:10', '', 0, 'http://mogo.loc/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2021-01-09 22:39:04', '2021-01-09 22:39:04', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:1:{s:20:\"layout_5ffb13f353a69\";a:6:{s:3:\"key\";s:20:\"layout_5ffb13f353a69\";s:5:\"label\";s:13:\"Service block\";s:4:\"name\";s:13:\"service_block\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:7:\"Add Row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_5ffa302327b3a', '', '', '2021-01-10 14:51:58', '2021-01-10 14:51:58', '', 46, 'http://mogo.loc/?post_type=acf-field&#038;p=47', 0, 'acf-field', '', 0),
(48, 1, '2021-01-09 22:49:59', '2021-01-09 22:49:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Photography', '', 'publish', 'closed', 'closed', '', 'photography', '', '', '2021-01-10 22:38:15', '2021-01-10 22:38:15', '', 0, 'http://mogo.loc/?post_type=services&#038;p=48', 0, 'services', '', 0),
(53, 1, '2021-01-09 22:49:26', '2021-01-09 22:49:26', '', 'alarm', '', 'inherit', 'open', 'closed', '', 'alarm', '', '', '2021-01-09 22:49:53', '2021-01-09 22:49:53', '', 48, 'http://mogo.loc/wp-content/uploads/2021/01/alarm.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2021-01-10 13:20:14', '2021-01-10 13:20:14', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffac00348f66\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subheading', 'subheading', 'publish', 'closed', 'closed', '', 'field_5ffac57086c96', '', '', '2021-01-10 13:20:14', '2021-01-10 13:20:14', '', 27, 'http://mogo.loc/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2021-01-10 13:20:15', '2021-01-10 13:20:15', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffac00348f66\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_5ffac58586c97', '', '', '2021-01-10 13:20:15', '2021-01-10 13:20:15', '', 27, 'http://mogo.loc/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2021-01-10 13:20:15', '2021-01-10 13:20:15', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffac00348f66\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5ffac59686c98', '', '', '2021-01-10 13:20:15', '2021-01-10 13:20:15', '', 27, 'http://mogo.loc/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(57, 1, '2021-01-10 13:20:15', '2021-01-10 13:20:15', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffac00348f66\";s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5ffac5c886c99', '', '', '2021-01-10 13:20:15', '2021-01-10 13:20:15', '', 27, 'http://mogo.loc/?post_type=acf-field&p=57', 3, 'acf-field', '', 0),
(58, 1, '2021-01-10 13:20:15', '2021-01-10 13:20:15', 'a:13:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffac00348f66\";s:9:\"post_type\";a:1:{i:0;s:8:\"services\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:9:\"post_type\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Service', 'service', 'publish', 'closed', 'closed', '', 'field_5ffac5ed86c9a', '', '', '2021-01-10 13:20:15', '2021-01-10 13:20:15', '', 27, 'http://mogo.loc/?post_type=acf-field&p=58', 4, 'acf-field', '', 0),
(59, 1, '2021-01-10 13:25:29', '2021-01-10 13:25:29', '', 'what-we-do', '', 'inherit', 'open', 'closed', '', 'what-we-do', '', '', '2021-01-10 13:25:39', '2021-01-10 13:25:39', '', 6, 'http://mogo.loc/wp-content/uploads/2021/01/what-we-do.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2021-01-10 13:25:51', '2021-01-10 13:25:51', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-10 13:25:51', '2021-01-10 13:25:51', '', 6, 'http://mogo.loc/2021/01/10/6-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2021-01-10 14:51:58', '2021-01-10 14:51:58', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffb13f353a69\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_5ffb1432ded90', '', '', '2021-01-10 14:51:58', '2021-01-10 14:51:58', '', 47, 'http://mogo.loc/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2021-01-10 14:51:58', '2021-01-10 14:51:58', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffb13f353a69\";s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5ffb145dded91', '', '', '2021-01-10 14:51:58', '2021-01-10 14:51:58', '', 47, 'http://mogo.loc/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2021-01-10 14:51:58', '2021-01-10 14:51:58', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffb13f353a69\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5ffb146bded92', '', '', '2021-01-10 14:51:58', '2021-01-10 14:51:58', '', 47, 'http://mogo.loc/?post_type=acf-field&p=63', 2, 'acf-field', '', 0),
(64, 1, '2021-01-10 14:51:59', '2021-01-10 14:51:59', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffb13f353a69\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Short description', 'short_description', 'publish', 'closed', 'closed', '', 'field_5ffb148bded93', '', '', '2021-01-10 14:52:33', '2021-01-10 14:52:33', '', 47, 'http://mogo.loc/?post_type=acf-field&#038;p=64', 3, 'acf-field', '', 0),
(65, 1, '2021-01-10 15:04:40', '2021-01-10 15:04:40', '', 'Creativity', '', 'inherit', 'open', 'closed', '', 'equalizer', '', '', '2021-01-10 15:53:54', '2021-01-10 15:53:54', '', 48, 'http://mogo.loc/wp-content/uploads/2021/01/equalizer.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2021-01-10 15:07:01', '2021-01-10 15:07:01', '', 'photography', '', 'inherit', 'open', 'closed', '', 'photography-2', '', '', '2021-01-10 15:07:11', '2021-01-10 15:07:11', '', 48, 'http://mogo.loc/wp-content/uploads/2021/01/photography.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2021-01-10 15:54:46', '2021-01-10 15:54:46', '', 'Creativity', '', 'publish', 'closed', 'closed', '', 'creativity', '', '', '2021-01-10 15:55:00', '2021-01-10 15:55:00', '', 0, 'http://mogo.loc/?post_type=services&#038;p=67', 0, 'services', '', 0),
(68, 1, '2021-01-10 15:57:03', '2021-01-10 15:57:03', '', 'Web design', '', 'publish', 'closed', 'closed', '', 'web-design', '', '', '2021-01-10 22:37:04', '2021-01-10 22:37:04', '', 0, 'http://mogo.loc/?post_type=services&#038;p=68', 0, 'services', '', 0),
(69, 1, '2021-01-10 15:56:15', '2021-01-10 15:56:15', '', 'web design', '', 'inherit', 'open', 'closed', '', 'bullseye', '', '', '2021-01-10 15:56:32', '2021-01-10 15:56:32', '', 68, 'http://mogo.loc/wp-content/uploads/2021/01/bullseye.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2021-01-10 16:28:02', '2021-01-10 16:28:02', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-10 16:28:02', '2021-01-10 16:28:02', '', 6, 'http://mogo.loc/2021/01/10/6-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2021-01-11 15:22:59', '2021-01-11 15:22:59', '', 'clock', '', 'inherit', 'open', 'closed', '', 'clock', '', '', '2021-01-11 15:22:59', '2021-01-11 15:22:59', '', 6, 'http://mogo.loc/wp-content/uploads/2021/01/clock.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-01-11 15:24:31', '2021-01-11 15:24:31', '', 'services_bg', '', 'inherit', 'open', 'closed', '', 'services_bg', '', '', '2021-01-11 15:24:31', '2021-01-11 15:24:31', '', 6, 'http://mogo.loc/wp-content/uploads/2021/01/services_bg.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2021-01-11 15:26:09', '2021-01-11 15:26:09', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-11 15:26:09', '2021-01-11 15:26:09', '', 6, 'http://mogo.loc/2021/01/11/6-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2021-01-11 15:28:55', '2021-01-11 15:28:55', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-11 15:28:55', '2021-01-11 15:28:55', '', 6, 'http://mogo.loc/2021/01/11/6-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2021-01-11 15:32:39', '2021-01-11 15:32:39', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-11 15:32:39', '2021-01-11 15:32:39', '', 6, 'http://mogo.loc/2021/01/11/6-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2021-01-12 06:42:39', '2021-01-12 06:42:39', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-12 06:42:39', '2021-01-12 06:42:39', '', 6, 'http://mogo.loc/2021/01/12/6-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2021-01-12 13:16:25', '2021-01-12 13:16:25', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-12 13:16:25', '2021-01-12 13:16:25', '', 6, 'http://mogo.loc/2021/01/12/6-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2021-01-12 13:17:07', '2021-01-12 13:17:07', '', 'price_table_bg', '', 'inherit', 'open', 'closed', '', 'price_table_bg', '', '', '2021-01-12 13:17:07', '2021-01-12 13:17:07', '', 6, 'http://mogo.loc/wp-content/uploads/2021/01/price_table_bg.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2021-01-12 13:17:25', '2021-01-12 13:17:25', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-12 13:17:25', '2021-01-12 13:17:25', '', 6, 'http://mogo.loc/2021/01/12/6-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2021-01-12 13:33:39', '2021-01-12 13:33:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Slide number', 'slide_number', 'publish', 'closed', 'closed', '', 'field_5ffda4db8d8a8', '', '', '2021-01-12 13:33:39', '2021-01-12 13:33:39', '', 28, 'http://mogo.loc/?post_type=acf-field&p=80', 1, 'acf-field', '', 0),
(81, 1, '2021-01-12 13:33:40', '2021-01-12 13:33:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Slide text', 'slide_text', 'publish', 'closed', 'closed', '', 'field_5ffda4ff8d8a9', '', '', '2021-01-12 13:33:40', '2021-01-12 13:33:40', '', 28, 'http://mogo.loc/?post_type=acf-field&p=81', 2, 'acf-field', '', 0),
(82, 1, '2021-01-12 13:35:20', '2021-01-12 13:35:20', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-12 13:35:20', '2021-01-12 13:35:20', '', 6, 'http://mogo.loc/2021/01/12/6-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2021-01-13 06:54:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-13 06:54:13', '0000-00-00 00:00:00', '', 0, 'http://mogo.loc/?post_type=our_projects&p=83', 0, 'our_projects', '', 0),
(84, 1, '2021-01-13 07:02:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-13 07:02:57', '0000-00-00 00:00:00', '', 0, 'http://mogo.loc/?post_type=team&p=84', 0, 'team', '', 0),
(85, 1, '2021-01-13 07:26:35', '2021-01-13 07:26:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"team\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Team member', 'team-member', 'publish', 'closed', 'closed', '', 'group_5ffe9b8e4c01c', '', '', '2021-01-13 15:40:18', '2021-01-13 15:40:18', '', 0, 'http://mogo.loc/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(86, 1, '2021-01-13 07:26:35', '2021-01-13 07:26:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Member name', 'member_name', 'publish', 'closed', 'closed', '', 'field_5ffea024f2f80', '', '', '2021-01-13 09:00:40', '2021-01-13 09:00:40', '', 85, 'http://mogo.loc/?post_type=acf-field&#038;p=86', 0, 'acf-field', '', 0),
(87, 1, '2021-01-13 07:27:37', '2021-01-13 07:27:37', '', 'Matthew Dix', '', 'publish', 'closed', 'closed', '', 'matthew-dix', '', '', '2021-01-13 23:32:23', '2021-01-13 23:32:23', '', 0, 'http://mogo.loc/?post_type=team&#038;p=87', 0, 'team', '', 0),
(88, 1, '2021-01-13 07:33:54', '2021-01-13 07:33:54', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffe9c2d3cd72\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subheading', 'subheading', 'publish', 'closed', 'closed', '', 'field_5ffe9c483cd73', '', '', '2021-01-13 07:33:54', '2021-01-13 07:33:54', '', 27, 'http://mogo.loc/?post_type=acf-field&p=88', 0, 'acf-field', '', 0),
(89, 1, '2021-01-13 07:33:54', '2021-01-13 07:33:54', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffe9c2d3cd72\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_5ffe9c583cd74', '', '', '2021-01-13 07:33:54', '2021-01-13 07:33:54', '', 27, 'http://mogo.loc/?post_type=acf-field&p=89', 1, 'acf-field', '', 0),
(90, 1, '2021-01-13 07:33:54', '2021-01-13 07:33:54', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffe9c2d3cd72\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5ffe9e6b3cd75', '', '', '2021-01-13 07:33:54', '2021-01-13 07:33:54', '', 27, 'http://mogo.loc/?post_type=acf-field&p=90', 2, 'acf-field', '', 0),
(91, 1, '2021-01-13 07:33:54', '2021-01-13 07:33:54', 'a:13:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5ffe9c2d3cd72\";s:9:\"post_type\";a:1:{i:0;s:4:\"team\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Teams', 'teams', 'publish', 'closed', 'closed', '', 'field_5ffea1263cd7a', '', '', '2021-01-13 07:35:45', '2021-01-13 07:35:45', '', 27, 'http://mogo.loc/?post_type=acf-field&#038;p=91', 3, 'acf-field', '', 0),
(92, 1, '2021-01-13 07:37:09', '2021-01-13 07:37:09', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-13 07:37:09', '2021-01-13 07:37:09', '', 6, 'http://mogo.loc/2021/01/13/6-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2021-01-13 07:37:21', '2021-01-13 07:37:21', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-13 07:37:21', '2021-01-13 07:37:21', '', 6, 'http://mogo.loc/2021/01/13/6-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2021-01-13 09:18:18', '2021-01-13 09:18:18', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2021-01-13 22:57:50', '2021-01-13 22:57:50', '', 0, 'http://mogo.loc/?page_id=94', 0, 'page', '', 0),
(95, 1, '2021-01-13 09:18:18', '2021-01-13 09:18:18', '', 'Team', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2021-01-13 09:18:18', '2021-01-13 09:18:18', '', 94, 'http://mogo.loc/2021/01/13/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2021-01-13 09:18:55', '2021-01-13 09:18:55', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2021-01-13 09:18:55', '2021-01-13 09:18:55', '', 0, 'http://mogo.loc/?p=96', 4, 'nav_menu_item', '', 0),
(97, 1, '2021-01-13 10:37:39', '2021-01-13 10:37:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Member position', 'member_position', 'publish', 'closed', 'closed', '', 'field_5ffecd47dab97', '', '', '2021-01-13 10:37:39', '2021-01-13 10:37:39', '', 85, 'http://mogo.loc/?post_type=acf-field&p=97', 1, 'acf-field', '', 0),
(98, 1, '2021-01-13 10:37:40', '2021-01-13 10:37:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Member foto', 'member_foto', 'publish', 'closed', 'closed', '', 'field_5ffecd5ddab98', '', '', '2021-01-13 10:37:40', '2021-01-13 10:37:40', '', 85, 'http://mogo.loc/?post_type=acf-field&p=98', 2, 'acf-field', '', 0),
(100, 1, '2021-01-13 11:16:59', '2021-01-13 11:16:59', '', 'Christopher Bellcampbell', '', 'publish', 'closed', 'closed', '', 'christopher-bellcampbell', '', '', '2021-01-13 23:37:26', '2021-01-13 23:37:26', '', 0, 'http://mogo.loc/?post_type=team&#038;p=100', 0, 'team', '', 0),
(102, 1, '2021-01-13 11:17:49', '2021-01-13 11:17:49', '', 'Michael Fertig', '', 'publish', 'closed', 'closed', '', 'michael-fertig', '', '', '2021-01-13 23:35:43', '2021-01-13 23:35:43', '', 0, 'http://mogo.loc/?post_type=team&#038;p=102', 0, 'team', '', 0),
(104, 1, '2021-01-13 11:20:06', '2021-01-13 11:20:06', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-13 11:20:06', '2021-01-13 11:20:06', '', 6, 'http://mogo.loc/archives/%post_name%', 0, 'revision', '', 0),
(105, 1, '2021-01-13 11:20:23', '2021-01-13 11:20:23', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-13 11:20:23', '2021-01-13 11:20:23', '', 6, 'http://mogo.loc/archives/%post_name%', 0, 'revision', '', 0),
(106, 1, '2021-01-13 11:47:57', '2021-01-13 11:47:57', '', 'michael-develop', '', 'inherit', 'open', 'closed', '', 'michael-develop', '', '', '2021-01-13 11:48:09', '2021-01-13 11:48:09', '', 102, 'http://mogo.loc/wp-content/uploads/2021/01/michael-develop.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2021-01-13 11:50:14', '2021-01-13 11:50:14', '', 'cris', '', 'inherit', 'open', 'closed', '', 'cris', '', '', '2021-01-13 11:50:28', '2021-01-13 11:50:28', '', 100, 'http://mogo.loc/wp-content/uploads/2021/01/cris.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2021-01-13 11:51:30', '2021-01-13 11:51:30', '', 'matthew', '', 'inherit', 'open', 'closed', '', 'matt', '', '', '2021-01-13 11:51:38', '2021-01-13 11:51:38', '', 87, 'http://mogo.loc/wp-content/uploads/2021/01/matt.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2021-01-13 13:26:04', '2021-01-13 13:26:04', '', 'matthew', '', 'inherit', 'open', 'closed', '', 'matthew', '', '', '2021-01-13 13:26:04', '2021-01-13 13:26:04', '', 87, 'http://mogo.loc/wp-content/uploads/2021/01/matthew.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2021-01-13 15:40:18', '2021-01-13 15:40:18', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:4;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Member share', 'member_share', 'publish', 'closed', 'closed', '', 'field_5fff13b490166', '', '', '2021-01-13 15:40:18', '2021-01-13 15:40:18', '', 85, 'http://mogo.loc/?post_type=acf-field&p=111', 3, 'acf-field', '', 0),
(112, 1, '2021-01-13 15:40:18', '2021-01-13 15:40:18', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5fff13d390167', '', '', '2021-01-13 15:40:18', '2021-01-13 15:40:18', '', 111, 'http://mogo.loc/?post_type=acf-field&p=112', 0, 'acf-field', '', 0),
(113, 1, '2021-01-13 15:40:18', '2021-01-13 15:40:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Link image', 'link_image', 'publish', 'closed', 'closed', '', 'field_5fff13f490168', '', '', '2021-01-13 15:40:18', '2021-01-13 15:40:18', '', 111, 'http://mogo.loc/?post_type=acf-field&p=113', 1, 'acf-field', '', 0),
(114, 1, '2021-01-13 15:41:32', '2021-01-13 15:41:32', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2021-01-13 15:41:46', '2021-01-13 15:41:46', '', 87, 'http://mogo.loc/wp-content/uploads/2021/01/twitter.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2021-01-13 15:44:52', '2021-01-13 15:44:52', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter-2', '', '', '2021-01-13 15:44:59', '2021-01-13 15:44:59', '', 87, 'http://mogo.loc/wp-content/uploads/2021/01/twitter-1.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2021-01-13 18:35:22', '2021-01-13 18:35:22', '', 'Christopher Campbell', '', 'publish', 'closed', 'closed', '', 'christopher-campbell-2', '', '', '2021-01-13 23:38:36', '2021-01-13 23:38:36', '', 0, 'http://mogo.loc/?post_type=team&#038;p=116', 0, 'team', '', 0),
(117, 1, '2021-01-13 19:48:16', '2021-01-13 19:48:16', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5fff4d81418e6\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subheading', 'subheading', 'publish', 'closed', 'closed', '', 'field_5fff4db0418e7', '', '', '2021-01-13 19:48:16', '2021-01-13 19:48:16', '', 27, 'http://mogo.loc/?post_type=acf-field&p=117', 0, 'acf-field', '', 0),
(118, 1, '2021-01-13 19:48:16', '2021-01-13 19:48:16', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5fff4d81418e6\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_5fff4dc6418e8', '', '', '2021-01-13 19:48:16', '2021-01-13 19:48:16', '', 27, 'http://mogo.loc/?post_type=acf-field&p=118', 1, 'acf-field', '', 0),
(119, 1, '2021-01-13 19:59:46', '2021-01-13 19:59:46', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-13 19:59:46', '2021-01-13 19:59:46', '', 6, 'http://mogo.loc/archives/%post_name%', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(122, 1, '2021-01-13 20:33:18', '2021-01-13 20:33:18', '', 'post3', '', 'inherit', 'open', 'closed', '', 'post3', '', '', '2021-01-13 20:33:28', '2021-01-13 20:33:28', '', 0, 'http://mogo.loc/wp-content/uploads/2021/01/post3.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2021-01-13 23:16:52', '2021-01-13 23:16:52', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2021-01-13 23:16:52', '2021-01-13 23:16:52', '', 0, 'http://mogo.loc/?p=125', 0, 'post', '', 0),
(126, 1, '2021-01-13 23:16:52', '2021-01-13 23:16:52', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2021-01-13 23:16:52', '2021-01-13 23:16:52', '', 125, 'http://mogo.loc/archives/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2021-01-13 23:37:01', '2021-01-13 23:37:01', '', 'Christopher Bellcampbell', '', 'inherit', 'closed', 'closed', '', '100-autosave-v1', '', '', '2021-01-13 23:37:01', '2021-01-13 23:37:01', '', 100, 'http://mogo.loc/archives/100-autosave-v1/', 0, 'revision', '', 0),
(128, 1, '2021-01-13 23:42:48', '2021-01-13 23:42:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Sed do eiusmod tempor', '', 'publish', 'open', 'open', '', 'sed-do-eiusmod-tempor', '', '', '2021-01-13 23:42:48', '2021-01-13 23:42:48', '', 0, 'http://mogo.loc/?p=128', 0, 'post', '', 0),
(129, 1, '2021-01-13 23:41:40', '2021-01-13 23:41:40', '', 'sed do eiusmod tempor', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2021-01-13 23:41:40', '2021-01-13 23:41:40', '', 128, 'http://mogo.loc/archives/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2021-01-13 23:42:35', '2021-01-13 23:42:35', '', 'post4', '', 'inherit', 'open', 'closed', '', 'post2', '', '', '2021-01-14 03:38:56', '2021-01-14 03:38:56', '', 128, 'http://mogo.loc/wp-content/uploads/2021/01/post2.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2021-01-13 23:42:48', '2021-01-13 23:42:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Sed do eiusmod tempor', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2021-01-13 23:42:48', '2021-01-13 23:42:48', '', 128, 'http://mogo.loc/archives/128-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2021-01-13 23:43:58', '2021-01-13 23:43:58', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Incididunt ut labore et dolore', '', 'publish', 'open', 'open', '', 'incididunt-ut-labore-et-dolore', '', '', '2021-01-13 23:43:58', '2021-01-13 23:43:58', '', 0, 'http://mogo.loc/?p=132', 0, 'post', '', 0),
(133, 1, '2021-01-13 23:43:43', '2021-01-13 23:43:43', '', 'post1', '', 'inherit', 'open', 'closed', '', 'post1', '', '', '2021-01-13 23:43:51', '2021-01-13 23:43:51', '', 132, 'http://mogo.loc/wp-content/uploads/2021/01/post1.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2021-01-13 23:43:58', '2021-01-13 23:43:58', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Incididunt ut labore et dolore', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2021-01-13 23:43:58', '2021-01-13 23:43:58', '', 132, 'http://mogo.loc/archives/132-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2021-01-14 03:39:01', '2021-01-14 03:39:01', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Duis aute irure dolor in', '', 'publish', 'open', 'open', '', 'duis-aute-irure-dolor-in', '', '', '2021-01-14 03:39:01', '2021-01-14 03:39:01', '', 0, 'http://mogo.loc/?p=135', 0, 'post', '', 0),
(136, 1, '2021-01-14 03:39:01', '2021-01-14 03:39:01', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n<!-- /wp:paragraph -->', 'Duis aute irure dolor in', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2021-01-14 03:39:01', '2021-01-14 03:39:01', '', 135, 'http://mogo.loc/archives/135-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header', 'header', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(21, 2, 0),
(22, 2, 0),
(96, 2, 0),
(125, 1, 0),
(128, 1, 0),
(132, 1, 0),
(135, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mogo-admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"139a108414d1e985140f0928e30342b957bc30508949a4e8defecff9781c3615\";a:4:{s:10:\"expiration\";i:1611419621;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1610210021;}s:64:\"cfbe25928c501662a4759608459ae069b98e10710b7bcbad62c1e46163c25cda\";a:4:{s:10:\"expiration\";i:1610872427;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0\";s:5:\"login\";i:1610699627;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1610226677'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:46:\"commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mogo-admin', '$P$B/O4YaCbo4YIvMeLTsOgDqJW7aqaXp/', 'mogo-admin', 'lutiks2013@gmail.com', 'http://mogo.loc', '2021-01-09 16:00:10', '', 0, 'mogo-admin');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;
--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=932;
--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
