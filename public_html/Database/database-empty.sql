-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2020 at 12:20 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empty`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_box`
--

CREATE TABLE `ads_box` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci,
  `size` text COLLATE utf8_persian_ci NOT NULL,
  `position` text COLLATE utf8_persian_ci NOT NULL,
  `image` text COLLATE utf8_persian_ci NOT NULL,
  `url` text COLLATE utf8_persian_ci NOT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL DEFAULT 'draft',
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_plan`
--

CREATE TABLE `ads_plan` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci,
  `price` int(11) NOT NULL,
  `day` int(11) DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_request`
--

CREATE TABLE `ads_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `description` text COLLATE utf8_persian_ci,
  `mode` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `transaction` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` text COLLATE utf8_persian_ci NOT NULL,
  `pre_text` text COLLATE utf8_persian_ci NOT NULL,
  `text` text COLLATE utf8_persian_ci NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `mode` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `view` bigint(20) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_rate`
--

CREATE TABLE `article_rate` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `balance_log`
--

CREATE TABLE `balance_log` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci,
  `description` text COLLATE utf8_persian_ci,
  `type` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `account` varchar(30) COLLATE utf8_persian_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `exporter_id` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8_persian_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` text COLLATE utf8_persian_ci,
  `name` text COLLATE utf8_persian_ci,
  `post_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `pre_content` text COLLATE utf8_persian_ci,
  `content` text COLLATE utf8_persian_ci,
  `category_id` int(11) DEFAULT NULL,
  `tags` text COLLATE utf8_persian_ci,
  `image` text COLLATE utf8_persian_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(10) COLLATE utf8_persian_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `quiz_result_id` int(10) UNSIGNED NOT NULL,
  `user_grade` varchar(128) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `certificates_templates`
--

CREATE TABLE `certificates_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `image` varchar(255) NOT NULL,
  `position_x` varchar(64) DEFAULT NULL,
  `position_y` varchar(64) DEFAULT NULL,
  `font_size` varchar(64) DEFAULT NULL,
  `text_color` varchar(64) DEFAULT NULL,
  `status` enum('draft','publish') DEFAULT 'draft',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificates_templates`
--

INSERT INTO `certificates_templates` (`id`, `title`, `body`, `image`, `position_x`, `position_y`, `font_size`, `text_color`, `status`, `created_at`, `updated_at`) VALUES
(2, 'first certificate template', 'This certificate is presented to [user]\r\n that successfully passed the [course] \r\ncourse with grade [grade].', '/bin/admin/images/certificate.png', '715', '650', '55', '#343871', 'publish', NULL, 1596787956);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci,
  `content` text COLLATE utf8_persian_ci,
  `category_id` int(11) DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `content_type` text COLLATE utf8_persian_ci,
  `support` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `document` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `post` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `price` varchar(30) COLLATE utf8_persian_ci DEFAULT NULL,
  `price_post` varchar(30) COLLATE utf8_persian_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `request` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `prerequisite` text COLLATE utf8_persian_ci,
  `tag` text COLLATE utf8_persian_ci,
  `view` int(11) NOT NULL DEFAULT '0',
  `support_rate` int(11) NOT NULL DEFAULT '0',
  `download` int(1) NOT NULL DEFAULT '1',
  `price_3` float DEFAULT NULL,
  `price_6` float DEFAULT NULL,
  `price_9` float DEFAULT NULL,
  `price_12` float DEFAULT NULL,
  `subscribe_3` text COLLATE utf8_persian_ci,
  `subscribe_6` text COLLATE utf8_persian_ci,
  `subscribe_9` text COLLATE utf8_persian_ci,
  `subscribe_12` text COLLATE utf8_persian_ci,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `meeting_type` text COLLATE utf8_persian_ci,
  `meeting_join_url` text COLLATE utf8_persian_ci,
  `meeting_start_url` text COLLATE utf8_persian_ci,
  `meeting_mode` text COLLATE utf8_persian_ci,
  `meeting_password` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_category`
--

CREATE TABLE `contents_category` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci,
  `image` text COLLATE utf8_persian_ci,
  `parent_id` int(11) DEFAULT NULL,
  `class` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `commision` int(11) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_persian_ci NOT NULL DEFAULT '#FFAB00',
  `background` text COLLATE utf8_persian_ci,
  `icon` text COLLATE utf8_persian_ci,
  `req_icon` text COLLATE utf8_persian_ci,
  `app_icon` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_category_filter`
--

CREATE TABLE `contents_category_filter` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `filter` text COLLATE utf8_persian_ci NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_category_filter_tag`
--

CREATE TABLE `contents_category_filter_tag` (
  `id` bigint(20) NOT NULL,
  `filter_id` bigint(20) NOT NULL,
  `tag` text COLLATE utf8_persian_ci NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_category_filter_tag_relation`
--

CREATE TABLE `contents_category_filter_tag_relation` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `filter_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_category_relation`
--

CREATE TABLE `contents_category_relation` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contents_comment`
--

CREATE TABLE `contents_comment` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8_persian_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` text COLLATE utf8_persian_ci,
  `name` text COLLATE utf8_persian_ci,
  `content_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_meta`
--

CREATE TABLE `contents_meta` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `option` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `value` text COLLATE utf8_persian_ci,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_part`
--

CREATE TABLE `contents_part` (
  `id` bigint(20) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci,
  `content_id` int(11) NOT NULL,
  `upload_video` text COLLATE utf8_persian_ci,
  `upload_image` text COLLATE utf8_persian_ci,
  `upload_screen` text COLLATE utf8_persian_ci,
  `duration` varchar(20) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `size` varchar(20) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `video` text COLLATE utf8_persian_ci,
  `image` text COLLATE utf8_persian_ci,
  `screen` text COLLATE utf8_persian_ci,
  `view` int(11) NOT NULL DEFAULT '0',
  `free` int(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `server` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `request` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_support`
--

CREATE TABLE `contents_support` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8_persian_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `supporter_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci,
  `content_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL DEFAULT '1',
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents_vip`
--

CREATE TABLE `contents_vip` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `first_date` int(11) NOT NULL,
  `last_date` int(11) NOT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_rate`
--

CREATE TABLE `content_rate` (
  `id` bigint(20) NOT NULL,
  `content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `off` int(11) NOT NULL,
  `off_id` int(11) DEFAULT NULL,
  `first_date` int(11) NOT NULL,
  `last_date` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails_template`
--

CREATE TABLE `emails_template` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `template` longtext COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `emails_template`
--

INSERT INTO `emails_template` (`id`, `title`, `template`) VALUES
(11, 'Account activation', '<title>Account activation</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<style type=\"text/css\">\r\n\r\n    \r\n    /* CLIENT-SPECIFIC STYLES */\r\n    body, table, td, a { -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; }\r\n    table, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; }\r\n    img { -ms-interpolation-mode: bicubic; }\r\n\r\n    /* RESET STYLES */\r\n    img { border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none; }\r\n    table { border-collapse: collapse !important; }\r\n    body { height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important; }\r\n\r\n    /* iOS BLUE LINKS */\r\n    a[x-apple-data-detectors] {\r\n        color: inherit !important;\r\n        text-decoration: none !important;\r\n        font-size: inherit !important;\r\n        font-family: inherit !important;\r\n        font-weight: inherit !important;\r\n        line-height: inherit !important;\r\n    }\r\n    \r\n    /* MOBILE STYLES */\r\n    @media screen and (max-width:600px){\r\n        h1 {\r\n            font-size: 32px !important;\r\n            line-height: 32px !important;\r\n        }\r\n    }\r\n\r\n    /* ANDROID CENTER FIX */\r\n    div[style*=\"margin: 16px 0;\"] { margin: 0 !important; }\r\n</style>\r\n\r\n\r\n\r\n\r\n<!-- HIDDEN PREHEADER TEXT -->\r\n<div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: vazir, Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\">\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n    <!-- LOGO -->\r\n    <tbody><tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\">\r\n                        <a href=\"http://litmus.com\" target=\"_blank\" dideo-checked=\"true\">\r\n                            <img alt=\"Logo\" src=\"#\" width=\"200\" height=\"55\" style=\"display: block; width: 200px; max-width: 200px; min-width: 200px; font-family: vazir, Helvetica, Arial, sans-serif; color: #ffffff; font-size: 18px;\" border=\"0\">\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- HERO -->\r\n    <tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 0px; line-height: 48px;\">\r\n                      <h1 style=\"font-size: 48px;direction:ltr; font-weight: 400;font-family:vazir; margin: 0;\">Hello [name]!!!</h1>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- COPY BLOCK -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- COPY -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;direction:ltr\">\r\n                  <p style=\"margin: 0;\">	\r\n				   Click on the button to activate your account.</p>\r\n                </td>\r\n              </tr>\r\n              <!-- BULLETPROOF BUTTON -->\r\n              <tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\">\r\n                  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                    <tbody><tr>\r\n                      <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 60px 30px;\">\r\n                        <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tbody><tr>\r\n                              <td align=\"center\" style=\"border-radius: 3px;\" bgcolor=\"#FFA73B\"><a href=\"[active]\" target=\"_blank\" style=\"font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\" dideo-checked=\"true\">Activate my account</a></td>\r\n                          </tr>\r\n                        </tbody></table>\r\n                      </td>\r\n                    </tr>\r\n                  </tbody></table>\r\n                </td>\r\n              </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- SUPPORT CALLOUT -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <!-- HEADLINE -->\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFECD1\" align=\"center\" style=\"padding: 30px 30px 30px 30px; border-radius: 4px 4px 4px 4px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n                    <h2 style=\"font-size: 20px; font-weight: 400; color: #111111; margin: 0;\">Have a question</h2>\r\n                    <p style=\"margin: 0;\"><a href=\"#\" target=\"_blank\" style=\"color: #FFA73B;\" dideo-checked=\"true\">Proacademy support system</a></p>\r\n                  </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- FOOTER -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- NAVIGATION -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 30px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                </td>\r\n              </tr>\r\n              <!-- PERMISSION REMINDER -->\r\n              <tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 0px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                  <p style=\"margin: 0;direction:ltr;text-align:center;\">This email sent automatically, please don\'t response it</p>\r\n                </td>\r\n              </tr>\r\n      \r\n  \r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n</tbody></table>'),
(12, 'Your account activated!', '<title>Account activation</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<style type=\"text/css\">\r\n\r\n    \r\n    /* CLIENT-SPECIFIC STYLES */\r\n    body, table, td, a { -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; }\r\n    table, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; }\r\n    img { -ms-interpolation-mode: bicubic; }\r\n\r\n    /* RESET STYLES */\r\n    img { border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none; }\r\n    table { border-collapse: collapse !important; }\r\n    body { height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important; }\r\n\r\n    /* iOS BLUE LINKS */\r\n    a[x-apple-data-detectors] {\r\n        color: inherit !important;\r\n        text-decoration: none !important;\r\n        font-size: inherit !important;\r\n        font-family: inherit !important;\r\n        font-weight: inherit !important;\r\n        line-height: inherit !important;\r\n    }\r\n    \r\n    /* MOBILE STYLES */\r\n    @media screen and (max-width:600px){\r\n        h1 {\r\n            font-size: 32px !important;\r\n            line-height: 32px !important;\r\n        }\r\n    }\r\n\r\n    /* ANDROID CENTER FIX */\r\n    div[style*=\"margin: 16px 0;\"] { margin: 0 !important; }\r\n</style>\r\n\r\n\r\n\r\n\r\n<!-- HIDDEN PREHEADER TEXT -->\r\n<div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: vazir, Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\">\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n    <!-- LOGO -->\r\n    <tbody><tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\">\r\n                        <a href=\"http://litmus.com\" target=\"_blank\" dideo-checked=\"true\">\r\n                            <img alt=\"Logo\" src=\"#\" width=\"200\" height=\"55\" style=\"display: block; width: 200px; max-width: 200px; min-width: 200px; font-family: vazir, Helvetica, Arial, sans-serif; color: #ffffff; font-size: 18px;\" border=\"0\">\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- HERO -->\r\n    <tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 0px; line-height: 48px;\">\r\n                      <h1 style=\"font-size: 48px;direction:ltr; font-weight: 400;font-family:vazir; margin: 0;\">Welcome back [name]!</h1>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- COPY BLOCK -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- COPY -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;direction:ltr\">\r\n                  <p style=\"margin: 0;\">	\r\n				   Your account activated successfully! Now you can start learning or upload your items.\r\n</p>\r\n                </td>\r\n              </tr>\r\n              <!-- BULLETPROOF BUTTON -->\r\n              <tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\">\r\n                  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                    <tbody><tr>\r\n                      <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 60px 30px;\">\r\n                        <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tbody><tr>\r\n                              <td align=\"center\" style=\"border-radius: 3px;\" bgcolor=\"#FFA73B\"><a href=\"#\" target=\"_blank\" style=\"font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\" dideo-checked=\"true\">Go to user panel</a></td>\r\n                          </tr>\r\n                        </tbody></table>\r\n                      </td>\r\n                    </tr>\r\n                  </tbody></table>\r\n                </td>\r\n              </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- SUPPORT CALLOUT -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <!-- HEADLINE -->\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFECD1\" align=\"center\" style=\"padding: 30px 30px 30px 30px; border-radius: 4px 4px 4px 4px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n                    <h2 style=\"font-size: 20px; font-weight: 400; color: #111111; margin: 0;\">Have a question</h2>\r\n                    <p style=\"margin: 0;\"><a href=\"#\" target=\"_blank\" style=\"color: #FFA73B;\" dideo-checked=\"true\">Proacademy support system</a></p>\r\n                  </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- FOOTER -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- NAVIGATION -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 30px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                </td>\r\n              </tr>\r\n              <!-- PERMISSION REMINDER -->\r\n              <tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 0px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                  <p style=\"margin: 0;direction:ltr;text-align:center;\">This email sent automatically, please don\'t response it</p>\r\n                </td>\r\n              </tr>\r\n      \r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n</tbody></table>'),
(13, 'Password change', '<title>Account activation</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<style type=\"text/css\">\r\n\r\n    \r\n    /* CLIENT-SPECIFIC STYLES */\r\n    body, table, td, a { -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; }\r\n    table, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; }\r\n    img { -ms-interpolation-mode: bicubic; }\r\n\r\n    /* RESET STYLES */\r\n    img { border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none; }\r\n    table { border-collapse: collapse !important; }\r\n    body { height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important; }\r\n\r\n    /* iOS BLUE LINKS */\r\n    a[x-apple-data-detectors] {\r\n        color: inherit !important;\r\n        text-decoration: none !important;\r\n        font-size: inherit !important;\r\n        font-family: inherit !important;\r\n        font-weight: inherit !important;\r\n        line-height: inherit !important;\r\n    }\r\n    \r\n    /* MOBILE STYLES */\r\n    @media screen and (max-width:600px){\r\n        h1 {\r\n            font-size: 32px !important;\r\n            line-height: 32px !important;\r\n        }\r\n    }\r\n\r\n    /* ANDROID CENTER FIX */\r\n    div[style*=\"margin: 16px 0;\"] { margin: 0 !important; }\r\n</style>\r\n\r\n\r\n\r\n\r\n<!-- HIDDEN PREHEADER TEXT -->\r\n<div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: vazir, Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\">\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n    <!-- LOGO -->\r\n    <tbody><tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\">\r\n                        <a href=\"http://litmus.com\" target=\"_blank\" dideo-checked=\"true\">\r\n                            <img alt=\"Logo\" src=\"#\" width=\"200\" height=\"55\" style=\"display: block; width: 200px; max-width: 200px; min-width: 200px; font-family: vazir, Helvetica, Arial, sans-serif; color: #ffffff; font-size: 18px;\" border=\"0\">\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- HERO -->\r\n    <tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 0px; line-height: 48px;\">\r\n                      <h1 style=\"font-size: 48px;direction:ltr; font-weight: 400;font-family:vazir; margin: 0;\">Hello [name]!!!</h1>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- COPY BLOCK -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- COPY -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;direction:ltr\">\r\n                  <p style=\"margin: 0;\">	\r\n				   If you want to change your account password, click on below button\r\n</p>\r\n                </td>\r\n              </tr>\r\n              <!-- BULLETPROOF BUTTON -->\r\n              <tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\">\r\n                  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                    <tbody><tr>\r\n                      <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 60px 30px;\">\r\n                        <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tbody><tr>\r\n                              <td align=\"center\" style=\"border-radius: 3px;\" bgcolor=\"#FFA73B\"><a href=\"[token]\" target=\"_blank\" style=\"font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\" dideo-checked=\"true\">Change my password</a></td>\r\n                          </tr>\r\n                        </tbody></table>\r\n                      </td>\r\n                    </tr>\r\n                  </tbody></table>\r\n                </td>\r\n              </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- SUPPORT CALLOUT -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <!-- HEADLINE -->\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFECD1\" align=\"center\" style=\"padding: 30px 30px 30px 30px; border-radius: 4px 4px 4px 4px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n                    <h2 style=\"font-size: 20px; font-weight: 400; color: #111111; margin: 0;\">Have a question</h2>\r\n                    <p style=\"margin: 0;\"><a href=\"#\" target=\"_blank\" style=\"color: #FFA73B;\" dideo-checked=\"true\">Proacademy support system</a></p>\r\n                  </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- FOOTER -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- NAVIGATION -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 30px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                </td>\r\n              </tr>\r\n              <!-- PERMISSION REMINDER -->\r\n              <tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 0px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                  <p style=\"margin: 0;direction:ltr;text-align:center;\">This email sent automatically, please don\'t response it</p>\r\n                </td>\r\n              </tr>\r\n      \r\n  \r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n</tbody></table>'),
(14, 'New Password', '<title>Account activation</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<style type=\"text/css\">\r\n\r\n    \r\n    /* CLIENT-SPECIFIC STYLES */\r\n    body, table, td, a { -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; }\r\n    table, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; }\r\n    img { -ms-interpolation-mode: bicubic; }\r\n\r\n    /* RESET STYLES */\r\n    img { border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none; }\r\n    table { border-collapse: collapse !important; }\r\n    body { height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important; }\r\n\r\n    /* iOS BLUE LINKS */\r\n    a[x-apple-data-detectors] {\r\n        color: inherit !important;\r\n        text-decoration: none !important;\r\n        font-size: inherit !important;\r\n        font-family: inherit !important;\r\n        font-weight: inherit !important;\r\n        line-height: inherit !important;\r\n    }\r\n    \r\n    /* MOBILE STYLES */\r\n    @media screen and (max-width:600px){\r\n        h1 {\r\n            font-size: 32px !important;\r\n            line-height: 32px !important;\r\n        }\r\n    }\r\n\r\n    /* ANDROID CENTER FIX */\r\n    div[style*=\"margin: 16px 0;\"] { margin: 0 !important; }\r\n</style>\r\n\r\n\r\n\r\n\r\n<!-- HIDDEN PREHEADER TEXT -->\r\n<div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: vazir, Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\">\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n    <!-- LOGO -->\r\n    <tbody><tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\">\r\n                        <a href=\"http://litmus.com\" target=\"_blank\" dideo-checked=\"true\">\r\n                            <img alt=\"Logo\" src=\"#\" width=\"200\" height=\"55\" style=\"display: block; width: 200px; max-width: 200px; min-width: 200px; font-family: vazir, Helvetica, Arial, sans-serif; color: #ffffff; font-size: 18px;\" border=\"0\">\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- HERO -->\r\n    <tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 0px; line-height: 48px;\">\r\n                      <h1 style=\"font-size: 48px;direction:ltr; font-weight: 400;font-family:vazir; margin: 0;\">Hello [name]!!</h1>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- COPY BLOCK -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- COPY -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;direction:ltr\">\r\n                  <p style=\"margin: 0;\">	\r\n				  Your password changed successfully, Your new password is:\r\n</p>\r\n                </td>\r\n              </tr>\r\n              <!-- BULLETPROOF BUTTON -->\r\n              <tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\">\r\n                  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                    <tbody><tr>\r\n                      <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 60px 30px;\">\r\n                        <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tbody><tr>\r\n                              <td align=\"center\" style=\"border-radius: 3px;\" bgcolor=\"#FFA73B\"><a href=\"#\" target=\"_blank\" style=\"font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\" dideo-checked=\"true\">[password]</a></td>\r\n                          </tr>\r\n                        </tbody></table>\r\n                      </td>\r\n                    </tr>\r\n                  </tbody></table>\r\n                </td>\r\n              </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- SUPPORT CALLOUT -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <!-- HEADLINE -->\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFECD1\" align=\"center\" style=\"padding: 30px 30px 30px 30px; border-radius: 4px 4px 4px 4px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n                    <h2 style=\"font-size: 20px; font-weight: 400; color: #111111; margin: 0;\">Have a question</h2>\r\n                    <p style=\"margin: 0;\"><a href=\"#\" target=\"_blank\" style=\"color: #FFA73B;\" dideo-checked=\"true\">Proacademy support system</a></p>\r\n                  </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- FOOTER -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- NAVIGATION -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 30px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                </td>\r\n              </tr>\r\n              <!-- PERMISSION REMINDER -->\r\n              <tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 0px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                  <p style=\"margin: 0;direction:ltr;text-align:center;\">This email sent automatically, please don\'t response it</p>\r\n                </td>\r\n              </tr>\r\n      \r\n  \r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n</tbody></table>'),
(15, 'New Notification', '<title>Account activation</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<style type=\"text/css\">\r\n\r\n    \r\n    /* CLIENT-SPECIFIC STYLES */\r\n    body, table, td, a { -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; }\r\n    table, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; }\r\n    img { -ms-interpolation-mode: bicubic; }\r\n\r\n    /* RESET STYLES */\r\n    img { border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none; }\r\n    table { border-collapse: collapse !important; }\r\n    body { height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important; }\r\n\r\n    /* iOS BLUE LINKS */\r\n    a[x-apple-data-detectors] {\r\n        color: inherit !important;\r\n        text-decoration: none !important;\r\n        font-size: inherit !important;\r\n        font-family: inherit !important;\r\n        font-weight: inherit !important;\r\n        line-height: inherit !important;\r\n    }\r\n    \r\n    /* MOBILE STYLES */\r\n    @media screen and (max-width:600px){\r\n        h1 {\r\n            font-size: 32px !important;\r\n            line-height: 32px !important;\r\n        }\r\n    }\r\n\r\n    /* ANDROID CENTER FIX */\r\n    div[style*=\"margin: 16px 0;\"] { margin: 0 !important; }\r\n</style>\r\n\r\n\r\n\r\n\r\n<!-- HIDDEN PREHEADER TEXT -->\r\n<div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: vazir, Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\">\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n    <!-- LOGO -->\r\n    <tbody><tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\">\r\n                        <a href=\"http://litmus.com\" target=\"_blank\" dideo-checked=\"true\">\r\n                            <img alt=\"Logo\" src=\"#\" width=\"200\" height=\"55\" style=\"display: block; width: 200px; max-width: 200px; min-width: 200px; font-family: vazir, Helvetica, Arial, sans-serif; color: #ffffff; font-size: 18px;\" border=\"0\">\r\n                        </a>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- HERO -->\r\n    <tr>\r\n        <td bgcolor=\"#FFA73B\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <tbody><tr>\r\n                    <td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 0px; line-height: 48px;\">\r\n                      <h1 style=\"font-size: 48px;direction:ltr; font-weight: 400;font-family:vazir; margin: 0;\">[n.title]</h1>\r\n                    </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- COPY BLOCK -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- COPY -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;direction:ltr\">\r\n                  <p style=\"margin: 0;\">	\r\n				  [n.content]\r\n</p>\r\n                </td>\r\n              </tr>\r\n              <!-- BULLETPROOF BUTTON -->\r\n              <tr>\r\n                <td bgcolor=\"#ffffff\" align=\"left\">\r\n                  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                    <tbody><tr>\r\n                      <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 60px 30px;\">\r\n                        <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tbody><tr>\r\n                              <td align=\"center\" style=\"border-radius: 3px;\" bgcolor=\"#FFA73B\"><a href=\"[active]\" target=\"_blank\" style=\"font-size: 20px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #FFA73B; display: inline-block;\" dideo-checked=\"true\">Activate Account</a></td>\r\n                          </tr>\r\n                        </tbody></table>\r\n                      </td>\r\n                    </tr>\r\n                  </tbody></table>\r\n                </td>\r\n              </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- SUPPORT CALLOUT -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n                <!-- HEADLINE -->\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFECD1\" align=\"center\" style=\"padding: 30px 30px 30px 30px; border-radius: 4px 4px 4px 4px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;\">\r\n                    <h2 style=\"font-size: 20px; font-weight: 400; color: #111111; margin: 0;\">Have a question</h2>\r\n                    <p style=\"margin: 0;\"><a href=\"#\" target=\"_blank\" style=\"color: #FFA73B;\" dideo-checked=\"true\">Proacademy support system</a></p>\r\n                  </td>\r\n                </tr>\r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n    <!-- FOOTER -->\r\n    <tr>\r\n        <td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\">\r\n            <tr>\r\n            <td align=\"center\" valign=\"top\" width=\"600\">\r\n            <![endif]-->\r\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">\r\n              <!-- NAVIGATION -->\r\n              <tbody><tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 30px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                </td>\r\n              </tr>\r\n              <!-- PERMISSION REMINDER -->\r\n              <tr>\r\n                <td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 0px 30px 30px 30px; color: #666666; font-family: vazir, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\">\r\n                  <p style=\"margin: 0;direction:ltr;text-align:center;\">This email sent automatically, please don\'t response it</p>\r\n                </td>\r\n              </tr>\r\n      \r\n  \r\n            </tbody></table>\r\n            <!--[if (gte mso 9)|(IE)]>\r\n            </td>\r\n            </tr>\r\n            </table>\r\n            <![endif]-->\r\n        </td>\r\n    </tr>\r\n</tbody></table>');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `mode` text,
  `user_id` int(11) NOT NULL,
  `ip` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` bigint(20) NOT NULL,
  `follower` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `msg` text COLLATE utf8_persian_ci,
  `code` varchar(64) COLLATE utf8_persian_ci DEFAULT NULL,
  `off` int(11) DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `expire_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` text,
  `updated_at` text,
  `created_at_sh` int(11) DEFAULT NULL,
  `updated_at_sh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_date`
--

CREATE TABLE `meeting_date` (
  `id` int(11) NOT NULL,
  `date` text,
  `time` text,
  `content_id` text,
  `user_id` text,
  `mode` text,
  `type` text,
  `duration` text,
  `title` text,
  `join_url` text,
  `start_url` text,
  `password` text,
  `time_start` int(11) DEFAULT NULL,
  `time_end` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_link`
--

CREATE TABLE `meeting_link` (
  `id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` text,
  `type` text,
  `mode` text,
  `created_at` text,
  `updated_at` text,
  `link_join` text,
  `link_start` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `msg` text COLLATE utf8_persian_ci,
  `title` text COLLATE utf8_persian_ci,
  `mode` varchar(10) COLLATE utf8_persian_ci DEFAULT NULL,
  `recipent_type` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `recipent_list` text COLLATE utf8_persian_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_status`
--

CREATE TABLE `notification_status` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_template`
--

CREATE TABLE `notification_template` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `template` longtext COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `notification_template`
--

INSERT INTO `notification_template` (`id`, `title`, `template`) VALUES
(7, 'User group change', '<p>Your user group changed to [u.c.title]</p>'),
(8, 'New user badge', '<p>Congratulations! You have a new badge called [u.m.title]&nbsp;</p>'),
(9, 'User badge removed', '<p>Sorry, your badge \"[u.m.title]\" removed.</p>'),
(10, 'Content uploaded', '<p>Your content \"[c.title]\" uploaded successfully, our staff in the content department will review it and inform you.</p>'),
(11, 'Course approved', '<p>Congratulations! Your course \"[c.title]\" approved and published...</p>'),
(12, 'Course needs some changes', '<p>Your course \"[c.title]\" reviewed and need some changes. You will receive another email contains issues.</p>'),
(13, 'Course rejected', '<p>Sorry, your course \"[c.title]\" doesn\'t meet our minimum requirements and cant be published!</p>'),
(14, 'New comment', '<p>New comment created for \"[c.title]\", You can reply to it from the product page.</p>'),
(15, 'New course support message', '<p>One of your students needs support about \"[c.title]\", Go to your panel and reply as soon as possible.</p>'),
(16, 'Course request created', '<p>Your course request \"[r.title]\" created successfully and will be published after the approval process.</p>'),
(17, 'Request published', '<p>Your course request \"[r.title]\" published successfully.</p>'),
(18, 'Course request rejected', '<p>Sorry, your request [r.title] rejected!</p>'),
(19, 'New request received', '<p>[u.name] requests you to record a new course about \"[r.title]\"<br></p>'),
(20, 'New follower', '<p>[u.username] started following you</p>'),
(21, 'New support request', '<p>Your support request \"[t.title]\" created.</p>'),
(22, 'Support request replied', '<p>Your support ticket \"[t.title]\" replied.</p>'),
(24, 'Withdraw', '<p>New payout! [b.amount], Description: [b.description]. This amount will be paid to your IBAN soon.<br></p>'),
(25, 'Course purchased', '<p>New course [c.title] purchased successfully! Enjoy learning...</p>'),
(26, 'New sales', '<p>Your course [c.title] has a new sale at [d.date], [d.time]<br></p>'),
(27, 'Physical sale confirmed', '<p>Your physical sale \"[c.title]\" confirmed by the customer. <b>[u.username]</b><br></p>'),
(28, 'project', 'display more than one images'),
(29, 'testing mail template', 'testing mail template for DG');

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `option` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `value` longtext COLLATE utf8_persian_ci,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`id`, `option`, `value`, `mode`) VALUES
(5, 'site_email', 'vendor@proacademy.eu', ''),
(6, 'site_title', 'Proacademy | Online education platform', ''),
(7, 'blog_comment', '0', NULL),
(8, 'blog_post_count', '6', NULL),
(10, 'main_page_popular_container', '1', NULL),
(11, 'category_content_count', '12', NULL),
(12, 'main_page_newest_container', '1', NULL),
(13, 'category_most_sell_container', '1', NULL),
(15, 'main_page_blog_post_count', '2', NULL),
(16, 'video_watermark', '/bin/admin/mobile%20app%20icon/business%20(4).png', NULL),
(17, 'content_terms', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p><img src=\"http://localhost/daghighy-project/public/storage/photos/admin/logo/8.jpg\" style=\"width: 150px;\"><br></p>', NULL),
(18, 'chart_day_count', '15', NULL),
(20, 'site_income', '50', NULL),
(21, 'user_register_mode', 'deactive', NULL),
(22, 'user_register_active_email', '11', NULL),
(23, 'user_register_wellcome_email', '12', NULL),
(24, 'site_withdraw_price', '25000', NULL),
(25, 'factor_watermark', '/bin/admin/images/logo/logo-small.png', NULL),
(26, 'factor_seconder', 'John', NULL),
(27, 'factor_approver', 'Albert', NULL),
(28, 'site_disable', '0', NULL),
(29, 'site_popup', '0', NULL),
(30, 'popup_image', 'http://localhost/daghighy-project/public/storage/photos/admin/logo/8.jpg', NULL),
(31, 'popup_url', '/jhghj', NULL),
(32, 'main_page_slider_content', '17,18,19,20', NULL),
(33, 'multiselect', '22', NULL),
(34, 'main_page_slider_timer', '9000', NULL),
(35, 'footer_col1_title', 'About Proacademy', NULL),
(36, 'footer_col1_content', '<p style=\"text-align:left\">Pro Academy is very professional learning & teaching platform. You can simply upload your courses & learn from professional educators online. Pro Academy has many built-in features that can resolve all your needs.<br></p>', NULL),
(37, 'footer_col2_title', 'Links', NULL),
(38, 'footer_col2_content', '<ul><li style=\"text-align: justify;\">About Us</li><li style=\"text-align: justify;\">Contact Us</li><li style=\"text-align: justify;\">Terms &amp; Rules</li><li style=\"text-align: justify;\">FAQ</li><li style=\"text-align: justify;\">Knowledgebase</li><li style=\"text-align: justify;\">Vendors Panel</li><li style=\"text-align: justify;\">Start Learning</li></ul>', NULL),
(39, 'footer_col3_title', 'Payment Gateways', NULL),
(40, 'footer_col3_content', '<p style=\"text-align: left;\"><img src=\"data:image/png;base64,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\" data-filename=\"paypal.png\" style=\"width: 128px;\"><br></p>', NULL),
(41, 'footer_col4_title', 'Guaranty', NULL),
(42, 'footer_col4_content', '<p><img src=\"data:image/png;base64,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\" data-filename=\"shield (1).png\" style=\"width: 128px;\"><br></p>', NULL),
(43, 'site_logo', '/bin/admin/images/logo/main-logo.png', NULL),
(44, 'site_logo_type', '/bin/admin/images/logo/logotype.png', NULL),
(45, 'request_page_icon', '/bin/admin/request icon/programming.jpg', NULL),
(46, 'request_term', '<p><img src=\"http://localhost/daghighy-project/public/storage/photos/admin/invoce/12.jpg\" style=\"width: 150px;\">Before send your request, read term and rules.</p>', NULL),
(47, 'site_videoads', '0', NULL),
(48, 'site_videoads_source', 'https://www.youtube.com/watch?v=F4dxophs_o0', NULL),
(49, 'site_videoads_poster', '/bin/admin/files/cmsdef/preroll-ads-cover.jpg', NULL),
(50, 'site_videoads_url', '', NULL),
(51, 'site_videoads_time', '7', NULL),
(52, 'seller_not_apply', 'Dear user, your financial & identity information not verified. It can cause a delay in the payout process.', NULL),
(53, 'notification_template_change_group', '7', NULL),
(54, 'notification_template_get_medal', '8', NULL),
(55, 'notification_template_delete_medal', '26', NULL),
(56, 'notification_template_content_pre_publish', '10', NULL),
(57, 'notification_template_content_publish', '11', NULL),
(58, 'notification_template_content_change', '11', NULL),
(59, 'notification_template_content_delete', '13', NULL),
(60, 'notification_template_content_comment_new', '14', NULL),
(61, 'notification_template_content_support_new', '24', NULL),
(62, 'notification_template_request_get', '16', NULL),
(63, 'notification_template_request_publish', '17', NULL),
(64, 'notification_template_request_draft', '18', NULL),
(65, 'notification_template_request_req', '19', NULL),
(66, 'notification_template_request_follow', '20', NULL),
(67, 'notification_template_ticket_new', '21', NULL),
(68, 'notification_template_ticket_reply', '22', NULL),
(69, 'notification_template_withdraw_new', '7', NULL),
(70, 'notification_template_withdraw_pay', '24', NULL),
(71, 'notification_template_buy_new', '25', NULL),
(72, 'notification_template_sell_new', '26', NULL),
(73, 'notification_template_feedback_new', '27', NULL),
(74, 'notification_template_buy_post_withdraw', '27', NULL),
(75, 'article_post_count', '6', NULL),
(76, 'main_page_article_post_count', '4', NULL),
(77, 'main_page_slide', '/bin/admin/files/cover(10).jpg', NULL),
(78, 'upload_page_background', '/bin/admin/files/cmsdef/upload.jpg', NULL),
(79, 'main_js', NULL, NULL),
(80, 'main_css', 'ghjghjhgj', NULL),
(81, 'login_page_background', '/bin/admin/files/cmsdef/login3.jpg', NULL),
(82, 'pages_content_delete', '<p><br></p>', NULL),
(83, 'pages_terms', '<p dir=\"RTL\">Terms &amp; rules goes here</p><p dir=\"RTL\"><br></p><ul>\r\n</ul>', NULL),
(84, 'pages_contact', '<p style=\"text-align:justify\"><br></p>\r\n\r\n<p><span style=\"font-size:18px\"><img alt=\"\" src=\"https://www.shareicon.net/data/32x32/2016/09/10/828132_gps_400x512.png\" style=\"height:16px; width:16px\">&nbsp;Address goes here</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><img alt=\"\" src=\"https://www.shareicon.net/data/32x32/2016/02/05/714409_phone_512x512.png\" style=\"height:18px; width:18px\">&nbsp;+1-283 526236</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><img alt=\"\" src=\"https://www.shareicon.net/data/32x32/2015/12/30/695303_email_512x512.png\" style=\"height:18px; width:18px\">&nbsp;sales@proacademy.eu</span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>', NULL),
(85, 'pages_about', '<p><span style=\"text-align: center;\">Pro Academy is a very professional learning &amp; teaching platform. You can simply upload your courses &amp; learn from professional educators online. Pro Academy has many built-in features that can resolve all your needs.</span></p><div><span style=\"text-align: center;\"><br></span></div>', NULL),
(86, 'pages_help', '<p>Help and tips go here.<br></p>', NULL),
(87, 'pages_content_update', '<p><br></p>', NULL),
(88, 'site_income_private', '30', NULL),
(89, 'main_page_slide_title', 'Professional Learning & Teaching Platform', NULL),
(90, 'main_page_slide_text', 'Proacademy is very professional learning & teaching platform. You can simply upload your courses & learn from professional educators online. Proacademy has many built-in features that can resolve all your needs.', NULL),
(91, 'main_page_slide_btn_1_text', 'Start Learnings', NULL),
(92, 'main_page_slide_btn_2_text', 'Start Teachings', NULL),
(93, 'main_page_slide_btn_1_url', '/category/s', NULL),
(94, 'main_page_slide_btn_2_url', '/user/content/news', NULL),
(95, 'main_page_vip_container', '1', NULL),
(96, 'default_avatar', '/bin/admin/files/10179153.jpg', NULL),
(97, 'default_user_avatar', '/bin/admin/files/boy.svg', NULL),
(98, 'default_user_cover', '/bin/admin/files/ctest4.jpg', NULL),
(99, 'default_chanel_icon', '/bin/admin/files/cmsdef/default-channel.svg', NULL),
(100, 'default_chanel_cover', '/bin/admin/files/ctest4.jpg', NULL),
(101, 'user_register_rest_email', NULL, NULL),
(102, 'user_register_new_password_email', '14', NULL),
(103, 'user_register_reset_email', '13', NULL),
(104, 'triangle-banner-top-image', NULL, NULL),
(105, 'triangle-banner-top-url', NULL, NULL),
(106, 'triangle-banner-bottom-image', NULL, NULL),
(107, 'triangle-banner-bottom-url', '#test', NULL),
(108, 'banner-html-box', NULL, NULL),
(109, 'email_notification_template', '15', NULL),
(110, 'currency', 'USD', NULL),
(111, 'site_rtl', '0', NULL),
(112, 'site_videoads_title', 'testghj', NULL),
(113, 'site_videoads_roll_type', 'preRoll', NULL),
(114, 'site_description', 'The description goes here...', NULL),
(115, 'gateway_paypal', '1', NULL),
(116, 'gateway_paytm', '1', NULL),
(117, 'gateway_payu', '1', NULL),
(118, 'site_preloader', '0', NULL),
(119, 'default_customer_dashboard_cover', '/bin/admin/panel%20banner.png', NULL),
(120, 'site_language', 'en', NULL),
(121, 'become_vendor', '1', NULL),
(122, 'gateway_paystack', '1', NULL),
(123, 'duplicate_login', '0', NULL),
(124, '_token', 'NiL7VRfkfiKtJMCeIrvh6jnUwMbjcYSQ7lEbfTX1', NULL),
(125, 'files', NULL, NULL),
(126, 'gateway_razorpay', '1', NULL),
(127, 'site_language_select', '[\"ar\",\"en\"]', NULL),
(128, 'user_register_captcha', '0', NULL),
(129, 'site_fav', '/bin/admin/images/logo/favicon.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE `point` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `preferential_id` int(11) NOT NULL,
  `rate` float NOT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL,
  `attempt` int(10) UNSIGNED DEFAULT NULL,
  `pass_mark` int(10) UNSIGNED DEFAULT NULL,
  `certificate` tinyint(1) DEFAULT NULL,
  `status` enum('active','disabled') CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT 'active',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions`
--

CREATE TABLE `quizzes_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `grade` varchar(255) NOT NULL,
  `type` enum('multiple','descriptive') DEFAULT 'multiple',
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answers`
--

CREATE TABLE `quizzes_questions_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `correct` tinyint(1) DEFAULT '0',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_results`
--

CREATE TABLE `quizzes_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `results` text,
  `user_grade` varchar(128) DEFAULT NULL,
  `status` enum('fail','pass','waiting') DEFAULT 'waiting',
  `created_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `image` text COLLATE utf8_persian_ci,
  `description` text COLLATE utf8_persian_ci,
  `mode` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record_fans`
--

CREATE TABLE `record_fans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci,
  `category_id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_fans`
--

CREATE TABLE `request_fans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_suggestion`
--

CREATE TABLE `request_suggestion` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `post_code` varchar(60) COLLATE utf8_persian_ci DEFAULT NULL,
  `post_code_date` bigint(20) DEFAULT NULL,
  `post_confirm` text COLLATE utf8_persian_ci,
  `post_feedback` varchar(30) COLLATE utf8_persian_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `remain_time` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sells_rate`
--

CREATE TABLE `sells_rate` (
  `id` int(11) NOT NULL,
  `sell_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci,
  `link` text COLLATE utf8_persian_ci,
  `icon` text COLLATE utf8_persian_ci,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `title`, `link`, `icon`, `sort`) VALUES
(1, 'whatsapp', 'https://youtube.com/', '/bin/admin/social%20icon/whatsapp%20(1).png', 1),
(2, 'Youtube', 'https://youtube.com/', '/bin/admin/social%20icon/youtube.png', 2),
(3, 'Skype', 'https://www.skype.com/', '/bin/admin/social%20icon/skype.png', 3),
(4, 'Facebook', 'https://www.facebook.com/', '/bin/admin/social%20icon/facebook.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contents_category`
--

CREATE TABLE `tbl_contents_category` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci,
  `image` text COLLATE utf8_persian_ci,
  `parent_id` int(11) DEFAULT NULL,
  `class` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `commision` int(11) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_persian_ci NOT NULL DEFAULT '#FFAB00',
  `background` text COLLATE utf8_persian_ci,
  `icon` text COLLATE utf8_persian_ci,
  `req_icon` text COLLATE utf8_persian_ci,
  `app_icon` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contents_meta`
--

CREATE TABLE `tbl_contents_meta` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `option` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `value` text COLLATE utf8_persian_ci,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `mode` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `position` varchar(10) COLLATE utf8_persian_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `attach` text COLLATE utf8_persian_ci,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_category`
--

CREATE TABLE `tickets_category` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_msg`
--

CREATE TABLE `tickets_msg` (
  `id` bigint(20) NOT NULL,
  `ticket_id` bigint(20) NOT NULL,
  `title` text COLLATE utf8_persian_ci,
  `msg` text COLLATE utf8_persian_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `mode` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `attach` text COLLATE utf8_persian_ci,
  `view` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_user`
--

CREATE TABLE `tickets_user` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_content` float DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `authority` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `bank` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `income` float NOT NULL DEFAULT '0',
  `gift` varchar(150) COLLATE utf8_persian_ci DEFAULT NULL,
  `balance_id` int(11) NOT NULL DEFAULT '0',
  `remain_time` text COLLATE utf8_persian_ci,
  `created_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_charge`
--

CREATE TABLE `transaction_charge` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `authority` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `bank` varchar(20) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usage`
--

CREATE TABLE `usage` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at_sh` bigint(20) NOT NULL,
  `updated_at_sh` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `name` text COLLATE utf8_persian_ci,
  `email` varchar(120) COLLATE utf8_persian_ci NOT NULL,
  `address` text COLLATE utf8_persian_ci,
  `income` float NOT NULL DEFAULT '0',
  `credit` float NOT NULL DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `mode` varchar(10) COLLATE utf8_persian_ci DEFAULT NULL,
  `admin` int(1) NOT NULL,
  `token` varchar(250) COLLATE utf8_persian_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_view` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `rate_point` varchar(5) COLLATE utf8_persian_ci DEFAULT NULL,
  `rate_count` int(11) NOT NULL DEFAULT '0',
  `vendor` int(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `zoom_jwt` text COLLATE utf8_persian_ci,
  `zoom_id` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `address`, `income`, `credit`, `category_id`, `mode`, `admin`, `token`, `remember_token`, `last_view`, `view`, `rate_point`, `rate_count`, `vendor`, `created_at`, `updated_at`, `zoom_jwt`, `zoom_id`) VALUES
(3, 'admin', '$2y$10$ArVoXUl1LtiDgibLu5Y4X.9Ma67GcceFtzt/8eQSMLXld2HlGiF7C', 'Admin', 'proacademy@gmail.com', '', 700, 12, 1, 'active', 1, '', NULL, 1596795041, 0, '', 0, 0, 1494577990, 1596795041, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_category`
--

CREATE TABLE `users_category` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `off` int(11) DEFAULT NULL,
  `commision` int(11) DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `catability` text COLLATE utf8_persian_ci,
  `image` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `option` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `value` text COLLATE utf8_persian_ci,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_rate`
--

CREATE TABLE `users_rate` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `image` text COLLATE utf8_persian_ci NOT NULL,
  `mode` text COLLATE utf8_persian_ci NOT NULL,
  `value` text COLLATE utf8_persian_ci NOT NULL,
  `gift` int(11) NOT NULL,
  `commision` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_channel`
--

CREATE TABLE `user_channel` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci,
  `formal` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `image` text COLLATE utf8_persian_ci,
  `avatar` text COLLATE utf8_persian_ci,
  `attach` text COLLATE utf8_persian_ci,
  `mode` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_channel_request`
--

CREATE TABLE `user_channel_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `attach` text COLLATE utf8_persian_ci,
  `mode` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_channel_video`
--

CREATE TABLE `user_channel_video` (
  `id` bigint(20) NOT NULL,
  `mode` text COLLATE utf8_persian_ci,
  `content_id` int(11) DEFAULT NULL,
  `chanel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_rate_relation`
--

CREATE TABLE `user_rate_relation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL,
  `mode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `view_templates`
--

CREATE TABLE `view_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `view_templates`
--

INSERT INTO `view_templates` (`id`, `folder`, `status`, `created_at`) VALUES
(3, 'template-2', 0, 1591284189),
(2, 'default', 1, 1591277485);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_box`
--
ALTER TABLE `ads_box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_plan`
--
ALTER TABLE `ads_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_request`
--
ALTER TABLE `ads_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_rate`
--
ALTER TABLE `article_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_log`
--
ALTER TABLE `balance_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `quiz_result_id` (`quiz_result_id`);

--
-- Indexes for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents_category`
--
ALTER TABLE `contents_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents_category_filter`
--
ALTER TABLE `contents_category_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents_category_filter_tag`
--
ALTER TABLE `contents_category_filter_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_id` (`filter_id`);

--
-- Indexes for table `contents_category_filter_tag_relation`
--
ALTER TABLE `contents_category_filter_tag_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `contents_category_relation`
--
ALTER TABLE `contents_category_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `contents_comment`
--
ALTER TABLE `contents_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contents_meta`
--
ALTER TABLE `contents_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `contents_part`
--
ALTER TABLE `contents_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `contents_support`
--
ALTER TABLE `contents_support`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contents_vip`
--
ALTER TABLE `contents_vip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `content_rate`
--
ALTER TABLE `content_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails_template`
--
ALTER TABLE `emails_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_date`
--
ALTER TABLE `meeting_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_link`
--
ALTER TABLE `meeting_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_status`
--
ALTER TABLE `notification_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Indexes for table `notification_template`
--
ALTER TABLE `notification_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record_fans`
--
ALTER TABLE `record_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_fans`
--
ALTER TABLE `request_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `request_suggestion`
--
ALTER TABLE `request_suggestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sells_rate`
--
ALTER TABLE `sells_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_id` (`sell_id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_contents_category`
--
ALTER TABLE `tbl_contents_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contents_meta`
--
ALTER TABLE `tbl_contents_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tickets_category`
--
ALTER TABLE `tickets_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_msg`
--
ALTER TABLE `tickets_msg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `tickets_user`
--
ALTER TABLE `tickets_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_charge`
--
ALTER TABLE `transaction_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usage`
--
ALTER TABLE `usage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_category`
--
ALTER TABLE `users_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_fk` (`user_id`);

--
-- Indexes for table `users_rate`
--
ALTER TABLE `users_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_channel`
--
ALTER TABLE `user_channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_channel_request`
--
ALTER TABLE `user_channel_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `user_channel_video`
--
ALTER TABLE `user_channel_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `chanel_id` (`chanel_id`);

--
-- Indexes for table `user_rate_relation`
--
ALTER TABLE `user_rate_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `view_templates`
--
ALTER TABLE `view_templates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_box`
--
ALTER TABLE `ads_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_plan`
--
ALTER TABLE `ads_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_request`
--
ALTER TABLE `ads_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_rate`
--
ALTER TABLE `article_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `balance_log`
--
ALTER TABLE `balance_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;

--
-- AUTO_INCREMENT for table `contents_category`
--
ALTER TABLE `contents_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents_category_filter`
--
ALTER TABLE `contents_category_filter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `contents_category_filter_tag`
--
ALTER TABLE `contents_category_filter_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents_category_filter_tag_relation`
--
ALTER TABLE `contents_category_filter_tag_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contents_category_relation`
--
ALTER TABLE `contents_category_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents_comment`
--
ALTER TABLE `contents_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents_meta`
--
ALTER TABLE `contents_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT for table `contents_part`
--
ALTER TABLE `contents_part`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `contents_support`
--
ALTER TABLE `contents_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents_vip`
--
ALTER TABLE `contents_vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `content_rate`
--
ALTER TABLE `content_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `emails_template`
--
ALTER TABLE `emails_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_date`
--
ALTER TABLE `meeting_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_link`
--
ALTER TABLE `meeting_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `notification_status`
--
ALTER TABLE `notification_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_template`
--
ALTER TABLE `notification_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `point`
--
ALTER TABLE `point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `record_fans`
--
ALTER TABLE `record_fans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `request_fans`
--
ALTER TABLE `request_fans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_suggestion`
--
ALTER TABLE `request_suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sells`
--
ALTER TABLE `sells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `sells_rate`
--
ALTER TABLE `sells_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_contents_category`
--
ALTER TABLE `tbl_contents_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_contents_meta`
--
ALTER TABLE `tbl_contents_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets_category`
--
ALTER TABLE `tickets_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tickets_msg`
--
ALTER TABLE `tickets_msg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets_user`
--
ALTER TABLE `tickets_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_charge`
--
ALTER TABLE `transaction_charge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usage`
--
ALTER TABLE `usage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100002;

--
-- AUTO_INCREMENT for table `users_category`
--
ALTER TABLE `users_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_rate`
--
ALTER TABLE `users_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_channel`
--
ALTER TABLE `user_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_channel_request`
--
ALTER TABLE `user_channel_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_channel_video`
--
ALTER TABLE `user_channel_video`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_rate_relation`
--
ALTER TABLE `user_rate_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `view_templates`
--
ALTER TABLE `view_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `certificates_ibfk_2` FOREIGN KEY (`quiz_result_id`) REFERENCES `quizzes_results` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contents_category_filter_tag`
--
ALTER TABLE `contents_category_filter_tag`
  ADD CONSTRAINT `contents_category_filter_tag_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `contents_category_filter` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contents_category_filter_tag_relation`
--
ALTER TABLE `contents_category_filter_tag_relation`
  ADD CONSTRAINT `contents_category_filter_tag_relation_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contents_category_relation`
--
ALTER TABLE `contents_category_relation`
  ADD CONSTRAINT `contents_category_relation_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contents_comment`
--
ALTER TABLE `contents_comment`
  ADD CONSTRAINT `contents_comment_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `contents_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contents_meta`
--
ALTER TABLE `contents_meta`
  ADD CONSTRAINT `contents_meta_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contents_part`
--
ALTER TABLE `contents_part`
  ADD CONSTRAINT `contents_part_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contents_support`
--
ALTER TABLE `contents_support`
  ADD CONSTRAINT `contents_support_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `contents_vip`
--
ALTER TABLE `contents_vip`
  ADD CONSTRAINT `contents_vip_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `notification_status`
--
ALTER TABLE `notification_status`
  ADD CONSTRAINT `notification_status_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD CONSTRAINT `quizzes_questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD CONSTRAINT `quizzes_questions_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD CONSTRAINT `quizzes_results_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `record_fans`
--
ALTER TABLE `record_fans`
  ADD CONSTRAINT `record_fans_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `record` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `request_fans`
--
ALTER TABLE `request_fans`
  ADD CONSTRAINT `request_fans_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `request_suggestion`
--
ALTER TABLE `request_suggestion`
  ADD CONSTRAINT `request_suggestion_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sells_rate`
--
ALTER TABLE `sells_rate`
  ADD CONSTRAINT `sells_rate_ibfk_1` FOREIGN KEY (`sell_id`) REFERENCES `sells` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets_msg`
--
ALTER TABLE `tickets_msg`
  ADD CONSTRAINT `tickets_msg_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD CONSTRAINT `user_meta_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_channel`
--
ALTER TABLE `user_channel`
  ADD CONSTRAINT `user_channel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_channel_request`
--
ALTER TABLE `user_channel_request`
  ADD CONSTRAINT `user_channel_request_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `user_channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_channel_video`
--
ALTER TABLE `user_channel_video`
  ADD CONSTRAINT `user_channel_video_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_channel_video_ibfk_2` FOREIGN KEY (`chanel_id`) REFERENCES `user_channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_rate_relation`
--
ALTER TABLE `user_rate_relation`
  ADD CONSTRAINT `user_rate_relation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
