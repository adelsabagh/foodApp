-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 03:07 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Burger', NULL, NULL),
(2, 'Pizza', NULL, NULL),
(3, 'Steak', NULL, NULL),
(4, 'Dessert', NULL, NULL),
(5, 'Drinks', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `price`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Steak Burger', 'A steak burger is a type of sandwich prepared using steak as a primary ingredient.', 35.00, 'https://www.bonfilet.com.tr/productimages/107139/big/acgitsinyebitsinsteakburger.jpg', 1, NULL, NULL),
(2, 'Cheese Burger', 'Dill pickle chips, sliced red onion and tomato, crisp lettuce leaves, ketchup and mayo are also involved', 30.00, 'https://www.sargento.com/assets/Uploads/Recipe/Image/burger_0.jpg', 1, NULL, NULL),
(3, 'Mushroom Burger', 'Big, juicy Swiss Mushrooms Burgers are a mighty vegetarian burger that at first glance, looks like a beef burger! Large mushrooms are roasted with garlic butter, topped with Swiss cheese then stuffed into fully loaded soft rolls.', 32.00, 'https://static.onecms.io/wp-content/uploads/sites/52/2019/01/12/double-mushroom-cheeseburgers-1218-5d67571f-1.jpg', 1, NULL, NULL),
(4, 'Mexican Burger', 'Combine ground beef/beef mince with breadcrumbs and egg (this keeps the burgers juicy) and flavourings then form into burgers. Cook on a grill or in a hot pan until cooked to your preference then top with cheese slices and allow to melt.', 32.00, 'https://img.taste.com.au/PLLKgr7K/taste/2017/07/double-jalapeno-cheese-mexican-burgers-128402-1.jpg', 1, NULL, NULL),
(5, 'Margherita Pizza', 'Margherita is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt, and extra-virgin olive oil.', 40.00, 'https://cdn.yemek.com/mnresize/940/940/uploads/2014/09/pizza-margherita-tarifi-yeni-2018.jpg', 2, NULL, NULL),
(6, 'Funghi Pizza', 'Funghi is a variety of Italian pizza that is traditionally topped with tomato sauce, mozzarella cheese, mushrooms, oil, and parsley.', 45.00, 'https://www.milanopizza.com.tr/wp-content/uploads/2021/03/TREE-FUNGHI-1.jpg', 2, NULL, NULL),
(7, 'Vegetarian Pizza', 'vegetarian pizza recipe will delight vegetarians and carnivores alike. It\'s fresh and full of flavour, featuring cherry tomatoes, artichoke, bell pepper, olives, red onion and some hidden (and optional) baby spinach. You\'ll find a base of rich tomato sauce and golden, bubbling mozzarella underneath, of course.', 42.00, 'https://www.killingthyme.net/wp-content/uploads/2020/09/veggie-deluxe-pizza-5.jpg', 2, NULL, NULL),
(8, 'Chicago Pizza', 'Chicago-style pizza is pizza prepared according to several different styles developed in Chicago, widely referred to simply as deep-dish pizza due to its cooking style.', 50.00, 'https://cdn.getiryemek.com/restaurants/1615247747769_1125x522.jpeg', 2, NULL, NULL),
(9, 'Steak Au Poivre', 'Steak au Poivre, or pepper steak, is a classic French style steak. It\'s coated in crushed peppercorns that, when seared, creates a beautiful and crisp crust.', 60.00, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-210722-steak-poivre-01-portrait-jg-1627489681.jpg?crop=0.8335368335368335xw:1xh;center,top&resize=980:*', 3, NULL, NULL),
(10, 'Steak & Eggs', 'Name a better duo. We\'ll wait.', 50.00, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/20191219-seo-steak-eggs-delish-ehg-8986-jpg-1579900349.jpg?crop=1xw:1xh;center,top&resize=980:*', 3, NULL, NULL),
(11, 'Creamy Steak Fettuccine', 'It\'s meant to be.', 55.00, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/190409-creamy-steak-fettucine-vertical-2-1555596324.png?crop=1xw:1xh;center,top&resize=980:*', 3, NULL, NULL),
(12, 'Flank Steak with Chimichurri', 'Our chimichurri sauce is good on everything, but especially a flank steak.', 65.00, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-190606-chimichurri-052-portrait-pf-1560544415.jpg?crop=0.9997369113391213xw:1xh;center,top&resize=980:*', 3, NULL, NULL),
(13, 'Affogato', 'For a decadent and soul-warming dessert, look no further than this traditional Italian affogato.', 30.00, 'https://img.taste.com.au/-BrnXIJO/w720-h480-cfill-q80/taste/2016/11/affogato-16835-1.jpeg', 4, NULL, NULL),
(14, 'Napoleon', 'Napolean or Mille-feuille is a classic French pastry traditionally made of three layers of pastry and two layers of creme patissiere.', 35.00, 'https://img.taste.com.au/rE7Ld-gh/w720-h480-cfill-q80/taste/2016/11/napoleon-10469-1.jpeg', 4, NULL, NULL),
(15, 'Sticky Date Pudding', 'Warm sticky date pudding with sweet caramel sauce is the perfect winter dessert.', 35.00, 'https://img.taste.com.au/sagST9sq/w720-h480-cfill-q80/taste/2016/11/sticky-date-pudding-74775-1.jpeg', 4, NULL, NULL),
(16, 'Amaretto Brulee', 'Crack through a crispy caramelised sugar topping to the decadent amaretto pudding below.', 32.00, 'https://img.taste.com.au/FjDPuF5E/w720-h480-cfill-q80/taste/2016/11/amaretto-brulee-4613-1.jpeg', 4, NULL, NULL),
(21, 'Tea', 'Tea is an aromatic beverage prepared by pouring hot or boiling water over cured or fresh leaves of Camellia sinensis, an evergreen shrub native to China and other East Asian countries.', 10.00, 'https://theistanbulinsider.com/wp-content/uploads/2011/10/turkish-tea-glass-2.jpg', 5, NULL, NULL),
(22, 'Turkish Coffee', 'Turkish coffee is a style of coffee prepared in a cezve using very finely ground coffee beans without filtering.', 20.00, 'https://media-exp1.licdn.com/dms/image/C4E1BAQH2qoiheP8Uww/company-background_10000/0/1557830243763?e=2159024400&v=beta&t=Bq1n_qRDFvzkcqCD3W4bUie5m2YAIL50BKvXPDFn_-0', 5, NULL, NULL),
(23, 'Cola', 'Pepsi / CocaCola', 12.00, 'https://media.istockphoto.com/photos/pour-soft-drink-in-glass-with-ice-splash-on-dark-background-picture-id1062831310?b=1&k=20&m=1062831310&s=170667a&w=0&h=LZlme3y6aUiO7z__PMQNj1Zikfd2vs8UimNlzhroewQ=', 5, NULL, NULL),
(24, 'Mojito', 'combination of sweetness, citrus, and herbaceous mint flavors is intended to complement the rum, and has made the mojito a popular summer drink.', 25.00, 'https://alushlifemanual.com/wp-content/uploads/2020/04/Mojito-735x551.jpg', 5, NULL, NULL);

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2021_11_17_112505_create_categories_table', 1),
(12, '2021_11_17_113649_create_orders_table', 1),
(13, '2021_11_17_114451_create_items_table', 1),
(14, '2021_11_17_115351_create_order_items_table', 1),
(15, '2021_11_17_150348_create_branches_table', 2),
(16, '2021_11_27_112640_create_profiles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 0.00, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `quantity`, `price`, `order_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35.00, 2, 1, NULL, NULL),
(2, 1, 12.00, 2, 23, NULL, NULL);

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
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'adel', 'adel@test.com', NULL, '$2y$10$MZXBcm29mPS53sFgQ4s4gusG238pKPeB.5cRO4Pt461GETrwUSNJ2', 'WmblqT0RPO44vQTHQxpMlSpac2oy1SFfpTP5cWwTONLzonBBIEklORNDusRRTmaPaH8WhR3UgdD2eHUK', NULL, '2021-11-17 11:11:18', '2021-11-17 11:11:18'),
(2, 'admin', 'admin@test.com', NULL, '$2y$10$Q84aoM2n5spy3JQWyWowRuzdGBNB7bLtMVPg8i8lf4RRNbB5bThdq', 'zy6MwguRM4tWpsHPSKQWILtFhPkMZ5YgWyWEYuhkK9jtKiEa7ntn9RszSfqjnFNrBPs4GuEpsBY1Dzq5', NULL, '2021-11-17 13:41:22', '2021-11-17 13:41:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
