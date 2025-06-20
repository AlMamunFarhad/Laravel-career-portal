-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 11:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Laney Collier I', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(2, 'Emely Tremblay', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(3, 'Zane Bashirian', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(4, 'Mrs. Georgiana Kihn', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(5, 'Trenton Tremblay', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41');

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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `job_type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `vacancy` int(11) NOT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `responsibility` text DEFAULT NULL,
  `qualifications` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `isFeatured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `category_id`, `job_type_id`, `title`, `vacancy`, `salary`, `location`, `description`, `benefits`, `responsibility`, `qualifications`, `keywords`, `experience`, `company_name`, `company_location`, `company_website`, `status`, `isFeatured`, `created_at`, `updated_at`) VALUES
(1, 48, 2, 5, 'DevOps Engineer', 2, '23k', 'Rajshahi', 'Ut magnam sint deserunt eligendi quaerat commodi rerum quasi eum delectus aut et perferendis rem saepe rem accusantium libero ipsum voluptate.', 'Nemo inventore non voluptatem tempora in vitae aut quae repellat odio beatae voluptate consequuntur voluptatem doloremque ut et esse possimus alias a enim quia deserunt voluptatem laudantium suscipit dicta molestiae quasi exercitationem dolorem magni voluptatem dolorem qui officia.', 'Iusto minima et necessitatibus enim qui aspernatur nihil et qui voluptates necessitatibus voluptatibus culpa quibusdam iste eum quia minus repellat qui omnis illo iusto eum cum.', NULL, 'PHP', '7', 'Meta', '634 Jast Island\nOthoborough, VT 75996-4435', 'huel.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(2, 9, 5, 2, 'Fashion Designer', 4, '58k', 'Mipur', 'Quia illo natus culpa quae magni ut fugiat laboriosam dignissimos rerum aut aut rerum nostrum itaque consequatur voluptatibus quod ut eum doloremque consectetur perspiciatis nostrum quos magni est deleniti nihil fuga sit enim ut atque sunt qui illo ea.', 'Officiis sint maxime deleniti voluptas ipsam culpa quos placeat ea voluptatem cumque nostrum ullam non sint aliquid alias porro fugiat aut laborum iusto dolorem expedita aut est eius repellat totam quia nulla optio magnam dolorem nisi incidunt.', 'Sed quo sequi porro iure sit aut assumenda vero praesentium voluptatem molestias molestiae autem eos nulla distinctio dignissimos eligendi non eveniet ut voluptate vero fugit aut consequuntur voluptatem quibusdam aut aut ut et aut omnis voluptate fuga corporis ipsa.', NULL, 'PHP, Laravel, Backend Development', '4', 'Google', '4638 Destiny Flat\nEast Lyla, HI 48377-4827', 'rice.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(3, 25, 1, 2, 'IT Support Specialist', 5, '16k', 'Sylhet', 'Debitis perspiciatis debitis quasi voluptatum ab nihil recusandae quam blanditiis aut quos deleniti eius pariatur quisquam nihil ea in voluptate voluptatem ut dolorem aliquam enim vero.', 'Ea perferendis perferendis at quos at possimus eaque ipsam blanditiis odit velit et ut et consequatur aut vitae blanditiis vel enim et ratione ex praesentium vel non rerum quia et corporis voluptas voluptas corporis labore et nisi quis.', 'Quae harum quo voluptatem est iusto eligendi esse amet quaerat illo quia aut modi rem eveniet tempore odit quidem unde quo possimus et fuga est aut fuga sed rem iure et dicta occaecati quaerat et distinctio itaque.', NULL, 'C++', '1', 'Bkash', '32415 Vena Springs Suite 112\nPort Reillytown, NH 91024', 'haag.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(4, 5, 2, 4, 'Fashion Illustrator', 7, '80k', 'Bonani', 'Laborum aut quis adipisci ab cumque provident repudiandae vero recusandae quos magnam aut placeat qui sit accusamus tenetur exercitationem dolores voluptatibus laboriosam.', 'Illum animi magni sequi qui soluta id quibusdam nihil labore aliquam est maiores repellat enim ipsam iusto consequatur ex minus corrupti eum iste repellat sint ut eius doloribus est veniam.', 'Quis vel illum quia eius ea voluptas doloribus eveniet perspiciatis voluptatem dolores quia assumenda aut at aspernatur amet laboriosam et vel expedita eius aut.', NULL, 'Java', '3', 'Tesla', '952 Jesse Terrace\nPort Allenside, AL 53623-6145', 'thompson.net', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(5, 33, 1, 4, 'Industrial Engineer', 3, '40k', 'Mipur', 'Ullam consequatur eos rerum quis repellendus et ullam ea quod et eveniet rerum modi quidem beatae iure quibusdam ipsa qui maxime reprehenderit est veritatis voluptatum in ducimus aut est dolorem inventore similique nisi fugit id itaque similique ea suscipit exercitationem recusandae et.', 'Animi atque illo est esse magni dolores vitae inventore incidunt sed nobis nobis velit quasi ad accusamus praesentium ex inventore odio est amet quis dolores quia omnis reprehenderit blanditiis et minus et ut.', 'Numquam sint vel vero ipsa ut hic ab et iusto voluptates qui atque soluta culpa molestias provident optio rerum praesentium minima sed consequatur amet perspiciatis provident labore molestias tempore autem vel voluptas nulla consectetur amet aut tenetur reprehenderit veritatis soluta.', NULL, 'Phyton', '1', 'Google', '86999 Callie Fork Suite 273\nKutchhaven, IA 30142', 'denesik.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(6, 29, 5, 4, 'Financial Accountant', 2, '25k', 'Khulna', 'Sit quo aliquid enim et id numquam voluptas vitae saepe hic quod iusto sint hic pariatur rerum ratione eos.', 'Iste aliquam sunt dolorem perferendis impedit reiciendis consequuntur nemo nisi qui minima qui facere beatae rerum odit autem et impedit similique doloremque sequi ab officiis distinctio natus animi nemo explicabo suscipit.', 'Nostrum omnis aut unde omnis dolore doloremque dolores ut at non excepturi voluptatem dolores commodi temporibus voluptatem error dolor expedita animi dolores animi et quas numquam aut nostrum qui assumenda reprehenderit rerum velit dicta voluptates numquam molestiae.', NULL, 'Codeigniter', '8', 'Tesla', '70538 Metz Mountains Suite 561\nPerryside, VT 22981', 'nicolas.org', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(7, 36, 2, 1, 'Big Data Specialist', 1, '34k', 'Bogura', 'Autem dolorem quisquam qui expedita unde porro rerum expedita consequuntur necessitatibus fuga quia molestiae est deleniti a non tenetur rerum nihil modi occaecati quos ea ipsa nulla hic delectus asperiores autem fugit itaque iste qui distinctio unde adipisci.', 'Aut sit eligendi error quia autem amet nobis saepe aspernatur accusamus adipisci quasi porro delectus facere et aliquam vel quo et eos est sequi aut molestias ea ipsam maxime in eos voluptatem adipisci accusantium veniam.', 'Et magnam maxime commodi possimus atque aut numquam aut soluta enim harum odit provident ut omnis provident sit libero error facere cumque perferendis commodi sit dicta dolores accusantium perspiciatis atque blanditiis minima eaque quia libero consequatur inventore perspiciatis fugiat.', NULL, 'Express js', '9', 'Meta', '32681 Dawson Fall\nWest Sheridanshire, NH 86545-5782', 'muller.info', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(8, 45, 2, 1, 'Big Data Specialist', 7, '53k', 'Gagipur', 'Exercitationem expedita tempora numquam corrupti eos incidunt natus fuga ipsum nulla omnis id eum quas non voluptates debitis et non voluptatem quam omnis ratione vitae praesentium et neque dolorem quas.', 'Debitis tenetur quaerat ipsum voluptatum eum qui quia eveniet odio itaque voluptatem dolor et est nihil possimus velit error eos velit modi doloremque quae non labore voluptas.', 'Id deserunt voluptates iusto optio molestias autem cupiditate nobis ea maxime et quo tempora tempora quod ut aut ut non veritatis recusandae assumenda porro aut quia quasi et.', NULL, 'Symphony', '2', 'Alibaba', '74143 Daugherty Circle Apt. 994\nEast Ceceliaton, TX 63406', 'thiel.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(9, 35, 3, 5, 'Industrial Engineer', 6, '38k', 'Gagipur', 'Facilis ullam voluptas non doloribus nesciunt reiciendis a soluta inventore iusto enim provident qui illo omnis fuga corporis est voluptas voluptatibus nam quia quae.', 'Eaque ratione corrupti beatae omnis quia veritatis quam non laudantium autem et maiores est quibusdam rerum aperiam enim molestiae voluptas similique ut in quibusdam praesentium odio ratione officia rerum eveniet repellendus maxime quasi sit optio et et cum.', 'Sunt ut deleniti minima explicabo aut eius laborum voluptatem et unde libero vel molestias doloribus fugit aliquam molestiae autem dolore ut maxime quidem et et beatae quos repellendus ut cumque vero aut itaque veniam illum voluptatem odit quia autem voluptas.', NULL, 'C#', '5', 'Nagad', '361 Pouros Forks\nSouth Alexandraburgh, MA 27459-8888', 'glover.org', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(10, 21, 3, 4, 'Mobile App Developer', 6, '64k', 'Dhaka', 'Assumenda nostrum voluptate quos molestiae et rem laboriosam iure est quia ab qui similique quia inventore placeat dolorem aliquam qui quae quia dolorum veniam dolorem minima tempore non odit odio quia.', 'Omnis dolorem asperiores repudiandae enim et repellat voluptatum necessitatibus sequi laboriosam quaerat beatae et et quia autem excepturi eaque et omnis consequatur vel repudiandae voluptatem nam qui porro praesentium omnis omnis dignissimos sunt rerum repellat blanditiis consectetur.', 'Voluptatum perspiciatis aut hic exercitationem delectus enim voluptatem perferendis sit asperiores voluptatem facere non laborum est eos sed voluptatem enim recusandae voluptas in ipsam ut facilis porro repudiandae at culpa aliquid laudantium autem impedit commodi nemo dolores odio sed porro molestiae modi.', NULL, 'PHP', '10', 'Facebook', '31389 Sammie Burgs\nBartellstad, KS 08516', 'herzog.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(11, 21, 2, 3, 'Data Analyst', 10, '68k', 'gulshan', 'Molestiae veniam aut sunt ex et hic enim tenetur ad tempore autem cumque eum temporibus quia laudantium nobis officiis rerum adipisci ex quia asperiores ut non aut aspernatur quis a fuga architecto quo dolores.', 'Repellat alias dolor explicabo pariatur minus sunt nostrum quasi ea dolor harum itaque iusto et fuga eligendi quo et et autem reprehenderit laudantium saepe quam sint nam sed et veritatis temporibus repellat at voluptatibus recusandae ex quidem enim ex animi fugit.', 'Voluptatem sunt iste praesentium ipsam reiciendis non est ipsum sint nihil itaque harum iusto ab ex ut et accusantium assumenda ducimus.', NULL, 'Ruby', '7', 'Google', '90336 Merle Roads Suite 392\nEast Thad, NE 23145-9240', 'schaden.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(12, 18, 5, 1, 'Software Engineer', 7, '75k', 'Sylhet', 'Officia reprehenderit quia velit at qui voluptatem quis cupiditate fuga reiciendis possimus quis sequi voluptatem tenetur maiores deleniti fuga pariatur totam rerum explicabo nobis illum assumenda aspernatur vel repudiandae eligendi voluptatem placeat beatae ea quis aut enim et aspernatur asperiores aut iure.', 'Dolorum nostrum dolorum sed sit commodi necessitatibus explicabo perspiciatis at eaque officia ad aut voluptas recusandae ullam sit omnis ut rerum voluptatem accusantium aut.', 'Neque dolorum provident quod dolores non blanditiis quod est eligendi ut hic commodi deleniti explicabo quis expedita delectus corporis eligendi mollitia accusamus sit temporibus quisquam et placeat est consequatur ut atque quidem qui.', NULL, 'Codeigniter', '9', 'Facebook', '4942 Schowalter Forest Apt. 482\nNew Trinity, LA 32491-1653', 'davis.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(13, 13, 2, 3, 'System Administrator', 2, '41k', 'Rajshahi', 'Quam dolore iusto esse voluptatem molestiae praesentium cupiditate ex dolorem iusto est alias vero quasi similique sit quia error odio debitis officiis sed maiores numquam incidunt soluta.', 'Eos sed labore suscipit sit quo itaque excepturi ab aspernatur aut autem deleniti animi aperiam perferendis aut blanditiis laudantium nulla sed iusto nihil eum error cumque.', 'Corrupti sint voluptatum voluptatem cumque inventore quidem quia et sit numquam illo expedita error aut nam cupiditate suscipit quia repellat minima modi ab inventore reprehenderit non velit iure officia et neque error corporis adipisci.', NULL, 'C++', '9', 'Bkash', '90850 Brenna Mall\nNew Wilberfort, MS 55142-2616', 'kuvalis.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(14, 46, 5, 1, 'Database Administrator', 6, '40k', 'gulshan', 'Nihil magnam quisquam illo et quidem eveniet laboriosam dignissimos repellendus rerum porro et iure nisi et sit rerum ut accusamus voluptatem nulla iste incidunt quos necessitatibus commodi necessitatibus quis praesentium qui.', 'Enim molestias laudantium est iusto voluptas quaerat consequuntur sequi blanditiis sed repellat harum voluptas expedita accusantium ut sed dolorem non ducimus aut nam ea et dolores nihil corrupti veritatis nulla culpa vel hic.', 'Vel in beatae quia provident blanditiis exercitationem et enim amet pariatur nostrum harum laborum quibusdam numquam quod aspernatur soluta voluptatem a ut saepe.', NULL, 'Java', '8', 'Facebook', '981 Rod Divide Suite 622\nVonfort, ND 09361-2777', 'konopelski.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(15, 19, 3, 5, 'Cloud Architect', 2, '32k', 'Dhaka', 'Facilis et eum at voluptatum voluptate est libero officia alias praesentium non temporibus eaque illo eum iste ullam sed quos ut recusandae harum est enim necessitatibus rerum est dolor.', 'Commodi accusamus et autem ab sit rerum quidem sapiente similique iste ea error itaque fuga ut nihil ut qui eligendi rem consequuntur vel reiciendis ut eveniet neque in ipsa mollitia sint voluptatibus nesciunt maxime ipsam dolores totam alias exercitationem.', 'Laudantium soluta recusandae sequi ut impedit aperiam incidunt eaque perspiciatis praesentium distinctio dolor voluptatibus architecto mollitia aut beatae similique ullam non ex eos rerum possimus commodi expedita sunt consequatur enim fugiat adipisci in temporibus.', NULL, 'C++', '5', 'Bkash', '3615 Moore Heights\nNorth Elza, MS 91922', 'gusikowski.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(16, 29, 4, 1, 'Database Administrator', 2, '28k', 'Mipur', 'Vitae quibusdam aspernatur beatae et nobis quo earum qui quia sequi autem maiores veniam dolorem praesentium et iste est.', 'Maiores illo error facilis et inventore rerum ex aut sint molestias aut veritatis quia hic hic numquam et quis incidunt ea autem consequatur aut eligendi commodi mollitia ipsam accusantium et quisquam velit dolorem maiores laborum dolores.', 'Voluptatem similique commodi debitis incidunt nisi perferendis quia ut delectus enim sit inventore quibusdam magnam impedit eos dicta dolorem at commodi odio maxime vel hic ea consequuntur fugit qui ea excepturi ratione est exercitationem voluptas omnis natus ipsa velit nihil.', NULL, 'Symphony', '4', 'Microsoft', '9693 Okuneva Lights\nDantefurt, DC 12583-2640', 'kassulke.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(17, 24, 4, 1, 'Cybersecurity Specialist', 8, '47k', 'Hatirjel', 'Soluta vitae sint autem quia et laboriosam tenetur qui maxime quaerat dolorum illo pariatur optio provident nobis maiores et tenetur voluptatem et distinctio non perspiciatis quis cumque atque vel fugiat culpa hic odio nemo fugit deserunt asperiores reiciendis omnis nemo quos dolorem.', 'Ipsum inventore ut dicta provident fugit numquam consequatur eaque et consequuntur aut deleniti soluta quibusdam nesciunt aperiam odio vel aut saepe eos fugit eum tenetur tenetur est ex rerum quod et id qui.', 'Nostrum non tempora minus quia eveniet saepe veritatis sit adipisci reprehenderit sed et ut mollitia consectetur dolores non aut quos molestiae ipsa molestiae ea occaecati saepe iste sed sapiente repudiandae eos incidunt repellat et tempora accusamus voluptatem rerum ea.', NULL, 'JavaScript, React, Frontend Development', '7', 'Daraz', '348 Erna Keys Suite 385\nWest Kyleeton, NC 19854-5418', 'lubowitz.biz', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(18, 19, 2, 2, 'System Administrator', 8, '72k', 'Mipur', 'Vero quo minima rerum eveniet voluptates similique quia eaque qui enim velit dolore dolor a debitis corrupti enim ut sit itaque perferendis ducimus dolores deleniti sapiente voluptas voluptas reprehenderit laborum aspernatur.', 'Ut id provident animi officiis reiciendis facere quisquam et impedit neque et qui recusandae non nam autem libero voluptatem enim saepe beatae consequuntur ratione debitis inventore quas officiis consequatur dolores ipsum.', 'Voluptates facilis veniam repellat voluptatum ut quisquam aut voluptatibus voluptate cum aut similique est ipsum ut accusamus culpa quaerat dolorem consequatur ullam qui quod unde et voluptatibus tenetur qui quos velit dignissimos consequuntur aut voluptatem explicabo assumenda ut et ipsam consequatur.', NULL, 'DevOps, AWS, Docker', '5', 'Facebook', '5637 Miller Crescent Suite 819\nLemkehaven, IL 81025-2649', 'kassulke.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(19, 41, 1, 1, 'IT Support Specialist', 9, '74k', 'Gagipur', 'Minus sunt pariatur qui iste quis eveniet facere molestiae autem cumque dignissimos molestiae quod officia est dicta a ut maiores eaque necessitatibus enim maxime et quia quo magnam est eaque qui vel ipsam qui.', 'Animi magnam est veniam vero rerum vel similique exercitationem et voluptate pariatur voluptatem beatae debitis itaque in odio rerum aspernatur qui velit illo hic assumenda illo sint nam ut deserunt non odio quod autem occaecati sequi.', 'Earum perferendis aliquam dicta iusto sit natus maxime illum consequuntur accusamus ut laudantium asperiores placeat vitae voluptatem enim quis consectetur dolores earum dolor totam saepe dolorem ipsam delectus et quaerat repudiandae aliquam nostrum autem eligendi a quaerat.', NULL, 'C#', '2', 'Bkash', '33574 Antonietta Ways Suite 655\nAddisonmouth, OR 50189-8732', 'lynch.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(20, 9, 4, 5, 'Fashion Illustrator', 5, '18k', 'Sylhet', 'Ut ad unde sit repudiandae enim debitis error ut nobis delectus et dolores enim consequatur quo ab atque incidunt delectus.', 'Culpa delectus voluptatem distinctio necessitatibus pariatur non autem eveniet dignissimos sed nihil rem voluptates aut et natus veritatis alias perferendis dolore aut occaecati sint voluptatem temporibus voluptatibus quos porro occaecati.', 'Perspiciatis aut pariatur perspiciatis id quos debitis aut possimus magni illum et et harum velit quasi voluptatem minima vel.', NULL, 'PHP', '3', 'Microsoft', '127 Lebsack Ranch\nGoodwinmouth, NC 65705', 'greenholt.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(21, 17, 1, 5, 'Cloud Architect', 4, '40k', 'Mipur', 'Necessitatibus quia porro similique expedita voluptate voluptas officia esse cumque enim voluptatum accusantium earum aut nemo in maxime cum quasi rerum hic consectetur earum harum porro ut iusto doloribus nihil magni aut laborum consequatur ut eveniet ullam modi voluptatem.', 'Eligendi officiis ducimus dolore earum consequatur omnis repellat itaque ea sed ut dolor esse saepe aliquid est fugit tenetur voluptatum quia aut molestiae et esse qui et fugiat est est voluptas similique est et voluptatum voluptatem ducimus veritatis quia.', 'Voluptatem fugit ab aut vero harum asperiores fuga maiores commodi est optio necessitatibus et cupiditate quam in at voluptatem aut incidunt omnis itaque in fuga in dolorem atque at.', NULL, 'Codeigniter', '8', 'Daraz', '7359 Witting Gateway\nEfrainburgh, NC 29314', 'heathcote.org', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(22, 43, 2, 2, 'IT Support Specialist', 3, '65k', 'Barisal', 'Velit quo nihil est quis a qui perferendis tempore quae omnis omnis et impedit soluta ut sint pariatur totam animi quasi ex nihil voluptatem dolores esse ut magnam sunt non consequatur sit dolorem tenetur optio et ut id illo praesentium quisquam totam.', 'Fugit quis minima qui minima aut quos molestiae iste quia voluptatem dicta error cum repudiandae tempora aspernatur est deleniti.', 'Qui modi enim saepe repellendus explicabo voluptates soluta quo cumque deleniti quam sint fugiat praesentium esse consectetur dolor eveniet vel aut asperiores minus at.', NULL, 'UI/UX Design, Figma, Sketch', '1', 'Google', '28577 Noemi Trail Suite 080\nPort Beverlyfort, MS 21812', 'ondricka.net', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(23, 44, 5, 4, 'Business Intelligence Analyst', 5, '47k', 'Chittagong', 'Laboriosam ea beatae eius aspernatur sit quis pariatur non qui vel alias nihil maxime sit consectetur voluptas qui amet ipsa sunt perspiciatis.', 'Voluptatibus in placeat praesentium quod error explicabo nostrum eos sit occaecati quae quas dolorem dignissimos laboriosam minima aut perspiciatis maxime sunt reprehenderit odit quaerat nisi molestiae possimus.', 'Et tempora consectetur consequuntur ut dolorem vero harum unde dolore neque non nesciunt recusandae aspernatur ab consequuntur eum nisi nihil officia quia distinctio illum.', NULL, 'Java', '5', 'Bkash', '4716 Peggie Harbors\nMargaretteshire, NH 01790-7131', 'wisozk.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(24, 9, 5, 5, 'DevOps Engineer', 7, '16k', 'Rajshahi', 'Doloremque id odio doloribus rem nesciunt nesciunt deserunt sit porro adipisci rem nobis excepturi dolores ea rem ab explicabo debitis veniam sint autem libero mollitia cupiditate ducimus consectetur neque quod error repudiandae a perferendis expedita quibusdam omnis ab ea voluptatem exercitationem minima.', 'Impedit natus error incidunt et et quos in amet qui aut reiciendis impedit consequatur asperiores minus ipsum eos et tenetur accusantium iusto occaecati ipsum est qui minima consequuntur in nobis molestiae.', 'Iusto id ullam ipsa quidem ea veritatis numquam incidunt ipsum voluptas odit nostrum cumque sunt aut et aut odio non fuga rerum cupiditate aut voluptas voluptas consequuntur consequatur vitae et aut cumque quos voluptate soluta omnis eveniet unde impedit magni.', NULL, 'Express js', '6', 'Alibaba', '413 Montana Cape\nNorth Isabell, CO 62812', 'strosin.org', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(25, 44, 2, 4, 'Industrial Engineer', 1, '63k', 'Sylhet', 'Quasi id ut fugit officiis impedit cupiditate deserunt repellat a quod ut non sunt quisquam id nemo iure est sit voluptates dolores nihil.', 'Qui velit necessitatibus nisi sed tempora debitis dolores impedit aut neque expedita ut error quod enim autem voluptatem natus molestiae temporibus voluptate sequi recusandae sit architecto esse porro neque quaerat quos id quis voluptas quisquam nesciunt assumenda natus voluptas dolores.', 'Distinctio temporibus quia sed nihil in et porro accusantium rerum ullam qui optio et blanditiis sint ad voluptas quis ex voluptatem atque.', NULL, 'Angular', '4', 'Daraz', '954 Ruben Gateway Apt. 614\nThealand, NE 03211', 'romaguera.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(26, 23, 2, 1, 'Web Developer', 8, '29k', 'Joypurhat', 'Molestiae ut necessitatibus aut voluptatibus rerum ut provident nisi et alias id eos ex provident qui laudantium nam in necessitatibus eligendi nihil in a.', 'Sint voluptatem qui aliquid illo tempore consequatur mollitia aut deserunt ipsum blanditiis ut maxime expedita occaecati voluptatem quia voluptatem et repellat doloribus nostrum ex beatae iste consequatur soluta sint quisquam.', 'Architecto cupiditate esse quam dolores accusamus et qui distinctio aperiam soluta quia nihil velit rerum necessitatibus similique voluptates aperiam voluptas suscipit amet et voluptas nulla et ea quia sint ad asperiores.', NULL, 'Node js', '8', 'Tesla', '3436 Toy Mountain\nEast Warren, VA 53616-2243', 'collins.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(27, 19, 4, 5, 'Mobile App Developer', 2, '74k', 'Rongpur', 'Explicabo natus accusantium minima cupiditate ipsam laudantium soluta laudantium eius quae sed ipsum et minus sed necessitatibus totam reprehenderit doloribus et.', 'Impedit id facere quis optio cumque id repellat ut ut qui natus exercitationem reiciendis debitis molestiae voluptas et aut hic sequi eveniet.', 'Aut sunt omnis fuga totam nulla voluptas possimus quaerat quisquam qui nesciunt perspiciatis voluptas soluta commodi consequuntur necessitatibus vel dolores excepturi nisi natus veniam ad earum et voluptates tenetur blanditiis odit nobis similique impedit aut qui corporis est illo et.', NULL, 'C#', '8', 'Daraz', '5474 Farrell Port\nNew Loma, NM 57970-9720', 'erdman.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(28, 25, 1, 1, 'Mobile App Developer', 7, '14k', 'gulshan', 'Magni sed alias veritatis sit accusamus magnam excepturi autem et quo eum eaque impedit eos dolorem occaecati eius modi voluptatem blanditiis fuga iure qui ducimus et nisi consequatur explicabo harum est voluptatibus similique dolores et.', 'Reiciendis minus sit exercitationem optio sit et voluptas nobis architecto velit sunt illum ab sint eum vel voluptas maxime non nemo ea debitis distinctio asperiores excepturi facere fugiat fugiat doloremque illum voluptatem totam deleniti soluta molestiae nesciunt vel nihil velit enim.', 'Repudiandae perspiciatis et maiores dolor enim at asperiores nemo veniam suscipit ut facere reprehenderit nulla alias quo aut dicta perspiciatis nemo quia voluptatem dolore repellendus vitae doloremque vitae ex praesentium voluptas eum beatae dolores aut enim.', NULL, 'Vue', '3', 'Microsoft', '4181 Jonathan Green Suite 178\nWest Ron, KY 52567-1867', 'zieme.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(29, 17, 5, 4, 'Fashion Designer', 10, '75k', 'Hatirjel', 'Sed enim sed illum rerum sed iste voluptatibus incidunt pariatur eos fuga magnam excepturi eum ipsum ut quidem nobis dolor reiciendis sit ratione quaerat non similique sit asperiores repellendus eum quis ipsa aut delectus non tempore porro.', 'Omnis dignissimos et mollitia laborum aut eius rerum ipsa explicabo et in excepturi illo accusamus quis voluptas et eveniet in velit nihil similique aperiam temporibus dicta quia harum aut quidem numquam et hic exercitationem.', 'Voluptatem molestiae ut inventore minus dolor repellendus ad molestiae alias sit cumque ut cumque illum tempore harum explicabo repudiandae repellendus quod et nobis unde.', NULL, 'Codeigniter', '7', 'Alibaba', '978 Schneider Pines Apt. 887\nJudahberg, OK 65127', 'swift.org', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(30, 50, 1, 4, 'Fashion Illustrator', 2, '55k', 'Rongpur', 'Aut veniam at et ut totam aut ad ipsum dolore et repellat architecto magni eius est id saepe est deleniti natus et fugiat rerum voluptatibus eligendi omnis non aperiam assumenda nobis velit qui facilis eius.', 'Consectetur distinctio aut dolore cupiditate repudiandae molestiae itaque esse dolore tenetur distinctio quisquam quae autem veniam ut exercitationem dolor voluptas.', 'Quibusdam debitis recusandae quis dolorem ut non error qui ab corporis placeat non quasi quos ex repudiandae consectetur debitis et consequuntur omnis rerum totam natus quisquam ipsam vero itaque nesciunt ipsum aliquid nemo recusandae aut ullam nam tenetur et iusto.', NULL, 'Vue', '4', 'Daraz', '61765 Genesis Island Apt. 070\nRomagueramouth, GA 94817', 'larkin.net', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(31, 38, 4, 4, 'Data Analyst', 2, '66k', 'Joypurhat', 'Consequatur fuga quo quia tempora asperiores omnis perspiciatis in impedit et sed sit libero quos est aut nulla a distinctio fugiat ut quia et sed nostrum rerum aut aliquid consectetur distinctio pariatur totam sunt pariatur velit.', 'Quidem vel corporis voluptas perferendis iusto expedita maiores quia necessitatibus dignissimos quasi veniam nesciunt magnam et blanditiis quis quam reiciendis ea perferendis tempore aut similique quia vel consequatur id autem.', 'Minima beatae placeat quas sunt labore quia culpa qui asperiores fuga quo cumque quos ipsa corporis consequatur sunt dolorem rerum commodi facilis quidem vel voluptate cupiditate consequatur distinctio.', NULL, 'Angular', '8', 'Nagad', '83680 Rath Station\nBlandaberg, WV 13529', 'aufderhar.biz', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(32, 30, 3, 5, 'Mobile App Developer', 10, '79k', 'Chittagong', 'Mollitia cum ipsa vero aspernatur voluptatem rerum quam minima vel cupiditate minima facilis ad odio dolorem id sit dignissimos porro dolor nesciunt omnis repellat deleniti.', 'Tenetur quisquam doloribus ut quaerat aspernatur autem deleniti perspiciatis et dolorum mollitia fuga et quia odit et incidunt id laudantium est exercitationem explicabo ipsa atque est nihil est quis laborum ut nam.', 'Sint aperiam natus earum quod quo officia assumenda hic fuga veritatis dolorum sint aut libero doloribus nobis fugit fugit nihil.', NULL, 'JavaScript, React, Frontend Development', '5', 'Bkash', '7975 Tom Locks Suite 841\nEast Myrna, LA 37703', 'mcclure.org', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(33, 38, 1, 4, 'Software Engineer', 5, '74k', 'Sylhet', 'A officiis facilis quia est exercitationem ut repellat illo est excepturi exercitationem voluptas qui mollitia ex non voluptatem voluptas delectus cumque eius fuga possimus voluptates at aut earum molestias quia corporis eos vel.', 'Fugiat saepe nihil ipsum consequatur in quo similique non velit ipsum autem et sed et aut et ipsa non delectus animi aut est sed at eligendi quis repudiandae.', 'Nihil quo suscipit qui accusantium officiis deserunt ut quam tenetur autem consectetur autem sed animi aut omnis ea quibusdam est doloremque mollitia nisi officia et id.', NULL, 'Python, Django, Machine Learning', '2', 'Microsoft', '511 Mills Pass Apt. 613\nBatzside, NM 66844-4104', 'spinka.biz', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(34, 44, 2, 1, 'Industrial Engineer', 6, '18k', 'Bonani', 'Enim dolores quod quia animi delectus sunt assumenda tempora iusto velit qui enim et voluptas nihil nemo ut repellat beatae est delectus maiores architecto laborum qui quaerat voluptas non doloribus unde ducimus quidem facere quia.', 'Quasi asperiores impedit ipsa quos est reiciendis eius sed cumque et consequuntur odio et illo quis architecto dolores similique ullam qui dolor dolore fuga natus et autem perferendis dolor excepturi ducimus nesciunt voluptate consequatur deserunt rerum esse tenetur voluptatibus totam quisquam non.', 'Harum corporis accusantium nam et totam ullam reprehenderit consequuntur atque est et aut ab ipsa similique non error est eveniet quia officiis ad harum voluptatum eum fugiat placeat quibusdam.', NULL, 'Angular', '9', 'Microsoft', '4185 Michael Fords Apt. 620\nMorarport, KY 54026-4205', 'lang.info', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(35, 12, 1, 4, 'System Administrator', 8, '76k', 'Bogura', 'Molestiae illum non voluptatem omnis assumenda est sed non accusantium saepe harum magnam ut ipsam est ea distinctio et tempora aut amet.', 'Dolores sed eaque et perferendis est recusandae autem qui voluptas eos dicta eum unde maxime praesentium ipsum et qui et eos ut veniam deleniti magni quibusdam sunt inventore sint voluptatum ipsam nostrum dolorum deleniti recusandae sed in perspiciatis ratione ut sunt et repellat.', 'Soluta beatae itaque ex aspernatur quia hic dicta totam et est alias quis veritatis aut qui error autem illo quas quaerat rerum optio nihil qui quas et ut voluptate magni.', NULL, 'Ruby', '10', 'Meta', '91205 Weston Brooks Suite 192\nRosenbaumborough, MD 61205', 'heller.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(36, 3, 2, 3, 'Financial Accountant', 3, '71k', 'Sylhet', 'In impedit sed aliquid accusamus ut culpa ea eveniet et sint quibusdam est autem accusamus et minima est quod.', 'Voluptas aliquid ut ut aspernatur quam dolorum cupiditate itaque harum nihil doloribus quas aut fuga voluptates libero iure a amet rem distinctio in harum excepturi eaque cum.', 'Tempore magni tenetur maiores omnis aspernatur ut a quibusdam omnis commodi esse cum repellat id quae tempora et consequatur ipsum error quisquam porro repudiandae placeat aut ut voluptas rerum amet vel aut.', NULL, 'Node js', '3', 'Meta', '517 Gabrielle Curve Suite 507\nMoorehaven, FL 59222', 'blick.org', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(37, 1, 4, 1, 'Fashion Designer', 1, '18k', 'Khulna', 'Autem eius hic aperiam hic eum dolores excepturi aspernatur eius qui velit dolores qui distinctio eos odit in sunt aut corporis dolorum consequuntur deserunt rerum quam quidem et ut ut eveniet culpa.', 'Ipsa similique reiciendis tempora voluptas pariatur deleniti nihil ullam consequatur enim voluptate libero explicabo autem sit odio accusamus corrupti quidem quae ullam voluptatem voluptate et vel perferendis qui optio ea sint consectetur et veritatis repudiandae impedit minima sunt earum animi temporibus fugit.', 'Eos itaque sed voluptatem dolor et dignissimos voluptas delectus fugit qui corrupti est deserunt necessitatibus cum doloremque velit accusantium sed quos quis aut est tempora reiciendis ratione aspernatur non aperiam aut veritatis consectetur necessitatibus.', NULL, 'Ruby', '9', 'Facebook', '3153 Bill Loop\nAddisonhaven, KY 36572', 'glover.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(38, 1, 2, 2, 'DevOps Engineer', 3, '27k', 'gulshan', 'Suscipit eum tempora voluptatem nihil cumque nihil et debitis enim architecto voluptas similique dolor corporis reprehenderit voluptatem qui in quidem eum temporibus omnis.', 'Unde facilis odio provident accusantium repudiandae est iusto enim est accusamus velit enim dignissimos neque exercitationem dolores sit quibusdam et et illum similique voluptas nobis dolor velit voluptatem esse ex architecto sit velit molestias est eos quia sit et adipisci.', 'Consectetur beatae voluptatem at voluptatibus vero voluptatum hic tempora occaecati aspernatur repellendus ut aut non adipisci saepe consectetur sed eum quam id voluptatum occaecati consectetur est.', NULL, 'Angular', '8', 'Google', '5085 Lynch Mountains\nElissaside, ND 65292', 'beier.biz', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(39, 11, 3, 1, 'Database Administrator', 10, '33k', 'Bogura', 'Illo saepe expedita vel dolor dolor quia omnis in non consequatur aut quia pariatur eos est exercitationem impedit excepturi qui debitis.', 'Perferendis et repellat id quia sunt ab dolor at qui praesentium iusto consequuntur ad dolore dolor maxime et et saepe ipsum et et voluptas est voluptatum velit labore nemo rem voluptatum dolorum voluptatum quas accusantium omnis tempora dolor quia totam enim laborum.', 'Iste possimus et odio corporis officiis quia dolorem eum voluptas explicabo dicta ut expedita voluptatem beatae voluptatibus fuga nemo non ullam placeat ratione ipsa cumque ipsum ipsam vel non non sequi aut distinctio non doloribus cupiditate molestias a consequuntur nemo.', NULL, 'PHP', '9', 'Tesla', '11554 Julien Ports\nLakinbury, CA 63952', 'davis.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(40, 32, 3, 2, 'Software Engineer', 4, '68k', 'Rajshahi', 'Inventore pariatur quo quae dolor tenetur assumenda dolor consequatur et ut consequatur sint et omnis qui doloremque expedita ut et deserunt placeat impedit eius incidunt blanditiis repudiandae doloremque nesciunt tempora nesciunt molestiae itaque maiores distinctio earum similique vel itaque maxime voluptas consequatur.', 'Numquam inventore vero consequuntur vel omnis quia sint impedit est placeat sapiente alias iste et vero dolores consequatur corporis tempore molestiae natus et a eum deserunt quos sit cumque voluptas ducimus magnam nobis a quod laboriosam deleniti beatae.', 'Fugiat quibusdam dolores beatae quae ea explicabo rerum qui rem fugit accusamus voluptas sunt cumque voluptatem voluptatem ipsam deleniti molestiae minus maiores ab quis voluptatibus libero minima voluptatem dicta nam totam voluptatibus placeat cumque dolor nobis rerum id.', NULL, 'Ruby', '1', 'Microsoft', '998 Von Orchard\nWatersport, WV 24268', 'heathcote.net', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(41, 14, 1, 5, 'IT Support Specialist', 8, '13k', 'Gagipur', 'Laudantium maiores consequatur adipisci voluptatibus harum ipsam consequatur corrupti fuga ea minima quia illo est aut occaecati quis nisi sint perspiciatis repellat est quos excepturi nam commodi qui.', 'Dicta dolor nobis explicabo suscipit dolore eum aliquid et error molestiae dolorum non sit iste quasi dolorum consequatur asperiores sed quaerat eaque.', 'Quaerat omnis dolores dolor ratione beatae qui consequatur qui corporis iure aperiam est quis aut ipsum eos adipisci consequatur sequi veritatis illo nesciunt beatae nostrum nostrum exercitationem autem reiciendis animi quibusdam est et esse perferendis sunt ea necessitatibus eaque distinctio neque.', NULL, 'Ruby', '10', 'Alibaba', '4484 Bud Radial Apt. 615\nSouth Amiraland, DE 67554-9572', 'wilderman.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(42, 26, 4, 2, 'Data Analyst', 5, '79k', 'Joshor', 'Vel similique et in iusto aliquam quaerat magnam possimus quidem animi eius aut labore temporibus asperiores ut nulla rerum a harum perspiciatis quas corporis eos quae temporibus ea nam sed reiciendis accusamus ipsam delectus dolorum accusamus iure tenetur voluptatem ab aut.', 'Eveniet tempore ea cum voluptas officiis deserunt libero architecto ea autem illum sed nesciunt placeat ipsum non sequi sunt debitis occaecati fugit eos in iste consectetur ipsa doloribus qui nihil doloribus nobis unde pariatur.', 'Repudiandae est ex dolores libero eum repudiandae quia iste quisquam accusamus magnam vitae quaerat voluptatibus rerum debitis officiis accusamus.', NULL, 'Codeigniter', '2', 'Nagad', '75290 Faye Divide Suite 460\nLake Devyn, ME 78079-2106', 'barton.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(43, 42, 5, 2, 'System Administrator', 5, '70k', 'Mipur', 'Sapiente voluptatem cupiditate neque blanditiis sunt est velit et beatae quibusdam sed voluptatibus aut iure consequatur iure aliquid eius aut officiis ea sed expedita libero.', 'Officiis eos suscipit nam vel officiis excepturi id rem ratione iusto explicabo culpa nobis autem officia quasi pariatur nihil ut nisi.', 'Cumque eaque occaecati officia voluptas fugit voluptatem quam sint in dolores soluta illum rerum eius dolor facere aliquam nisi nihil et cupiditate consequatur illo et corporis.', NULL, 'Java', '2', 'Alibaba', '635 Powlowski Glens\nHermanbury, VT 07696', 'volkman.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(44, 44, 3, 3, 'System Administrator', 10, '37k', 'Khulna', 'Consequatur voluptates voluptatibus itaque eum nemo vel impedit unde aliquid accusamus eligendi qui voluptatem sed praesentium enim voluptatem vel mollitia.', 'Aut autem id quis provident consequatur eligendi est sunt aliquid facere quod est modi cupiditate nam et alias est.', 'At cum et eveniet cum beatae in velit est voluptates incidunt provident excepturi voluptates alias debitis sequi voluptatem quod possimus commodi ducimus ducimus accusamus ducimus id ea aut molestiae voluptas numquam velit et eos aut consequuntur nam.', NULL, 'Python, Django, Machine Learning', '9', 'Bkash', '42370 Boyle Fall\nO\'Haraside, IA 39695', 'nikolaus.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(45, 41, 2, 2, 'Big Data Specialist', 5, '14k', 'Rajshahi', 'Beatae omnis non occaecati modi deserunt totam fugit inventore in eaque architecto qui amet perferendis culpa eum rerum maxime natus omnis eveniet veritatis.', 'Natus nam voluptate eos fugiat possimus enim distinctio ullam omnis et enim harum magnam blanditiis voluptate nostrum eveniet ipsa maxime aut qui enim nihil ducimus dicta fuga molestiae ipsam eius distinctio earum dolor qui aut atque ut molestiae voluptatem non unde.', 'Non est magnam nihil in earum fugit qui quia dolorem porro fugit vel eos adipisci molestiae at distinctio cumque dolorum deleniti doloribus optio in.', NULL, 'C#', '9', 'Microsoft', '7383 Petra Landing Apt. 032\nDeronview, FL 09053', 'bahringer.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(46, 6, 1, 2, 'Database Administrator', 7, '18k', 'Joypurhat', 'Hic voluptatibus consequatur et quia animi voluptatem praesentium excepturi soluta labore tempora et eos mollitia optio placeat odio ex accusantium quia non sint suscipit voluptatem rerum pariatur qui.', 'Possimus error ipsa mollitia quidem molestias ab ut eius est officia aut nulla eveniet corporis ut voluptas libero veniam reiciendis libero quae optio ut veritatis sed eos autem facilis necessitatibus ea consequuntur aut modi necessitatibus harum quibusdam.', 'Ut asperiores eos magnam dolorem sed dolor neque possimus possimus ut quis itaque voluptas magni ducimus aliquam laboriosam enim suscipit laborum ducimus ipsa vero aut iste nisi esse illum distinctio minima quos distinctio sed laboriosam.', NULL, 'Vue', '5', 'Daraz', '155 Alisa Ville\nZboncakton, GA 23258', 'rau.net', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(47, 8, 1, 1, 'Mobile App Developer', 5, '79k', 'Mipur', 'Maiores quam id ut quisquam repudiandae minima sunt impedit asperiores repellat aspernatur natus provident et error rerum sapiente inventore nulla est iusto hic eum est aliquam consequatur nam quia maiores fugiat ut sit perferendis velit nemo officia vel occaecati et et est.', 'Ipsam ut possimus voluptatem dignissimos aspernatur pariatur corrupti tempore et voluptatem aperiam aut voluptas ut sunt architecto ullam omnis eum eaque et.', 'Iure doloribus adipisci accusantium in in iusto sint commodi alias accusantium dolorem sunt asperiores qui animi deserunt nemo minima consequatur est explicabo aut nobis.', NULL, 'JavaScript, React, Frontend Development', '6', 'Meta', '88877 Laurianne Walks\nNadermouth, MS 64344-2036', 'mills.biz', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(48, 48, 2, 3, 'Fashion Illustrator', 6, '37k', 'Barisal', 'Placeat sint tenetur nostrum omnis est dicta voluptatem debitis voluptas officia sed reiciendis illo voluptatem vel sapiente quam temporibus accusamus maiores enim itaque fuga sed blanditiis nemo quia voluptatem ut ratione et praesentium ab dolor at nisi totam.', 'Veritatis rerum quisquam voluptatum blanditiis quasi ea aut sint ducimus quia architecto repellat ut praesentium itaque est distinctio porro quia non rem eos labore velit officiis est molestias id officiis hic animi dolorum pariatur et odio nam.', 'Error molestiae est libero qui libero rerum recusandae maxime nobis libero aspernatur voluptatum totam amet at est rerum quia ut vel eligendi libero nulla dolorem.', NULL, 'Phyton', '9', 'Microsoft', '9661 Senger Curve\nFredaland, KY 29461-4017', 'stanton.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(49, 3, 2, 4, 'Mobile App Developer', 2, '60k', 'Rajshahi', 'Qui nulla ullam ut ea earum ut eum vero est quaerat illo temporibus animi dignissimos tempora et dolor tempora mollitia magni voluptas est sit rerum veniam non deserunt in illo similique alias atque repudiandae fugiat maxime impedit.', 'Inventore quod et repellat recusandae dolores in veritatis consequatur ullam perspiciatis itaque placeat in qui et accusantium sint eos modi est aperiam dolor aut culpa tempore voluptates aut sed aliquid tenetur dolores veritatis tempore cum distinctio consectetur.', 'Rerum non sunt molestias atque voluptatem aut voluptates reprehenderit occaecati iste nihil voluptas ut dicta quibusdam dolores quo necessitatibus voluptatem repellat consequuntur quia repellendus corrupti voluptas architecto mollitia ad quam distinctio earum voluptatum et sapiente et quo distinctio sunt assumenda.', NULL, 'Javascript', '1', 'Facebook', '32493 Chanel Parks\nNew Celineberg, IL 71052-0456', 'abbott.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(50, 11, 3, 1, 'Business Intelligence Analyst', 9, '41k', 'gulshan', 'Modi ipsam aut illum quo fuga ut sint ut aut quasi optio magni in quo animi dolorem ut provident blanditiis quo assumenda dolor quam maxime ad dicta est.', 'In asperiores et quo aperiam velit perferendis accusantium qui nihil ratione ut quia itaque est ut minus illum voluptates ratione error qui aliquid natus eum tempora et voluptate sit voluptas quos modi accusantium.', 'Ad nam cum nihil autem animi nisi facere vel debitis doloribus at atque voluptatem nisi nostrum blanditiis pariatur ex aspernatur veritatis eum esse similique repudiandae alias reprehenderit sed dolorem et earum officia harum occaecati nesciunt minus exercitationem eum excepturi consequuntur.', NULL, 'Symphony', '3', 'Bkash', '300 Oberbrunner Junctions Apt. 928\nLake Alvis, OH 81391-0553', 'breitenberg.com', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(51, 2, 2, 1, 'System Administrator', 5, '63k', 'Bonani', 'Maiores praesentium id pariatur sit repellendus quis fugiat velit sapiente repellat quod vitae doloribus neque mollitia aut quia voluptatibus inventore commodi voluptate in aut dolorum dolores.', 'Quaerat maiores est at eligendi inventore delectus amet debitis et aut est repellat aliquam unde aut quasi dolore aliquam voluptatem qui numquam vel labore eum quibusdam voluptatem dolor velit consectetur magnam voluptatum aut molestiae aspernatur pariatur consequuntur consequatur magnam.', 'Dolor consequatur necessitatibus et et ex adipisci eligendi quis voluptatibus ea non quasi nisi aut aut autem cumque veritatis ut ipsum sit autem aliquam delectus similique nihil impedit tenetur dolores.', NULL, 'Node js', '3', 'Microsoft', '42796 Koelpin Club Suite 970\nJaedenfurt, MN 27248', 'jaskolski.biz', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(52, 31, 5, 4, 'Business Intelligence Analyst', 8, '50k', 'Bogura', 'Accusamus officia perspiciatis ad nihil maiores ipsum nam tempore corporis occaecati consequatur omnis fugiat libero error doloribus distinctio et nostrum repellendus ratione odit enim culpa corrupti incidunt error est voluptatem iure magni incidunt accusamus.', 'Deleniti quidem sequi beatae accusantium excepturi et consequatur nobis dolorum pariatur qui sapiente cumque quam voluptatibus esse molestiae quod dolor ut officia fuga rerum ab mollitia reiciendis beatae doloremque quos ut corrupti.', 'Sint doloremque a at quam corporis nam doloremque autem quisquam sunt consequuntur doloribus laboriosam aspernatur sed unde laboriosam enim blanditiis sint.', NULL, 'Angular', '9', 'Alibaba', '8956 Olson Parkways\nSavanahport, AZ 23478', 'fahey.net', 1, 0, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(53, 22, 2, 1, 'Business Intelligence Analyst', 2, '21k', 'gulshan', 'Dignissimos accusantium tempore aut qui et ea nulla asperiores veritatis unde non vel iure repudiandae aut aliquam sint enim id animi illo odit molestias doloribus amet fugiat cum at corrupti incidunt id corporis adipisci voluptas quod eum quos voluptate officia non.', 'Quo corporis rerum dolorem illum aut aut est rem dicta voluptatem perspiciatis repudiandae voluptate quos ea excepturi maiores doloremque et ab provident voluptatem rerum dolorem qui officiis vel nihil voluptas maiores iure dolorem molestias quam omnis ut est.', 'Odit harum sit magni eum labore iure omnis itaque expedita placeat quam quaerat facere quia sed ut veritatis tenetur ad voluptatem enim occaecati unde debitis.', NULL, 'Javascript', '2', 'Alibaba', '31908 Ross Shore\nWest Melynastad, CT 39722', 'ledner.net', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(54, 28, 4, 4, 'System Administrator', 10, '47k', 'gulshan', 'Dolores sit qui fugiat dolores dolor porro voluptatem magni corporis unde ipsam similique aut corrupti molestiae nostrum explicabo culpa quam saepe commodi molestiae eius aut asperiores exercitationem velit nostrum et quia reiciendis delectus molestias ipsam fugit ullam tenetur qui et et optio.', 'Velit eum voluptatem qui aspernatur sunt ut sint sit voluptatibus natus assumenda quidem maxime eveniet non qui nulla nisi ipsa a temporibus laborum sit adipisci at hic.', 'Eaque consequatur soluta magnam accusantium nihil doloribus sit magnam dolor odit eum sint et consequatur quo tempore vitae occaecati dolor dolores quos cum veritatis non doloremque aliquid aperiam nesciunt nostrum ullam consectetur et ducimus.', NULL, 'Angular', '1', 'Microsoft', '8086 Burnice Cliff\nWiltonberg, WI 72406', 'abernathy.com', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(55, 8, 5, 5, 'Software Engineer', 4, '60k', 'Sylhet', 'Porro distinctio voluptatem perspiciatis consequuntur commodi omnis ut autem aliquam omnis vero nihil inventore aut fugit aliquam qui repudiandae eum aut.', 'Voluptatem omnis omnis repellendus ea quia distinctio vel eum magnam qui ad quasi placeat incidunt iure nemo iste mollitia magnam dolore aperiam et voluptates.', 'Blanditiis dolore quaerat at enim aut nisi voluptatum sit nihil modi molestiae vel est aspernatur ut molestiae id et eum ut et natus distinctio sint esse nemo vel accusamus aperiam ut quibusdam vero ut ut.', NULL, 'Node js', '9', 'Meta', '2675 Luisa Ridges\nDixieport, NM 05621', 'gottlieb.org', 1, 1, '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(56, 31, 5, 5, 'Cybersecurity Specialist', 7, '74k', 'Mipur', 'Dolores maiores sit laborum est sit voluptas error officiis id recusandae quo ullam amet dolorem itaque aspernatur magnam velit et qui facere qui delectus.', 'Laborum eos vel veniam sed libero id nobis aut quisquam voluptatem quos dolorem est autem quis ea quasi fugit ut est voluptates aspernatur quas soluta sint corporis pariatur et deleniti enim accusantium nemo aut maiores ut aut voluptatibus ducimus quisquam sunt adipisci.', 'Eius rerum velit consectetur culpa et iure asperiores dolorem numquam velit est a illo voluptates nesciunt voluptatibus eos qui et eligendi autem minima velit omnis fugit nihil harum odit quos debitis temporibus odio nam maiores facere ab nam ullam alias possimus et.', NULL, 'C#', '9', 'Alibaba', '2799 Huels Alley\nFidelfurt, DC 34930-8223', 'rath.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56');
INSERT INTO `jobs` (`id`, `user_id`, `category_id`, `job_type_id`, `title`, `vacancy`, `salary`, `location`, `description`, `benefits`, `responsibility`, `qualifications`, `keywords`, `experience`, `company_name`, `company_location`, `company_website`, `status`, `isFeatured`, `created_at`, `updated_at`) VALUES
(57, 22, 2, 1, 'Industrial Engineer', 3, '43k', 'Bonani', 'Quidem modi est et necessitatibus voluptas aut necessitatibus laborum minima velit ducimus fugit exercitationem cupiditate culpa sunt impedit et harum quae autem odit eius similique molestiae molestias minus exercitationem cupiditate saepe vel eius aliquam est est qui beatae omnis dolor laborum.', 'Accusantium recusandae possimus repudiandae et eum et ut aut dolores voluptatum sed doloribus possimus et voluptatem commodi est et eum hic fugit nostrum culpa eos.', 'Assumenda quo quae rem natus omnis soluta quia maiores itaque nostrum minima qui sed ex adipisci non nostrum aut eveniet ut est culpa et omnis aperiam nesciunt rem inventore voluptas consequatur eveniet alias exercitationem qui temporibus sequi ea fugiat perspiciatis.', NULL, 'Ruby', '1', 'Daraz', '2244 Augusta Lane\nWaelchiborough, MS 47146', 'oconnell.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(58, 16, 5, 3, 'Industrial Engineer', 9, '67k', 'Bonani', 'Ea quia explicabo optio sed accusantium vitae id veniam eum cupiditate qui qui culpa excepturi et ut consequatur molestias labore eum dignissimos voluptas pariatur.', 'Vero et consequatur vel molestiae laboriosam voluptatem velit eligendi autem quibusdam laudantium architecto atque fuga assumenda ipsam consequatur quia cupiditate voluptates odio dolore quaerat aut eius iste dolores iusto iusto consequatur.', 'Est nisi qui sequi repellendus quidem quo repellendus magnam blanditiis delectus sit voluptatem nisi enim nam reiciendis itaque qui ex earum eos impedit et nulla rem vero sapiente sint tenetur id eveniet aspernatur dolorem voluptatem dignissimos voluptatum et.', NULL, 'Codeigniter', '3', 'Daraz', '714 Deangelo Loaf\nAllisonmouth, LA 44225-6484', 'pfannerstill.net', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(59, 44, 4, 3, 'Data Analyst', 7, '63k', 'Rajshahi', 'Enim et doloribus quod incidunt temporibus sint id odio laborum eveniet ipsum hic dolores ratione esse perferendis suscipit et itaque ut temporibus voluptas dolor porro qui neque debitis omnis quisquam officiis id quia adipisci tempore sunt quae neque ea libero.', 'Asperiores sed similique est totam aut inventore temporibus similique qui explicabo ad ea non debitis eum repudiandae iure quod facere dicta repellat sequi quibusdam illum vel deserunt soluta repudiandae quos magnam itaque voluptate nostrum nostrum quod voluptatem aut pariatur ut dicta.', 'Temporibus cupiditate unde voluptates repudiandae voluptas officia ducimus error nam et aut error at magnam minus et deleniti qui odio voluptates molestias nisi incidunt delectus.', NULL, 'Vue', '1', 'Bkash', '1743 Laila Overpass Apt. 386\nKennithberg, NY 98337', 'ebert.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(60, 5, 3, 1, 'DevOps Engineer', 5, '43k', 'Joypurhat', 'Officiis voluptates aut illum et possimus aut omnis similique quaerat dolor veritatis velit rerum officiis labore libero ratione optio consectetur.', 'Consequatur dolores aliquam laudantium eius id fuga odio et repellat inventore et quos voluptatem laboriosam veritatis quisquam praesentium reiciendis sunt aut culpa tempore cum est omnis et corrupti molestiae ullam.', 'Vel impedit vitae expedita facilis atque magnam consectetur et minima similique ut ullam eum repudiandae modi dignissimos atque inventore veritatis tenetur quia optio illo sed.', NULL, 'UI/UX Design, Figma, Sketch', '7', 'Facebook', '563 Ward Ville\nLebsackfort, AR 67429-4768', 'braun.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(61, 15, 5, 4, 'Big Data Specialist', 6, '23k', 'Gagipur', 'Quos voluptas commodi nihil repellendus voluptatem pariatur suscipit dolorem delectus non ipsa doloremque id voluptatem officiis voluptates porro accusamus eos beatae et non ut quae.', 'Iste architecto sit doloremque eveniet accusantium deserunt ut rerum impedit distinctio dolorum rerum eum molestiae optio sit sit ratione non consequatur odit.', 'Tempora et est consectetur pariatur molestiae necessitatibus quos est aut rerum sint nihil harum ex aliquid dolor deleniti odio eaque consequatur eveniet distinctio dolorum laudantium fugiat et facilis laborum sequi qui.', NULL, 'JavaScript, React, Frontend Development', '9', 'Google', '2672 Margie Drive\nHauckton, ME 01145-6031', 'yundt.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(62, 25, 5, 3, 'Fashion Designer', 4, '77k', 'Gagipur', 'In animi corrupti facere sed impedit nihil temporibus laudantium unde facere nam porro et ducimus a molestias cupiditate ipsum enim maiores vel rerum magnam sed nostrum eligendi fugit et et temporibus.', 'Quia velit et laborum soluta doloribus autem ab error quae quis explicabo est quo deserunt sunt quisquam illum quia eum accusamus aut commodi commodi enim at quisquam culpa adipisci praesentium reprehenderit doloribus ut rerum fugit et aspernatur totam.', 'Fugit aut ut a temporibus illum magni cumque odit cumque dolorem animi neque ut incidunt adipisci aliquam iste eius delectus labore magni est adipisci dolor sed omnis.', NULL, 'JavaScript, React, Frontend Development', '5', 'Facebook', '883 Garnet Locks\nMacejkovicfurt, HI 51241-4206', 'ziemann.net', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(63, 48, 4, 5, 'Cloud Architect', 3, '40k', 'Mipur', 'Quos quia cupiditate assumenda aut rerum soluta dolores nihil eum id beatae a quia ullam nemo distinctio necessitatibus voluptatem.', 'Ratione doloribus doloremque rem ex aspernatur omnis velit laudantium reiciendis explicabo nam maxime deserunt vitae praesentium veritatis rerum porro alias sunt odit ullam vel ipsa et quidem occaecati sed reiciendis quibusdam magnam beatae ipsa dolorem voluptas non.', 'Quo et ut voluptates doloribus esse hic molestiae expedita optio illum beatae ea enim sed provident et exercitationem nesciunt velit et quibusdam perferendis error similique cumque omnis tempora harum soluta omnis suscipit.', NULL, 'PHP', '10', 'Meta', '909 Botsford Station\nEmardview, KY 86791', 'smith.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(64, 35, 5, 5, 'System Administrator', 6, '21k', 'Rajshahi', 'Numquam maiores ut ratione pariatur nostrum quo inventore et et accusantium vitae quis magni minus laborum eos illum velit vitae.', 'Sit vitae odit dolores itaque recusandae impedit fuga excepturi fugiat quis sequi qui eius ab suscipit qui delectus rerum quia qui perspiciatis libero et dolorum rem occaecati voluptatem voluptatem ad.', 'Iste quas voluptates rerum excepturi fugit voluptatem soluta dicta dolorem blanditiis dolore aut quam provident aperiam rerum sed veritatis sunt et minus maxime eaque in nostrum soluta ea debitis debitis qui veritatis facilis minus.', NULL, 'Vue', '8', 'Meta', '9645 Harris Village Apt. 435\nRyleighville, PA 25251-1458', 'stokes.org', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(65, 43, 4, 2, 'Cybersecurity Specialist', 1, '55k', 'Rajshahi', 'Vitae aut blanditiis omnis voluptatem totam sequi omnis qui ab nesciunt eligendi sint ipsum consequatur odio cumque cumque minima iste voluptas possimus quas vel saepe aliquid et praesentium quod accusamus nisi sunt quam quia doloremque est veritatis voluptatem ad tempore nihil at assumenda.', 'Enim expedita labore ipsam ab adipisci non nihil odit quasi reiciendis nostrum est maiores voluptates mollitia iusto itaque laborum mollitia quasi aut nesciunt maiores quia magni molestias et porro eum est facilis fuga alias tempore ut.', 'Perspiciatis architecto placeat libero itaque velit optio ratione exercitationem nobis temporibus sequi quo id ut veniam laudantium et ad itaque et.', NULL, 'Ruby', '5', 'Meta', '77400 Bryana Mount\nSouth Jermaine, ID 72805', 'corkery.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(66, 33, 2, 5, 'Software Engineer', 9, '43k', 'Joypurhat', 'Quasi asperiores voluptatem qui non aliquam ex et quod cupiditate quisquam quae repudiandae saepe est et recusandae eius laboriosam distinctio quia.', 'Illo culpa deleniti rem minima ad impedit vel nihil facere assumenda ullam veniam dolor reprehenderit officia quis quae provident quasi architecto ipsam.', 'Exercitationem quo et et autem quibusdam quam qui aut dolor dicta qui qui aspernatur facilis eos ut tempora et blanditiis ut itaque est ad sit ut aperiam et voluptatem id quis dolores.', NULL, 'Symphony', '8', 'Microsoft', '840 Frances Circle\nKaylachester, WY 24112', 'cremin.net', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(67, 44, 5, 1, 'DevOps Engineer', 4, '61k', 'Joypurhat', 'In sit omnis mollitia omnis unde sed nihil aperiam qui facilis est reiciendis saepe autem rem doloremque fugit tempora velit quos illum dolorum et quidem quo soluta quod numquam dolor est quae dolore eaque quibusdam ab eaque incidunt quaerat recusandae est.', 'Nihil libero culpa enim odit perferendis repellendus laudantium est consectetur excepturi eum nihil esse autem iste incidunt autem voluptatum a rerum ipsam laudantium eveniet praesentium amet minima dolores quibusdam laudantium debitis molestiae voluptatem.', 'Quo in voluptatem voluptates commodi incidunt nihil inventore ullam itaque est velit repellendus dolores eius autem aut ipsam sequi.', NULL, 'C#', '9', 'Google', '498 Hattie Trace Apt. 069\nMilostad, HI 27531', 'cronin.info', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(68, 26, 1, 4, 'Database Administrator', 8, '25k', 'gulshan', 'Saepe dolorum magnam autem possimus consequatur minus eum in nihil voluptatem ut maiores non ut quasi voluptates enim dolores fuga libero temporibus omnis iure.', 'Non a officiis ut similique provident architecto repellendus vero aut labore sed vel omnis adipisci dolor laborum iusto aut at quisquam et.', 'Placeat nam illo commodi qui corporis animi fugit ex aut reiciendis autem quia sit iure blanditiis dignissimos officiis commodi at et eos odio iste et aut ut voluptas facere temporibus beatae rerum distinctio nesciunt non quos nemo.', NULL, 'PHP', '6', 'Daraz', '9930 Davis Neck\nAraceliview, MN 29933', 'vonrueden.biz', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(69, 36, 5, 3, 'Business Intelligence Analyst', 7, '11k', 'Joypurhat', 'Totam qui praesentium sapiente et deserunt accusantium ut deleniti ut qui omnis rem praesentium ut omnis occaecati pariatur sit.', 'Delectus labore aut omnis fugiat quo dolor pariatur eius et repellat minima aut fugiat similique molestias nihil at quia saepe quia ut.', 'Voluptatem tempore recusandae sint dolorum quod dolor explicabo animi non voluptates tempora unde fugiat non maxime eaque autem est est recusandae esse.', NULL, 'UI/UX Design, Figma, Sketch', '4', 'Microsoft', '51187 Bahringer Ports Suite 626\nAuerport, SC 81380-3933', 'cummings.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(70, 50, 1, 3, 'DevOps Engineer', 7, '50k', 'Joshor', 'Dolore eum adipisci ut quaerat quia eius rerum cumque quia repudiandae soluta sunt voluptatem laudantium minima doloribus harum quas est consequatur dicta accusantium voluptas voluptatem earum illo voluptatem alias.', 'Reiciendis consequuntur tenetur ut consequatur et animi velit possimus molestiae sunt debitis commodi sed dolor consectetur quibusdam repellat aut maxime.', 'Quis sint quaerat quisquam vitae eum voluptatem blanditiis enim et qui sunt numquam minus a iusto recusandae tempora dicta quia non error officiis culpa dolor voluptate quam et consequatur sit praesentium repellat laborum et ullam recusandae a modi eos magnam.', NULL, 'Ruby', '8', 'Microsoft', '90667 Xander Meadow\nAndersonborough, IL 37283-1763', 'jaskolski.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(71, 3, 1, 3, 'Database Administrator', 4, '21k', 'Dhaka', 'Beatae illum adipisci vel molestias explicabo sapiente quis ipsum officia quidem assumenda sed minima qui officia perferendis qui dignissimos exercitationem autem esse non blanditiis aspernatur et voluptatum neque non vel pariatur ut aut est assumenda ut tenetur enim voluptatem.', 'Eaque illo occaecati debitis pariatur voluptatem qui nemo quos ut quibusdam quod eveniet odio similique a et voluptas ut error soluta minus libero occaecati id a illum veritatis ipsam veritatis molestias dicta itaque sequi voluptas ipsam quasi occaecati rerum possimus.', 'Aliquid qui nulla nihil excepturi temporibus nulla odio placeat illo porro sunt sint doloribus sint alias dolores saepe maiores accusamus alias non laborum occaecati ipsum est accusantium perspiciatis soluta non reprehenderit qui veritatis voluptatem voluptatem.', NULL, 'Django', '8', 'Microsoft', '2189 Ruth Lock Apt. 248\nRollinmouth, NC 94086', 'harvey.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(72, 48, 1, 2, 'System Administrator', 4, '50k', 'Dhaka', 'Consequatur praesentium explicabo consectetur nobis soluta consequatur quidem et et in ex ratione odio laudantium eaque quia quidem veniam in iusto sed ea quas cupiditate facilis voluptates quod ullam praesentium soluta aperiam ratione reprehenderit est quibusdam quia saepe.', 'Rerum eum aliquam sed voluptas officiis eos eius et facere ea odit dolor voluptate ut vel aut voluptatem suscipit nam pariatur fugiat provident ipsam veritatis nihil corporis sed et fugit dolores.', 'Occaecati maiores dicta modi aut excepturi ut deserunt voluptatum aut aspernatur hic qui consectetur quidem reiciendis provident odio fuga.', NULL, 'Phyton', '2', 'Tesla', '12640 Joyce Motorway\nJordanfurt, TN 22332', 'kerluke.net', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(73, 3, 3, 4, 'Financial Accountant', 2, '42k', 'Rajshahi', 'Odio in nemo fuga consequatur enim non optio dolorem placeat neque eos laboriosam ut consequatur modi officiis qui sapiente accusantium voluptas autem expedita minima consequatur ea tempora quis accusamus illum et at est minus quo a porro a quos quia est.', 'Nam qui qui ea quis autem quia accusantium nobis veritatis aut voluptatibus consequatur odio optio aliquam non et non voluptatem libero ut omnis ut quia fuga non id ullam sit in repellat enim quia magni exercitationem explicabo id qui doloremque libero quae.', 'Ipsa illo ea veritatis modi veritatis voluptates veniam incidunt aut dolorem aliquam non porro facere placeat voluptatem reiciendis voluptas quia ut est labore.', NULL, 'Java', '6', 'Meta', '49759 Stokes Spurs\nArdenchester, VA 93438-7687', 'schuppe.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(74, 10, 2, 2, 'DevOps Engineer', 4, '20k', 'Badda', 'Quos libero occaecati non aut omnis at illum iste animi eveniet et pariatur quos commodi quisquam aut modi et perspiciatis animi eaque occaecati dolor magnam enim nobis fuga quibusdam voluptas et.', 'Autem et provident sed minus aut id voluptates dolorem earum deleniti molestiae mollitia molestiae ea quis nisi quia fuga quasi magni est id cupiditate doloremque eos voluptatem.', 'Laboriosam quod ab consequuntur corporis architecto eos ullam velit ipsam eum et cumque dignissimos molestiae quam quas nam vel assumenda in blanditiis et quis voluptatem suscipit sed corporis et est corrupti officia quas non maxime quia.', NULL, 'Codeigniter', '6', 'Google', '60175 Frances Springs Apt. 846\nRueckerfurt, WI 49069', 'howell.biz', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(75, 49, 1, 1, 'Financial Accountant', 2, '13k', 'Rongpur', 'Et in numquam corrupti quisquam qui qui dignissimos ut cum molestias repellat hic et ut est beatae repellendus mollitia et ea eius.', 'Sed ut rerum nihil facilis doloribus doloribus aliquam velit tempora eos praesentium et nostrum inventore vero voluptates minima nihil autem at minima praesentium omnis id quas voluptas facilis illo culpa explicabo totam laboriosam est culpa occaecati natus qui.', 'Eaque nostrum omnis vel rerum corrupti ut eum excepturi in tenetur ut tempore molestiae soluta dolores quos rerum in a explicabo qui eos repudiandae in eius corrupti harum voluptatem tenetur deserunt perspiciatis veritatis eaque cum voluptatum minus quae suscipit error.', NULL, 'JavaScript, React, Frontend Development', '1', 'Alibaba', '33047 Lily Extension Apt. 621\nNeldaport, WA 85180-6040', 'rosenbaum.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(76, 50, 4, 2, 'Fashion Illustrator', 7, '45k', 'Badda', 'Laudantium dolorum quis ea veniam maiores tenetur voluptatum optio quas provident consequatur libero consequatur est illo perferendis voluptate et provident eos non.', 'Corporis dolor unde quos quisquam sunt nulla sit doloremque ea mollitia unde sunt vel sed sed laborum suscipit molestiae quod occaecati dolorum ullam repudiandae ut aliquam blanditiis perspiciatis ex rerum voluptatem facere vitae voluptas voluptatibus quos sunt sint et voluptatum quisquam quidem mollitia.', 'Laudantium ab ea quam omnis odit sint est sequi soluta beatae cupiditate qui rerum itaque ea dolore sapiente illum saepe non veritatis aut aut voluptatem ullam est velit blanditiis aut consequatur minima suscipit molestiae maiores nisi voluptatum rerum vel.', NULL, 'Angular', '9', 'Meta', '503 Myrtis Springs Suite 782\nBellaland, TN 76467-3443', 'kutch.info', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(77, 42, 5, 3, 'Financial Accountant', 4, '43k', 'Khulna', 'Quis minima minima nemo minima voluptatem aperiam ea ipsam omnis provident eveniet consequatur ratione enim voluptas et consequatur dolorum ea eaque beatae voluptate occaecati iste magni labore ut voluptatem dolorum voluptates ut expedita dignissimos porro.', 'Sed illum culpa incidunt est asperiores in nisi sint debitis est voluptas unde veritatis eaque omnis quam voluptate aspernatur iste iusto voluptatibus.', 'Iure aliquam dolore natus officia consequuntur deserunt eum unde aut est sit laborum est nesciunt consequatur voluptatibus hic quibusdam voluptates consequatur ullam illo est voluptatem quia a occaecati.', NULL, 'Vue', '9', 'Tesla', '1768 Schultz River Apt. 775\nEliport, AZ 29246', 'schamberger.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(78, 9, 4, 4, 'IT Support Specialist', 10, '21k', 'Barisal', 'Occaecati accusamus velit sed suscipit quidem dolore veniam repellat est nemo quam ab aspernatur similique vel voluptatem optio quas ut et.', 'Ipsam voluptas qui aut soluta iure dignissimos et veritatis dicta enim aut repudiandae eos odit ab excepturi repellendus numquam suscipit repudiandae qui sapiente ut rem aut dolores pariatur minima et totam distinctio et id laboriosam molestiae quod nobis quidem enim.', 'Fuga aut corporis explicabo non numquam ab velit velit porro quia molestias consequatur est dolore nemo quia vel expedita tenetur explicabo voluptatem alias omnis.', NULL, 'Vue', '10', 'Facebook', '4828 Ryleigh Crossroad Apt. 882\nJastfurt, NE 27910-9257', 'bartoletti.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(79, 40, 2, 4, 'Cloud Architect', 1, '66k', 'Barisal', 'Perferendis vitae nulla doloribus ex saepe accusantium nulla totam fuga temporibus aut necessitatibus voluptatibus quia maxime recusandae non impedit quia.', 'A minus iste ab voluptate voluptas magnam amet quia soluta iure dolor consequatur eius et et cum optio et provident natus fuga nesciunt ad ut deserunt repellendus veniam cum.', 'Laboriosam nesciunt nisi magnam voluptates facilis unde fugit non animi quae et sint atque nam quam qui sed qui rerum soluta voluptas quos non mollitia fugiat ut minima sequi quia autem libero reiciendis dolorum.', NULL, 'Java', '4', 'Tesla', '87296 Kuvalis Walk Suite 048\nMargarettehaven, DE 75465-5605', 'kautzer.biz', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(80, 27, 2, 3, 'Data Analyst', 5, '18k', 'Chittagong', 'Illum accusantium doloribus nesciunt sit natus ut reprehenderit autem ut eveniet odit qui voluptatem quos quia aliquam consequuntur consequatur sed.', 'Eligendi voluptas cupiditate aut magnam ratione velit porro qui error voluptates laboriosam aut est delectus sapiente cum sequi quasi impedit illum sunt assumenda deserunt quis dignissimos amet aliquid velit ipsa rem.', 'Corporis illo commodi asperiores maxime ipsum illum voluptas eveniet perspiciatis voluptas beatae labore laboriosam nesciunt deleniti sed ut repellendus illo animi amet facilis accusamus quae voluptas impedit voluptatem iure et dolor incidunt laudantium.', NULL, 'Codeigniter', '3', 'Google', '860 Konopelski Turnpike Suite 443\nPort Jennieton, RI 98105', 'effertz.org', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(81, 30, 2, 4, 'Software Engineer', 3, '26k', 'Joypurhat', 'Et fugit voluptate maxime voluptate sit quasi quam consectetur nobis non est alias optio voluptas rerum deserunt quasi et ut pariatur sit minus ducimus quibusdam corrupti eos natus occaecati expedita voluptates et.', 'Eum ipsam omnis reprehenderit tempore ut ducimus deleniti voluptas ut laborum sit nulla eaque nihil dicta eveniet qui assumenda ipsam ab aliquid.', 'Neque adipisci sunt laborum et non modi possimus laboriosam accusamus iste aliquid et consectetur iure quo ratione et dolores voluptas quaerat veniam sit ut.', NULL, 'Codeigniter', '6', 'Google', '32782 Emmerich Burgs Suite 697\nPort Brown, MN 21440-7355', 'jacobi.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(82, 15, 2, 4, 'System Administrator', 4, '48k', 'Joshor', 'Quidem ea aperiam odit qui quasi placeat quia commodi officia ut aut non nostrum porro occaecati temporibus quos et in architecto consequatur est dolor qui veniam dignissimos distinctio est.', 'Fugiat et est distinctio rerum commodi voluptas ut nisi nisi autem aspernatur deserunt quis soluta reprehenderit nisi mollitia velit qui.', 'Distinctio amet dolor rem vero rerum aliquid fuga aperiam ea commodi perferendis veritatis perspiciatis voluptatum molestiae unde sit et et deleniti delectus reiciendis quasi qui dignissimos consequatur explicabo animi impedit provident voluptatem et sit tenetur sunt ut voluptatum soluta ut.', NULL, 'Java', '2', 'Facebook', '13167 Lakin Field Apt. 983\nDooleyshire, RI 91634-4342', 'mraz.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(83, 43, 4, 5, 'Software Engineer', 6, '63k', 'Joshor', 'Itaque dolores et natus ipsum possimus praesentium numquam velit architecto deleniti hic vero ea eaque accusamus asperiores saepe voluptate et et aperiam quis laudantium accusamus non dolor dolores voluptatum eum ut explicabo doloribus.', 'Dolores reprehenderit tenetur nobis consectetur temporibus aut officia exercitationem accusamus eveniet est mollitia necessitatibus illum numquam vel repudiandae illum quidem qui.', 'Sequi distinctio aperiam tempore dignissimos repellat fuga laborum quaerat doloremque rerum et tempore earum provident dolorum in perspiciatis praesentium enim iusto commodi consequatur minus praesentium impedit sed.', NULL, 'Phyton', '1', 'Tesla', '920 Braden Green Apt. 718\nSouth Willis, CA 05914-8003', 'weimann.net', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(84, 18, 5, 3, 'Cybersecurity Specialist', 7, '66k', 'gulshan', 'Quis maiores reiciendis quasi ut occaecati magnam possimus voluptate placeat suscipit dolore ex nihil aut ut quo voluptates voluptatem eos fuga ea voluptatem voluptatem ut qui et quae id occaecati aliquam architecto aut cum et eius excepturi voluptatem nam enim.', 'Fuga cupiditate ullam voluptas veniam ut delectus eaque aperiam et aspernatur voluptatem enim itaque architecto aut voluptate nostrum maxime architecto dolor aut neque saepe exercitationem at repellat itaque et.', 'Est eos ut dolor vel est perferendis quam minus autem delectus at eos doloribus voluptate debitis voluptas autem labore velit ad voluptatem ea nam aut aut est eos molestiae neque dolores dolorem enim occaecati velit odit eius rerum aut autem velit.', NULL, 'Django', '8', 'Facebook', '5255 Rohan Divide Suite 140\nUlisesside, MN 35900', 'osinski.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(85, 43, 5, 3, 'Web Developer', 8, '50k', 'Gagipur', 'Eos voluptates ea velit dolore fuga maxime sit ducimus est optio sunt aperiam facilis voluptatem animi aliquid repellendus et corrupti.', 'Id quis laboriosam excepturi sed voluptatum quas ipsam voluptatum accusantium et nostrum impedit qui illum et ex vel aliquam eius ut voluptatem necessitatibus fugit.', 'Perspiciatis sint doloremque qui et voluptatibus quisquam impedit atque iure hic similique qui minima aperiam aut exercitationem est cupiditate enim molestiae dolor voluptatem occaecati qui rem qui quia qui et laborum sit sed.', NULL, 'Java', '6', 'Alibaba', '8637 D\'Amore Causeway\nPort Lelandshire, OR 75716', 'tillman.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(86, 33, 5, 5, 'IT Support Specialist', 3, '45k', 'Rongpur', 'Vel beatae at quas omnis in sunt inventore ut neque velit non perspiciatis laborum qui rerum et saepe id qui neque facere autem et aut.', 'Aliquam fugiat atque magnam repellat cum deleniti sunt ea iusto neque sint nisi quam officia enim eum est ipsa est qui officiis recusandae tempore fugiat laboriosam sequi perspiciatis tempore et voluptatum enim eum sit enim sint eum asperiores est sit.', 'Illo ea nesciunt enim dolore nostrum dolorem qui voluptates harum ut quo necessitatibus soluta aut eveniet reprehenderit aut molestiae ut qui et.', NULL, 'Phyton', '4', 'Alibaba', '99476 Timothy Harbor\nHermistontown, NM 49199', 'auer.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(87, 35, 3, 1, 'Database Administrator', 10, '50k', 'Sylhet', 'Fugiat eum qui ea officiis sed autem illo ea repudiandae ipsum sit est eveniet et sed repellendus repellat et vitae optio consequatur quaerat totam laudantium.', 'Aut odit ex ut ipsa nihil iste in voluptatibus earum magni et deserunt quis et voluptatum consequatur reiciendis impedit commodi ipsa vel mollitia quia beatae.', 'Rerum labore aut sapiente veritatis sequi fugit ut reiciendis nihil reiciendis ut reprehenderit vitae autem est sed quisquam hic tempora similique aut.', NULL, 'JavaScript, React, Frontend Development', '4', 'Microsoft', '419 Lilly Stravenue\nSkilesborough, AZ 61669', 'lemke.net', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(88, 41, 4, 5, 'Industrial Engineer', 7, '64k', 'Joypurhat', 'Quaerat quod sed quos error et aut eius autem aut doloribus eius et reiciendis aspernatur labore nihil sit earum corporis.', 'Facilis dolorem qui culpa voluptas ab quae ipsa sit eos velit eveniet doloremque qui culpa vero et iure beatae mollitia aut et culpa adipisci.', 'Maiores odio accusamus dolore est suscipit quis nemo ullam sed cum error provident in corrupti itaque incidunt voluptatem labore assumenda dolorum quaerat.', NULL, 'Java', '4', 'Meta', '3189 Rice Roads\nPetrashire, ID 66743-9397', 'johnson.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(89, 9, 5, 3, 'IT Support Specialist', 9, '12k', 'Khulna', 'Quasi nam occaecati ab ut commodi itaque dolorem veritatis laborum deleniti nihil quia a quasi excepturi quia rerum maiores aut.', 'Non nihil esse rem vel dolore et labore non recusandae quo consectetur nesciunt iste accusantium labore maxime consequatur temporibus magnam autem reprehenderit dolor veritatis iure molestiae qui quos nulla modi quo ut ea.', 'Modi praesentium ipsa est repellendus qui rem mollitia praesentium aut perferendis aliquid quia neque libero corrupti quam earum sed molestiae deserunt et corporis magni perspiciatis hic.', NULL, 'Phyton', '4', 'Bkash', '2020 Lolita Plains Apt. 954\nLake Jadeville, WA 57545-5311', 'bartoletti.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(90, 22, 1, 3, 'Web Developer', 6, '79k', 'Rajshahi', 'Laudantium suscipit non minima beatae harum aut quisquam aut sed officiis est et dolore in unde fuga quia dignissimos hic sed aperiam sit sint ducimus est corporis fugit illo aut eius consequatur tempora ab velit aut.', 'A eveniet suscipit ut iure laudantium nulla reprehenderit placeat dolor unde beatae et autem ipsam eos esse autem voluptatem non fugiat mollitia impedit qui vitae eum dolores velit sed modi voluptatem.', 'Aperiam placeat fuga incidunt rerum officiis est ea nihil eligendi doloribus impedit quam illo illum possimus praesentium eum dolor repellendus quod et eius id voluptate atque praesentium.', NULL, 'UI/UX Design, Figma, Sketch', '5', 'Meta', '1673 George Bridge Apt. 681\nNew Eliane, UT 82403-3055', 'wilderman.net', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(91, 34, 3, 1, 'System Administrator', 5, '60k', 'Rajshahi', 'Eius reiciendis atque impedit cumque perferendis nobis odio assumenda aut incidunt inventore voluptatem eligendi tenetur commodi omnis eum est nam accusantium at qui adipisci itaque impedit dolorem commodi ipsam repellendus quibusdam dolor.', 'Quaerat consectetur eum ducimus vel aspernatur eveniet excepturi quis et necessitatibus rerum sunt quae ullam et autem nulla perferendis quis non praesentium sint perspiciatis officiis quam qui.', 'Dolor aut est similique nam rerum voluptatem quia architecto similique et magni ex hic numquam ut est repudiandae rerum quod perspiciatis qui veritatis voluptas alias rerum.', NULL, 'JavaScript, React, Frontend Development', '3', 'Bkash', '47806 Huel Fork Suite 618\nDonnellyview, MS 66078-5421', 'okon.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(92, 14, 5, 3, 'Database Administrator', 7, '57k', 'Sylhet', 'Ullam doloremque maiores praesentium veniam aut minima nisi fuga quia similique itaque eaque exercitationem et eum ut illum ut dolorem tempora quibusdam vero reiciendis nihil aliquam quos molestias tempore eum ullam magni ex quos eos dolore maxime vitae commodi eos non ullam.', 'Beatae quia illo omnis vero placeat est repellendus non iusto ut sint ullam et voluptate dicta quo cumque aut voluptas et cupiditate perferendis est repellat distinctio architecto ullam ad id sit modi et ducimus alias omnis porro ipsum explicabo magni et omnis.', 'Animi officiis perferendis et pariatur ut libero et dolorem laboriosam vel nisi et aspernatur et voluptate dolores facere ab aut qui eos laborum non harum non amet non ducimus voluptatem non quas distinctio ratione quam.', NULL, 'Codeigniter', '6', 'Tesla', '48135 Kris River Suite 095\nSouth Gilesberg, DC 73441', 'beatty.biz', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(93, 30, 3, 5, 'Mobile App Developer', 8, '45k', 'Chittagong', 'Placeat accusamus possimus iste rerum ut deserunt molestias ipsa maxime aspernatur assumenda libero eius vel explicabo delectus similique sint illum velit natus vel dolor veniam repellat possimus delectus.', 'Consequatur qui rem soluta beatae est aliquam repellendus vero sed dolorem tempore debitis ea est quae vitae error tempore cumque labore quidem corporis aut perferendis assumenda recusandae ullam omnis facere tempore optio odio suscipit beatae dolores.', 'Eius rerum maxime voluptatibus doloribus tempora et ut omnis magni voluptas officiis quis deleniti voluptates officiis corrupti culpa numquam officia ea autem et dolores non natus soluta.', NULL, 'Codeigniter', '2', 'Daraz', '41108 Marks Bridge\nNew Marleyport, CA 30019', 'mclaughlin.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(94, 16, 3, 2, 'DevOps Engineer', 9, '36k', 'gulshan', 'Occaecati sint temporibus nesciunt qui molestiae quas minus id et tenetur ad omnis sit qui et quo eum nulla quod dicta deserunt aut et hic ut aspernatur qui quasi earum delectus doloremque quia alias aliquam natus a a esse.', 'Perspiciatis dolorem quaerat quia adipisci id praesentium est eaque illo alias voluptatem blanditiis rerum tempore reiciendis hic assumenda facere aut rem.', 'Qui a porro assumenda facere voluptates est voluptatibus possimus eum possimus voluptatibus accusantium doloribus enim eum aut ratione cumque ea aut necessitatibus.', NULL, 'Angular', '6', 'Meta', '22795 Howe Ramp\nPort Chase, CO 90250-1795', 'veum.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(95, 14, 1, 1, 'DevOps Engineer', 2, '69k', 'Rongpur', 'Aut architecto itaque in quam sint voluptas dolor est quidem ab veritatis laboriosam vel maiores corrupti vel animi non debitis.', 'Ut dolorem quia itaque soluta temporibus explicabo eius repudiandae dignissimos sed amet maiores harum eveniet dolores a quas qui rerum et velit ut expedita soluta sit quia totam suscipit expedita facilis.', 'Illo rerum esse aut sequi consectetur et sed neque facere iste sapiente occaecati saepe est numquam doloremque quaerat nihil officia ea quaerat similique in consequatur explicabo.', NULL, 'PHP', '7', 'Alibaba', '592 Constantin Village Suite 859\nVanceburgh, NH 55988-1749', 'quigley.net', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(96, 16, 1, 3, 'Web Developer', 7, '32k', 'Mipur', 'Et quis delectus cumque neque voluptate iure ut molestiae voluptatem magni beatae facilis expedita blanditiis ut nihil ut ducimus sint praesentium adipisci est corporis rerum vero et soluta soluta adipisci ducimus provident commodi dolor similique molestias sapiente deserunt debitis sit.', 'Fuga rem ut ullam est dolores fugit vel ex dolor incidunt ea ut quis dignissimos aut minima quibusdam ut ex natus ut rem alias enim sapiente debitis nam architecto earum harum repellat iusto autem eius dolorum magnam.', 'Ut aut quae facere et aliquam atque soluta nisi aut iusto in recusandae reiciendis maxime tempora tempore unde optio dolores sint quibusdam.', NULL, 'Codeigniter', '1', 'Tesla', '9363 Crist Avenue Apt. 932\nColemouth, LA 74055', 'leuschke.org', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(97, 9, 3, 2, 'DevOps Engineer', 5, '21k', 'Gagipur', 'Rerum fugiat saepe minus provident aspernatur voluptatem atque reprehenderit quia similique blanditiis ipsam ipsum vitae nulla voluptatem assumenda aut qui occaecati officiis.', 'Ipsum officiis id fugit aliquid eum consequatur est deserunt in sunt nesciunt quasi odit deleniti omnis commodi accusamus fugiat explicabo totam est laboriosam sed neque accusantium enim qui deserunt corporis et.', 'Earum dignissimos odio non illo vero sed ipsa amet corrupti minima ipsam nam corporis perferendis a et rerum culpa magni molestiae cupiditate quibusdam eum et perspiciatis expedita tempore esse ducimus libero necessitatibus.', NULL, 'Python, Django, Machine Learning', '6', 'Alibaba', '934 Forest Ridges Apt. 567\nEast Karlieberg, IL 62609', 'schamberger.com', 1, 1, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(98, 7, 3, 1, 'Fashion Designer', 5, '41k', 'Dhaka', 'Dolor qui omnis tempora vel consequatur fuga ipsam expedita aut eligendi pariatur quaerat quam veniam est non voluptatem eos qui laboriosam rerum ex quibusdam dolorem sunt dignissimos minus omnis officia est inventore repudiandae.', 'Dignissimos iusto eius et et dolores nisi enim in officia reiciendis aut officiis id maxime earum sequi reiciendis placeat nihil optio.', 'Dignissimos ut enim occaecati repellendus repellendus tempora omnis doloremque a deleniti debitis quae repudiandae a voluptatibus nam facere nemo voluptates quisquam vitae necessitatibus sed quia ut dolorem in rem placeat modi quas alias earum dolor ut repellendus rerum incidunt sapiente.', NULL, 'UI/UX Design, Figma, Sketch', '4', 'Bkash', '3060 Stanford Squares\nPort Eryn, MO 16304-9043', 'pollich.info', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(99, 12, 3, 5, 'Cybersecurity Specialist', 7, '33k', 'Badda', 'Incidunt nulla cupiditate sit dicta laborum ex eos est aut magnam accusantium et quis et id eveniet quam sapiente est error qui voluptas dolor voluptas et sed ipsam vero eum.', 'Blanditiis dolores eaque hic omnis dolor dolores aut id et esse harum non vitae eos quia nisi aspernatur quo commodi necessitatibus eum eos pariatur quibusdam possimus mollitia quae voluptatibus ad quia fugiat eum ducimus ea laudantium tempore amet sunt non.', 'Voluptas beatae dolorem quidem incidunt vero cum non vitae consequatur et et rerum ut qui autem et vero asperiores eveniet cumque quas quisquam autem blanditiis ratione magnam maxime animi dolorem ut molestias laborum et commodi sapiente eos iste voluptatem.', NULL, 'Phyton', '10', 'Daraz', '87678 Owen Ways\nNorth Lurlineburgh, DE 80947-2965', 'osinski.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56'),
(100, 10, 3, 3, 'Financial Accountant', 1, '73k', 'Bonani', 'Fugiat repellendus distinctio fugit quibusdam aspernatur nobis cum et qui hic voluptatem voluptatem porro quo aliquid non tempora ut soluta dolores et vero facere dolorem sapiente harum tempore et quasi aliquid nisi eligendi porro.', 'Qui eligendi repudiandae atque quos recusandae qui quia officiis ut et aliquid eos praesentium alias voluptatem aliquid possimus corporis aut omnis natus delectus aut deleniti aut perferendis mollitia ea et et dolore ut nesciunt molestias qui est quae occaecati animi quo ad explicabo.', 'Consequatur amet quam quia omnis aut consequatur facere nisi quis laudantium et eius et dignissimos enim minima sit maiores laboriosam molestiae eligendi amet error alias voluptates quia ea perferendis velit excepturi atque voluptas consequatur et sunt est placeat dolores consequuntur asperiores.', NULL, 'PHP', '7', 'Daraz', '1845 Donnell Coves\nEast Uriahshire, HI 29766-8299', 'nienow.com', 1, 0, '2025-06-17 13:09:56', '2025-06-17 13:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `user_id`, `employer_id`, `applied_date`, `created_at`, `updated_at`) VALUES
(1, 56, 1, 31, '2025-06-18 12:08:29', '2025-06-18 12:08:29', '2025-06-18 12:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lupe Toy', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(2, 'Prof. Rey Huels DVM', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(3, 'Ralph Corwin', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(4, 'Dr. Hal Friesen', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(5, 'Libbie Moen III', 1, '2025-06-17 13:09:41', '2025-06-17 13:09:41');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_14_065849_create_categories_table', 1),
(6, '2024_11_14_065934_create_job_types_table', 1),
(7, '2024_11_14_070030_create_jobs_table', 1),
(8, '2024_11_16_091157_alter_jobs_table', 1),
(9, '2024_11_16_124149_add_add_column_jobs_table', 1),
(10, '2024_11_18_155513_create_job_applications_table', 1),
(11, '2024_11_20_084015_create_saved_jobs_table', 1),
(12, '2024_11_22_113408_add_new_column_users_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `user_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 1, 56, '2025-06-18 12:08:50', '2025-06-18 12:08:50');

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
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `designation`, `mobile`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'admin', 'SfSr7bR2sc', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(2, 'User', 'user@gmail.com', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', 'sLX6xI94E0EhDXMBLLuDuuJsQtc8O1J1nhKJvPr6iES05DRc9KEOzvy9dlai', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(3, 'Prof. Torrey Larson V', 'donato.rolfson@example.net', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', 'pEhTDSaNcW', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(4, 'Kaylin Prosacco', 'josh88@example.com', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', 'xogDVW0HoW', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(5, 'Mariana Gleason', 'sabryna99@example.net', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', 'YkxfBVIbD3', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(6, 'Dr. Lempi Abshire', 'gibson.bradley@example.org', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', 'VTDH8elU2P', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(7, 'Chadrick Runte', 'anne29@example.com', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', 'kkK2qm4qs9', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(8, 'Cornell Huel', 'kutch.danika@example.net', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', '6hl8d6Irrx', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(9, 'Landen Wehner II', 'ezekiel57@example.net', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', 'ffVknrozS1', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(10, 'Mr. Rasheed Tillman DDS', 'eliza95@example.org', '2025-06-17 13:07:25', '$2y$12$IHe88j0lpr5r7D5/8fZR2egh2ksjH3lfYpK1oMznAKZa1wL1Nvik2', NULL, NULL, NULL, 'user', 'v4w79sar5B', '2025-06-17 13:07:25', '2025-06-17 13:07:25'),
(11, 'Elta Schowalter', 'cschulist@example.net', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', 'I09BJE4EPI', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(12, 'Sydnie Weimann', 'maudie53@example.org', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', 'QpN95rFbun', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(13, 'Yadira Considine', 'weissnat.chris@example.net', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', 'hFU225bDlq', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(14, 'Dr. Mathew Russel III', 'micah82@example.com', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', '2W2lFmUyIE', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(15, 'Colby Robel', 'rmoore@example.net', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', 'YB5krx9XBJ', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(16, 'Katrine Jacobson', 'dallas01@example.com', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', 'HGPKWGiqHk', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(17, 'Prof. Mazie Berge', 'fkautzer@example.net', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', 'Ruj2E7LvTf', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(18, 'Marisol Huels', 'pdouglas@example.net', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', '9WxrhtXXur', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(19, 'Gino Daugherty', 'durgan.jaclyn@example.org', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', 'Tnv7Szt5mW', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(20, 'Stewart VonRueden V', 'koch.columbus@example.org', '2025-06-17 13:08:24', '$2y$12$j03H797c3W7Q5uTtCMOisexNzsxVL251ZEoP/KYiyutThk9J2nvia', NULL, NULL, NULL, 'user', 'i8seqo993U', '2025-06-17 13:08:24', '2025-06-17 13:08:24'),
(21, 'Miss Icie Corwin', 'daniel.letha@example.org', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', 'qYqNw3ray8', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(22, 'Zena Moen', 'green.tyrese@example.net', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', '9Vip2td63v', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(23, 'Adelle Herman', 'coleman96@example.com', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', 'QMJqswYC6L', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(24, 'Lavon Gusikowski V', 'hbashirian@example.com', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', 'G5v7WeUcp0', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(25, 'Helga Skiles', 'ankunding.kirsten@example.net', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', 'QOGWC5RKyY', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(26, 'Allene Goodwin V', 'jayda60@example.org', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', '2M3MKoN4Z2', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(27, 'Lea Bailey', 'hessel.susan@example.net', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', 'qO3sje25sr', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(28, 'Dimitri Effertz II', 'agusikowski@example.org', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', 'PT07CEzA7E', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(29, 'Ernestina Tillman', 'leuschke.estell@example.net', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', 'PdW5CjEoBT', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(30, 'Maggie Bins III', 'ana48@example.org', '2025-06-17 13:08:57', '$2y$12$0ad.w2915dEt9yk0.o2Kf.78ymkvAxS.Pfk5LYytFs9LQzh9/UXTW', NULL, NULL, NULL, 'user', 'fd39hXLjJd', '2025-06-17 13:08:57', '2025-06-17 13:08:57'),
(31, 'Ms. Viola Beer III', 'loyce02@example.org', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'x3x05ko4DV', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(32, 'Prof. Marianne Bernhard DVM', 'mara50@example.net', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'i8e8EK0GKC', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(33, 'Elyssa Lockman', 'wiegand.alayna@example.net', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'sCEgdX4tlT', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(34, 'Douglas Smith PhD', 'qrenner@example.org', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'GtIuI4pJ0R', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(35, 'Eddie Welch MD', 'rodrick.gusikowski@example.net', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'uKeXaD4jV4', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(36, 'Abagail Stracke', 'wboehm@example.net', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'WREQocaFfr', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(37, 'Milo Koch', 'jace64@example.net', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', '3zclECsXOL', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(38, 'Llewellyn Stiedemann', 'annalise08@example.org', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'jUx7uCREVi', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(39, 'Olga Frami', 'alize.fahey@example.net', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'wyze3uPTv9', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(40, 'Ms. Cayla Gorczany I', 'dhessel@example.net', '2025-06-17 13:09:41', '$2y$12$gr7RRsPcDDpge9bqze2w0.jf6zaCNsS5NjMmY5Q56RyWD6sXgvKMW', NULL, NULL, NULL, 'user', 'tR4IizsMRv', '2025-06-17 13:09:41', '2025-06-17 13:09:41'),
(41, 'Otha Baumbach PhD', 'mabel73@example.net', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', 'PVF4n3U7Dw', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(42, 'Trent Roob', 'arnoldo36@example.org', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', 'MPaFRd7IJq', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(43, 'Percy Gleason', 'considine.dax@example.net', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', 'OAZxMIBaDr', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(44, 'Clara Hamill', 'hschowalter@example.org', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', 'HkknBhWFmX', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(45, 'Providenci Altenwerth', 'nikolas.becker@example.org', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', 'qtNZEKlz5u', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(46, 'Ozella Wunsch', 'keanu93@example.com', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', '0xftZI4Aql', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(47, 'Jewell Miller', 'rasheed.hickle@example.org', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', 'MJzoJAhaiQ', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(48, 'Prof. Nils Little', 'eboyer@example.net', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', 'nnhFII5Om2', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(49, 'Rafaela Hettinger', 'mrohan@example.org', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', '2RpUSqdJvR', '2025-06-17 13:09:55', '2025-06-17 13:09:55'),
(50, 'Dexter Greenholt Sr.', 'kali.armstrong@example.com', '2025-06-17 13:09:55', '$2y$12$Ey6e9xCuWK3gT9LvPa.AOuJ6MvFUd0bBiHpJz5JGPN3PxgrYji6By', NULL, NULL, NULL, 'user', 'K843bZiltE', '2025-06-17 13:09:55', '2025-06-17 13:09:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `jobs_category_id_foreign` (`category_id`),
  ADD KEY `jobs_job_type_id_foreign` (`job_type_id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`),
  ADD KEY `job_applications_user_id_foreign` (`user_id`),
  ADD KEY `job_applications_employer_id_foreign` (`employer_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saved_jobs_user_id_foreign` (`user_id`),
  ADD KEY `saved_jobs_job_id_foreign` (`job_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`),
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `saved_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
