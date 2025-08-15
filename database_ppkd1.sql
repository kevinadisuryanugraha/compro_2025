-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Agu 2025 pada 04.08
-- Versi server: 8.4.3
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_ppkd1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Consequatur eius et magnam', '<h4 style=\"color: color(srgb 0.266667 0.266667 0.266667 / 0.5); font-size: 1.1rem; font-family: Raleway, sans-serif; text-transform: uppercase;\">Est 1988</h4><h3 style=\"font-weight: 700; color: color(srgb 0.266667 0.266667 0.266667 / 0.8); font-size: 2.25rem; font-family: Raleway, sans-serif;\">HAI INI ABOUT</h3><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"color: rgb(68, 68, 68); font-family: Roboto, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Inventore aliquam beatae at et id alias. Ipsa dolores amet consequuntur minima quia maxime autem. Quidem id sed ratione. Tenetur provident autem in reiciendis rerum at dolor. Aliquam consectetur laudantium temporibus dicta minus dolor.</p><ul segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"padding: 0px; list-style: none; font-size: 15px; color: rgb(68, 68, 68); font-family: Roboto, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><li style=\"padding: 5px 0px; display: flex; align-items: center;\"><i class=\"bi bi-check-circle\" style=\"font-size: 1.25rem; margin-right: 0.5rem; line-height: 1.2; color: rgb(27, 189, 54);\"></i>Ullamco laboris nisi ut aliquip ex ea commo</li><li style=\"padding: 5px 0px; display: flex; align-items: center;\"><i class=\"bi bi-check-circle\" style=\"font-size: 1.25rem; margin-right: 0.5rem; line-height: 1.2; color: rgb(27, 189, 54);\"></i>Duis aute irure dolor in reprehenderit in</li><li style=\"padding: 5px 0px; display: flex; align-items: center;\"><i class=\"bi bi-check-circle\" style=\"font-size: 1.25rem; margin-right: 0.5rem; line-height: 1.2; color: rgb(27, 189, 54);\"></i>Ullamco laboris nisi ut aliquip ex ea</li></ul><p segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" \"liberation=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";\"=\"\" style=\"margin-bottom: 0px; color: rgb(68, 68, 68); font-family: Roboto, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Vitae autem velit excepturi fugit. Animi ad non. Eligendi et non nesciunt suscipit repellendus porro in quo eveniet. Molestias in maxime doloremque.</p>', '87d0de889766a6f3f0c1e35d4d2c60e9.jpg', 1, '2025-08-13 04:08:25', NULL),
(4, 'aksnkcxanlkcnsac', '<p>alsknclackamclkamclkamsc</p>', 'e3e764933c002ef1c0ddaaaa76dbbd2a.jpg', 1, '2025-08-13 04:08:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `id_category` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `id_category`, `title`, `content`, `penulis`, `is_active`, `image`, `tags`, `created_at`, `updated_at`) VALUES
(5, 2, 'Cara menghasilkan Uang di usia Muda', '<p class=\"gt-block\" style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Jika Anda mencoba mempelajari cara menghasilkan uang saat remaja, ada banyak pilihan yang tersedia untuk Anda. Anda tidak akan bisa bekerja a&nbsp;<nobr style=\"text-size-adjust: none;\">waktu penuh</nobr>&nbsp;pekerjaan di kantor atau sebagai profesional terlatih. Tapi, kenapa kamu mau? Ketika tiba saatnya&nbsp;<a href=\"https://www.ecwid.com/id/make-money-online\" style=\"text-size-adjust: none; color: rgb(0, 100, 184); cursor: pointer; text-decoration: none; transition: color 0.1s linear;\">cara menghasilkan uang dengan cepat</a>&nbsp;sebagai remaja, pilihan Anda berbeda dari pekerjaan tradisional. Dan terkadang, itu juga lebih menarik.</p><p style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Tentu saja, beberapa remaja dapat menemukannya&nbsp;<nobr style=\"text-size-adjust: none;\">paruh waktu</nobr>&nbsp;pekerjaan di bisnis lokal. Dan tidak ada yang salah dengan itu. Namun bagi mereka yang mencari cara menghasilkan uang dari rumah saat remaja, ada lebih banyak kemungkinan. Berikut beberapa tip terbaik tentang cara menghasilkan uang dengan mudah saat remaja</p><p class=\"gt-block\" style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Pada usia 13 tahun, Anda mungkin tidak dapat memenuhi syarat untuk beberapa pekerjaan. Sebagian besar negara bagian mempunyai undang-undang sendiri mengenai pekerja anak. Dalam kebanyakan kasus,&nbsp;<a href=\"https://info.com/business/the-legal-working-age-in-each-state/\" target=\"_blank\" rel=\"nofollow noopener\" style=\"text-size-adjust: none; color: rgb(0, 100, 184); cursor: pointer; text-decoration: none; transition: color 0.1s linear;\">usia minimum untuk&nbsp;<nobr style=\"text-size-adjust: none;\">paruh waktu</nobr>&nbsp;pekerjaan</a>&nbsp;adalah 14. Beberapa negara bagian mengizinkan 13 atau&nbsp;<nobr style=\"text-size-adjust: none;\">Usia 12 tahun</nobr>&nbsp;untuk mendapatkan pekerjaan dengan izin orang tua. Namun untuk mempermudahnya, berikut beberapa tip tentang cara menghasilkan uang saat berusia 13 tahun. Dan, itu tidak melibatkan pekerjaan&nbsp;<nobr style=\"text-size-adjust: none;\">paruh waktu</nobr>&nbsp;untuk sebuah bisnis.</p><div name=\"anjing-berjalan\" data-hash=\"anjing-berjalan\" style=\"text-size-adjust: none; font-family: Montserrat, sans-serif;\"></div><h3 style=\"text-size-adjust: none; line-height: 32px; font-weight: 700; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 24px; font-family: Montserrat, sans-serif; padding-top: 0px; letter-spacing: -0.2px;\"><div class=\"h__anchor\" data-hash=\"undefined\" style=\"text-size-adjust: none;\"></div>Anjing berjalan</h3><p style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Mari kita mulai dengan salah satu opsi paling menyenangkan dalam daftar. Banyak sekali orang yang memelihara anjing, namun tidak semua dari mereka bisa mengajak anjingnya jalan-jalan setiap hari. Untuk membantu anjingnya berolahraga (dan membakar energi), banyak orang akan mempekerjakan orang untuk mengajak anjingnya jalan-jalan.</p><p style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Selain itu, tidak ada kualifikasi nyata untuk menjadi dog walker. Anda hanya perlu menyayangi anjing, dan memastikan mereka pulang dengan selamat setelah berjalan-jalan. Jika Anda seorang pecinta anjing, bekerjalah&nbsp;<nobr style=\"text-size-adjust: none;\">paruh waktu</nobr>&nbsp;sebagai dog walker adalah a&nbsp;<nobr style=\"text-size-adjust: none;\">menang-menang</nobr>&nbsp;situasi. Anda bisa menghabiskan waktu bergaul dengan anjing setiap hari, ditambah sedikit uang ekstra yang masuk ke saku Anda.</p><div name=\"ikuti-survei-online\" data-hash=\"ikuti-survei-online\" style=\"text-size-adjust: none; font-family: Montserrat, sans-serif;\"></div><h3 style=\"text-size-adjust: none; line-height: 32px; font-weight: 700; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 24px; font-family: Montserrat, sans-serif; padding-top: 16px; letter-spacing: -0.2px;\"><div class=\"h__anchor\" data-hash=\"undefined\" style=\"text-size-adjust: none;\"></div>Ikuti survei online</h3><p class=\"gt-block\" style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Situs web seperti&nbsp;<a href=\"https://www.surveyjunkie.com/\" target=\"_blank\" rel=\"nofollow noopener\" style=\"text-size-adjust: none; color: rgb(0, 100, 184); cursor: pointer; text-decoration: none; transition: color 0.1s linear;\">Survei Junkie</a>&nbsp;membayar pengguna untuk menyelesaikan survei online. Apakah itu terdengar terlalu bagus untuk menjadi kenyataan? Ini bukan! Begini cara kerjanya:</p><p style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Perusahaan dan merek mengandalkan umpan balik konsumen untuk menghasilkan produk terbaik. Namun mendapatkan masukan dari masyarakat umum tidak selalu mudah. Jadi, situs web seperti Survey Junkie membayar orang untuk mengikuti survei tentang jenis produk atau layanan tertentu secara online. Umpan balik dari survei ini membantu perusahaan mengoptimalkan produk mereka. Dan, sebagai imbalannya, orang yang mengikuti survei akan dibayar dalam bentuk kartu hadiah, voucher PayPal, atau lainnya&nbsp;<nobr style=\"text-size-adjust: none;\">dunia nyata</nobr>&nbsp;hadiah.</p><div name=\"membuat-dan-menjual-kerajinan-secara-online\" data-hash=\"membuat-dan-menjual-kerajinan-secara-online\" style=\"text-size-adjust: none; font-family: Montserrat, sans-serif;\"></div><h3 style=\"text-size-adjust: none; line-height: 32px; font-weight: 700; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 24px; font-family: Montserrat, sans-serif; padding-top: 16px; letter-spacing: -0.2px;\"><div class=\"h__anchor\" data-hash=\"undefined\" style=\"text-size-adjust: none;\"></div>Membuat dan menjual kerajinan secara online</h3><p class=\"gt-block\" style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Jika Anda memiliki minat terhadap seni dan kerajinan, Anda dapat mengubahnya menjadi uang tunai&nbsp;<a href=\"https://www.ecwid.com/id/sell-crafts-online\" style=\"text-size-adjust: none; color: rgb(0, 100, 184); cursor: pointer; text-decoration: none; transition: color 0.1s linear;\">menjual kerajinan Anda secara online</a>. Etsy adalah platform e-niaga yang dirancang untuk kerajinan khusus atau buatan tangan, yang dibuat oleh orang-orang seperti Anda.</p><p class=\"gt-block\" style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Membuat&nbsp;<a href=\"https://www.ecwid.com/id/blog/how-to-sell-on-etsy.html\" style=\"text-size-adjust: none; color: rgb(0, 100, 184); cursor: pointer; text-decoration: none; transition: color 0.1s linear;\">Toko Etsy</a>&nbsp;relatif mudah juga. Gratis untuk membuat toko Anda dan menjadi penjual Etsy. Namun, ada sedikit biaya pendaftaran untuk produk apa pun yang Anda daftarkan di toko Etsy Anda.</p><p style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Oleh karena itu, Anda mungkin memerlukan bantuan orang tua untuk memulai jika ingin berjualan di Etsy.</p><div name=\"jual-barang-cetakan-di-etsy\" data-hash=\"jual-barang-cetakan-di-etsy\" style=\"text-size-adjust: none; font-family: Montserrat, sans-serif;\"></div><h3 style=\"text-size-adjust: none; line-height: 32px; font-weight: 700; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 24px; font-family: Montserrat, sans-serif; padding-top: 16px; letter-spacing: -0.2px;\"><div class=\"h__anchor\" data-hash=\"undefined\" style=\"text-size-adjust: none;\"></div>Jual barang cetakan di Etsy</h3><p class=\"gt-block\" style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Meskipun Anda tidak memiliki kerajinan tangan untuk dijual, Anda tetap dapat menggunakan Etsy sebagai cara menghasilkan uang.&nbsp;<a href=\"https://www.ecwid.com/id/blog/selling-digital-downloads-on-etsy.html\" style=\"text-size-adjust: none; color: rgb(0, 100, 184); cursor: pointer; text-decoration: none; transition: color 0.1s linear;\">Hasil cetak</a>, seperti agenda harian, pelacak pekerjaan rumah, dan grafik menyenangkan lainnya biasanya ada di antara Etsy&nbsp;<nobr style=\"text-size-adjust: none;\">terlaris</nobr>&nbsp;item. Remaja yang tertarik pada desain grafis dapat mengasah keterampilan mereka sekaligus menghasilkan uang dari barang cetakan.</p><p class=\"gt-block\" style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Lihat Etsy&nbsp;<a href=\"https://www.etsy.com/market/popular_printables\" target=\"_blank\" rel=\"nofollow noopener\" style=\"text-size-adjust: none; color: rgb(0, 100, 184); cursor: pointer; text-decoration: none; transition: color 0.1s linear;\">halaman barang cetakan populer</a>&nbsp;untuk menghasilkan ide-ide baru.</p><div name=\"jual-barang-koleksi-atau-barang-lama-secara-online\" data-hash=\"jual-barang-koleksi-atau-barang-lama-secara-online\" style=\"text-size-adjust: none; font-family: Montserrat, sans-serif;\"></div><h3 style=\"text-size-adjust: none; line-height: 32px; font-weight: 700; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 24px; font-family: Montserrat, sans-serif; padding-top: 16px; letter-spacing: -0.2px;\"><div class=\"h__anchor\" data-hash=\"undefined\" style=\"text-size-adjust: none;\"></div>Jual barang koleksi atau barang lama secara online</h3><p style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Tip lain tentang cara menghasilkan uang saat remaja secara online adalah dengan menjual barang-barang lama Anda. Barang lama atau tidak terpakai yang masih dalam kondisi baik bisa menjadi nilai lebih bagi Anda jika Anda menjualnya. Pakaian, mainan, dan permainan lama selalu bisa dijadikan rumah yang bagus, dan Anda bisa mendapatkan uang sambil mengosongkan ruang.</p><p class=\"gt-block\" style=\"text-size-adjust: none; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 32px; font-family: Helvetica, sans-serif; color: rgb(10, 12, 15); margin-right: 0px; margin-bottom: 32px; margin-left: 0px; letter-spacing: -0.1px;\">Meskipun menjual barang lama dapat menghasilkan uang, barang terbaik untuk dijual adalah barang koleksi. Kartu bisbol,&nbsp;<a href=\"https://www.ecwid.com/id/blog/selling-action-figures-online.html\" style=\"text-size-adjust: none; color: rgb(0, 100, 184); cursor: pointer; text-decoration: none; transition: color 0.1s linear;\">tokoh aksi</a>, memorabilia olahraga, dan buku komik adalah beberapa contohnya&nbsp;<nobr style=\"text-size-adjust: none;\">sangat didambakan</nobr>&nbsp;barang koleksi. Mendapatkan barang koleksi mungkin tidak mudah. Namun jika Anda bisa melakukannya, mereka bisa dijual dengan harga lebih banyak dari yang Anda harapkan.</p>', 'admin', 1, '8d526e8e0ee1c62bda95f91d3d657df8.jpg', '[{\"value\":\"cuanmuda\"},{\"value\":\"cuan\"},{\"value\":\"bisnis\"},{\"value\":\"creative\"}]', '2025-08-15 01:37:31', '2025-08-15 01:42:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `card_content`
--

CREATE TABLE `card_content` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `card_content`
--

INSERT INTO `card_content` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Halo guyss', '<p>kalkcxmanckjnacknalcknaxc</p>', '4d5bcd8fbb6ecd3156b3ca88dd17e04d.jpg', '2025-08-14 03:24:08', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'IT', 'blog', '2025-08-13 06:50:42', '2025-08-15 02:13:07'),
(2, 'Bisnis', 'blog', '2025-08-13 06:50:42', '2025-08-15 02:13:10'),
(4, 'App', 'portofolio', '2025-08-15 02:18:00', NULL),
(5, 'Web', 'portofolio', '2025-08-15 02:18:00', NULL),
(6, 'card', 'portofolio', '2025-08-15 03:45:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`id`, `name`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Kevin Adisurya Nugraha', 'ebcd036a0db50db993ae98ce380f6419.png', 1, '2025-08-13 04:49:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `portofolio`
--

CREATE TABLE `portofolio` (
  `id` int NOT NULL,
  `id_category` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_date` date NOT NULL,
  `project_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `portofolio`
--

INSERT INTO `portofolio` (`id`, `id_category`, `title`, `content`, `client_name`, `project_date`, `project_url`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 5, 'Membuat Website NiceAdmin FullStack', '<p>Halo ini websiteku</p>', 'Kevin Adisurya Nugraha', '2025-08-15', 'http://localhost/ppkdjp/compro_2025/', 'ee33f9305b1560aba82af5f24bb94a35.png', 1, '2025-08-15 02:41:51', NULL),
(2, 4, 'Membuat Aplikasi Gojek', '<p>halo ini adalah aplikasi gojek sayang aku buat</p>', 'Reza Kurniawan', '2025-08-16', 'http://localhost/ppkdjp/compro_2025/', 'efc98ce1227737f1af9fa1138cdf55f3.jpg', 1, '2025-08-15 03:44:29', NULL),
(3, 6, 'card responsive desain', '<p>Halo ini adalah Card dari bootstrap 5</p>', 'Ini adlah card yang dibuat dar Bootstrap', '2025-08-17', 'http://localhost/ppkdjp/compro_2025/', '1c82c06577d3741565a141e11e51f320.jpg', 1, '2025-08-15 03:45:59', NULL),
(4, 5, 'Web Desain Responsive', '<p>Ini adalah Web desain responsive</p>', 'ini adalah Web Desain Responsive', '2025-08-19', 'http://localhost/ppkdjp/compro_2025/', '5ccd62698e336d34c5c50483e56db114.jpg', 1, '2025-08-15 03:47:40', NULL),
(5, 4, 'Aplikasi Shoppee ERD', '<p>Ini adalah aplikasi shopee</p>', 'ini adalah Aplikasi Shopee responsive', '2025-08-20', 'http://localhost/ppkdjp/compro_2025/', 'cf1e204737cffe048ab140295fe87bc9.jpg', 1, '2025-08-15 03:48:58', NULL),
(6, 6, 'Create Image Card', '<p>Ini adlah card yang dibuat dar Bootstrap</p>', 'Ini adlah card yang dibuat dar Bootstrap', '2025-08-20', 'http://localhost/ppkdjp/compro_2025/', '9e609f687842d224a27b72ab6d8ef2d2.jpg', 1, '2025-08-15 03:49:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `alamat`, `logo`, `instagram`, `facebook`, `twitter`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '089616682955', 'Jl. Gunuk Raya No.36 Jakarta Selatan', '7fdc1a630c238af0815181f9faa190f5', 'https://www.instagram.com/kvn.ads/?hl=id', 'https://web.facebook.com/kevinadisurya', 'https://x.com/kevinadisurya', 'https://www.linkedin.com/in/kevin-adisurya-nugraha-51a913243/', '2025-08-11 07:32:00', '2025-08-12 02:05:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hallo selamat datang guyss', 'llsala,cla,c;lamclkaskcjnakjscnkjscbkjsndckjsdcnkjankcjnskjcnkjzcnzxc', 'e3e764933c002ef1c0ddaaaa76dbbd2a.jpg', '2025-08-13 02:04:32', NULL),
(2, 'Halo ini page ke dua guys', 'ksanckjndckjsdnckjsncjksncjsncjkscnbjkscnkjsdncsjdncjksdncskjdnckjsncsjcn', '83e37d8d10799aa2774aa2331ec1a82b.jpg', '2025-08-13 02:04:54', NULL),
(3, 'Ini juga guysss hero besar', 'ckjnsckjnsckjnsx,mc ,zjnckjd cczxczxc', '0bfb16d9709c2707ece2bc98dc829f92.jpg', '2025-08-13 02:05:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', 'password', '2025-08-12 01:13:44', '2025-08-12 01:13:44'),
(2, 'kevinUser', 'adisuryakevin36@gmail.com', 'password', '2025-08-11 04:52:21', '2025-08-11 04:56:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `card_content`
--
ALTER TABLE `card_content`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `card_content`
--
ALTER TABLE `card_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `client`
--
ALTER TABLE `client`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
