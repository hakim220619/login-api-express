-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2023 pada 18.14
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodeappexpress`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `refresh_tokens`
--

CREATE TABLE `refresh_tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '1361ae7f67815bbd92f31ea5341ba68b', '2023-12-07 23:11:35'),
(2, '1a41551765229163e35c9a91c25866b0', '2023-12-10 22:05:10'),
(2, 'd7c77265d1c26ccfa5e4aeabaa41c070', '2023-12-10 23:49:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'User name', NULL, 'user@email.com', '$2b$10$qywDXR2NjNntYi54LTF4Au4kDsXSgUu2jQC3A9vGZnF8m5QC4uC2u', NULL, '2023-12-07 23:09:24', '2023-12-07 23:09:24'),
(2, 'danilukman', NULL, 'danilukman@gmail.com', '$2b$10$55.avsauRYuhrAm3Bw5u2.6YqZHYh7pcaT1uYTtTvVpooOLWg32z.', NULL, '2023-12-10 22:05:05', '2023-12-10 22:05:05'),
(3, 'danilukman', NULL, 'danilukman2206@gmail.com', '$2b$10$dHe9FAnXFTGy2FY28wN9beF9zF8z/440WYpt6yF4TjoLIhPCGErDm', NULL, '2023-12-10 23:46:20', '2023-12-10 23:46:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `token` (`token`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD CONSTRAINT `refresh_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
