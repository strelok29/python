-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 03 Sep 2020 pada 14.53
-- Versi server: 5.7.31-cll-lve
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gopekcoi_sarirasa`
--
CREATE DATABASE IF NOT EXISTS `gopekcoi_sarirasa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `gopekcoi_sarirasa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `cover` text COLLATE latin1_bin,
  `title_id` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` tinyint(1) DEFAULT NULL COMMENT '1 = home , 2 = corporate profile , 3 = brands , 4 = news , 5 = contact , 6 = team'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `cover`, `title_id`, `title_eng`, `created_at`, `updated_at`, `type`) VALUES
(1, 'http://web-sarirasa.gopek.co.id/assets/images/Home%20Sarirasa%20Website.jpg', 'Citarasa Nusantara', 'The Taste of Indonesia', '2020-02-15 09:05:34', '2020-07-29 04:14:22', 1),
(2, 'https://cmssarirasa.sobatteknologi.com/assets/files/Banner/Web-Sari-Rasa_Our-Brand.jpg', 'Profil Perusahaan', 'Corporate Profile', '2020-02-15 09:05:34', '2020-02-17 07:49:51', 2),
(3, 'https://cmssarirasa.sobatteknologi.com/assets/files/Banner/Web-Sari-Rasa_Corporate-Profile.jpg', 'Merek Kami', 'Our Brands', '2020-02-15 09:05:34', '2020-02-17 07:57:12', 3),
(4, 'http://web-sarirasa.gopek.co.id/assets/images/Web-Sari-Rasa_News-%26-Event.jpg', 'Berita & Acara', 'News & Events', '2020-02-15 09:05:34', '2020-07-29 04:12:01', 4),
(5, 'https://cmssarirasa.sobatteknologi.com/assets/files/Banner/Web-Sari-Rasa_Contact-Us.jpg', 'Kontak Kami', 'Contact Us', '2020-02-15 09:05:34', '2020-02-17 08:01:07', 5),
(6, 'http://web-sarirasa.gopek.co.id/assets/images/Web-Sari-Rasa_Join-Our-Team.jpg', 'Karir', 'Join Our Team', '2020-02-15 09:05:34', '2020-07-28 09:17:12', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title_id` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `status` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `cover` text COLLATE latin1_bin,
  `sort_number` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id`, `title_id`, `title_eng`, `description_id`, `description_eng`, `status`, `cover`, `sort_number`, `created_at`, `updated_at`) VALUES
(3, 'Sarirasa Group: Keberlanjutan Dimulai bersama Kami', 'Sarirasa Group: Sustainibility Start with Us', '<p>Lautan mengandung keanekaragaman hayati terbesar di bumi. Puing-puing plastik menyebabkan kematian lebih dari satu juta burung laut setiap tahun, serta lebih dari 100.000 mamalia laut.</p>\r\n\r\n<p>Kami berkomitmen untuk berkontribusi menjaga kelestarian bumi dengan mengurangi pemakaian plastik (dimulai dari sedotan, sendok take-away dan tas belanja) di outlet kami. Untuk itu, kami menghimbau customer kami untuk membawa tas belanja serta peralatan makan ramah lingkungan.</p>\r\n\r\n<p>Namun, tentu saja kami akan terus berupaya untuk tetap memenuhi kebutuhan Anda dengan menyediakan sendok kayu<strong>*</strong>, sedotan bambu<strong>* </strong>dan tas belanja kertas<strong>*</strong> dengan biaya tambahan.  </p>\r\n\r\n<p>Tindakan sekecil apapun dapat menghasilkan perubahan yang positif. Bersama mari kita tingkatkan gaya hidup ramah lingkungan. Dengan ini kami percaya kita bisa menjadikan dunia lebih baik lagi. </p>\r\n\r\n<p><strong>*</strong>Kebijakan dan ketersediaan produk berbeda di masing masing outlet.<br />\r\n  Kami melakukan perubahan secara bertahap.</p>\r\n', '<p>Oceans contain the greatest diversity of life on Earth. Plastic debris causes the deaths of more than a million seabirds every year, as well-as more than 100,000 marine mammals.</p>\r\n\r\n<p>We\'re committed to saving the planet by reducing the use of plastics, which includes straws, take-away spoons and plastics bags, in our outlets. Therefore, we humbly encourage our customers to bring their own bags and eco-friendly equipment when visiting our outlets. </p>\r\n\r\n<p>As part as our commitments to deliver excellent customer service, we have also prepared wooden spoons<strong>*</strong>, paper straws<strong>*</strong> and paper bags<strong>*</strong> with additional charges.</p>\r\n\r\n<p>Every effort counts, no matter how small, when we try to make positive changes. Let\'s practice a more eco-firendly lifestyle. We believe we can make the world a better places.</p>\r\n\r\n<p><strong>*</strong>Policies and products availability vary depending on the outlets as we gradually make changes.</p>\r\n', 'publish', 'http://web-sarirasa.gopek.co.id/assets/images/Sarirasa%20Zero%20Waste%20Program.jpg', 0, '2020-02-10 04:22:37', '2020-07-28 08:49:43'),
(4, 'Driver Gathering bersama GOJEK', 'Driver Gathering bersama GOJEK', '<p>Sarirasa Group mengundang para pengemudi Go Food untuk menikmati santap siang bersama di Sate Khas Senayan, TeSaTe dan Gopek sebagai bentuk ucapan terima kasih dan apresiasi kepada para pengemudi. Acara Driver Gathering ini berlangsung selama 3 hari mulai tanggal 13 -15 Agustus 2019. </p>\r\n\r\n<p>Melalui acara ini, Sarirasa Group ingin berterima kasih untuk kontribusi yang  telah diberikan oleh para pengemudi Go Food dalam memperkuat Sarirasa Group. Sarirasa Group tidak akan mencapai titik ini tanpa bantuan dan dukungan para pengemudi Go Food. Semoga para pengemudi menikmati setiap rasa Indonesia yang kami kisahkan melalui makanan dan minuman yang disajikan.</p>\r\n', '<p>Sarirasa Group mengundang para pengemudi Go Food untuk menikmati santap siang bersama di Sate Khas Senayan, TeSaTe dan Gopek sebagai bentuk ucapan terima kasih dan apresiasi kepada para pengemudi. Acara Driver Gathering ini berlangsung selama 3 hari mulai tanggal 13 -15 Agustus 2019. </p>\r\n\r\n<p>Melalui acara ini, Sarirasa Group ingin berterima kasih untuk kontribusi yang  telah diberikan oleh para pengemudi Go Food dalam memperkuat Sarirasa Group. Sarirasa Group tidak akan mencapai titik ini tanpa bantuan dan dukungan para pengemudi Go Food. Semoga para pengemudi menikmati setiap rasa Indonesia yang kami kisahkan melalui makanan dan minuman yang disajikan.</p>\r\n', 'publish', 'http://web-sarirasa.gopek.co.id/assets/images/Driver%20Gathering%20GOJEK%20Sarirasa%2045%20Tahun.jpg', 1, '2020-02-10 04:30:52', '2020-07-29 03:56:43'),
(5, ' 45 Tahun Sarirasa', 'Sarirasa 45th Anniversary', '<p>Dikaruniai begitu banyak ragam budaya yang tersebar di 17.000 pulau dan 300 kelompok etnis, Indonesia berkelimpahan akan citaras akuliner. Berawal dari hasrat untuk menjaga, melestarikan, serta mewariskan kekayaan citarasa negeri ini, kami mendirikan Grup Sarirasa pada tahun 1974.</p>\r\n\r\n<p>Empat puluh lima tahun sudah kami hadir. Di bawah naungan kami telah lahir tiga label dengan nama Sate Khas Senayan, Tesate, dan Gopek. Sepanjang perjalanan kami, tak terhitung banyaknya rasa dan cerita yang tersalur melalui setiap lidah yang mengecap dan kata yang terucap. </p>\r\n\r\n<p>Kami menyaksikan momen-momen ketika perbedaan dikesampingkan dan kenangan manis kerap dibisikkan dari generasi ke generasi. Diringi oleh berbagai nasihat dan semangat perubahaan untuk masa depan yang lebih baik, termasuk komitmen kami untuk mengurangi sampah.</p>\r\n\r\n<p>Sebagai bentuk apresiasi kami atas perjalanan yang telah kita lalui bersama dan ucapan harapan untuk kebersamaan yang tak lekang oleh waktu, bertepatan denga hari jadi kami yang ke-45 ini, kami hendak mengundang Anda berbagi sukacita dengan <strong>#BerbagiCeritaTentangRasa</strong>.</p>\r\n', '<p>Culturally diverse with 300 ethnic groups spread across 17,000 islands, Indonesia is equally blessed with rich culinary heritage. Perceiving this heritage as a treasure that needs to be preserved and shared for the whole world to taste, we started Sarirasa Group in1974.</p>\r\n\r\n<p>Forty-five years have passed, and three children were born; Sate Khas Senayan, Tesate, and Gopek. Together as a family, we have shared authentic Indonesian flavours that stood against time for decades. Along this journey, we have witnessed many heartwarming moments shared between you and your family. Connections that were made, differences that were put aside, and funny stories that were told and retold.</p>\r\n\r\n<p>Moments of utmost joy and words filled with wisdom, all passed down from a generation to countless generation to come. The wisdom that inspired us to change for the better, including our commitment to go zero waste, one step at a time. To celebrate those flavourful moments in the past and many more to come in the future, we are inviting you to join our 45th Anniversary with <strong>#BerbagiCeritaTentangRasa</strong>. </p>\r\n', 'publish', 'http://web-sarirasa.gopek.co.id/assets/images/Sarirasa%2045%20Tahun%20Anniversary.jpg', 2, '2020-02-10 04:34:51', '2020-07-29 03:57:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `cover` text COLLATE latin1_bin,
  `icon` text COLLATE latin1_bin,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `external_url` text COLLATE latin1_bin,
  `sort_number` int(11) DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `cover`, `icon`, `description_id`, `description_eng`, `external_url`, `sort_number`, `status`, `created_at`, `updated_at`) VALUES
(5, 'http://web-sarirasa.gopek.co.id/assets/images/Sate%20Khas%20Senayan%20Brand%20Sarirasa.png', 'https://cmssarirasa.sobatteknologi.com/assets/files/Senayan.png', '<p>Dengan berpegangan pada semangat “Tradisi Kelezatan yang Abadi”, <strong>Sate Khas Senayan</strong> menggabungkan resep tradisional dengan penelitian dan inovasi yang menghasilkan citarasa asli Indonesia yang konsisten. Didirikan juga pada tahun 1974, <strong>Sate Express Senayan </strong>didirikan untuk melayani para pengunjung yang menginginkan makanan berkualitas dengan harga yang lebih terjangkau. <strong>Sate & Seafood Senayan</strong> merupakan konsep terbaru dari Sarirasa, para pecinta kuliner diajak untuk mengalami sebuah petualangan baru dengan hidangan laut yang segar dalam berbagai citarasa Jawa dan Bali.</p>\r\n', '<p>Taking “A Savory Cuisine of Timeless Tradition” as its spirit, <strong>Sate Khas Senayan</strong> combines traditional recipes, research and innovation, resulting in consistent yet authentic delicious Indonesian flavors. Established also in 1974, <strong>Sate Express Senayan</strong> was founded to cater customers who want good quality food in affordable prices. <strong>Sate & Seafood Senayan</strong> is the company’s latest venture, brings food enthusiasts to new adventures as it serves live seafood with the choices of Javanese or Balinese flavours. </p>\r\n', 'https://sks.sarirasa.co.id/', 0, 'publish', '2020-02-13 04:33:10', '2020-07-29 03:46:43'),
(6, 'https://cmssarirasa.sobatteknologi.com/assets/files/Banner/Web-Sari-Rasa_Our-Brand_TeKoTe_TeSaTe_552x456px_rev.png', 'https://cmssarirasa.sobatteknologi.com/assets/files/tekote%20tesate.png', '<p><strong>TeSaTe</strong> ingin memperkenalkan kekayaan dan keragaman lanskap kuliner Indonesia kepada dunia. Berbagai pilihan sajian terbaik dari seluruh penjuru Nusantara ditafsirkan dengan secara kreatif di dalam menunya, termasuk hidangan paling unik dan langka. <strong>TeKoTe</strong> memiliki tujuan dan visi yang sama dengan brand induknya, namun lebih mengedepankan minuman, camilan, dan makanan penutup khas daerah.</p>\r\n', '<p><strong>TeSaTe</strong> was establish with the aim to introduce the richness of Indonesia’s culinary diversity to the world through a creative interpretation of the finest Indonesian cuisine selected from across the archipelago. Aligning with the vision of parent brand TeSaTe, <strong>TeKoTe</strong> seeks to reinvent traditional Indonesian snacks, drinks and desserts.</p>\r\n', 'https://tesate.sarirasa.co.id/', 1, 'publish', '2020-02-13 04:35:04', '2020-05-06 10:26:39'),
(7, 'http://web-sarirasa.gopek.co.id/assets/images/Gopek%20Brands%20Sarirasa%20Group.png', 'https://cmssarirasa.sobatteknologi.com/assets/files/Gopek.png', '<p><strong>Gopek </strong>hadir untuk memuaskan pecinta kuliner berusia muda dengan berbagai hidangan Peranakan Indonesia yang lezat. <strong>Gopek House</strong> didirikan pada tahun 2019, berfokus pada hidangan Peranakan Indonesia yang biasanya disajikan di meja makan, terdiri dari makanan laut, daging atau ayam. Berbeda dengan Gopek lainnya, <strong>Gopek Express </strong>menawarkan makanan siap saji dengan paket yang lebih terjangkau, dilengkapi dengan menu a la carte serta paket menu dengan minuman.</p>\r\n', '<p><strong>Gopek</strong> is set to satisfy young food enthusiasts with delicious Indonesian Peranakan dishes. <strong>Gopek House</strong> establish in 2019, which highlights Indonesian Peranakan comfort food that are usually served on the dining tables consist of seafood, meat or chicken. Unlike the original Gopek, <strong>Gopek Express</strong> offers ready-to-go food and affordable packages, featuring both a la carte and set menus with the latter comes with drink. </p>\r\n', 'https://www.instagram.com/gopekrestaurant/', 2, 'publish', '2020-02-13 04:37:43', '2020-07-29 03:53:00'),
(8, 'https://cmssarirasa.sobatteknologi.com/assets/files/Sarirasa%20Catering%20Brand%20Sarirasa.jpg', 'https://cmssarirasa.sobatteknologi.com/assets/images/Logo-logo-Website-Sarirasa_Our-Brand_Tinggi-109px_Catering.png', '<p>Menyadari bahwa makanan tidak dapat terpisahkan dari budaya Indonesia, <strong>Sarirasa Catering</strong> hadir memberikan cita rasa warisan kuliner terbaik Indonesia khususnya dalam hal makan bersama. Sarirasa Catering menawarkan dua jenis layanan, yaitu <em>In-house </em>dan <em>Outside Catering</em>. Selain layanan yang telah disebutkan, Sarirasa Catering juga menyediakan layanan take away untuk dibawa pulang bagi porsi besar.</p>\r\n', '<p>Realizing that food cannot be separated from Indonesian culture, <strong>Sarirasa Catering </strong>serves to highlight the best of Indonesian culinary heritage, particularly in terms of communal eating. Sarirasa Catering offers two types of services, In-house and Outside Caterings. In addition to the aforementioned services, Sarirasa Catering also provides take-away services for large orders.</p>\r\n', 'https://www.instagram.com/thesarirasacatering/', 3, 'publish', '2020-02-13 05:04:04', '2020-02-24 08:11:59'),
(9, 'http://web-sarirasa.gopek.co.id/assets/images/Foodiesia%20Brand%20Sarirasa%20Risol.png', 'https://cmssarirasa.sobatteknologi.com/assets/files/Banner/Logo%20Foodiesia.png', '<p><strong>Foodiesia</strong> hadir dengan menawarkan berbagai makanan ringan tradisional yang lezat meliputi potongan kue, minuman, dan lainnya. Berbagai macam makanan ringan dan minuman di Foodiesia disiapkan dalam batch kecil untuk menjaga kesegarannya sepanjang hari, semua dibuat dengan sempurna untuk dinikmati dengan secangkir teh di rumah atau disajikan sebagai hadiah untuk orang yang dicintai maupun sebagai makanan ringan untuk melengkapi pertemuan. </p>\r\n', '<p><strong>Foodiesia</strong> sets the world alight with its extraordinary variety of delectable traditional tidbits and morsels, cakes, cookies, drinks and other delights to choose from. The extensive variety of snacks and beverages at Foodiesia are prepared in small batches to maintain their freshness throughout the day, all perfectly crafted to have with a cup of tea at home and be presented as a gift for loved ones or as a snack box for meetings. </p>\r\n', 'https://www.instagram.com/foodiesia/', 5, 'publish', '2020-02-13 05:06:25', '2020-07-29 03:42:47'),
(10, 'https://cmssarirasa.sobatteknologi.com/assets/images/Bale%20Nusa%20Sarirasa%20Brand.jpg', 'https://cmssarirasa.sobatteknologi.com/assets/images/Logo-logo-Website-Sarirasa_Our-Brand_Tinggi-109px_Balenusa.png', '<p><strong>Bale Nusa</strong> merupakan sebuah tempat yang ideal untuk menggelar berbagai jenis resepsi, seperti pesta pernikahan atau pertunangan, acara untuk perusahaan, dan lain-lain. Bale Nusa dilengkapi dengan pilihan menu dari Sarirasa Catering yang mengedepankan kombinasi kelezatan tradisional khas Sarirasa Group dan pelayanan sajian terbaik dari Indonesia.</p>\r\n', '<p>As an event space, <strong>Bale Nusa</strong> is the perfect venue to hold a variety of events, varying from celebratory events, such as weddings or engagement parties, to corporate events, including corporate gatherings and more. The menu is among the greatest advantages of holding events in Bale Nusa, managed by Sarirasa Catering, customers will be able to choose any delicious dish served by all the brands under Sarirasa Group.</p>\r\n', 'https://www.instagram.com/balenusa_/', 4, 'publish', '2020-02-24 08:10:19', '2020-07-28 08:16:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `company_overview`
--

CREATE TABLE `company_overview` (
  `id` int(11) NOT NULL,
  `logo` text COLLATE latin1_bin,
  `title_id` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `sub_title_id` text COLLATE latin1_bin,
  `sub_title_eng` text COLLATE latin1_bin,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `company_overview`
--

INSERT INTO `company_overview` (`id`, `logo`, `title_id`, `title_eng`, `sub_title_id`, `sub_title_eng`, `description_id`, `description_eng`, `created_at`, `updated_at`) VALUES
(1, 'https://cmssarirasa.sobatteknologi.com/assets/files/brand-new.png', 'Gambaran Perusahaan', 'Company Overview', 'Sarirasa Group didirikan dengan tujuan untuk menjadi katalis dalam memperkenalkan, menghormati, melestarikan, dan mempromosikan warisan kuliner Indonesia.', 'Sarirasa Group was founded with the aim to be a catalyst in introducing, honoring, preserving, and promoting Indonesian’s culinary heritage.', '<p>Sarirasa Group diharapkan dapat menjadi perusahaan terkemuka dalam mengembangkan restoran yang menyajikan resep Indonesia  yang tidak hanya otentik tetapi juga modern. Sarirasa Group menghadirkan merek-merek yang lestari di tengah kemajuan tren yang berkembang pesat di dunia kuliner.</p>\r\n', '<p>Sarirasa Group is intended to be a preeminent company in developing restaurants which serve time-honored Indonesian recipes that are not only authentic but also modern. Sarirasa Group presents long-lasting brands that not wither despite the fast evolving trend in the culinary world and be open minded about it. </p>\r\n', NULL, '2020-07-28 06:33:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(11) NOT NULL,
  `title_id` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `sub_title_id` text COLLATE latin1_bin,
  `sub_title_eng` text COLLATE latin1_bin,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `type_video` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `introduce_video` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `company_profile`
--

INSERT INTO `company_profile` (`id`, `title_id`, `title_eng`, `sub_title_id`, `sub_title_eng`, `description_id`, `description_eng`, `type_video`, `introduce_video`, `created_at`, `updated_at`) VALUES
(1, 'Semangat Sarirasa', 'The Spirit of Sarirasa', 'Perjalanan melestarikan masakan tradisional Indonesia tidaklah mudah, kami memberanikan diri untuk menjadi pelopor dalam perjalanan yang penuh tantangan ini. ', 'While knowing the journey of preserving traditional Indonesian cuisine would not be easy, we embraced ourselves to take the first step in the challenging journey.', '<p>Setiap sudut Indonesia telah menjadi insprirasi bagi kami. Dalam setiap langkah yang kami ambil, berkarya selama puluhan tahun. Ketika kami menyusun setiap cerita dalam naskah kehidupan yang terus menerus kami tuliskan. Kami ingin terus berkembang dan berbakti. Agar dapat menjadi perpanjangan tangan Indonesia kepada dunia.</p>\r\n', '<p>Every edge of Indonesia has become our biggest inspiration. In every step that we take, in this years and years of journey. In every story that we composed in this manuscript of life. We are committed to always strive to be better than we are yesterday. In hope to unveil the wonders of Indonesia to the rest of the world.</p>\r\n', 'video', 'adbb471b78c7a34cd638f223df93128b.mp4', NULL, '2020-08-19 13:38:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_team`
--

CREATE TABLE `contact_team` (
  `id` int(11) NOT NULL,
  `title_id` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `email` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `type` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `contact_team`
--

INSERT INTO `contact_team` (`id`, `title_id`, `title_eng`, `description_id`, `description_eng`, `email`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Kontak Kami', 'Contact Us', '<p>Kami senantiasa mendengarkan pelanggan kami. Pertanyaan, komentar dan umpan balik akan selalu diperkenankan.<br />\r\nUntuk pertanyaan umum, Anda dapat mengirimkan email kepada kami atau cukup mengisi formulir di bawah ini.<br />\r\nKami berusaha sebaik mungkin untuk memberikan respon cepat kepada Anda.</p>\r\n', '<p>We love hearing from our customers! Questions, comments and feedback are always welcome.<br />\r\nFor general inquiries you can send us an email or simply fill in the form below.<br />\r\nWe’ll do our best to reply as quickly as possible.</p>\r\n', 'age.stbdi16@gmail.com', 'contact', '2020-02-14 22:28:50', '2020-09-03 07:13:26'),
(2, 'Karir', 'Join Our Team', '<p>Kami mencari orang-orang berbakat dan termotivasi untuk bergabung dengan tim kami.<br />\r\nJika Anda memiliki keinginan untuk berkarir bersama kami, Anda dapat mengisi formulir di bawah ini atau kirimkan lamaran Anda ke:</p>\r\n', '<p>We believe that our greatest strength lies within our people. We’re always on the lookout for talented, motivated people to join our team.<br />\r\nIf you have a passion to excel and would like a career with us, please simply fill in the form below or send your application to:</p>\r\n', 'age.stbdi16@gmail.com', 'team', '2020-02-14 22:28:50', '2020-09-03 07:11:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `corporate_mission`
--

CREATE TABLE `corporate_mission` (
  `id` int(11) NOT NULL,
  `logo` text COLLATE latin1_bin,
  `title_id` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `sub_title_id` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `sub_title_eng` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `corporate_mission`
--

INSERT INTO `corporate_mission` (`id`, `logo`, `title_id`, `title_eng`, `sub_title_id`, `sub_title_eng`, `description_id`, `description_eng`, `created_at`, `updated_at`) VALUES
(1, 'http://web-sarirasa.gopek.co.id/assets/images/Sarirasa%20Group%20The%20Beginning.jpg', 'Awal Mula', 'The Beginning', 'c', 'd', '<p>Keyakinan akan masa depan kuliner Indonesia yang bergantung pada penghormatan, pelestarian, dan peningkatan warisannya melandasi berdirinya Sarirasa Group. Kami menyadari bahwa langkah apa pun - tidak peduli seberapa kecil - masih merupakan langkah maju bagi kuliner Indonesia untuk mendapatkan pengakuan yang layak di dunia internasional. </p>\r\n\r\n<p>Perjalanan untuk melestarikan kuliner Indonesia bukanlah hal yang mudah, tetapi kami menerima tantangan ini dengan mengambil langkah awal untuk memenuhi aspirasi tersebut. Bukan berarti kami merasa terlalu percaya diri, tetapi lebih sebagai keyakinan akan kapasitas dan kualitas kuliner Indonesia untuk dapat bersinar cemerlang dengan sendirinya.</p>\r\n', '<p>Our firm belief that the future of Indonesian cuisine depends on honoring, preserving and promoting its heritage led to the establishment of Sarirasa Group. We have come to realize that any step – no matter how small – is still a step forward in the right direction for Indonesian cuisine to earn the global recognition that it deserves. </p>\r\n\r\n<p>The journey towards achieving total preservation of Indonesian cuisine is not a walk in a park, but we have embraced the challenge by taking the first step in order to fulfill our aspiration. This does not mean that we are overconfident, but rather due to our faith in the capacity and fulsomeness of Indonesian cuisine that it could shine on its own.</p>\r\n', '2020-02-06 04:57:54', '2020-07-28 06:42:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `corporate_vision`
--

CREATE TABLE `corporate_vision` (
  `id` int(11) NOT NULL,
  `logo` text COLLATE latin1_bin,
  `title_id` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `sub_title_id` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `sub_title_eng` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `corporate_vision`
--

INSERT INTO `corporate_vision` (`id`, `logo`, `title_id`, `title_eng`, `sub_title_id`, `sub_title_eng`, `description_id`, `description_eng`, `created_at`, `updated_at`) VALUES
(1, 'http://web-sarirasa.gopek.co.id/assets/images/Sarirasa%20Group%20Our%20Vision.jpg', 'Visi Kami', 'Our Vision', 'c', 'd', '<p>Sarirasa Group didirikan dengan tujuan untuk menjadi katalis dalam memperkenalkan, menghormati, melestarikan, dan mempromosikan warisan kuliner Indonesia. Tujuan utama kami adalah untuk menjadi perusahaan yang terdepan dalam mengembangkan usaha restoran yang menyajikan hidangan yang disiapkan dengan menggunakan resep-resep tradisional maupun modern yang tak lekang oleh waktu.</p>\r\n', '<p>Sarirasa Group was founded with the aim of becoming the catalyst that can introduce, honor, preserve and promote Indonesia’s culinary heritage. Our main intention is to become the leading company that thrives in developing restaurants serving food prepared using time-honored recipes that are not only authentic but also modern as well.</p>\r\n', '2020-02-06 04:50:30', '2020-07-29 04:34:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas_web`
--

CREATE TABLE `identitas_web` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `favicon` text COLLATE latin1_bin,
  `title` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `logo` text COLLATE latin1_bin,
  `email` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `phone` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `instagram` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `facebook` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `whatsapp` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `line` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `footer_text` text COLLATE latin1_bin,
  `address` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `identitas_web`
--

INSERT INTO `identitas_web` (`id`, `name`, `favicon`, `title`, `logo`, `email`, `phone`, `instagram`, `facebook`, `whatsapp`, `line`, `footer_text`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Sarirasa Group', NULL, 'Sarirasa Group ', 'https://cmssarirasa.sobatteknologi.com/assets/images/sarirasa.png', 'customerservice@sarirasa.co.id', '6221-536766530', 'sarirasa.group', '', '628999442655', '@azizarizaldi', 'Copyright 2020 © Sarirasa Group, All Right Reserved', 'Jalan KS Tubun No. 23, Petamburan, Tanah Abang, Jakarta Pusat 10260', '2020-01-19 23:44:07', '2020-07-28 06:24:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_menu`
--

CREATE TABLE `level_menu` (
  `id` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `read` tinyint(1) DEFAULT '1',
  `create` tinyint(1) DEFAULT '0',
  `update` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0',
  `urutan` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `level_menu`
--

INSERT INTO `level_menu` (`id`, `id_role`, `id_menu`, `read`, `create`, `update`, `delete`, `urutan`, `created_at`) VALUES
(1, 1, 1, 1, 0, 0, 0, 1, NULL),
(2, 1, 2, 1, 1, 1, 1, 3, NULL),
(3, 1, 5, 1, 1, 1, 1, 4, NULL),
(5, 1, 3, 1, 1, 1, 1, 1, NULL),
(6, 1, 4, 1, 1, 1, 1, 1, NULL),
(7, 1, 6, 1, 1, 1, 1, 3, NULL),
(8, 1, 7, 1, 1, 1, 1, 1, NULL),
(9, 1, 8, 1, 1, 1, 1, 2, NULL),
(11, 1, 10, 1, 1, 1, 1, 2, NULL),
(12, 1, 11, 1, 1, 1, 1, 3, NULL),
(13, 1, 12, 1, 1, 1, 1, 5, NULL),
(14, 1, 13, 1, 1, 1, 1, 6, NULL),
(16, 1, 14, 1, 1, 1, 1, 7, NULL),
(17, 1, 15, 1, 1, 1, 1, 8, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `nama` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `url` text COLLATE latin1_bin,
  `deskripsi` text COLLATE latin1_bin,
  `icon` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_bin DEFAULT NULL COMMENT 'draft,active',
  `target_blank` int(11) DEFAULT NULL COMMENT '0,1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `type_menu` varchar(30) COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `nama`, `url`, `deskripsi`, `icon`, `status`, `target_blank`, `created_at`, `updated_at`, `type_menu`) VALUES
(1, 0, 'Dashboard', 'azardi/', 'Ini adalah dashboard untuk admin', 'fe fe-activity', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(2, 0, 'Corporate Profile', '-', NULL, 'fe fe-align-justify', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(3, 0, 'Website Profile', 'azardi/identitas', 'Menu ini digunakan untuk melakukan setting identitas website', 'fe fe-home', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(4, 2, 'Vision', 'azardi/vision', 'Menu ini digunakan untuk setting banner website', 'fe fe-minus', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(5, 0, 'News & Events', 'azardi/blog', 'Menu ini digunakan untuk mengelola data artikel', 'fe fe-edit', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(6, 2, 'Milestone', 'azardi/milestone', NULL, 'fe fe-minus', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(7, 0, 'Company Profile', 'azardi/company_profile', NULL, 'fe fe-clipboard', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(8, 0, 'Company Overview', 'azardi/company_overview', NULL, 'fe fe-clipboard', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(10, 2, 'Mission', 'azardi/mission', NULL, 'fe fe-minus', 'active', 0, '2019-12-15 18:19:33', '2020-02-06 06:59:02', 'backend'),
(11, 0, 'Our Brands', 'azardi/brands', NULL, 'fe fe-tag', 'active', 0, '2019-12-15 18:19:33', '2020-02-11 18:39:13', 'backend'),
(12, 0, 'Contact Us', 'azardi/contact', NULL, 'fe fe-grid', 'active', 0, '2019-12-15 18:19:33', '2020-02-14 23:26:15', 'backend'),
(13, 0, 'Join Our Team', 'azardi/team', NULL, 'fe fe-users', 'active', 0, '2019-12-15 18:19:33', '2020-02-14 23:26:38', 'backend'),
(14, 0, 'Rewards', 'azardi/rewards', NULL, 'fe fe-heart', 'active', 0, '2019-12-15 18:19:33', '2020-02-15 00:23:42', 'backend'),
(15, 0, 'Setting Banner', 'azardi/banner', NULL, 'mdi mdi-image', 'active', 0, '2019-12-15 18:19:33', '2020-02-15 05:44:04', 'backend');

-- --------------------------------------------------------

--
-- Struktur dari tabel `milestone`
--

CREATE TABLE `milestone` (
  `id` int(11) NOT NULL,
  `cover` text COLLATE latin1_bin,
  `periode` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `milestone`
--

INSERT INTO `milestone` (`id`, `cover`, `periode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'http://web-sarirasa.gopek.co.id/assets/images/Sarirasa%20Group%201974%20Sate%20Khas%20Senayan.jpg', '1974', 'publish', '2020-02-05 16:31:39', '2020-07-28 06:46:31'),
(2, 'https://cmssarirasa.sobatteknologi.com/assets/files/Sarirasa%20Group%20Catering%201975%20Timeline.jpg', '1975', 'publish', '2020-02-05 16:33:27', '2020-02-14 07:11:29'),
(3, 'https://cmssarirasa.sobatteknologi.com/assets/files/Sate%20Express%20Senayan%20Timeline.jpg', '2005', 'publish', '2020-02-05 16:56:40', '2020-02-14 07:11:52'),
(5, 'https://cmssarirasa.sobatteknologi.com/assets/files/TeSaTe%20Timeline.jpg', '2008', 'publish', '2020-02-13 04:04:57', '2020-02-14 07:12:10'),
(6, 'https://cmssarirasa.sobatteknologi.com/assets/files/Gopek%20Timeline.jpg', '2017', 'publish', '2020-02-13 04:06:43', '2020-02-14 07:12:31'),
(7, 'https://cmssarirasa.sobatteknologi.com/assets/files/Sate%20and%20Seafood%20Timeline.jpg', '2018', 'publish', '2020-02-13 04:09:48', '2020-02-14 07:12:42'),
(8, 'https://cmssarirasa.sobatteknologi.com/assets/files/Tekote%20Timeline.jpg', '2019', 'publish', '2020-02-13 04:12:10', '2020-02-14 07:12:52'),
(9, 'https://cmssarirasa.sobatteknologi.com/assets/files/Gopek%20House%202020%20Timeline%20Sarirasa.jpg', '2020', 'publish', '2020-02-13 04:21:13', '2020-02-14 07:13:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `milestone_detail`
--

CREATE TABLE `milestone_detail` (
  `id` int(11) NOT NULL,
  `id_milestone` int(11) DEFAULT NULL,
  `title_id` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `milestone_detail`
--

INSERT INTO `milestone_detail` (`id`, `id_milestone`, `title_id`, `title_eng`, `description_id`, `description_eng`, `created_at`, `updated_at`) VALUES
(1, 1, 'Langkah Pertama', 'The First Step', 'Langkah pertama Sarirasa Group ditandai dengan peluncuran Satay House Senayan, yang kemudian berganti nama menjadi Sate Khas Senayan. Gerai pertama kami berada di Jalan Pakubuwono, Jakarta Selatan.', 'Sarirasa Group\'s first step was marked by the launching of Satay House Senayan, which later changed its name to Sate Khas Senayan. The first store was on Jalan Pakubuwono, South Jakarta.', '2020-02-05 16:31:39', '2020-07-28 06:47:01'),
(2, 2, 'Merintis Bisnis Katering', 'Entering The Catering Business', 'Seiring meningkatnya permintaan layanan makanan di luar restoran, Sarirasa Group kemudian memperluas bisnisnya melalui penawaran jasa katering secara penuh yang meliputi menu hidangan prasmanan, acara khusus dan menu khusus sepanjang tahun.  ', 'Due to the rising demand for food service outside the restaurants, Sarirasa Group began to expand its wings by offering a full-catering service, which includes buffet menus, customized events and all-year round specialty menus.', '2020-02-05 16:33:28', '2020-02-28 03:47:27'),
(6, 3, 'Pembukaan Sate Express Senayan', 'Opening of Sate Express Senayan', 'Sate Express Senayan merupakan perpanjangan dari Sate Khas Senayan. Didirikan untuk melayani para pengunjung yang menginginkan makanan berkualitas dengan harga yang lebih terjangkau. Gerai Sate Express Senayan terdapat di lokasi food court di dalam pusat perbelanjaan, membuat para pengunjung lebih  mudah menikmati makanan cepat dan lezat dalam suasana yang santai dan nyaman. ', 'Sate Express Senayan is the extension of Sate Khas Senayan, serving simpler and cheaper food menu. Focusing on customers who wish for value, convenience and speed of service, Sate Express Senayan is available in the food courts located inside shopping mall.', '2020-02-05 18:59:28', '2020-02-28 03:06:58'),
(9, 1, 'Sate Khas Senayan', 'Sate Khas Senayan', 'Sejak awal didirikan, Sate Khas Senayan menspesialisasikan diri dalam menyajikan berbagai hidangan yang berasal dari pulau Jawa. Selain dari itu, karena masakan Bali adalah masakan yang juga telah banyak dikenal, Sate Khas Senayan memutuskan untuk menyajikan hidangan yang kaya akan budaya dari Pulau Dewata ini kepada lebih banyak lagi pecinta kuliner.', 'Since the beginning, Sate Khas Senayan has been specialized in serving Javanese dishes. Meanwhile, since Balinese cuisine is another dominant cuisine, Sate Khas Senayan considered that it was the time to bring up the culturally-rich dishes from the Island of the Gods to food enthusiasts. ', '2020-02-13 03:54:21', '2020-02-20 15:08:12'),
(10, 5, 'Memperkenalkan TeSaTe', 'Introducing TeSaTe', 'Sarirasa menambahkan anggota keluarga baru ke dalam grup dengan peluncuran TeSaTe. Gerai pertama TeSaTe terletak di Plaza Senayan, Jakarta Selatan.\n\nTeSaTe merupakan pilihan yang tepat untuk merayakan momen spesial dengan hidangan tradisional yang menyenangkan, serta memperkenalkan kekayaan dan keragaman dunia kuliner tradisional Indonesia kepada rekan atau kenalan yang berasal dari bangsa yang berbeda.', 'Sarirasa added new family member to the Group with the launching of TeSaTe. TeSaTe first outlet is located at Plaza Senayan, South Jakarta.\n\nTeSaTe provides a quintessential place where Indonesians could celebrate their life\'s special moments with inspiring food and introduce their relatives from any nationality to the richness of Indonesia\'s culinary diversity.', '2020-02-13 04:04:57', '2020-02-26 09:52:44'),
(11, 6, 'Produk Baru, Citarasa Baru', 'New Brand, New Taste', 'Sarirasa Group keluar dari zona nyaman dengan merintis merek baru, Gopek, yang berfokus pada Masakan Peranakan Indonesia. Outlet pertama Gopek terletak di pusat perbelanjaan Grand Indonesia.\n\nMengincar para pecinta kuliner berusia muda, Gopek tampil dengan semangat dankeceriaan yang menghadirkan rasa nyaman kepada para pengunjungnya. Melayani sajian ala rumahan khas Peranakan, Gopek juga membawa para pengunjung untuk bernostalgia dengan sajian penuh citarasa yang telah akrab dengan lidah mereka.', 'Sarirasa Group went out its comfort zone by setting up a new brand, Gopek, that focuses on Indonesian Peranakan Cuisine. Gopek first outlet is located at Grand Indonesia Shopping Town.\n\nGopek wants to bring a new selection of dining experiences for the youngsters while also let the elderly to walk down the memory lane at the same time by serving familiar flavours through its menu.', '2020-02-13 04:06:43', '2020-02-26 10:01:29'),
(12, 7, 'Penambahan Konsep Baru', 'New Concept Added', 'Sate & Seafood Senayan pertama kali hadir di beberapa gerai terpilih Sate Khas Senayan, yaitu di gerai Tanah Abang dan Kebon Sirih.\n\nSate & Seafood Senayan menawarkan berbagai hidangan laut yang melengkapi pilihan menu di Sate Khas Senayan. Ketika memesan, para pengunjung dapat memilih langsung ikan pilihan mereka dari akuarium yang ada untuk memastikan kesegarannya. ', 'The first Sate & Seafood Senayan was exclusively available at Sate Khas Senayan’s selected outlets in Tanah Abang and Kebon Sirih. \n\nSate & Seafood Senayan offers complimenting seafood menu on top of Sate Khas Senayan menu option. While ordering, guests can choose directly from the live seafood aquarium in the restaurant to ensure the fish freshness.', '2020-02-13 04:09:48', '2020-02-26 10:02:08'),
(13, 8, 'Pembukaan TeKoTe', 'Opening of TeKoTe', 'Untuk semakin memperkuat brand TeSaTe, Sarirasa Group memperkenalkan TeKoTe sebagai bagian dari TeSaTe, yang lokasinya masih terdapat didalam gerai TeSaTe. TeKoTe memiliki tujuan dan visi yang sama dengan brand induknya, namun TeKoTe lebih mengedepankan minuman, camilan, dan makanan penutup khas daerah', 'In order to further strengthen its TeSaTe brand, Sarirasa Group introduced TeKoTe as part of TeSaTe, with its location still inside TeSaTe outlets. TeKoTe also shares the same goals and vision with its parent brand, yet emphasizing more on local drinks, snacks, and desserts. ', '2020-02-13 04:12:10', '2020-02-18 08:21:34'),
(14, 8, '45 Tahun Sarirasa', 'Sarirasa 45th Anniversary', 'Sarirasa Group merayakan peringatan ke-45 tahun, kami mengajak Anda untuk \"Berbagi Cerita Tentang Rasa\" bersama kami.', 'As Sarirasa Group celebrated its 45th Anniversarry, we encourage you to join us on \"Berbagi Cerita Tentang Rasa\".', '2020-02-13 04:12:10', '2020-02-18 08:23:02'),
(15, 9, 'Pengembangan Konsep Peranakan', 'Elevating Peranakan Concept', 'Sarirasa mengambil langkah selanjutnya dalam mengembangkan konsep Peranakan dengan mendirikan Gopek House. Gopek House fokus kepada hidangan Peranakan Indonesia yang biasanya disajikan di meja makan.', 'Sarirasa Group took a next step in developing their Peranakan concept through the establishment of Gopek House. Gopek House highlights Indonesian Peranakan comfort food that are usually served on the dining tables.', '2020-02-13 04:21:13', '2020-02-18 08:36:02'),
(16, 9, 'Pembukaan Gopek Express', 'Opening of Gopek Express', 'Seiring meningkatkan kesadaran masyarakat tentang hidangan Peranakan Indonesia yang telah diperkenalkan oleh Gopek, kehadiran Gopek Express semakin memperkuat aspirasi ini dengan menyediakan hidangan Peranakan Indonesia dalam format restoran cepat saji.\n\nLebih sederhana dan lebih terjangkau, Gopek Express  menjadi tempat tujuan bagi mereka yang mencari makanan cepat saji.', 'As Gopek aims to raise the public’s awareness in Indonesian Peranakan cuisine, Gopek Express will further reinforce this aspiration by providing Indonesian Peranakan street food in a quick service restaurant format.\r\n\r\nSimpler in terms of serving and affordable in price, Gopek Express will become the go-to establishment for those looking for a quick meal.', '2020-02-13 04:21:13', '2020-02-26 10:04:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rewards`
--

CREATE TABLE `rewards` (
  `id` int(11) NOT NULL,
  `cover` text COLLATE latin1_bin,
  `title_id` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `title_eng` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `description_id` text COLLATE latin1_bin,
  `description_eng` text COLLATE latin1_bin,
  `url_apk` text COLLATE latin1_bin,
  `description_small_id` text COLLATE latin1_bin,
  `description_small_eng` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `rewards`
--

INSERT INTO `rewards` (`id`, `cover`, `title_id`, `title_eng`, `description_id`, `description_eng`, `url_apk`, `description_small_id`, `description_small_eng`, `created_at`, `updated_at`) VALUES
(1, 'http://web-sarirasa.gopek.co.id/assets/images/Sarirasa%20Rewards%20Mobile%20App.png', 'Sarirasa Rewards', 'Sarirasa Rewards', 'Sarirasa Rewards merupakan program keanggotaan untuk mengapresiasi para pelanggan setia Sarirasa Group. Sarirasa Rewards hadir dalam bentuk aplikasi selular untuk memberikan berbagai kemudahan dimana para pelanggan bisa mendapatkan penawaran menarik serta informasi promo terbaru dari seluruh restoran yang tergabung dalam Sarirasa Group, hanya melalui ujung jari saja. ', 'Sarirasa Group aims to provide a better experience wrapped in convenience for loyal customers in the rapidly growing digital world. Sarirasa Rewards can be accessed through smartphone app that is designed to provide various services and resources for customers, including irresistible offers and information on the latest promotions from Sarirasa Group restaurants.', 'https://play.google.com/store/apps/details?id=com.srn.crm', 'Unduh sekarang dan dapatkan voucher total senilai IDR 200.000!', 'Download now and get vouchers up to IDR 200.000!', '2020-02-15 06:47:37', '2020-07-29 04:37:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2019-12-15 17:26:33', '2019-12-15 10:26:53'),
(2, 'Admin', '2019-12-15 17:26:39', '2019-12-15 10:26:41'),
(3, 'Petugas', '2019-12-15 18:26:41', '2019-12-15 10:26:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subject_email`
--

CREATE TABLE `subject_email` (
  `id` int(11) NOT NULL,
  `id_entity` int(11) DEFAULT NULL,
  `subject_id` text COLLATE latin1_bin,
  `subject_eng` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `subject_email`
--

INSERT INTO `subject_email` (`id`, `id_entity`, `subject_id`, `subject_eng`, `created_at`, `updated_at`) VALUES
(8, 1, 'Saran', 'Input', NULL, '2020-02-17 08:43:55'),
(9, 1, 'Komplain', 'Complaint', NULL, '2020-02-17 08:43:55'),
(10, 1, 'Lainnya', 'Others', NULL, '2020-02-17 08:43:55'),
(11, 2, 'Restaurant Supervisor', 'Restaurant Supervisor', NULL, '2020-02-17 08:58:06'),
(12, 2, 'Crew Restaurant', 'Crew Restaurant', NULL, '2020-02-17 08:58:06'),
(13, 2, 'Teknisi', 'Teknisi', NULL, '2020-02-17 08:58:06'),
(14, 2, 'Crew Dapur Pusat', 'Crew Dapur Pusat', NULL, '2020-02-17 08:58:06'),
(15, 2, 'Lainnya', 'Others', NULL, '2020-02-17 08:58:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `password` text COLLATE latin1_bin,
  `nama` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `foto` text COLLATE latin1_bin,
  `status` tinyint(1) DEFAULT '1' COMMENT '0 = tidak aktif , 1 = aktif , 2 = suspend',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `id_role`, `username`, `password`, `nama`, `email`, `foto`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@admin.com', '$2y$10$T8CvDv0Ag7r9FRmNY3WwZu1D4dPKSiSEjhcLIVTzEVrcAfmJB8ooW', 'Admin', 'azizarifrizaldi@gmail.com', NULL, 1, '2020-01-01 22:09:10', '2020-01-18 09:03:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `company_overview`
--
ALTER TABLE `company_overview`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact_team`
--
ALTER TABLE `contact_team`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `corporate_mission`
--
ALTER TABLE `corporate_mission`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `corporate_vision`
--
ALTER TABLE `corporate_vision`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `identitas_web`
--
ALTER TABLE `identitas_web`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level_menu`
--
ALTER TABLE `level_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `milestone`
--
ALTER TABLE `milestone`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `milestone_detail`
--
ALTER TABLE `milestone_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_milestone` (`id_milestone`);

--
-- Indeks untuk tabel `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subject_email`
--
ALTER TABLE `subject_email`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `company_overview`
--
ALTER TABLE `company_overview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contact_team`
--
ALTER TABLE `contact_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `corporate_mission`
--
ALTER TABLE `corporate_mission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `corporate_vision`
--
ALTER TABLE `corporate_vision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `identitas_web`
--
ALTER TABLE `identitas_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `level_menu`
--
ALTER TABLE `level_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `milestone`
--
ALTER TABLE `milestone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `milestone_detail`
--
ALTER TABLE `milestone_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `subject_email`
--
ALTER TABLE `subject_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `level_menu`
--
ALTER TABLE `level_menu`
  ADD CONSTRAINT `level_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `level_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `milestone_detail`
--
ALTER TABLE `milestone_detail`
  ADD CONSTRAINT `milestone_detail_ibfk_1` FOREIGN KEY (`id_milestone`) REFERENCES `milestone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `gopekcoi_web`
--
CREATE DATABASE IF NOT EXISTS `gopekcoi_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `gopekcoi_web`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `gallery` text,
  `create_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `image`, `gallery`, `create_at`, `update_at`) VALUES
(1, 'Peranakan Cuisine', '<p class=\"desc\">Peranakan cuisine, also known as Nyonya or Baba cuisine, originally introduced by the Peranakan children of Chinese descents in Indonesia, Malaka and Singapore. To suite the local taste as well as their own, the Peranakan combined Chinese Recipes with local cooking technique and vice versa, creating the ‘new’ culinary called Peranakan cuisine.</p>\r\n\r\n<p class=\"desc\">This is where GOPEK comes in as a restaurant that presents popular Indonesian Peranakan dishes, such as Lunpia, Mie Ayam, Nasi Campur, and more, in a hip and unpretentious ambience. GOPEK is set to satisfy young food enthusiasts with delicious Indonesian Peranakan dishes.</p>\r\n', 'http://web.gopek.co.id/assets/images/Gopek%20Restaurant%20Lady.png', '[\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/slider-gopek%20house-3.jpg\",\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/slider-gopek-2.jpg\",\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/slider-gopek-1.jpg\",\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/slider-gopek-4.jpg\",\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/slider-gopek-6.jpg\",\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/slider-gopek-5.jpg\"]', '2020-02-16 18:08:54', '2020-07-29 08:16:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `value` text,
  `create_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id`, `value`, `create_at`, `update_at`) VALUES
(1, '{\"id\":\"1\",\"image_welcome\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Gopek Store Home Web.jpg\",\"title\":\"Welcome To Gopek\",\"description\":\"<p class=\\\"text-desc\\\">Targeting young food enthusiasts, GOPEK appears with youthfulness and fun, presenting a homey feeling to the guests. Serving Peranakan comfort food, GOPEK brings the guests on walk down memory lane by serving familiar flavors. With these familiar flavors, the guest will surely feel like they are coming back home.<\\/p>\\r\\n\",\"image_menu\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Website_Gopek_Mie-Ayam.png\",\"name_menu\":\"Mie Ayam \",\"title_menu\":\"Authentic Peranakan Cuisine\",\"image_ingredient\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Beverages Gopek House Express.png\",\"description_ingredient\":\"<p class=\\\"text-desc\\\">GOPEK commits to use the best and freshest ingredients. Most of the ingredients, such as noodles, are made fresh daily, ensuring the quality of the foods. Combine with the right cooking techniques, all the dishes are set to please customer\'s taste buds and make them crave for more. Aiming to present authentic Peranakan cuisine, each dish is beautifully crafted by a team of seasoned chefs.<\\/p>\\r\\n\",\"image_which\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/No Pork No Lard Gopek.png\",\"description_which\":\"<p class=\\\"text-desc\\\"><strong style=\\\"font-weight: bold\\\">GOPEK<\\/strong> is set to satisfy young food enthusiasts with delicious Indonesian Peranakan dishes.<\\/p>\\r\\n\\r\\n<p class=\\\"text-desc\\\"><strong style=\\\"font-weight: bold\\\">GOPEK HOUSE<\\/strong> highlights Indonesian Peranakan comfort food that are usually served on the dining tables, suitable to share with friends and family.<\\/p>\\r\\n\\r\\n<p class=\\\"text-desc\\\"><strong style=\\\"font-weight: bold\\\">GOPEK EXPRESS<\\/strong> comes in a quick service restaurant format. Offers ready-to-go food and affordable packages, featuring both a la carte and set menus<\\/p>\\r\\n\"}', NULL, '2020-07-30 03:22:37'),
(2, '{\"id\":\"2\",\"image_home_one\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Gopek Home.png\",\"image_home_two\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Gopek Nasi Campur Sarirasa Group.png\",\"image_about\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Banner About Web Gopek.jpg\",\"image_location\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Gopek Web Location.jpg\",\"image_contact\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/images\\/image-contact.png\"}', '2020-02-20 16:15:19', '2020-07-29 09:08:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` text,
  `create_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `title`, `email`, `description`, `subject`, `create_at`, `update_at`) VALUES
(1, 'Give Us Your Awesome Feedback', 'schedule.sobatteknologi@gmail.com', '<p class=\"desc\">We always try to give the best for you,<br />\r\nwe would really apreciate your feedback about anything.</p>\r\n', '[\"Input\",\"Complaint\",\"Others\"]', '2020-02-20 07:32:27', '2020-09-03 07:08:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `date_event` date DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `favicon` text COLLATE latin1_bin,
  `title` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `logo` text COLLATE latin1_bin,
  `email` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `phone` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `instagram` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `facebook` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `whatsapp` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `line` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `footer_text` text COLLATE latin1_bin,
  `address` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `website` varchar(100) COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id`, `name`, `favicon`, `title`, `logo`, `email`, `phone`, `instagram`, `facebook`, `whatsapp`, `line`, `footer_text`, `address`, `created_at`, `updated_at`, `website`) VALUES
(1, 'GOPEK', 'https://cmsgopek.sobatteknologi.com/assets/images/gopek.png', 'Authentic Peranakan Cuisine', 'https://cmsgopek.sobatteknologi.com/assets/files/logo.png', 'customerservice@sarirasa.co.id', '6221400032', '@gopekrestaurant', '', '628999442655', '@azizarizaldi', 'Copyright 2020 © Sarirasa Group, All Right Reserved', 'Jalan Aipda KS Tubun No. 23, Petamburan, Tanah Abang, Jakarta Pusat 10260', '2020-01-19 23:44:07', '2020-07-30 02:22:48', 'https://sarirasa.co.id/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas_web`
--

CREATE TABLE `identitas_web` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `favicon` text COLLATE latin1_bin,
  `title` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `logo` text COLLATE latin1_bin,
  `meta_description` text COLLATE latin1_bin,
  `meta_keyword` text COLLATE latin1_bin,
  `email` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `phone` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `instagram` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `facebook` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `whatsapp` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `line` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `alamat` text COLLATE latin1_bin,
  `privacy_policy` text COLLATE latin1_bin,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `identitas_web`
--

INSERT INTO `identitas_web` (`id`, `nama`, `favicon`, `title`, `logo`, `meta_description`, `meta_keyword`, `email`, `phone`, `instagram`, `facebook`, `whatsapp`, `line`, `alamat`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, 'GOPEK', NULL, 'GOPEK', 'https://previewgopek.sobatteknologi.com/assets/images/logo.png', 'Azardi CMS', 'CMS Codeigniter terbaik', 'email@sarirasa.id', '6221400032', '@gopek.id', '', '628999442655', '@azizarizaldi', 'Jl. Ks. Tubun No.23, RT.1/RW.2, Petamburan, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10260', NULL, '2020-01-19 23:44:07', '2020-01-30 01:45:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_menu`
--

CREATE TABLE `level_menu` (
  `id` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `read` tinyint(1) DEFAULT '1',
  `create` tinyint(1) DEFAULT '0',
  `update` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0',
  `urutan` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `level_menu`
--

INSERT INTO `level_menu` (`id`, `id_role`, `id_menu`, `read`, `create`, `update`, `delete`, `urutan`, `created_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, '2020-02-06 01:41:17'),
(2, 1, 2, 1, 1, 1, 1, 3, '2020-02-06 01:41:17'),
(3, 1, 3, 1, 1, 1, 1, 4, '2020-02-06 01:41:17'),
(8, 1, 4, 1, 1, 1, 1, 6, '2020-02-06 01:41:17'),
(9, 1, 5, 1, 1, 1, 1, 5, '2020-02-06 01:41:17'),
(10, 1, 6, 1, 1, 1, 1, 7, '2020-02-06 01:41:17'),
(12, 1, 7, 1, 1, 1, 1, 8, '2020-02-06 01:41:17'),
(13, 1, 8, 1, 1, 1, 1, 9, '2020-02-06 01:41:17'),
(16, 1, 9, 1, 1, 1, 1, 2, '2020-02-13 15:35:31'),
(17, 1, 16, 1, 1, 1, 1, 10, '2020-02-13 15:35:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `lat_long` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0 = draft, 1 = publish',
  `create_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `location`
--

INSERT INTO `location` (`id`, `restaurant_id`, `title`, `address`, `phone`, `lat_long`, `position`, `status`, `create_at`, `update_at`) VALUES
(1, 1, 'Grand Indonesia', 'Grand Indonesia Sky Bridge<br />\r\nJl. MH Thamrin No.1, RW.5, Menteng, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10310, Indonesia\r\n', '(021) 23581359', '-6.195180099999999,106.8204412', NULL, 1, '2020-02-15 08:43:53', '2020-07-29 08:23:39'),
(2, 1, 'Kota Kasablanka', 'Food Society, UG Floor Unit FSU 32, Jl. Casablanca No.88, Jakarta Selatan 12870\r\n', '(021) 29475582', '-6.224181028569892,106.8420753541409', NULL, 1, '2020-02-15 08:44:20', '2020-02-26 01:02:28'),
(3, 2, 'Pakubuwono', 'Jl. Pakubuwono VI No.6, Jakarta Selatan 12120\r\n', '(021) 27088081', '-6.232595302449504,106.79622395354299', NULL, 1, '2020-02-15 08:44:46', '2020-07-29 08:35:51'),
(4, 3, 'Terminal 2 ', 'Terminal 2E Keberangkatan<br />\r\nSoekarno Hatta International Airport,<br />\r\nPajang, Benda, Tangerang\r\n', '', '-6.1221926,106.652577', NULL, 0, '2020-02-15 08:51:56', '2020-07-30 04:24:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `url` text COLLATE latin1_bin,
  `description` text COLLATE latin1_bin,
  `icon` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `target_blank` tinyint(1) DEFAULT '0',
  `type_menu` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `url`, `description`, `icon`, `status`, `target_blank`, `type_menu`, `created_at`, `updated_at`) VALUES
(1, 0, 'Dashboard', 'azardi/', 'Ini adalah dashboard untuk admin', 'mdi mdi-view-dashboard', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-13 07:49:52'),
(2, 0, 'Restaurant', 'azardi/restaurant', NULL, 'mdi mdi-store', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-16 17:50:14'),
(3, 0, 'Home', 'azardi/home', NULL, 'mdi mdi-home', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-13 08:36:05'),
(4, 0, 'Menu', 'azardi/menu', NULL, 'mdi mdi-silverware-variant', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-16 17:50:14'),
(5, 0, 'About Us', 'azardi/about', NULL, 'mdi mdi-information', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-16 17:50:14'),
(6, 0, 'Location', 'azardi/location', NULL, 'mdi mdi-map-marker-radius', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-13 08:36:14'),
(7, 0, 'News', 'azardi/news', NULL, 'mdi mdi-newspaper', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-16 17:50:14'),
(8, 0, 'Contact Us', 'azardi/contact', NULL, 'mdi mdi-phone', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-16 17:50:14'),
(9, 0, 'Website Profile', 'azardi/identitas', NULL, 'mdi mdi-account-box', 'active', 2, 'backend', '2019-12-15 18:19:33', '2020-02-16 17:54:34'),
(10, 0, 'Home', 'page/', NULL, NULL, 'active', 2, 'frontend', '2020-02-17 00:49:47', '2020-02-16 17:51:18'),
(11, 0, 'About Us', 'page/about', NULL, NULL, 'draft', 2, 'frontend', '2020-02-17 00:51:47', NULL),
(12, 0, 'Menu', 'page/menu', NULL, NULL, 'draft', 2, 'frontend', '2020-02-17 00:52:07', NULL),
(13, 0, 'location', 'page/location', NULL, NULL, 'draft', 2, 'frontend', '2020-02-17 00:52:32', '2020-02-16 17:52:41'),
(14, 0, 'News', 'page/news', NULL, NULL, 'draft', 2, 'frontend', '2020-02-17 00:53:02', '2020-02-16 17:53:04'),
(15, 0, 'Contact Us', 'page/contact', NULL, NULL, 'draft', 2, 'frontend', '2020-02-17 00:53:02', '2020-02-16 17:53:12'),
(16, 0, 'Setting Banner', 'azardi/banner', NULL, 'mdi mdi-image-multiple', 'active', 0, 'backend', '2020-02-17 00:53:02', '2020-02-20 15:48:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `menu_options` text,
  `additional_menus` text,
  `status` int(1) DEFAULT '0' COMMENT '0 = draf, 1 = publish',
  `images` text,
  `position` int(11) DEFAULT '0',
  `create_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_item`
--

INSERT INTO `menu_item` (`id`, `restaurant_id`, `title`, `description`, `menu_options`, `additional_menus`, `status`, `images`, `position`, `create_at`, `update_at`, `seo_title`) VALUES
(10, 1, 'Aneka Cemilan', '', '[\"Cemilan Sampler\",\"Bakso Goreng\",\"Bakso Tahu Goreng\",\"Bakso Tahu Gulung\",\"Lunpia Goreng\",\"Ngohiong\",\"Pangsit Goreng\",\"Pangsit Mini Goreng\",\"Kekian\",\"Onde Onde\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Cemilan-Sampler_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakso-Goreng_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Lunpia_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakso-Tahu-Gulung_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Onde_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 08:45:12', '2020-03-01 16:50:36', 'aneka-cemilan-makanan'),
(11, 1, 'Hidangan Pembuka', '', '[\"Rujak Juhi\",\"Rujak Kangkung\",\"Siomay Campur\",\"Siomay\",\"Siomay Tahu\",\"Sate Sapi\",\"Sate Ayam\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu%20Detail_Sate-ayam_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Kepiting-Cingkong_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Lunpia-Udang_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Tahu-Bulat_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 08:59:05', '2020-03-01 16:54:39', 'hidangan-pembuka'),
(12, 1, 'Bakwan & Bakso', '', '[\"Bakwan Bakso\",\"Bakwan Sengkel\",\"Bakwan Buntut\",\"Bakso Campur\",\"Bakso Sengkel\",\"Bakso Buntut\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakwan-Buntut_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakso-Sengkel_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:03:03', '2020-03-01 15:02:26', 'bakwan-&-bakso-makanan'),
(13, 1, 'Aneka Mie/ Bihun / Kwetiau', '', '[\"Ayam Cabe Kering\",\"Mie Kangkung\",\"Gopek\",\"Gopek Spesial\",\"Ayam (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Bakso (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Pangsit Rebus (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Pangsit Goreng (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Super (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Bebek (Asin \\/ Angkak Manis)\",\"Bebek Bakso (Asin \\/ Angkak Manis)\"]', '[]', 1, '[{\"image\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Website_Gopek_Menu-Detail_Mie-Ulang-Tahun_698x563px.png\",\"cover\":\"0\"},{\"image\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Website_Gopek_Menu-Detail_Mie-Gopek-Spesial_698x563px.png\",\"cover\":\"1\"},{\"image\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Website_Gopek_Menu-Detail_Kwetiau-Goreng-Special_698x563px.png\",\"cover\":\"0\"},{\"image\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Website_Gopek_Menu-Detail_Bihun-Bebek-Super_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:06:50', '2020-07-30 03:02:19', 'aneka-mie/-bihun-/-kwetiau-makanan'),
(14, 1, 'Aneka Nasi', '', '[\"Nasi Gopek Spesial (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Campur Bebek  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Gopek  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Campur Ayam  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Ayam Pesak  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Capcay  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Goreng Gila (Pedas \\/ Pedas Sedang \\/ Tidak Pedas)\",\"Nasi Goreng Ayam Merah (Pedas \\/ Pedas Sedang \\/ Tidak Pedas)\",\"Nasi Goreng Spesial (Pedas \\/ Pedas Sedang \\/ Tidak Pedas)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Nasi-Gopek-Special_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Nasi-Ayam-Pesak_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Nasi-Goreng-Ayam-Merah_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:08:39', '2020-03-01 15:19:04', 'aneka-nasi-makanan'),
(17, 2, 'Aneka Cemilan', '', '[\"Cemilan Sampler\",\"Bakso Goreng\",\"Bakso Tahu Goreng\",\"Bakso Tahu Gulung\",\"Lunpia Goreng\",\"Ngohiong\",\"Pangsit Goreng\",\"Pangsit Mini Goreng\",\"Kekian\",\"Onde Onde\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Cemilan-Sampler_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakso-Goreng_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Lunpia_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakso-Tahu-Gulung_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Onde_698x563px.png\",\"cover\":\"1\"}]', 0, '2020-02-20 09:24:18', '2020-03-01 16:50:58', 'aneka-cemilan'),
(18, 2, 'Hidangan Pembuka', '', '[\"Rujak Juhi\",\"Rujak Kangkung\",\"Siomay Campur\",\"Siomay\",\"Siomay Tahu\",\"Sate Sapi\",\"Sate Ayam\",\"Kepiting Cingkong\",\"Lunpia Udang\",\"Tahu Bulat\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Sate-Sapi_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Kepiting-Cingkong_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Lunpia-Udang_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Tahu-Bulat_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:26:18', '2020-03-01 16:54:31', 'hidangan-pembuka-gopek-house'),
(19, 2, 'Bakwan & Bakso', '', '[\"Bakwan Bakso\",\"Bakwan Sengkel\",\"Bakwan Buntut\",\"Bakso Campur\",\"Bakso Sengkel\",\"Bakso Buntut\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakwan-Buntut_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakso-Sengkel_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:27:32', '2020-03-01 16:55:57', 'bakwan-&-bakso'),
(20, 2, 'Aneka Mie/ Bihun / Kwetiau', '', '[\"Gopek\",\"Gopek Spesial\",\"Ayam (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Bakso (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Pangsit Rebus (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Pangsit Goreng (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Super (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Bebek (Asin \\/ Angkak Manis)\",\"Bebek Bakso (Asin \\/ Angkak Manis)\",\"Bebek Pangsit Rebus (Asin \\/ Angkak Manis)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Mie-Gopek-Spesial_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bihun-Bebek-Super_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Kwetiau-Goreng-Special_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Mie-Capcay_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Mie-Ulang-Tahun_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:30:12', '2020-03-01 16:58:15', 'aneka-mie/-bihun-/-kwetiau'),
(21, 2, 'Aneka Nasi', '', '[\"Nasi Gopek Spesial (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Campur Bebek  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Gopek  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Campur Ayam  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Ayam Pesak  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Capcay  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Goreng Gila (Pedas \\/ Pedas Sedang \\/ Tidak Pedas)\",\"Nasi Goreng Ayam Merah (Pedas \\/ Pedas Sedang \\/ Tidak Pedas)\",\"Nasi Goreng Spesial (Pedas \\/ Pedas Sedang \\/ Tidak Pedas)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Nasi-Gopek-Special_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Nasi-Ayam-Pesak_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Nasi-Goreng-Ayam-Merah_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:31:56', '2020-03-01 17:00:09', 'aneka-nasi'),
(22, 2, 'Aneka Lauk', '', '[\"Sapi (Lada Hitam \\/ Cabe Kering \\/ Bistik)\",\"Ayam (Lada Hitam \\/ Asam Manis \\/ Mentega \\/ Cabe Kering \\/ Bistik \\/ Goreng Kering)\",\"Fuyunghai\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Sapi-Lada-Hitam_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Sapi-Bistik_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Ayam-Cabe-Kering_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Fuyunghai_698x563px.png\",\"cover\":\"1\"}]', 0, '2020-02-20 09:33:55', '2020-03-01 17:03:17', 'aneka-lauk'),
(23, 2, 'Hidangan Laut', '', '[\"Gurame (Lada Hitam \\/ Asam Manis \\/ Mentega \\/ Cabe Garam \\/ Saos Tausi \\/ Cabe Kering \\/ Tim)\",\"Kerapu (Lada Hitam \\/ Asam Manis \\/ Mentega \\/ Cabe Garam \\/ Saos Tausi \\/ Cabe Kering \\/ Tim)\",\"Bawal Jepang (Saos Tausi \\/ Tim)\",\"Kakap Merah (Lada Hitam \\/ Asam Manis \\/ Mentega \\/ Saos Tausi \\/ Cabe Kering \\/ Tim)\",\"Kepiting (Lada Hitam \\/ Mentega \\/ Saos Tausi \\/ Chili \\/ Tim)\",\"Cumi (Lada Hitam \\/ Asam Manis \\/ Mentega \\/ Cabe Garam \\/ Saos Tausi \\/ Cabe Kering \\/ Chili)\",\"Udang Pancet (Lada Hitam \\/ Asam Manis \\/ Mentega \\/ Cabe Garam \\/ Saos Tausi \\/ Cabe Kering \\/ Bistik \\/ Chili)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bawal-Jepang-Tausi_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Kepiting-Chili_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Cumi-Cabe-Garam_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Udang-Pancet-Mentega_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:39:57', '2020-03-01 17:05:37', 'hidangan-laut'),
(24, 2, 'Aneka Tahu', '', '[\"Tahu (Lada Hitam \\/ Asam Manis \\/ Tausi \\/ Cabe Kering)\",\"Sapo Tahu\",\"Mun Tahu (Level 1 \\/ 2 \\/ 3)\",\"Sup Tahu Pong\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Tahu-Tausi_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Sapo-Tahu_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Tahu-Pong_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:41:23', '2020-03-01 17:07:06', 'aneka-tahu'),
(25, 2, 'Aneka Sayur', '', '[\"Buncis Tumis Bawang Putih\",\"Tauge Tumis Bawang Putih\",\"Oyong (Tumis Jamur Hitam \\/ Tumis Bawang Putih)\",\"Baby Pokcoy (Tumis Jamur Hitam \\/ Tumis Bawang Putih)\",\"Baby Kailan (Tumis Jamur Hitam \\/ Tumis Bawang Putih)\",\"Bayam Jepang (Tumis Jamur Hitam \\/ Tumis Bawang Putih)\",\"Cah Rebung\",\"Capcay\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Buncis-Tumis-Bawang-Putih_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Baby-Kailan-Tumis-Jamur-Hitam_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Cah-Rebung_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:42:58', '2020-03-01 17:08:32', 'aneka-sayur'),
(26, 2, 'Aneka Es', '', '[\"Sari Alang Alang Jahe Sereh\",\"Sari Alang Alang Leci Mint\",\"Sari Alang Alang Markisa Lemon\",\"Es Dawet Ayu\",\"Es Kacang\",\"Es Koteng\",\"Jus Tebu Lemon\",\"Jus Tebu Barley Lemon\",\"Jus Tebu Kiamboy Lemon\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Leci-Mint_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Es-Dawet-Ayu_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Es-Koteng_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Barley-Lemon_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Kiamboy-Lemon_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:44:39', '2020-03-01 17:11:15', 'aneka-es'),
(27, 2, 'Minuman Hangat & Segar', '', '[\"Teko Teh Oolong\",\"Teko Teh Melati\",\"Teko Krisan\",\"Teko Secang\",\"Teko Sereh\",\"Kopi (Es \\/ Hangat)\",\"Teh (Es \\/ Hangat)\",\"Kopi Susu (Es \\/ Hangat)\",\"Teh Susu (Es \\/ Hangat)\",\"Air Mineral\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Teko-Secang_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Teh-Susu_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Teh-Susu_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 09:46:13', '2020-03-01 17:12:38', 'minuman-hangat-&-segar'),
(28, 3, 'Snack', '', '[\"Cemilan Sampler\",\"Pangsit Mini Goreng\",\"Bakso Goreng\",\"Lunpia Goreng\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakso-Goreng_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Lunpia_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Cemilan-Sampler_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 18:28:33', '2020-03-01 17:15:32', 'snack'),
(29, 3, 'Bakwan & Bakso', '', '[\"Bakwan Bakso\",\"Bakwan Sengkel\",\"Bakso Campur\",\"Bakso Sengkel\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Bakso-Sengkel_698x563px.png\",\"cover\":\"1\"}]', 0, '2020-02-20 18:30:04', '2020-03-01 17:16:35', 'bakwan-bakso'),
(30, 3, 'Combo Bakwan & Bakso', '', '[\"Bakwan Bakso (+ Nasi \\/ Mie \\/ Bihun \\/ Kwetiau, Gratis Minum)\",\"Bakwan Sengkel (+ Nasi \\/ Mie \\/ Bihun \\/ Kwetiau, Gratis Minum)\",\"Bakso Campur (+ Nasi \\/ Mie \\/ Bihun \\/ Kwetiau, Gratis Minum)\",\"Bakso Sengkel (+ Nasi \\/ Mie \\/ Bihun \\/ Kwetiau, Gratis Minum)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Combo-Bakwan-Sengkel_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Combo-Bakso-Sengkel_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 18:30:51', '2020-03-01 17:17:57', 'combo-bakwan-&-bakso'),
(31, 3, 'Mie/ Bihun / Kwetiau Ayam', '', '[\"Ayam (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Bakso (Yamien Asin \\/ Yamien Manis \\/ Rica)\",\"Ayam Pangsit Goreng (Yamien Asin \\/ Yamien Manis \\/ Rica)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Mie-Ayam_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Mie-Ayam-Bakso_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Mie-Ayam-Pangsit-Goreng_698x563px.png\",\"cover\":\"1\"}]', 0, '2020-02-20 18:32:01', '2020-03-01 17:20:35', 'mie/-bihun-/-kwetiau-ayam'),
(32, 3, 'Combo Mie/ Bihun / Kwetiau Ayam', '', '[\"Ayam (+ 2pcs Bakso Goreng, Gratis Minum)\",\"Ayam Bakso (+ 2pcs Bakso Goreng, Gratis Minum)\",\"Ayam Pangsit Goreng (+ 2pcs Bakso Goreng, Gratis Minum)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Combo-Mie-Ayam_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Combo-Mie-Ayam-Pangsit-Goreng_698x563px.png\",\"cover\":\"1\"}]', 0, '2020-02-20 18:33:12', '2020-03-01 17:21:45', 'combo-mie/-bihun-/-kwetiau-ayam'),
(33, 3, 'Mie/ Bihun / Kwetiau Goreng', '', '[\"Goreng Spesial\",\"Goreng Pedas\",\"Goreng Merah\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Kwetiau-Goreng-Special_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Mie-Goreng-Merah_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 18:34:01', '2020-03-01 17:22:58', 'mie/-bihun-/-kwetiau-goreng'),
(34, 3, 'Combo Mie/ Bihun / Kwetiau Goreng', '', '[\"Goreng Spesial (+ Teh Susu Es \\/ Panas)\",\"Goreng Pedas (+ Teh Susu Es \\/ Panas)\",\"Goreng Merah (+ Teh Susu Es \\/ Panas)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Combo-Kwetiau-Goreng-Special_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Combo-Mie-Goreng-Merah_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 18:34:45', '2020-03-01 17:24:03', 'combo-mie/-bihun-/-kwetiau-goreng'),
(35, 3, 'Nasi Campur', '', '[\"Nasi Ayam Pesak  (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Gopek Spesial (Nasi Ayam \\/ Nasi Putih)\",\"Nasi Capcay  (Nasi Ayam \\/ Nasi Putih)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Nasi-Ayam-Pesak_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Nasi-Gopek-Special_698x563px.png\",\"cover\":\"1\"}]', 0, '2020-02-20 18:35:39', '2020-03-01 17:25:17', 'nasi-campur'),
(36, 3, 'Combo Nasi Campur', '', '[\"Nasi Ayam Pesak  (+ Teh Susu Es \\/ Panas)\",\"Nasi Gopek Spesial (+ Teh Susu Es \\/ Panas)\",\"Nasi Capcay (+ Teh Susu Es \\/ Panas)\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Combo-Nasi-Ayam-Pesak_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Combo-Nasi-Gopek-Spesial_698x563px.png\",\"cover\":\"1\"}]', 0, '2020-02-20 18:36:25', '2020-03-01 17:27:03', 'combo-nasi-campur'),
(37, 3, 'Es Campur', '', '[\"Es Dawet Ayu \",\"Es Kacang\",\"Es Koteng\"]', '[]', 1, '[{\"image\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Website_Gopek_Menu-Detail_Es-Koteng_698x563px.png\",\"cover\":\"1\"},{\"image\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Website_Gopek_Menu-Detail_Es-Dawet-Ayu_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 18:39:16', '2020-07-30 03:13:31', 'es-campur'),
(38, 3, 'Teh dan Kopi', '', '[\"Kopi (Es \\/ Hangat)\",\"Kopi Susu (Es \\/ Hangat)\",\"Teh (Es \\/ Hangat)\",\"Teh Susu (Es \\/ Hangat)\",\"Air Mineral\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Teh-Susu_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Teh-Susu_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-02-20 18:40:22', '2020-03-01 17:29:28', 'teh-dan-kopi'),
(44, 1, 'Aneka Es', '', '[\"Sari Alang Alang Jahe Sereh\",\"Sari Alang Alang Leci Mint\",\"Sari Alang Alang Markisa Lemon\",\"Es Dawet Ayu\",\"Es Kacang\",\"Es Koteng\",\"Jus Tebu Lemon\",\"Jus Tebu Barley Lemon\",\"Jus Tebu Kiamboy Lemon\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Leci-Mint_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Barley-Lemon_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Es-Dawet-Ayu_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Es-Koteng_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Kiamboy-Lemon_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-03-01 16:13:42', '2020-03-01 16:13:51', 'aneka-es-minuman'),
(45, 1, 'Minuman Hangat & Segar', '', '[\"Teko Teh Oolong\",\"Teko Teh Melati\",\"Teko Krisan\",\"Teko Secang\",\"Teko Sereh\",\"Kopi (Es \\/ Hangat)\",\"Teh (Es \\/ Hangat)\",\"Kopi Susu (Es \\/ Hangat)\",\"Teh Susu (Es \\/ Hangat)\",\"Air Mineral\"]', '[]', 1, '[{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Teko-Secang_698x563px.png\",\"cover\":\"1\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Menu-Detail_Teh-Susu_698x563px.png\",\"cover\":\"0\"},{\"image\":\"https:\\/\\/cmsgopek.sobatteknologi.com\\/assets\\/files\\/Foto%20Menu\\/Website_Gopek_Teh-Susu_698x563px.png\",\"cover\":\"0\"}]', 0, '2020-03-01 16:19:19', '2020-03-01 16:19:45', 'minuman-hangat-&-segar-minuman'),
(47, 1, 'CAPCAY', '', '[\"Mie \\/ Bihun \\/ Kwetiaw \\/ Misua\",\"Ifumie\"]', '[]', 1, '[{\"image\":\"http:\\/\\/web.gopek.co.id\\/assets\\/images\\/Website_Gopek_Menu-Detail_Mie-Capcay_698x563px.png\",\"cover\":\"1\"}]', 0, '2020-07-30 03:16:31', '2020-07-30 03:16:43', 'capcay');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `date_event` date DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0 = draft, 1 = publish',
  `position` int(11) DEFAULT '0',
  `is_headline` int(1) DEFAULT '0' COMMENT '0 = false, 1 = true',
  `create_at` datetime DEFAULT NULL,
  `update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date_event`, `cover`, `status`, `position`, `is_headline`, `create_at`, `update`, `seo_title`) VALUES
(3, 'Driver Gathering bersama GOJEK', '<p class=\"desc\">Pada Rabu, 14 Agustus 2019, Sarirasa Group mengundang para pengemudi Go Food untuk menikmati santap siang bersama di Gopek, Kota Kasablanka sebagai bentuk ucapan terima kasih dan apresiasi kepada para pengemudi.</p>\r\n\r\n<p class=\"desc\">Melalui acara ini, Sarirasa Group ingin berterima kasih untuk kontribusi yang telah diberikan pada pengemudi Go Food dalam memperkuat Sarirasa Group. Sarirasa Group dan Sate Khas Senayan tidak akan mencapai titik ini tanpa bantuan dan dukungan para pengemudi Go Food. Semoga para pengemudi menikmati setiap rasa Indonesia yang kami kisahkan melalui makanan dan minuman yang disajikan.</p>\r\n', '2019-08-14', 'http://web.gopek.co.id/assets/images/Driver%20Gathering%2045%20Tahun%20Sarirasa%20Gopek.jpg', 1, 0, 0, '2020-02-19 05:14:52', '2020-07-29 08:57:30', 'driver-gathering-bersama-gojek'),
(5, '45 Tahun Sarirasa Group', '<p class=\"desc\">Dikaruniai begitu banyak ragam budaya yang tersebar di 17.000 pulau dan 300 kelompok etnis. Indonesia berkelimpahan akan citarasa kuliner. Berawal dari hasrat untuk menjaga, melestarikan serta mewariskan kekayaan citarasa negeri ini, kami mendirikan Sarirasa pada tahun 1974.</p>\r\n\r\n<p class=\"desc\">Empat puluh lima tahun sudah kami hadir. Di bawah naungan kami telah lahir tiga label dengan nama Sate Khas Senayan, TeSaTe, dan Gopek. Sepanjang perjalanan kami, tak terhitung banyaknya rasa dan cerita yang tersalur melalui setiap lidah yang mengecap dan kata yang terucap. Kami menyaksikan momen-momen ketika perbedaan dikesampingkan dan kenangan manis kerap dibisikkan dari generasi ke generasi. Diiringi oleh berbagai nasihat dan semangat perubahan untuk masa depan yang lebih baik, termasuk komitmen kami untuk mengurangi sampah (Zero Waste Program).</p>\r\n\r\n<p class=\"desc\">Sebagai bentuk apresiasi kami atas perjalanan yang telah dilalui bersama selama 45 tahun ini dan ucapan harapan untuk kebersamaan yang tak lekang oleh waktu, kami hendak mengundang Anda berbagi sukacita <strong style=\"font-weight: bold\">#BerbagiCeritaTentang Rasa</strong>.</p>\r\n', '2020-02-01', 'http://web.gopek.co.id/assets/images/Web%20Gopek%2045%20Tahun.jpg', 1, 0, 1, '2020-02-19 05:18:09', '2020-07-30 02:34:41', '45-tahun-sarirasa-group'),
(7, 'Kongkow Sore GOPEK', '<p class=\"desc\">Waktunya Kongkow Sore! Nikmati penawaran khusus dari Gopek setiap sore mulai pukul 15.00 hingga 17.30. Hanya dengan Rp 34.000, kamu sudah bisa menikmati lezatnya Pangsit Mini Goreng, Bakso Goreng dan Lumpia Goreng ditemani oleh secangkir Teh Susu/Kopi Susu/Kopi Hitam favoritmu.</p>\r\n\r\n<p class=\"desc\"><strong style=\"font-weight: bold\">Syarat & Ketentuan:</strong></p>\r\n\r\n<ol>\r\n	<li>Berlaku setiap hari pukul 15.00 - 17.30</li>\r\n	<li>Hanya berlaku Dine In</li>\r\n	<li>Harga belum termasuk pajak</li>\r\n	<li>Tidak ada batasan pembelian, selama persediaan masih ada</li>\r\n	<li>Tidak dapat digabungkan dengan promo lain</li>\r\n	<li>Berlaku di seluruh outlet Gopek</li>\r\n</ol>\r\n', '2020-07-29', 'http://web.gopek.co.id/assets/images/Web%20Gopek%20Kongkow%20Sore.jpg', 1, 0, 0, '2020-07-29 08:58:39', '2020-07-30 02:34:32', 'kongkow-sore-gopek');

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0 = draft, 1 = publish',
  `create_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `description`, `logo`, `icon`, `cover`, `position`, `status`, `create_at`, `update_at`) VALUES
(1, 'Gopek', '<p class=\"desc\">GOPEK aims to educate local food enthusiasts about the Peranakan cuisine, which is commonly associated with the culinary worlds of Singapore or Malaysia. As a matter of fact, Indonesian has the largest community of Peranakan people residing across the archipelago by far, which in turn has created a subculture of dishes and adding more depth to the Indonesian Peranakan culture.</p>\r\n\r\n<p class=\"desc\">Since only a few are aware that those of Chinese descent actually brought these dishes to this country along with their Peranakan culture, GOPEK serves as a good reminder on how rich and diverse Indonesian culture really is. Offering a casual Indonesian Peranakan concept, the restaurant targets young food enthusiasts and aims to attract them with delicious classic dishes and knowledge about the culture of the Peranakan people. </p>\r\n', 'http://web.gopek.co.id/assets/images/about-gopek.png', 'https://cmsgopek.sobatteknologi.com/assets/files/logo-gopek.png', 'http://web.gopek.co.id/assets/images/about-bottle-gopek.png', 1, 1, '2020-02-11 23:04:28', NULL),
(2, 'Gopek House', '<p class=\"desc\">Gopek House highlights Indonesian Peranakan comfort food that are usually served on the dining tables in Indonesian Peranakan homes across the country. It will bring a warm touch of nostalgia to some, while other guests may be able to savor these classic traditional dishes for the first time and discover a flavor unlike any other.</p>\r\n\r\n<p class=\"desc\">Gopek House’s menu will bring a smile to many, comprising the finest in Indonesian Peranakan delights ranging from the likes of Bistik Daging (beef steak), Ayam Kuluyuk (sweet-and-sour chicken), Fu Yung Hai (egg foo yong), Lumpia Udang (fried shrimp roll), Ayam Goreng Mentega (fried chicken in butter sauce), and more; timeless home-cooked delicacies that will pamper the palates of many.</p>\r\n', 'http://web.gopek.co.id/assets/images/about-gopek-house.png', 'https://cmsgopek.sobatteknologi.com/assets/files/logo-gopek-house.png', 'http://web.gopek.co.id/assets/images/Website_Gopek_About-Us_Gopek House.jpg', 2, 1, '2020-02-11 18:08:44', NULL),
(3, 'Gopek Express', '<p class=\"desc\">Gopek Express provide a selection of Gopek’s trademark Peranakan street food menu in a promptly and practical manner. Simpler in terms of serving and affordable in price, Gopek Express will become the go-to establishment for those looking for a quick meal that is at once delicious and enlightening. At Gopek Express, customers will be able to sample the very best in Indonesian Peranakan street food on the go.</p>\r\n\r\n<p class=\"desc\">Gopek Express is set to serve a variety of luscious Indonesian Peranakan dishes that are originally available at Gopek. However, unlike the original Gopek, Gopek Express offers ready-to-go food and affordable packages, featuring both a la carte and set menus with the latter comes with drink. test</p>\r\n', 'http://web.gopek.co.id/assets/images/about-gopek-express.png', 'https://cmsgopek.sobatteknologi.com/assets/files/logo-gopek-express.png', 'http://web.gopek.co.id/assets/images/Website_Gopek_About-Us_Gopek Express.jpg', 3, 1, '2020-02-15 00:55:43', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) COLLATE latin1_bin DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2019-12-15 17:26:33', '2019-12-15 10:26:53'),
(2, 'Admin', '2019-12-15 17:26:39', '2019-12-15 10:26:41'),
(3, 'Visitor', '2020-02-17 00:49:20', '2020-02-16 17:49:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `password` text COLLATE latin1_bin,
  `nama` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `foto` text COLLATE latin1_bin,
  `status` tinyint(1) DEFAULT '1' COMMENT '0 = tidak aktif , 1 = aktif , 2 = suspend',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `id_role`, `username`, `password`, `nama`, `email`, `foto`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@admin.com', '$2y$10$T8CvDv0Ag7r9FRmNY3WwZu1D4dPKSiSEjhcLIVTzEVrcAfmJB8ooW', 'Admin', 'azizarifrizaldi@gmail.com', NULL, 1, '2020-01-01 22:09:10', '2020-01-18 09:03:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `identitas_web`
--
ALTER TABLE `identitas_web`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level_menu`
--
ALTER TABLE `level_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `identitas_web`
--
ALTER TABLE `identitas_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `level_menu`
--
ALTER TABLE `level_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `level_menu`
--
ALTER TABLE `level_menu`
  ADD CONSTRAINT `level_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `level_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `menu_item_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
