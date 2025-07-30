-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2025 at 06:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `to_do_list_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_26_161112_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('91CJcZqiDChrJU5J7DolNbapmxyUWv4Kjc0ywH0R', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnVmNEFYcG13U1R5UXNaNWdVU296STN0QzQzcEVQVEUxWnVXY3IyYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YXNrcy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743791149),
('KU4Hl2k7r4LjuHhQa1WUHUQmKOXdp92LzFHM8Fsp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0JnZHJ5UWpUSkg2TEk5NVh4UmhVT2lvbE1vcUUxcWptSFNtV1JKNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YXNrcy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743701356);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `long_description`, `completed`, `created_at`, `updated_at`) VALUES
(1, 'Quis similique sit aut temporibus aliquid illum.', 'Veritatis voluptas vitae voluptatum quaerat magni ex. Quia est qui praesentium voluptas tempora. Excepturi saepe rerum veritatis minus autem id non.', 'Optio et tempora rerum quod nemo eos sed. Quisquam sint qui autem error hic est. Nisi voluptatem accusantium vel vitae dicta et. Ut dolorem eum et est harum et. Fugit fugiat quia impedit. Veritatis error magni blanditiis quae commodi debitis. Ipsa consectetur aut quisquam veniam voluptas optio. Sunt et perferendis facere laborum.', 0, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(2, 'Aliquid et quisquam fugit autem.', 'Totam ullam quos rerum quas. Nesciunt molestiae incidunt fuga sed. Rerum aut veniam quae accusamus doloribus et fuga. Voluptas est repellendus consectetur deserunt aliquam ullam.', 'Aut et dolores autem voluptatum sed voluptas cum et. Voluptas non ullam non non. Et distinctio et omnis ipsa. At esse accusamus modi officia quae numquam aliquid ut. Illum eos quidem perspiciatis enim eveniet sequi temporibus vitae. Veritatis at voluptatem molestiae debitis.', 0, '2025-03-26 11:29:15', '2025-04-02 11:47:27'),
(3, 'Facilis nam eligendi necessitatibus eligendi ut distinctio.', 'Quod iure eum dolorum saepe voluptates. Recusandae natus saepe autem cum omnis optio tenetur nesciunt. Aliquid et veniam similique animi eligendi. Neque aut nihil facere dignissimos.', 'Quod aut sit iusto modi praesentium qui. Ducimus ut tempora aut itaque sapiente rerum tempore. Cumque nesciunt tempora sint et corrupti. Nemo deserunt rerum reprehenderit iusto incidunt placeat. Pariatur vel voluptas autem quae. Nisi ducimus praesentium itaque saepe. Facere atque impedit non incidunt dolorem. Explicabo asperiores qui incidunt laborum.', 0, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(4, 'Aut labore doloremque vel aut iusto nesciunt ut.', 'Doloribus itaque nostrum et voluptas blanditiis aut quisquam. Impedit dolor saepe voluptas eos. Quidem iure ut et veritatis. Laboriosam omnis et atque adipisci.', 'Ex in unde ex voluptates. Optio eligendi doloribus quia beatae modi assumenda quo. Autem exercitationem sunt velit omnis adipisci porro sit. Quia esse sapiente ut sequi. Animi aut sunt nesciunt nam. Consequatur repellendus et similique iste nam est.', 1, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(5, 'Rerum iusto ut accusantium enim sapiente fugit iusto.', 'Qui a et corporis inventore sed vero. Soluta quia et et quibusdam qui optio. Deleniti cum eum est provident. Distinctio cupiditate consequatur suscipit ab.', 'Provident reiciendis et repellat. Architecto hic itaque ratione et rerum dolor. Dicta veniam nihil ducimus ex. Qui illum cum sapiente et. Aut minima in neque harum. Itaque nemo reiciendis excepturi ad dignissimos hic beatae. Labore consectetur harum ullam dolorum sapiente aut.', 0, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(6, 'Voluptatibus incidunt enim magnam suscipit sit.', 'Libero architecto explicabo similique. Rem nihil repudiandae voluptate. Minus quis voluptas quia totam.', 'Voluptas sint dignissimos molestiae earum et. Qui illum soluta molestias molestiae voluptas enim est voluptas. Veniam explicabo dolor maiores et repellat. Voluptatibus fugiat maiores quia ea rerum. Saepe harum unde nulla dicta autem. Qui voluptas placeat omnis molestiae porro.', 0, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(7, 'Voluptatem animi explicabo eos quia quas.', 'Rerum ratione commodi facilis aliquid. Ratione nisi eius et. Nemo aut aliquam repellat quia. Eos necessitatibus modi nihil consequatur adipisci.', 'Et aliquam aliquam exercitationem voluptatem rerum dolor voluptate. Aliquid reprehenderit cumque et consequatur officia ea. Ipsam et consequatur porro aliquam tempora animi id. Minima ea labore cum fuga amet repellendus. Ex minima perspiciatis similique sit magnam. Ipsum illum a ducimus iusto. Doloremque odit et qui iusto animi molestiae. Illum eligendi quae repudiandae in eos non laborum. Non at porro quidem corporis iusto optio consequatur.', 1, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(8, 'Eligendi aperiam cupiditate autem.', 'Rem totam rem et illum. Sequi mollitia excepturi et rerum alias odio. Facere dolorem explicabo sequi aut temporibus. Ab voluptatem nisi est voluptas laborum.', 'Non et incidunt magni natus aspernatur. Alias minima suscipit asperiores eligendi. Molestias quis porro voluptate amet amet non. Vel qui repellat aut aut porro consequatur saepe. Sint corporis ut velit minus minima dolor dignissimos optio.', 1, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(9, 'Quia non qui autem illum dolores tempore eaque.', 'Consectetur consequuntur ex nemo tempore eaque. Occaecati ea architecto laborum voluptatum. Aliquid voluptate consectetur ullam velit sit incidunt ut.', 'Et eos autem maxime ea et. Eligendi voluptate molestias sapiente repellendus. Numquam aliquam ab enim ut. Consequatur debitis corrupti est voluptatem voluptas. Placeat amet modi aut quis minus est. Harum qui repellendus et animi nisi ipsa. Omnis sit commodi eius fugiat. Voluptas vero numquam vero minus nesciunt. Omnis dolor beatae aut reprehenderit voluptas optio veritatis. Enim ipsum dolores vero omnis quas corrupti et.', 0, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(10, 'Impedit id enim unde quas laborum et facere.', 'Dolorum eligendi et recusandae suscipit labore. Itaque dignissimos ducimus nobis sunt. Quo odit minus aliquid.', 'Unde est qui autem. Excepturi maiores sint iure et ut. Quaerat placeat doloribus quidem non aliquid consequatur qui. Magni dolorem modi qui molestias vel. Quia at consectetur voluptatibus velit ab. Ut impedit eum ex est. Ut tempore voluptatibus ratione et quod tempore.', 0, '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(11, 'weterg', 'grerthrth', 'rgrehtjryrj', 0, '2025-03-29 11:30:18', '2025-03-29 11:30:18'),
(13, 'eergrgtrh', 'rhthrtr', NULL, 0, '2025-03-30 11:03:13', '2025-03-30 11:03:13'),
(16, 'eter', 'gregtrh', NULL, 0, '2025-03-31 11:20:48', '2025-03-31 11:20:48'),
(19, 'egerhb', 'fdbghb', 'ndfhnfgnfsn', 0, '2025-03-31 11:28:56', '2025-03-31 11:28:56'),
(20, 'fdhfg', 'gnfvfgnm', 'fgn h bv', 1, '2025-03-31 11:30:16', '2025-04-04 12:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marge Hills I', 'maia87@example.net', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', '3tkOK3bB50', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(2, 'Tracey McLaughlin', 'frances08@example.net', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', 'ZT8YClQwpB', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(3, 'Sylvia Jenkins', 'ohermiston@example.net', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', 'bkX5shXxsN', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(4, 'Avis Kub', 'jeramy.kozey@example.com', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', 'DlENde2Wei', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(5, 'Prof. Jace Schaden I', 'sadye58@example.net', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', 'IT2XJPQENE', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(6, 'Dr. Adolphus Windler I', 'kuhic.kory@example.org', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', 'rNly1vjLfG', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(7, 'Chadd Sporer V', 'rtromp@example.net', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', 'bMoetztyGw', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(8, 'Eleanora Kuhn', 'lynch.kurtis@example.com', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', '4f6TbKh6o7', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(9, 'Prof. Mable Gusikowski', 'kozey.elmo@example.com', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', 'cxc267yA5l', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(10, 'Arden Treutel', 'leta.lynch@example.org', '2025-03-26 11:15:32', '$2y$12$CLU30/gTAgc/bViY.2QhQeUMBsomcIpi3tyEU1kv9ubIwZ36iedlO', '27duGi1cfH', '2025-03-26 11:15:33', '2025-03-26 11:15:33'),
(11, 'Llewellyn Harris DDS', 'sadye.romaguera@example.com', '2025-03-26 11:27:12', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'H6bqJgr2Sc', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(12, 'Mafalda Collier', 'nikolas.schiller@example.net', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'jAeI3p9Fhb', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(13, 'Elisha Dooley', 'belle.wilderman@example.com', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'bW1sc4vMBU', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(14, 'Forest Hyatt', 'lilian.kilback@example.com', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'E90x4frlT9', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(15, 'Mr. Nikolas Kohler PhD', 'katrina.bosco@example.com', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'eWtvNAsUtg', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(16, 'Mr. Aric Schmidt', 'melvin.herzog@example.net', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'YrOpuUzt4c', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(17, 'Dillan Gorczany', 'hudson.carolyn@example.com', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'RzGM3yIkSd', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(18, 'Dr. Chadrick Gorczany Jr.', 'naomi26@example.com', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', '5VvsjIfvlf', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(19, 'Dr. Clemens Haag I', 'lelia.murphy@example.net', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'ly1Sk2AddN', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(20, 'Eileen Kessler', 'ledner.tomasa@example.net', '2025-03-26 11:27:13', '$2y$12$xyLt2zXOl7x9BBZ8SxeBCuJdw92DLwOYuGc4A9aW5NEojsnY3Vy2S', 'TztdoSRgFZ', '2025-03-26 11:27:13', '2025-03-26 11:27:13'),
(21, 'Elmer Kreiger PhD', 'reilly.cade@example.com', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', 'npuNnYs1t8', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(22, 'Dr. Damian Wolf PhD', 'hudson.maribel@example.com', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', 'Mds8APcv80', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(23, 'Clementine Aufderhar', 'wisoky.monroe@example.com', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', 'SCX0u3shXf', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(24, 'Isaiah Keebler', 'bartoletti.ardella@example.net', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', 'MeGNletZTn', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(25, 'Audra Beahan V', 'rosendo83@example.com', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', '022nvbsEZx', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(26, 'Arianna Wuckert', 'fwilderman@example.com', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', 's9pCal9cBT', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(27, 'Nayeli Wilderman', 'pswift@example.net', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', '12FebF2Clm', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(28, 'Juliana Hoppe', 'faufderhar@example.net', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', '0dkjnPB2kd', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(29, 'Abbey Hills II', 'luettgen.jayde@example.net', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', '2mnCRUijbn', '2025-03-26 11:29:15', '2025-03-26 11:29:15'),
(30, 'Ms. Kyla Harvey II', 'mcclure.lela@example.org', '2025-03-26 11:29:15', '$2y$12$sALblQSMug3ywFDLQZ8p3e834EkiMtVVMYPJONKi/ec/rh3PSlmSq', 'sxsS3smbHL', '2025-03-26 11:29:15', '2025-03-26 11:29:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
