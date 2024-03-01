-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Mar 2024 pada 09.08
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery-rpl1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(6, 'Programmer', ' seluruh jurusan di smkn 8 jember', '2024-02-12', 6),
(9, 'Fauna', ' Hewan yang dilindungi di indonesio', '2024-02-12', 8),
(10, 'Flora', 'Flora, dari bahasa Latin, alam tumbuhan atau nabatah adalah khazanah segala macam jenis tanaman atau tumbuhan.', '2024-02-12', 8),
(15, 'Fashion', 'ashion atau busana adalah segala sesuatu yang dikenakan pada tubuh, baik dengan maksud melindungi tubuh maupun memperindah penampilan tubuh. Busana pada umumnya suatu ekspresi atau ungkapan pribadi yang tidak selalu sama untuk setiap orang', '2024-02-29', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(19, 'Komodo', 'Komodo merupakan sebuah satwa endemik asli Indonesia, dimana hanya di Indonesia satwa ini berada. ', '2024-02-12', 'komodo.jpg', 9, 8),
(20, 'Bunga Matahari', 'unga matahari (Helianthus annuus L.) adalah tumbuhan semusim dari suku kenikir-kenikiran (Asteraceae) yang populer, baik sebagai tanaman hias maupun tanaman penghasil minyak. Bunga tumbuhan ', '2024-02-12', 'bunga matahari.jpg', 10, 8),
(23, 'Programmer', 'programmer merupakan seseorang yang mengembangkan sebuah aplikasi atau sistem pada komputer untuk membuat suatu perangkat lunak (software) maupun perangkat keras (hardware) dengan menggunakan bahasa pemrograman.', '2024-02-29', 'foto5.jpg', 6, 10),
(24, 'Koala', 'KOALA adalah hewan endemik Australia. Binatang berkantung dengan nama ilmiah Phascolarctos cinereus ini sangat dilindungi di Australia. Meski terlihat lucu dan menggemaskan, koala tidak bisa dijadikan hewan peliharaan', '2024-02-29', 'koala.jpg', 9, 10),
(25, 'Fashion Casual Wanita Berhijab', 'Pakaian ini sangat cocok untuk di pakai saat keluar jalan-jalan', '2024-02-29', 'foto7.jpg', 15, 10),
(26, 'Harimau', 'Harimau (Panthera Tigris) adalah hewan yang masuk ke dalam kelompok felidae (kucing) dengan karakteristik belang hitam coklat di seluruh tubuhnya', '2024-02-29', 'foto8.jpg', 9, 10),
(27, 'Amorphophallus titanum', 'Bunga ini merupakan tumbuhan dari suku talas-talasan endemik dari Sumatera, Indonesia, yang dikenal sebagai tumbuhan dengan bunga terbesar di dunia. Bunga bangkai mengalami dua fase dalam siklus hidupnya yang muncul secara bergantian, yaitu fase vegetatif (aseksual) dan generatif (seksual).', '2024-02-29', 'foto9.jpg', 10, 10),
(28, 'Nepenthes', 'Kantong semar ada yang hidup di tempat lembab dan sedikit sinar matahari dan adapula yang hidup di tempat yang terbuka dengan cahaya matahari yang banyak. Di Indonesia setidaknya terdapat 85 jenis kantong semar. Habitat terbanyak berada di Kalimantan dan Sumatera', '2024-02-29', 'foto1.jpg', 10, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(21, 25, 10, 'ide fashion sangat menarik', '2024-02-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(6, 19, 8, '2024-02-12'),
(7, 20, 8, '2024-02-12'),
(16, 19, 9, '2024-02-12'),
(17, 20, 9, '2024-02-12'),
(20, 19, 6, '2024-02-12'),
(21, 20, 6, '2024-02-12'),
(42, 25, 10, '2024-02-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(6, 'pengguna', '202cb962ac59075b964b07152d234b70', 'ferin@gmail.com', 'pengguna', 'semboro'),
(8, 'admin', '698d51a19d8a121ce581499d7b701668', 'admin@gmail.com', 'admin', 'jember'),
(9, 'user', '202cb962ac59075b964b07152d234b70', 'user@gmail.com', 'user', 'jember'),
(10, 'icha', '202cb962ac59075b964b07152d234b70', 'icha@gmail.com', 'icha hanum', 'jember'),
(11, 'nada', '202cb962ac59075b964b07152d234b70', 'nada@gmail.com', 'faiha nada', 'jember');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
