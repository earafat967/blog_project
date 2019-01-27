-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2019 at 05:07 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Eyasin update', 'eyasin-update', 'eyasin-update-2019-01-18-5c422c5d2ee88.jpeg', '2019-01-18 10:00:40', '2019-01-18 13:43:25'),
(2, 'Laravel', 'laravel', 'laravel-2019-01-20-5c44ac8fba1e5.jpg', '2019-01-20 11:14:56', '2019-01-20 11:14:56'),
(3, 'Sports', 'sports', 'sports-2019-01-24-5c49f1ffa8d2d.jpg', '2019-01-24 11:12:32', '2019-01-24 11:12:32'),
(4, 'Entertainment', 'entertainment', 'entertainment-2019-01-24-5c49f21eeecbe.jpg', '2019-01-24 11:13:03', '2019-01-24 11:13:03'),
(5, 'Programmer', 'programmer', 'programmer-2019-01-24-5c49f233149eb.jpeg', '2019-01-24 11:13:23', '2019-01-24 11:13:23'),
(6, 'Image', 'image', 'image-2019-01-24-5c49f250eca2f.jpg', '2019-01-24 11:13:53', '2019-01-24 11:13:53'),
(7, 'lady', 'lady', 'lady-2019-01-24-5c49f27094ae8.jpg', '2019-01-24 11:14:24', '2019-01-24 11:14:24'),
(8, 'Designer', 'designer', 'designer-2019-01-24-5c49f29aa9b6d.jpg', '2019-01-24 11:15:07', '2019-01-24 11:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 3, 1, '2019-01-20 10:39:08', '2019-01-20 10:39:08'),
(3, 4, 1, '2019-01-20 10:40:22', '2019-01-20 10:40:22'),
(4, 4, 2, '2019-01-20 11:53:32', '2019-01-20 11:53:32'),
(5, 2, 2, '2019-01-22 03:21:35', '2019-01-22 03:21:35'),
(6, 5, 2, '2019-01-22 03:26:17', '2019-01-22 03:26:17'),
(7, 6, 2, '2019-01-23 11:52:52', '2019-01-23 11:52:52'),
(8, 7, 1, '2019-01-23 11:58:31', '2019-01-23 11:58:31'),
(9, 7, 2, '2019-01-23 11:58:31', '2019-01-23 11:58:31'),
(10, 8, 1, '2019-01-24 07:30:59', '2019-01-24 07:30:59'),
(11, 9, 2, '2019-01-25 11:18:14', '2019-01-25 11:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `catgs`
--

CREATE TABLE `catgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catgs`
--

INSERT INTO `catgs` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'sports', 'default.png', '2019-01-16 15:47:44', '2019-01-16 15:47:44'),
(2, 'Sports', 'sports', 'images/catg/category-1.jpg', '2019-01-17 00:27:39', '2019-01-17 00:27:39'),
(3, 'Eyasin', 'eyasin', 'images/catg/Capture.PNG', '2019-01-17 00:28:56', '2019-01-17 00:28:56'),
(4, 'Spor', 'spor', 'images/catg/Capture.PNG', '2019-01-17 00:30:44', '2019-01-17 00:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(148, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:13:\\\"abc@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7ef71ee4-78cf-4a9e-af4d-097706dd8156\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 22, 1548337007, 1548337007, 1548337007),
(149, 'default', '{\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c1c66bc0-7922-4f36-961f-deb5906f7ecd\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 22, NULL, 1548337007, 1548337007),
(150, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:14:\\\"boss@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a5b20f93-769f-4ef1-8623-ab317be22172\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 22, NULL, 1548337007, 1548337007),
(151, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:14:\\\"boss@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"bb7a2745-e818-4411-bc9b-26e97fded556\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1548436698, 1548436698),
(152, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:13:\\\"abc@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3510e9be-da9a-4f24-b7fc-af4df97feacb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1548436698, 1548436698);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_07_140232_create_roles_table', 1),
(4, '2019_01_11_175354_create_tags_table', 2),
(5, '2019_01_14_163711_create_categories_table', 3),
(6, '2019_01_16_205132_create_catgs_table', 4),
(7, '2019_01_16_214119_create_catgs_table', 5),
(8, '2019_01_19_162514_create_posts_table', 6),
(9, '2019_01_19_162711_create_category_post_table', 6),
(10, '2019_01_19_163020_create_post_tag_table', 6),
(11, '2019_01_22_132632_create_subscribers_table', 7),
(12, '2019_01_24_131806_create_jobs_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 1, 'this is title', 'this is title', 'default.png', 'this is title this is title', 0, 1, 1, '2019-01-19 18:00:00', '2019-01-19 18:00:00'),
(2, 1, 'This is Author right place method testing', 'this-is-author-right-place-method-testing', 'default.png', '<p>thank to author</p>', 0, 1, 1, '2019-01-19 18:00:00', '2019-01-22 03:21:34'),
(3, 1, 'This is is is title', 'this-is-is-is-title', 'this-is-is-is-title-2019-01-20-5c44a42b9d50b.template_internal2.jpg', '<p>This is body</p>', 0, 1, 1, '2019-01-20 10:39:07', '2019-01-20 10:39:07'),
(4, 1, 'This is a title 99 update', 'this-is-a-title-99-update', 'this-is-a-title-99-update-2019-01-20-5c44b59a95818.pexels-photo-1660603.jpeg', '<p>Just test body updated</p>', 0, 1, 1, '2019-01-20 10:40:22', '2019-01-20 11:53:32'),
(5, 2, 'This is the easiest way to get Composer set up on your machine.', 'this-is-the-easiest-way-to-get-composer-set-up-on-your-machine', 'this-is-the-easiest-way-to-get-composer-set-up-on-your-machine-2019-01-22-5c46e1b3566e6.pexels-photo-1141853.jpeg', '<p>This is the easiest way to get Composer set up on your machine.</p>\r\n<p>Download and run&nbsp;<a href=\"https://getcomposer.org/Composer-Setup.exe\">Composer-Setup.exe</a>. It will install the latest Composer version and set up your PATH so that you can call&nbsp;<code>composer</code>from any directory in your command line.</p>\r\n<blockquote>\r\n<p><strong>Note:</strong>&nbsp;Close your current terminal. Test usage with a new terminal: This is important since the PATH only gets loaded when the terminal starts.</p>\r\n</blockquote>\r\n<h3 id=\"manual-installation\">Manual Installation<a class=\"anchor\" href=\"https://getcomposer.org/doc/00-intro.md#manual-installation\">#</a></h3>\r\n<p>Change to a directory on your&nbsp;<code>PATH</code>&nbsp;and run the installer following&nbsp;<a href=\"https://getcomposer.org/download/\">the Download page instructions</a>&nbsp;to download&nbsp;<code>composer.phar</code>.</p>\r\n<p>Create a new&nbsp;<code>composer.bat</code>&nbsp;file alongside&nbsp;<code>composer.phar</code>:</p>\r\n<pre class=\" language-bash\"><code class=\" language-bash\">C<span class=\"token punctuation\">:</span>\\bin<span class=\"token operator\">&gt;</span><span class=\"token keyword\">echo</span> @php <span class=\"token string\">\"%~dp0composer.phar\"</span> <span class=\"token operator\">%</span><span class=\"token operator\">*</span><span class=\"token operator\">&gt;</span>composer<span class=\"token punctuation\">.</span>bat</code></pre>\r\n<p>Add the directory to your PATH environment variable if it isn\'t already. For information on changing your PATH variable, please see&nbsp;<a href=\"https://www.computerhope.com/issues/ch000549.htm\">this article</a>&nbsp;and/or use Google.</p>\r\n<p>Close your current terminal. Test usage with a new terminal:</p>\r\n<p>This is the easiest way to get Composer set up on your machine.</p>\r\n<p>Download and run&nbsp;<a href=\"https://getcomposer.org/Composer-Setup.exe\">Composer-Setup.exe</a>. It will install the latest Composer version and set up your PATH so that you can call&nbsp;<code>composer</code>from any directory in your command line.</p>\r\n<blockquote>\r\n<p><strong>Note:</strong>&nbsp;Close your current terminal. Test usage with a new terminal: This is important since the PATH only gets loaded when the terminal starts.</p>\r\n</blockquote>\r\n<h3 id=\"manual-installation\">Manual Installation<a class=\"anchor\" href=\"https://getcomposer.org/doc/00-intro.md#manual-installation\">#</a></h3>\r\n<p>Change to a directory on your&nbsp;<code>PATH</code>&nbsp;and run the installer following&nbsp;<a href=\"https://getcomposer.org/download/\">the Download page instructions</a>&nbsp;to download&nbsp;<code>composer.phar</code>.</p>\r\n<p>Create a new&nbsp;<code>composer.bat</code>&nbsp;file alongside&nbsp;<code>composer.phar</code>:</p>\r\n<pre class=\" language-bash\"><code class=\" language-bash\">C<span class=\"token punctuation\">:</span>\\bin<span class=\"token operator\">&gt;</span><span class=\"token keyword\">echo</span> @php <span class=\"token string\">\"%~dp0composer.phar\"</span> <span class=\"token operator\">%</span><span class=\"token operator\">*</span><span class=\"token operator\">&gt;</span>composer<span class=\"token punctuation\">.</span>bat</code></pre>\r\n<p>Add the directory to your PATH environment variable if it isn\'t already. For information on changing your PATH variable, please see&nbsp;<a href=\"https://www.computerhope.com/issues/ch000549.htm\">this article</a>&nbsp;and/or use Google.</p>\r\n<p>Close your current terminal. Test usage with a new terminal:</p>', 0, 1, 1, '2019-01-22 03:26:17', '2019-01-23 09:03:40'),
(6, 2, 'This is the easiest way to get Composer set up', 'this-is-the-easiest-way-to-get-composer-set-up', 'this-is-the-easiest-way-to-get-composer-set-up-2019-01-23-5c48a9f1307fa.pexels-photo-358070.jpeg', '<div id=\"main\">\r\n<p>This is the easiest way to get Composer set up on your machine.</p>\r\n<p>Download and run&nbsp;<a href=\"https://getcomposer.org/Composer-Setup.exe\">Composer-Setup.exe</a>. It will install the latest Composer version and set up your PATH so that you can call&nbsp;<code>composer</code>from any directory in your command line.</p>\r\n<blockquote>\r\n<p><strong>Note:</strong>&nbsp;Close your current terminal. Test usage with a new terminal: This is important since the PATH only gets loaded when the terminal starts.</p>\r\n</blockquote>\r\n<h3 id=\"manual-installation\">Manual Installation<a class=\"anchor\" href=\"https://getcomposer.org/doc/00-intro.md#manual-installation\">#</a></h3>\r\n<p>Change to a directory on your&nbsp;<code>PATH</code>&nbsp;and run the installer following&nbsp;<a href=\"https://getcomposer.org/download/\">the Download page instructions</a>&nbsp;to download&nbsp;<code>composer.phar</code>.</p>\r\n<p>Create a new&nbsp;<code>composer.bat</code>&nbsp;file alongside&nbsp;<code>composer.phar</code>:</p>\r\n<pre class=\" language-bash\"><code class=\" language-bash\">C<span class=\"token punctuation\">:</span>\\bin<span class=\"token operator\">&gt;</span><span class=\"token keyword\">echo</span> @php <span class=\"token string\">\"%~dp0composer.phar\"</span> <span class=\"token operator\">%</span><span class=\"token operator\">*</span><span class=\"token operator\">&gt;</span>composer<span class=\"token punctuation\">.</span>bat</code></pre>\r\n<p>Add the directory to your PATH environment variable if it isn\'t already. For information on changing your PATH variable, please see&nbsp;<a href=\"https://www.computerhope.com/issues/ch000549.htm\">this article</a>&nbsp;and/or use Google.</p>\r\n<p>Close your current terminal. Test usage with a new terminal:</p>\r\n<pre class=\" language-bash\"><code class=\" language-bash\">C<span class=\"token punctuation\">:</span>\\Users\\username<span class=\"token operator\">&gt;</span>composer <span class=\"token operator\">-</span>V\r\nComposer version <span class=\"token number\">1.0</span><span class=\"token punctuation\">.</span><span class=\"token number\">0</span> <span class=\"token number\">2016</span><span class=\"token operator\">-</span><span class=\"token number\">01</span><span class=\"token operator\">-</span><span class=\"token number\">10</span> <span class=\"token number\">20</span><span class=\"token punctuation\">:</span><span class=\"token number\">34</span><span class=\"token punctuation\">:</span><span class=\"token number\">53</span></code></pre>\r\n<h2 id=\"using-composer\">Using Composer<a class=\"anchor\" href=\"https://getcomposer.org/doc/00-intro.md#using-composer\">#</a></h2>\r\n<p>Now that you\'ve installed Composer, you are ready to use it! Head on over to the next chapter for a short and simple demonstration.</p>\r\n<p class=\"prev-next\"><a href=\"https://getcomposer.org/doc/01-basic-usage.md\">Basic usage</a>&nbsp;&rarr;</p>\r\n<p class=\"fork-and-edit\">Found a typo? Something is wrong in this documentation?&nbsp;<a href=\"https://github.com/composer/composer/edit/master/doc/00-intro.md\">Fork and edit</a>&nbsp;it!</p>\r\n</div>\r\n<footer>\r\n<p class=\"license\">Composer and all content on this site are released under the&nbsp;<a href=\"https://github.com/composer/composer/blob/master/LICENSE\">MIT license</a>.</p>\r\n</footer>', 0, 1, 1, '2019-01-23 11:52:51', '2019-01-23 13:03:41'),
(7, 2, 'Why do we use it?', 'why-do-we-use-it', 'why-do-we-use-it-2019-01-23-5c48ab46ddb50.pexels-photo-1661685.jpeg', '<div>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>', 0, 0, 1, '2019-01-23 11:58:31', '2019-01-23 12:02:33'),
(8, 2, 'Where can I get some?', 'where-can-i-get-some', 'where-can-i-get-some-2019-01-24-5c49be114b4d6.pexels-photo-1654698.jpeg', '<p>&nbsp;</p>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n<div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<form action=\"https://www.lipsum.com/feed/html\" method=\"post\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\"><input id=\"amount\" name=\"amount\" size=\"3\" type=\"text\" value=\"5\" /></td>\r\n<td rowspan=\"2\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><input id=\"paras\" checked=\"checked\" name=\"what\" type=\"radio\" value=\"paras\" /></td>\r\n<td><label for=\"paras\">paragraphs</label></td>\r\n</tr>\r\n<tr>\r\n<td><input id=\"words\" name=\"what\" type=\"radio\" value=\"words\" /></td>\r\n<td><label for=\"words\">words</label></td>\r\n</tr>\r\n<tr>\r\n<td><input id=\"bytes\" name=\"what\" type=\"radio\" value=\"bytes\" /></td>\r\n<td><label for=\"bytes\">bytes</label></td>\r\n</tr>\r\n<tr>\r\n<td><input id=\"lists\" name=\"what\" type=\"radio\" value=\"lists\" /></td>\r\n<td><label for=\"lists\">lists</label></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td><input id=\"start\" checked=\"checked\" name=\"start\" type=\"checkbox\" value=\"yes\" /></td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</form></div>', 0, 1, 1, '2019-01-24 07:30:59', '2019-01-24 07:35:11'),
(9, 1, 'titel', 'titel', 'titel-2019-01-25-5c4b44d50c39a.category-6-400x250.jpg', '<h1>Lorem Ipsum</h1>\r\n<h4>\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4>\r\n<h5>\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5>\r\n<hr />\r\n<div id=\"Content\">\r\n<div id=\"bannerL\">&nbsp;</div>\r\n<div id=\"bannerR\">&nbsp;</div>\r\n<div id=\"Panes\">\r\n<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<br />\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n<div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<form action=\"https://www.lipsum.com/feed/html\" method=\"post\"></form></div>\r\n</div>\r\n</div>', 0, 1, 1, '2019-01-25 11:18:13', '2019-01-27 08:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2019-01-19 18:00:00', '2019-01-19 18:00:00'),
(2, 3, 1, '2019-01-20 10:39:08', '2019-01-20 10:39:08'),
(3, 4, 2, '2019-01-20 10:40:22', '2019-01-20 10:40:22'),
(4, 4, 3, '2019-01-20 10:40:22', '2019-01-20 10:40:22'),
(5, 4, 1, '2019-01-20 11:53:32', '2019-01-20 11:53:32'),
(6, 2, 1, '2019-01-22 03:21:35', '2019-01-22 03:21:35'),
(7, 5, 1, '2019-01-22 03:26:17', '2019-01-22 03:26:17'),
(8, 5, 2, '2019-01-22 03:26:17', '2019-01-22 03:26:17'),
(9, 5, 3, '2019-01-22 03:26:17', '2019-01-22 03:26:17'),
(10, 6, 2, '2019-01-23 11:52:52', '2019-01-23 11:52:52'),
(11, 7, 1, '2019-01-23 11:58:31', '2019-01-23 11:58:31'),
(12, 7, 2, '2019-01-23 11:58:31', '2019-01-23 11:58:31'),
(13, 8, 2, '2019-01-24 07:30:59', '2019-01-24 07:30:59'),
(14, 9, 2, '2019-01-25 11:18:14', '2019-01-25 11:18:14'),
(15, 9, 1, '2019-01-27 08:23:44', '2019-01-27 08:23:44'),
(16, 9, 3, '2019-01-27 08:23:45', '2019-01-27 08:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'boss@gmail.com', '2019-01-22 09:32:55', '2019-01-22 09:32:55'),
(2, 'abc@gmail.com', '2019-01-22 09:47:39', '2019-01-22 09:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'sports', '2019-01-13 11:16:42', '2019-01-13 11:16:42'),
(2, 'Eyasin', 'eyasin', '2019-01-13 11:17:30', '2019-01-13 11:17:30'),
(3, 'ware', 'ware', '2019-01-13 11:31:27', '2019-01-13 11:31:27'),
(4, 'Sport', 'sport', '2019-01-20 11:15:08', '2019-01-20 11:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mr.Admin', 'admin', 'admin@blog.com', NULL, '$2y$10$cg1r9OJTYsl4VcmOWMV3ZuKKoXyusE9NUW2OfrajLndudBc0oo4bW', 'default.png', NULL, 'k8tYX6Xovu6NE3OC3kYtuFzZWVWcMYxz4R0bdN0AOkYl1HYNM9Y49BWb1tNr', NULL, NULL),
(2, 2, 'Mr.Author', 'author', 'author@blog.com', NULL, '$2y$10$9ZbCiXIJ/dz/G5Lc4txgCeumqT8FViXezn9nbLaaio2Ytp6cw9LlW', 'default.png', NULL, '1JceqhesFCvsfsyFRtfJRL9gfc1ukzICtBKdjt34gyb2WyYTAAZLAYtkAksd', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catgs`
--
ALTER TABLE `catgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `catgs`
--
ALTER TABLE `catgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
