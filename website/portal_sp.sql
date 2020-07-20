-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Jul 2020 pada 05.44
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `portal_sp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
`id_berita` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `file` varchar(200) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `file`) VALUES
(1, 'admin', 'adaaaaaaaaaaaaaaaaaaaa', '', '', '', 'Y', 'Y', 'Y', '<p>adaaaaaaaaaaaaaaaaaaaaaaa</p>', '', 'Senin', '2020-06-29', '09:41:33', 'images.jpg', 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE IF NOT EXISTS `biodata` (
`id_bio` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `nidn` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tmplahir` text NOT NULL,
  `tgllahir` date NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `jabfung` varchar(20) NOT NULL,
  `jabstruk` varchar(20) NOT NULL,
  `bk` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `almt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
`iddosen` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `nidn` bigint(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tmplahir` text NOT NULL,
  `tgllahir` varchar(20) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `jabfung` varchar(20) NOT NULL,
  `jabstruk` varchar(20) NOT NULL,
  `bk` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `almt` text NOT NULL,
  `foto` text NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`iddosen`, `username`, `nidn`, `nama`, `tmplahir`, `tgllahir`, `pendidikan`, `jabfung`, `jabstruk`, `bk`, `email`, `almt`, `foto`, `tgl`) VALUES
(1, 'admin', 11111111111, 'abc', 'acb', '12 nov 1987', 's1 farmasi', 'Asisten Ahli', 'ketua', 'tekfar', 'aaa@gmail.com', 'aaaaaaaaaaaaaa', 'ktp1.jpeg', '2020-06-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
`id` int(5) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`) VALUES
(1, 'images.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE IF NOT EXISTS `identitas` (
`id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `alamat` text,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `alamat`, `no_telp`, `meta_keyword`, `favicon`) VALUES
(1, 'STIFARM Padang', 'akademik.stifarm@gmail.com', 'http://stifarm-padang.ac.id', 'stifarm padang', '-', 'Jln Kurao Pagang Dalam Siteba Padang', '(0751) 444344', 'Padang, Farmasi, STIFARM', 'logi_sp.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `aktif`) VALUES
(63, 'berita', 'admin', 'Y'),
(64, 'Kalender Akademik', 'admin', 'Y'),
(65, 'Kemahasiswaan', 'admin', 'Y'),
(66, 'Peraturan Akademik', 'admin', 'Y'),
(67, 'P3M', 'P3M', 'Y'),
(68, 'PPM', 'PPM', 'Y'),
(69, 'Pengumuman', 'admin', 'Y'),
(74, 'babang lain', 'admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE IF NOT EXISTS `pengumuman` (
`id_pengumuman` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi` text COLLATE latin1_general_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `file` varchar(200) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `file`) VALUES
(1, 'admin', 'cobaaaaaaaaaaaaaaaaaaaaaa', '', '', '', 'Y', 'Y', 'N', '<p>cobaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', '', 'Senin', '2020-06-29', '16:03:34', 'logo win 10.PNG', 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tendik`
--

CREATE TABLE IF NOT EXISTS `tendik` (
`idtendik` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tmplahir` text NOT NULL,
  `tgllahir` varchar(15) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `sk` varchar(15) NOT NULL,
  `jabstruk` varchar(20) NOT NULL,
  `bk` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `almt` text NOT NULL,
  `foto` text NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tendik`
--

INSERT INTO `tendik` (`idtendik`, `username`, `nik`, `nama`, `tmplahir`, `tgllahir`, `pendidikan`, `sk`, `jabstruk`, `bk`, `email`, `almt`, `foto`, `tgl`) VALUES
(1, 'admin', 12121212121, 'asdasd', 'asdasda', '12 nov 1989', 's1 pustaka', '2', 'analis labor ....', 'tekfar', 'aaa@gmail.com', 'asdasds', 'ktp3.jpeg', '2020-06-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` text NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`, `foto`, `aktif`) VALUES
(1, 'admin', 'admin', 'admin', 'logo win 10.PNG', 'Y'),
(3, 'uul', 'uul', 'user', 'uul.jpg', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
 ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
 ADD PRIMARY KEY (`id_bio`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
 ADD PRIMARY KEY (`iddosen`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
 ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
 ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `tendik`
--
ALTER TABLE `tendik`
 ADD PRIMARY KEY (`idtendik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
MODIFY `id_bio` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
MODIFY `iddosen` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tendik`
--
ALTER TABLE `tendik`
MODIFY `idtendik` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
