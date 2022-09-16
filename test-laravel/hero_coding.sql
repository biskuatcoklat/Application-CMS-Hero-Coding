-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 06:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hero_coding`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2022-09-15 20:24:53', '2022-09-15 20:24:53'),
(2, 'Dekstop Programming', 'dekstop-programming', '2022-09-15 20:24:53', '2022-09-15 20:24:53'),
(3, 'Mobile Programming', 'mobile-programming', '2022-09-15 20:24:53', '2022-09-15 20:24:53'),
(4, 'UIUX', 'UI-UX', '2022-09-15 20:24:53', '2022-09-15 20:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_08_032043_create_posts_table', 1),
(6, '2022_09_08_154719_create_categories_table', 1),
(7, '2022_09_16_161429_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Qui aperiam accusamus.', 'a-atque-eum-sequi-nihil-et-perferendis-pariatur', NULL, 'Minus enim et veritatis. Et nesciunt aut incidunt voluptas. Mollitia voluptatibus eos aperiam assumenda aspernatur quia maiores.', '<p>Aut sunt tempora omnis et maiores. Incidunt voluptatum eligendi adipisci animi maxime aut consequatur. Eum corporis impedit quis enim vel. In aut inventore nihil autem ducimus. Quae optio est veritatis dolores. Ratione eveniet consequatur debitis quia nihil ipsum officiis.</p>', NULL, '2022-09-15 20:24:53', '2022-09-15 20:24:53'),
(2, 4, 3, 'Occaecati perspiciatis omnis quod dolore aut ut accusamus est et qui.', 'dignissimos-voluptatem-recusandae-officiis-voluptatum-est-quidem-totam', NULL, 'Quam neque quos et quia voluptatum ducimus sint. Natus aliquam aliquid minus voluptas. Sit qui a deleniti quae nisi autem. Cum repellat non animi labore.', '<p>Laborum est aspernatur expedita quia. Illum consequatur praesentium atque et consequuntur nesciunt. Dolores deleniti ut id. Aut pariatur suscipit nostrum voluptatem at. Quia repellat voluptatem sit voluptate. Nesciunt sunt numquam est ullam. Dolor laudantium alias sequi. Tempora dolores consequuntur tempore mollitia soluta.</p>', NULL, '2022-09-15 20:24:53', '2022-09-15 20:24:53'),
(3, 1, 3, 'Nemo blanditiis eligendi et omnis at aut nihil quasi sapiente.', 'sed-molestiae-voluptatem-sunt-nulla-eaque-et-dolor-aut', NULL, 'Voluptates voluptatem est laboriosam perspiciatis. Laborum et voluptate voluptatem id deserunt officia alias. Dolorum non at dolore dicta vel ipsa. Magni error qui deserunt dolores libero sit.', '<p>Ratione possimus veniam et est. Nihil blanditiis asperiores sunt rem enim doloribus quod earum. Illo tempore perferendis nihil repellendus tempore quia dicta et. Veritatis qui enim enim non harum suscipit. Sed et omnis ut ut nulla voluptatem. Vel quos rem rerum debitis itaque. Qui aliquid consequatur quae recusandae.</p>', NULL, '2022-09-15 20:24:53', '2022-09-15 20:24:53'),
(4, 4, 2, 'Asperiores hic accusantium deserunt quasi neque repudiandae provident.', 'quae-quia-molestiae-fugit-possimus', NULL, 'Quae dolores quod soluta ducimus porro vel harum deserunt. Dolores qui eveniet dolores placeat odio dolore quia porro. Maxime omnis deleniti omnis sed laborum voluptatibus ducimus. Beatae reiciendis ipsum molestiae enim nemo quae.', '<p>Rerum consequatur sapiente dolor corrupti reiciendis dolores. Quam nulla mollitia sapiente nesciunt optio. Expedita quod qui animi ad aut temporibus et voluptatum. Rerum nisi dolorum id facere labore aut et minima. Magnam aliquid quis dolores voluptates soluta dolor. Incidunt voluptas placeat vitae quisquam dolor. Odio qui soluta error voluptatem.</p>', NULL, '2022-09-15 20:24:53', '2022-09-15 20:24:53'),
(5, 3, 2, 'Qui sit cumque similique.', 'aut-est-voluptas-exercitationem-et-officiis-ex', NULL, 'Neque omnis sapiente magnam nam et aperiam. Eos sunt asperiores incidunt iusto consequatur sit. Debitis sunt iure ut ut tempora maxime ipsa. Sint quibusdam ut quae consequatur officiis illum et.', '<p>Sapiente nihil tenetur voluptas sint officia et excepturi. Aliquam et hic ut eos suscipit quam rerum. Perferendis sint dicta voluptatem cupiditate est quis aut. Iusto vel vitae non ut. Consectetur voluptatem magnam est voluptas consequatur dolore explicabo dolorem. Soluta tenetur aut voluptatem.</p>', NULL, '2022-09-15 20:24:53', '2022-09-15 20:24:53'),
(6, 4, 4, 'Id nostrum consequuntur.', 'cumque-enim-et-eos', NULL, 'Aut labore maxime est et quia perspiciatis. Vero aspernatur perferendis maiores iste excepturi. At velit similique odio ut quos. Tempore dolor laborum velit iusto.', '<p>Qui sit eaque et pariatur in sed est quas. Reiciendis et eum quidem vitae vel similique. Aspernatur aut odio voluptatem autem porro possimus. Possimus amet sapiente voluptatum. Officia saepe voluptatibus tempore modi nulla aut earum. Tempora corrupti qui omnis non. Placeat tenetur nemo molestias assumenda blanditiis et.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(7, 2, 3, 'Corporis enim consequuntur voluptas molestiae amet.', 'eum-illum-doloremque-temporibus-maiores-officiis-aut-vel', NULL, 'Dolores fuga voluptas et quaerat perspiciatis. Vitae eius quis consequatur molestiae explicabo ipsum. Rerum accusamus delectus modi quae. Laborum quibusdam qui officiis aut.', '<p>Quos necessitatibus quo est est ut consequatur pariatur. Cumque unde vitae quis provident velit dolor et enim. Ab deserunt deleniti possimus amet veritatis et. Eos illo est dolor expedita et. Fugiat in minima autem sequi tenetur eum et. Illo aut consequatur numquam voluptatem perspiciatis aspernatur. Voluptatem consequatur itaque magnam asperiores soluta. Quis ex doloribus quibusdam sed cupiditate quisquam. Voluptas tempora ducimus inventore autem minima. Aut aliquid magni enim est aperiam et. Fugiat nihil deserunt rerum repellat.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(8, 3, 1, 'Dignissimos asperiores non unde.', 'aut-ut-quisquam-tempore-dolor', NULL, 'Reiciendis in ad dolorem velit dicta. Debitis unde mollitia officia numquam. Illo perspiciatis placeat dolor molestias ipsum officiis ea ex.', '<p>Et dolor saepe fuga voluptatum ea similique officia. Voluptatum hic quos ea vero quod numquam tenetur ut. Qui quis temporibus non modi repellat quae distinctio. Facilis aut et recusandae ducimus. Expedita et asperiores ipsa nesciunt porro ipsam. Earum error dolores hic est. Natus optio incidunt maxime ea. Et vel aut laborum repellendus. Illo est maiores eligendi officiis. Porro quia id aut suscipit provident voluptas sunt.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(9, 4, 4, 'Odit ea voluptatibus et ut deleniti nobis et quo modi.', 'consequatur-natus-vero-et-qui-in-autem-voluptas', NULL, 'Dolor vel dicta odio repudiandae voluptatum. Quia voluptatem nemo quo nam architecto. Iusto ratione hic facilis necessitatibus tempore placeat. Ex et dolores minus sequi. Et reiciendis architecto iure sed debitis incidunt.', '<p>Et reiciendis aperiam at enim quae ut omnis non. Aliquam eum eligendi quis tenetur quo quia. Vel aut magnam ipsam eum. Occaecati animi ipsam sequi est. Inventore fugit consequatur consequatur eos quisquam. Amet nisi quo laborum laborum officia laudantium et. Voluptates aut totam quaerat assumenda. Et iusto dolorum ab voluptatem expedita eius ad. Nihil in deserunt tempora velit et. Totam molestias nisi rem animi tempora dolorem. Eligendi repellendus nemo aliquam voluptas aspernatur architecto soluta.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(10, 1, 1, 'Dolorem dolor ducimus ad quasi tempore.', 'autem-corrupti-ut-non-omnis', NULL, 'Vel laborum facere nesciunt rerum doloribus voluptatem. Ut culpa nihil accusantium recusandae labore. Asperiores velit quo culpa.', '<p>Quas qui quod architecto rerum. Quia eum accusamus et minima voluptas veritatis ratione repellendus. Eius qui deserunt architecto rerum. Soluta deserunt ullam veniam dolores temporibus non enim. Asperiores est vitae sapiente.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(11, 3, 3, 'Facilis et asperiores dolorem.', 'animi-id-similique-et-pariatur', NULL, 'Eligendi culpa quas est corporis possimus. Repellat laboriosam odio et eligendi. Nostrum natus eum porro voluptatem.', '<p>Ut omnis temporibus nihil. Dolores rerum dolorem aliquam nam id assumenda ex. Voluptatem ea praesentium vero ex tempora quibusdam iure. Quaerat doloribus alias et qui. Beatae rerum distinctio debitis. At est optio et dicta. Nulla reprehenderit consequatur incidunt illo. Eius quasi aliquid consectetur. Iure animi eius corrupti cum.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(12, 2, 3, 'Praesentium magnam.', 'eaque-illo-corrupti-pariatur-impedit-eaque-nostrum-voluptas', NULL, 'Voluptatem perferendis atque aut sunt molestiae labore. Ipsam eveniet quis quasi magni commodi ut minus laboriosam. Dicta amet ipsum sapiente nesciunt. Ex rerum voluptatum explicabo.', '<p>Nostrum omnis in laudantium tempora. Dolores occaecati ratione consequatur iure eius iusto odit. Dolor sit aut distinctio laboriosam optio qui ad. Sed minima iure omnis nemo dicta molestias. Aut sunt est labore velit. Ratione velit necessitatibus enim commodi incidunt dolorum blanditiis. Quo ut molestiae voluptate minus. Magnam qui unde fugit culpa a occaecati reiciendis. Qui officia accusamus nemo itaque error maxime voluptas ipsam. Sed reprehenderit minus inventore est aliquam eveniet. Et alias voluptatem et libero. Deleniti occaecati quos perspiciatis est laboriosam quis. Aliquid perferendis ullam est qui rerum quia.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(13, 2, 2, 'Praesentium totam ut.', 'dolorum-non-quas-corporis-natus-maxime-quo-culpa', NULL, 'Natus dolorum voluptas quia et ea dolor. Eligendi placeat nisi voluptatem magnam delectus quis. Aut corporis minima eos optio sed voluptatem sint. Optio est corrupti omnis qui dignissimos saepe perferendis.', '<p>Quaerat autem omnis vitae labore laborum ea esse rerum. Est veritatis at at ipsum asperiores consequatur dolorem. Saepe voluptate nesciunt vel ut facilis. Eaque corrupti quia harum debitis dolore. Et molestiae ratione tempore cum repellat repellendus sit. Ducimus omnis esse nihil debitis. Voluptatem ea recusandae doloribus quibusdam ut non. Aliquam ratione aperiam assumenda quia molestiae ut reprehenderit. Totam non harum qui et eum facere rerum.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(14, 1, 3, 'Sed quia quae temporibus voluptatem.', 'debitis-dolores-et-cupiditate-est-enim', NULL, 'Sunt corporis reiciendis eveniet architecto qui. Repellendus magnam ut officia quia in non. Officiis quo tempora unde et.', '<p>Officiis eum voluptas dignissimos aspernatur dolores est magnam. Voluptatem sed ut est. Pariatur accusamus necessitatibus et vel ipsa qui esse. Cum ut saepe qui sint nam earum. Porro assumenda dicta est nesciunt.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(15, 3, 4, 'Tempore error cumque amet et.', 'natus-fugit-voluptatem-porro-labore-vel-aut-dolore', NULL, 'Assumenda inventore optio minima. Eligendi hic aperiam nihil alias magni asperiores iusto reprehenderit. Blanditiis rerum aut necessitatibus ut vel quibusdam facere. Minima aut saepe reprehenderit et cumque eaque.', '<p>Velit et aut iusto sunt. Neque illo nesciunt suscipit eaque. Rem reprehenderit at provident et voluptas aliquam ut ipsam. Placeat voluptatum dicta non aliquid eveniet. Quaerat velit et aut eos. Iure quis inventore facere quis praesentium dolorem voluptas. Quia excepturi repellat nihil ullam repellat esse et. Ipsum molestiae dolore aut. Id et pariatur aliquid sit officiis.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(16, 1, 3, 'Eos nobis dolorum.', 'quo-quaerat-voluptatum-at-numquam-rerum-cum', NULL, 'Et maxime omnis odit. Error hic quam aperiam dignissimos hic. Non eos libero similique quod tempora esse. Consequatur sint sed aspernatur harum.', '<p>Aspernatur omnis eligendi fugiat dolor repellendus eum itaque. Est maiores sed exercitationem fugiat harum. Illo asperiores itaque in doloribus sunt aspernatur. Ullam commodi consequatur repudiandae. Itaque consequatur aut aspernatur est atque. Repellat cupiditate molestiae dolorum. Consequuntur dolor beatae sint et cumque deleniti quis earum. Consequatur voluptates sunt enim voluptates accusamus libero. Et qui fugit iste ut. Aliquid in sunt natus quis sit dolore neque voluptas. Odit qui et enim molestiae molestias aperiam id. Aut illo pariatur molestias quo provident et fugiat. Id molestiae facere laudantium earum in beatae dicta.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(17, 1, 2, 'Consequatur optio voluptatum magni.', 'maiores-earum-facere-a-occaecati', NULL, 'Dolores tenetur ipsam autem veniam magni omnis. Rerum vero cupiditate soluta sit sint nobis nesciunt. Unde magni et et in. Cupiditate voluptatem asperiores facere quo aspernatur et. Et eum minima dolores ipsum quia.', '<p>Quae sunt rerum similique nisi ex earum. Est explicabo voluptas est quisquam nam reiciendis. Minima repellat aut voluptatibus quos nobis ducimus. Quia commodi laboriosam voluptatem voluptatem deserunt error qui eaque. Quia aut sed itaque quia et est ab.</p>', NULL, '2022-09-15 20:24:54', '2022-09-15 20:24:54'),
(18, 3, 2, 'Adipisci quibusdam saepe non quia dolorem.', 'et-asperiores-iste-rerum', NULL, 'Dolor maiores est pariatur consequuntur voluptas. Sed et autem natus. Ut dolorem quam eum consequatur quis est. Dolore ullam illo quidem quidem. Dolores nostrum error quis magnam quas et velit.', '<p>Repellendus est doloremque rerum vero optio. Reiciendis ab cupiditate a adipisci. Voluptas rerum ab officia corrupti est eaque quod qui. In qui et voluptatem dolores et voluptatem et. Expedita rerum in corrupti id voluptatem voluptatem et.</p>', NULL, '2022-09-15 20:24:55', '2022-09-15 20:24:55'),
(19, 4, 1, 'Vel doloribus sit dolorem dignissimos quis tempora dolorem.', 'dicta-sit-illo-tempora-ut-nam', NULL, 'Voluptas saepe rem et temporibus consequatur. Quia veniam impedit sit officia laboriosam amet aut tempora. Dolor eos iure voluptate suscipit. Similique mollitia et dolor rerum.', '<p>Similique deserunt tempore eos at cum aut quibusdam quam. Ut molestiae deleniti quis qui laboriosam consectetur. Quasi odit fuga cupiditate aliquam consequatur. Eos quis deleniti autem ipsum iusto. Eos debitis eaque dolore harum reiciendis et dolor. Voluptates culpa eligendi eius quisquam in dolores fugiat. Est incidunt deleniti placeat est et blanditiis rerum. Eos dolor corporis eos non deserunt labore repudiandae. Itaque velit iusto illo voluptatum vitae animi dicta. Quisquam unde occaecati impedit aut dignissimos.</p>', NULL, '2022-09-15 20:24:55', '2022-09-15 20:24:55'),
(20, 1, 4, 'Est voluptatem non sunt consequatur ratione.', 'non-et-quia-aspernatur', NULL, 'Rerum quae velit est natus suscipit et explicabo. Sit consectetur sed eaque odit iusto voluptate dolor. Rerum temporibus aut voluptatibus ea nobis aut. Iste consequatur cum facere atque suscipit dolorem culpa.', '<p>Dolor qui iste deserunt tempora necessitatibus debitis. Ex est maxime voluptas totam officia. Incidunt nam dicta amet est deserunt quia. Eum et error doloremque quaerat assumenda. Saepe repellendus quisquam illo modi dolor repellat at. Quasi facere impedit ut nemo. Incidunt eligendi omnis corrupti quas nostrum quia sit sint. Enim culpa eius eaque est placeat assumenda dolorum. Esse dolore omnis facere ea eos perspiciatis ut. Consequatur veniam ut ea quidem.</p>', NULL, '2022-09-15 20:24:55', '2022-09-15 20:24:55'),
(21, 3, 3, 'Sint earum velit.', 'et-odio-a-quis-dolor-labore-commodi-optio', NULL, 'Libero qui dolores vero officia et quidem facilis porro. Numquam debitis quo est odio incidunt ipsam. Id eum ea id. Fugit in officia harum non reiciendis. Eveniet non amet reiciendis incidunt.', '<p>Aperiam consequuntur eveniet quaerat magni. Et minus in tempora possimus tempore. Est voluptatem quo et nobis. Asperiores voluptatem dolores iusto harum temporibus fuga possimus. Quo illo et qui ipsum. Dolor dolore repudiandae ut dolor consequuntur cupiditate reprehenderit. Perferendis enim minima aspernatur et aut voluptatem commodi. Optio quam error est autem. Molestiae odio explicabo dolor aut et sed et labore. Aperiam dolor non maiores quis. Non aut et amet et et mollitia sequi. Qui doloribus reprehenderit in inventore. Debitis enim consequuntur natus vero non ullam. Quibusdam consequatur vel incidunt atque.</p>', NULL, '2022-09-15 20:24:55', '2022-09-15 20:24:55'),
(22, 1, 3, 'Libero doloremque quas.', 'a-vel-dolorum-omnis-quia-praesentium-similique-magnam', NULL, 'Id deleniti rerum magni culpa atque culpa a suscipit. Et omnis ipsum culpa quia occaecati enim. Dolorum voluptatem ut laboriosam qui et porro consequuntur.', '<p>Iste incidunt omnis nam aut. Asperiores eligendi alias perferendis nulla et fugiat qui. Aut quia ducimus aut facilis nisi eos rerum. Quo doloremque est illo earum reiciendis id autem. Est optio optio voluptatem placeat voluptatem ad omnis modi.</p>', NULL, '2022-09-15 20:24:55', '2022-09-15 20:24:55'),
(23, 1, 4, 'Ut occaecati qui.', 'impedit-molestiae-eos-voluptatibus-nulla-consequatur-laudantium-illo', NULL, 'Amet harum et officiis et voluptatum quidem maxime voluptatem. Et asperiores reprehenderit est. Et perspiciatis ratione omnis possimus.', '<p>Itaque deleniti non occaecati consectetur nobis. Minima nam aperiam harum consequatur. Ut voluptatem ex quidem incidunt. Dicta ut praesentium quae eveniet reprehenderit. Dicta sunt magni nesciunt. Accusamus ea dicta sit ipsam vel quam ullam. Repudiandae iusto possimus explicabo porro consequuntur ut est.</p>', NULL, '2022-09-15 20:24:55', '2022-09-15 20:24:55'),
(24, 2, 2, 'Aut voluptas commodi at aperiam.', 'vero-eum-corrupti-neque-autem-sapiente', NULL, 'Ea eius et dolorem ut reprehenderit. Magni odio ut voluptatem molestiae ea quo similique ut. Sint soluta perspiciatis saepe libero alias iure sequi. Sed est delectus amet assumenda nostrum provident sit.', '<p>Recusandae doloremque aut nemo autem perspiciatis accusamus omnis. Ducimus temporibus libero deserunt error. Exercitationem maiores ea ratione ipsam vel vel. Ex repellendus repellat et eos voluptas. Qui nihil ipsa aut illo. Quis velit fugit ex. Eius assumenda possimus occaecati quaerat incidunt.</p>', NULL, '2022-09-15 20:24:55', '2022-09-15 20:24:55'),
(25, 3, 1, 'Quisquam sapiente animi fugiat est quos voluptates explicabo.', 'eius-ipsa-assumenda-omnis-et-facilis-enim-eum', NULL, 'Est eum enim corporis commodi ut est. Voluptatibus reiciendis fuga repudiandae officiis.', '<p>Dolor accusamus nemo autem a aut beatae dolor. Minus iure sit facere sunt. Nemo iste esse modi non. Soluta unde cum porro eos perspiciatis quia est at. Dignissimos quam vel iusto pariatur sed ut totam repellat. Itaque error enim dolores aliquam ut.</p>', NULL, '2022-09-15 20:24:55', '2022-09-15 20:24:55'),
(28, 2, 1, 'coba lagi', 'coba-lagi', 'post-images/HkRFjO0Ff3WZxT5E9Jurjqx2Pe118bw2IrmFrwtr.jpg', 'ada lagi', '<div>ada lagi</div>', NULL, '2022-09-16 08:00:48', '2022-09-16 08:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Wahyu Aprilliandhika', 'wahyu', 'wahyu@gmail.com', NULL, '$2y$10$kVIKcpuZHV2jIFtJOI/.YeHLa3kV6zHgkMy9I42hGYLz2QOd35Oee', NULL, '2022-09-15 20:24:52', '2022-09-15 20:24:52', 1),
(2, 'Kamaria Alika Rahayu S.E.', 'onurdiyanti', 'rachel36@example.org', '2022-09-15 20:24:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mxHgFsI29c', '2022-09-15 20:24:52', '2022-09-15 20:24:52', 0),
(3, 'Bakiman Narpati', 'cutami', 'nasrullah44@gmail.com', '2022-09-15 20:24:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e786PI3wEDG9uzaGOF5gGcf8IfOtuxOBCUkfTwaxBxvQ76gmbnw9RuzZmGcE', '2022-09-15 20:24:52', '2022-09-15 20:24:52', 0),
(4, 'Wulan Cornelia Mandasari S.Gz', 'titin.pratiwi', 'arsipatra.manullang@example.net', '2022-09-15 20:24:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bwYNZbMkVY', '2022-09-15 20:24:52', '2022-09-15 20:24:52', 0),
(5, 'Aurora Safitri S.I.Kom', 'gunarto.baktiono', 'nababan.kanda@example.net', '2022-09-15 20:24:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iSpuQEuE2G', '2022-09-15 20:24:52', '2022-09-15 20:24:52', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
