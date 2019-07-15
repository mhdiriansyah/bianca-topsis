-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 15, 2019 at 12:34 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pjbtopsis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nama_guru`, `kelas`) VALUES
(1, 'Achmad Ubaidillah, S.Pd.', 'X LISTRIK 1'),
(2, 'Yuli Nurhidayah, S.Pd.', 'X LISTRIK 2'),
(4, 'M. Nahya Sururi Al-Khaq, S.HI.', 'X LISTRIK 3'),
(5, 'Novie Dyah Windyaningrum, S.Pd.', 'X LISTRIK 4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Instalasi'),
(2, 'Pembangkit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kehadiran`
--

CREATE TABLE `tbl_kehadiran` (
  `id_kehadiran` varchar(13) NOT NULL,
  `nis` int(4) NOT NULL,
  `sakit` int(1) NOT NULL,
  `ijin` int(1) NOT NULL,
  `alpa` int(1) NOT NULL,
  `terlambat` int(1) NOT NULL,
  `status_kehadiran` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kehadiran`
--

INSERT INTO `tbl_kehadiran` (`id_kehadiran`, `nis`, `sakit`, `ijin`, `alpa`, `terlambat`, `status_kehadiran`) VALUES
('KEHADIRAN0001', 6175, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kepribadian`
--

CREATE TABLE `tbl_kepribadian` (
  `id_kepribadian` varchar(15) NOT NULL,
  `nis` int(4) NOT NULL,
  `nilai_1` int(1) NOT NULL,
  `nilai_2` int(1) NOT NULL,
  `nilai_3` int(1) NOT NULL,
  `nilai_4` int(1) NOT NULL,
  `rata_rata` decimal(4,2) NOT NULL,
  `status_kepribadian` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kepribadian`
--

INSERT INTO `tbl_kepribadian` (`id_kepribadian`, `nis`, `nilai_1`, `nilai_2`, `nilai_3`, `nilai_4`, `rata_rata`, `status_kepribadian`) VALUES
('KEPRIBADIAN0001', 6175, 85, 83, 68, 85, '80.25', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kesehatanfisik`
--

CREATE TABLE `tbl_kesehatanfisik` (
  `id_kesehatanfisik` varchar(12) NOT NULL,
  `nis` int(4) NOT NULL,
  `tb` int(3) NOT NULL,
  `warna` int(2) NOT NULL,
  `lari` int(1) NOT NULL,
  `tht` int(1) NOT NULL,
  `status_kesehatanfisik` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kesehatanfisik`
--

INSERT INTO `tbl_kesehatanfisik` (`id_kesehatanfisik`, `nis`, `tb`, `warna`, `lari`, `tht`, `status_kesehatanfisik`) VALUES
('KESFISIK0001', 6175, 160, 0, 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kriteria`
--

CREATE TABLE `tbl_kriteria` (
  `id_kriteria` varchar(15) NOT NULL,
  `judul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`id_kriteria`, `judul`) VALUES
('KRITERIA01', 'Penjurusan'),
('KRITERIA02', 'Grafik Remedial'),
('KRITERIA03', 'Peringkat Rapor Jurusan'),
('KRITERIA04', 'Kehadiran'),
('KRITERIA05', 'Kepribadian'),
('KRITERIA06', 'Kesehatan & Fisik'),
('KRITERIA07', 'Wawancara');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilairemedial`
--

CREATE TABLE `tbl_nilairemedial` (
  `id_nilairemedial` varchar(12) NOT NULL,
  `nis` int(4) NOT NULL,
  `sem_1` int(2) NOT NULL,
  `sem_2` int(2) NOT NULL,
  `sem_3` int(2) NOT NULL,
  `sem_4` int(2) NOT NULL,
  `status_remedial` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilairemedial`
--

INSERT INTO `tbl_nilairemedial` (`id_nilairemedial`, `nis`, `sem_1`, `sem_2`, `sem_3`, `sem_4`, `status_remedial`) VALUES
('REMEDIAL0001', 6175, 2, 3, 2, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rapor`
--

CREATE TABLE `tbl_rapor` (
  `id_rapor` varchar(15) NOT NULL,
  `nis` int(4) NOT NULL,
  `peringkat_jurusan` int(4) NOT NULL,
  `status_rapor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rapor`
--

INSERT INTO `tbl_rapor` (`id_rapor`, `nis`, `peringkat_jurusan`, `status_rapor`) VALUES
('RAPOR0001', 6175, 43, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` int(4) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `agama` varchar(25) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nama_orang_tua` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `id_guru`, `id_jurusan`, `nama_siswa`, `jenis_kelamin`, `agama`, `tempat`, `tgl_lahir`, `nama_orang_tua`, `alamat`) VALUES
(6170, 1, 1, 'Abdul Kharim', 'L', 'islam', 'Pasir', '2001-01-04', 'Suwardi', 'Jl. Anusopati Rt. 24 Rw. 03 Sumberpucung Malang'),
(6171, 2, 1, 'Adiptya Prayogi Admaja', 'L', 'islam', 'Riau', '2001-12-07', 'Bambang Sumantri', 'Jl. Flamboyan 14 Rt. 18 Rw. 03 Karangkates Malang'),
(6172, 2, 1, 'Aditya Dwi Agung Nugroho', 'L', 'islam', 'Blitar', '2001-05-26', 'Darwito', 'Rt. 03 Rw. 03 Ngaglik Ngreco Selorejo Blitar'),
(6173, 4, 2, 'Aditya Nur Pratama', 'L', 'islam', 'Malang', '2001-08-26', 'Sholeh Nur Rahmad', 'Rt. 01 Rw. 05 Bulurejo Tumpakrejo Kalipare Malang'),
(6174, 2, 1, 'Aditya Rama Saputra', 'L', 'islam', 'Malang', '2001-07-01', 'Gugus Wahyono', 'Rt. 01 Rw. 07 Kalitelo Kaliasri Kalipare Malang'),
(6175, 1, 2, 'Aghis Wahyu Mahendra', 'L', 'islam', 'Malang', '2000-10-30', 'Darul Khoiri', 'Jl. Flamboyan 16 Rt. 18 Rw. 03 Karangkates Sumberpucung Malang'),
(6176, 2, 2, 'Ahmad Dhani', 'L', 'islam', 'Blitar', '2002-04-18', 'Guntur Puji Wanto', 'Rt. 04 Rw. 06 Ngadri Binangun Blitar'),
(6177, 2, 2, 'Ahmad Fauzi', 'L', 'islam', 'Malang', '2001-11-15', 'Alvian Cholik', 'Rt. 28 Rw. 06 Tawang Sukowilangun Kalipare Malang'),
(6178, 5, 1, 'Ahmad Mujtaba', 'L', 'islam', 'Malang', '2002-01-30', 'Abdurrohman', 'Rt. 15 Rw. 04 Ternyang Sumberpucung Malang'),
(6179, 1, 2, 'Akhmad Thorfaqi Wibowo', 'L', 'islam', 'Malang', '2000-10-26', 'Nurwono', 'Jl. Rambutan 54 Rt. 07 Rw. 01 Karangkates Sumberpucung Malang'),
(6180, 2, 1, 'Aldam Kharisma Tama', 'L', 'islam', 'Malang', '2002-06-06', 'Sugianto', 'Jl. Tengku Umar No.701 Rt. 19 Rw. 07 Sambigede Sumberpucung Malang'),
(6181, 4, 2, 'Aldi Cahyono', 'L', 'islam', 'Malang', '2001-07-26', 'Mis Rianto', 'Jl. Kebonsari Rt. 10 Rw. 02 Kebonsri Ngebruk Sumberpucung Malang'),
(6182, 5, 2, 'Aldi Nur Efendi', 'L', 'islam', 'Tabalong', '2002-08-09', 'Agus Pramono', 'Rt. 03 Rw. 02 Darungan Selorejo Malang'),
(6183, 1, 1, 'Aldi Sanjaya', 'L', 'islam', 'Malang', '2000-10-30', 'Asim', 'Rt. 16 Rw. 04 Krajan Ternyang Sumberpucung Malang'),
(6184, 2, 1, 'Aldo Affan Fernanda', 'L', 'islam', 'Malang', '2001-04-16', 'Winarko', 'Jl. Nusantara 131 Rt. 26 Rw. 03 Sumberpucung Malang'),
(6185, 4, 2, 'Alfan Fajrul Falah', 'L', 'islam', 'Malang', '2001-04-06', 'Joni', 'Jl. Raya No 26 Rt. 25 Rw. 04 Jatikerto Kromengan Malang'),
(6186, 5, 1, 'Amanarul Roziqin', 'L', 'islam', 'Malang', '2001-12-28', 'Heru Sutopo', 'Jl. Kh. Moh. Toha Rt. 29 Rw. 04 Jatikerto Kromengan Malang'),
(6187, 1, 2, 'Anas Tasya Karisma Putri', 'P', 'islam', 'Malang', '2002-05-11', 'Purwo Wardoyo', 'Rt. 25 Rw. 05 Purwosari Peniwen Kromengan Malang'),
(6188, 1, 1, 'Andika Dwi Prakusa', 'L', 'islam', 'Malang', '2000-10-26', 'Yuni Agung Prakoso', 'Jl. Bandeng 559 Rt. 02 Rw. 01 Kauman Bangil Pasuruan'),
(6189, 2, 1, 'Annisa Febrianti', 'P', 'islam', 'Blitar', '2002-02-24', 'Didik Heriyanto', 'Rt. 01 Rw. 02 Kepel Sumberagung Selorejo Blitar'),
(6190, 5, 2, 'Aprilian Yusuf Saputra', 'L', 'islam', 'Malang', '2002-04-12', 'Jono', 'Jl. Asparaga 08 Rt. 19 Rw. 03 Karangkates Sumberpucung Malang'),
(6191, 4, 1, 'Aulin Septiana', 'P', 'islam', 'Malang', '2001-09-13', 'Boiman', 'Rt. 03 Rw. 01 Barisan Arjowilangun Kalipare Malang'),
(6192, 2, 2, 'Bambang Ahmad Rianto', 'L', 'islam', 'Malang', '2002-08-01', 'Wawan Budiatmoko', 'Jl. Pandean Rt. 39 Rw. 06 Ngebruk Sumberpucung Malang'),
(6193, 5, 1, 'Bambang Setyawan', 'L', 'islam', 'Malang', '2001-08-04', 'Bibit', 'Jl. Kh Agus Salim Rt. 05 Rw. 02 Senggreng Sumberpucung Malang'),
(6194, 1, 1, 'Bayu Eka Pratama', 'L', 'islam', 'Blitar', '2001-10-30', 'Puji Santoso', 'Rt. 53 Rw. 13 Dawung Pagerwojo Kesamben Blitar'),
(6195, 2, 1, 'Bayu Ryan Pratama', 'L', 'islam', 'Blitar', '2000-05-27', 'Sudarmanto', 'Rt. 03 Rw. 01 Ngreco Baru Ngreco Selorejo Blitar'),
(6196, 5, 1, 'Berta Berliati Ina Wunga', 'L', 'islam', 'Malang', '2001-07-08', 'Gaspar Geroda Sabon', 'Rt. 03 Rw. 01 Krajan Jatiguwi Sumberpucung Malang'),
(6197, 5, 1, 'Cindi Dwi Yanti', 'L', 'islam', 'Blitar', '2002-01-28', 'Ponimin', 'Rt. 03 Rw. 04 Sidomilayo Sidomulyo Selorejo Blitar'),
(6198, 5, 1, 'David Jodie Sutrisno', 'L', 'islam', 'Surabaya', '2002-03-02', 'Sutrisno', 'Rt. 15 Rw. 04 Darungan Kalirejo Kalipare Malang'),
(6199, 1, 1, 'Daviet Eka Putra', 'L', 'islam', 'Malang', '2001-08-10', 'Pramono', 'Jl. Mentaaraman Rt. 32 Rw. 08 Jatiguwi Sumberpucung Malang'),
(6200, 4, 1, 'Dela Frida Maulida', 'P', 'islam', 'Malang', '2002-06-01', 'Sugianto', 'Jl. Punden Gg.iv Rt. 22 Rw. 03 Jatikerto Kromengan Malang'),
(6201, 2, 1, 'Dewi Safitri', 'P', 'islam', 'Malang', '2002-01-01', 'Surahman', 'Jl. Plaseman Rt. 38 Rw. 05 Jatikerto Kromengan Malang'),
(6202, 4, 1, 'Dexijan Alfito Jainul Rozikin', 'L', 'islam', 'Malang', '2002-01-05', 'Pitoyo Adedy Suleman', 'Rt. 01 Rw. 11 Rekesan Jambuwer Kromengan Malang'),
(6203, 4, 2, 'Dimas Andri Pangestu', 'L', 'islam', 'Malang', '2001-11-28', 'Misenan Andrianto', 'Jl. Lotekol Rt. 66 Rw. 07 Arjowilangun Kalipare Malang'),
(6204, 2, 1, 'Dimas Eka Setiyo Saputro', 'L', 'islam', 'Malang', '2000-07-07', 'Joko Margono', 'Rt. 02 Rw. 01 Ngreco Baru Ngerco Selorejo Blitar'),
(6205, 4, 1, 'Dina Maulana Setyoningrum', 'P', 'islam', 'Blitar', '2002-05-20', 'Rudiono', 'Rt. 01 Rw. 02 Boro Selorejo Blitar'),
(6206, 4, 2, 'Dina Natasya', 'P', 'islam', 'Malang', '2002-01-11', 'Tupan', 'Jl. Pahlawan Trip Rt. 03 Rw. 01 Jatikerto Kromengan Malang'),
(6207, 1, 1, 'Diomeirico Nicles Vernando', 'L', 'islam', 'Malang', '2001-07-06', 'S. Pramono', 'Rt. 07 Rw. 04 Tumpakrejo Kalipare Malang'),
(6208, 1, 1, 'Diyan Novita Anggi', 'L', 'islam', 'Blitar', '2001-08-09', 'Sumarno', 'Rt. 03 Rw. 02 Gunungsari Sidomulyo Selorejo Blitar'),
(6209, 2, 1, 'Dodi Setyawan', 'L', 'islam', 'Malang', '2001-07-03', 'Sugianto', 'Jl. Untung Suropati Rt. 09 Rw. 03 Sambigede Sumberpucung Malang'),
(6210, 2, 2, 'Doni Subroto', 'L', 'islam', 'Malang', '2001-09-01', 'Gatot Subroto', 'Rt. 25 Rw. 06 Glagaharum Jambuwer Kromengan Malang'),
(6211, 2, 2, 'Dwi Anggraini Purwanto', 'L', 'islam', 'Malang', '2001-11-16', 'Kintoko', 'Rt. 06 Rw. 04 Plaosan Wonosari Malang'),
(6212, 4, 1, 'Dwi Nugrahanti', 'P', 'islam', 'Malang', '2001-09-07', 'Ponidi', 'Jl. Jend Basuki Rahmat 58 Rt. 15 Rw. 02 Karangkates Sumberpucung Malang'),
(6213, 5, 2, 'Dwi Wisma Firmansyah', 'L', 'islam', 'Malang', '2002-02-16', 'Sanadi', 'Jl. Jl. Sirsat No.20 A Rt. 13 Rw. 02 Karangkates Sumberpucung Malang'),
(6214, 1, 2, 'Ergik Mei Rusandi', 'L', 'islam', 'Malang', '2000-05-05', 'Rusandi', 'Jl. Jl. Kromodikoro Rt. 03 Rw. 01 Senggreng Sumberpucung Malang'),
(6215, 2, 1, 'Erik Gidion', 'L', 'kristen katolik', 'Malang', '2001-01-07', 'Slamet Budiono', 'Jl. Kodari No 11 Rt. 21 Rw. 04 Ngebruk Sumberpucung Malang'),
(6216, 5, 1, 'Erlita Herlangga', 'L', 'islam', 'Malang', '2001-10-15', 'Citra Dwi Sugianto', 'Jl. Dr.cipto Rt. 07 Rw. 04 Sambigede Sumberpucung Malang'),
(6217, 5, 1, 'Fadiatul Mustaghfiroh', 'P', 'islam', 'Malang', '2001-11-12', 'Muliono', 'Rt. 07 Rw. 01 Plandi Wonosari Malang'),
(6218, 2, 1, 'Fadila Alifia Nurohmah', 'P', 'islam', 'Malang', '2002-11-11', 'Gofur Prayogo', 'Jl. Asparaga Rt. 19 Rw. 03 Karangkates Sumberpucung Malang'),
(6219, 4, 2, 'Farid Saifudin', 'L', 'islam', 'Malang', '2002-04-22', 'Bandi Purwanto', 'Rt. 20 Rw. 05 Krajan Jatiguwi Sumberpucung Malang'),
(6220, 4, 2, 'Faris Aji Sasongko', 'L', 'islam', 'Malang', '2001-08-02', 'Kacipto', 'Jl. Pahlawan Trip Rt. 01 Rw. 01 Latikerto Jatikerto Kromengan Malang'),
(6221, 1, 2, 'Ferry Argadinata', 'L', 'islam', 'Malang', '2002-01-18', 'Karman', 'Jl. Ir. Soekarno Simp Ii Rt. 13 Rw. 03 Jatiguwi Sumberpucung Malang'),
(6222, 1, 1, 'Fia Lestari', 'L', 'islam', 'Blitar', '2002-01-14', 'Mulyadi', 'Rt. 01 Rw. 04 Cungkup Ngrendeng Selorejo Blitar'),
(6223, 4, 2, 'Gilang Agung Prasetyo', 'L', 'islam', 'Malang', '2001-12-17', 'Didik Yuniwantoro', 'Jl. Jend. Basuki Rahmat Rt. 15 Rw. 02 Karangkates Sumberpucung Malang'),
(6224, 5, 1, 'Gusdin Nurwasis', 'L', 'islam', 'Malang', '2002-08-15', 'Patah', 'Jl. Dsn Kaliasem Rt. 06 Rw. 02 Kaliasem Kalipare Malang'),
(6225, 1, 1, 'Hafid Bagus Perdana', 'L', 'islam', 'Malang', '2002-05-28', 'Lasianto', 'Rt. 02 Rw. 04 Tempursari Kulon Sumbertempur Wonosari Malang'),
(6226, 2, 2, 'Hanggayughma Agung Jiwantoko', 'L', 'islam', 'Malang', '2001-05-10', 'Zainal Abidin', 'Jl. Sultan Agung Rt. 24 Rw. 03 Sumberpucung Malang'),
(6227, 4, 1, 'Helmi Fitra Rizaldi', 'L', 'islam', 'Malang', '2001-12-01', 'Kadarusman', 'Jl. Jl. Jokoromo Rt. 30 Rw. 05 Ngebruk Sumberpucung Malang'),
(6228, 2, 1, 'Helmi Musyaffa Setyono', 'L', 'islam', 'Malang', '2001-10-30', 'Sukarmiani', 'Rt. 01 Rw. 01 Kepel Sumberagung Selorejo Blitar'),
(6229, 5, 1, 'Herlana Sandi Saputra', 'L', 'islam', 'Malang', '2002-07-15', 'Slamet', 'Rt. 04 Rw. 01 Kluwut Wonosari Malang'),
(6230, 4, 2, 'Hoki Fatwa Nurfadillah', 'P', 'islam', 'Purworejo', '2001-11-05', 'Suparji', 'Rt. 04 Rw. 01 Dsn. Barisan Arjowilangun Kalipare Malang'),
(6231, 4, 2, 'Huda Nur Rokhim', 'L', 'islam', 'Malang', '2002-03-13', 'Zainuri', 'Jl. Tirtonadi Rt. 23 Rw. 03 Jatikerto Kromengan Malang'),
(6232, 1, 2, 'Ika Dhiah Rosita', 'L', 'islam', 'Malang', '2002-05-04', 'Siswadi', 'Rt. 14 Rw. 02 Krajan Ngadirejo Kromengan Malang'),
(6233, 5, 1, 'Ilham Thariq Firmansyah', 'L', 'islam', 'Malang', '2001-06-01', 'Hasan Nurdin', 'Jl. Kauman I Rt. 17 Rw. 03 Ngebruk Sumberpucung Malang'),
(6234, 4, 2, 'Imam Turmudi', 'L', 'islam', 'Malang', '1999-09-06', 'Winarto', 'Rt. 30 Rw. 07 Jatimulyo Jatiguwi Sumberpucung Malang'),
(6235, 2, 2, 'Imanda Kusuma Kari Putri', 'P', 'islam', 'Malang', '2002-02-07', 'Suroto', 'Jl. Mansari Rt. 02 Rw. 01 Slorok Kromengan Malang'),
(6236, 4, 2, 'Indi Agustina', 'P', 'islam', 'Blitar', '2001-08-28', 'Juri', 'Rt. 04 Rw. 02 Dsn. Gunungsari Sidomulyo Selorejo Blitar'),
(6237, 5, 1, 'Iva Silvianti', 'P', 'Islam', 'Malang', '2001-06-12', 'Roji\'in', 'Rt. 45 Rw. 04 Pangganglele Arjowilangun Kalipare Malang'),
(6238, 5, 1, 'Kinanti Laras Cahyaning Siwi', 'L', 'islam', 'Malang ', '2001-11-27', 'Hari Suprianto', 'Jl. Yos Sodarso Rt. 11 Rw. 04 Sambigede Sumberpucung Malang'),
(6239, 5, 2, 'Krisna Hendava Sentanu', 'L', 'islam', 'Malang', '2002-01-14', 'Sentanu', 'Rt. 02 Rw. 05 Dukuh Tumpangrejo Kebobang Wonosari Malang'),
(6240, 1, 2, 'Leni Nurhayati', 'P', 'islam', 'Malang', '2001-05-06', 'Katiman', 'Rt. 38 Rw. 09 Banduarjo Sumberpetung Kalipare Malang'),
(6241, 2, 1, 'Limma Ambar Wijayanti', 'P', 'islam', 'Blitar', '2001-06-15', 'Sulihono', 'Rt. 04 Rw. 01 Ngreco Baru Ngerco Selorejo Blitar'),
(6242, 5, 1, 'Linda Damayanti', 'L', 'islam', 'Malang', '2001-05-18', 'Sumardi', 'Rt. 17 Rw. 03 Cendol Timur Ngadirejo Kromengan Malang'),
(6243, 5, 2, 'Linda Evi Handayani Putri Bahri', 'P', 'islam', 'Malang', '2002-02-04', 'Saiful Bahri', 'Jl. Sido Makmur 28 Rt. 02 Rw. 01 Ngadilangkung Kepanjen Malang'),
(6244, 1, 2, 'Lisa Emilia Putri', 'P', 'islam', 'Blitar', '2001-11-21', 'Kariono', 'Rt. 04 Rw. 02 Dsn. Gunungsari Sidomulyo Selorejo Blitar'),
(6245, 2, 2, 'Lisa Rinanda', 'P', 'islam', 'Malang', '2002-03-09', 'Agus Budiono', 'Jl. Pahlawan Trip Rt. 03 Rw. 01 Jatikerto Keomengan Malang'),
(6246, 4, 1, 'Lovia Agustina', 'L', 'islam', 'Malang', '2001-08-10', 'M.syarifudin Arif', 'Jl. Pakis 03 Rt. 20 Rw. 03 Karangkates Sumberpucung Malang'),
(6247, 5, 1, 'Ludvika Nur Adelia Dewanti', 'P', 'islam', 'Malang', '2001-12-04', 'Senewan', 'Rt. 52 Rw. 05 Duren Arjowilangun Kalipare Malang'),
(6248, 1, 2, 'Maulana Sheva Fahrezi', 'L', 'islam', 'Malang', '2001-02-18', 'Hadi Prianto', 'Jl. Nusa Indah 07 Rt. 19 Rw. 03 Karangkates Sumberpucung Malang'),
(6249, 1, 1, 'Mayang Mahmudah', 'P', 'islam', 'Malang', '2002-04-17', 'Turiman', 'Jl. Cendrawasih 1 Rt. 19 Rw. 06 Senggreng Sumberpucung Malang'),
(6250, 5, 1, 'Mespin Andayani', 'P', 'islam', 'Blitar', '2001-03-01', 'Sugimin', 'Rt. 01 Rw. 02 Dawung Olak-alen Selorejo Blitar'),
(6251, 1, 2, 'Mirella Caesatama Berliana', 'L', 'islam', 'Blitar', '2002-03-23', 'Kusnadi', 'Rt. 01 Rw. 04 Sembung Pagergunung Kesamben Blitar'),
(6252, 5, 1, 'Mita Patrisia', 'P', 'islam', 'Malang', '2001-10-10', 'Juki', 'Rt. 56 Rw. 05 Duren Arjowilangun Kalipare Malang'),
(6253, 2, 2, 'Mochamad Yusuf Nurohman', 'L', 'islam', 'Malang', '2001-05-21', 'Suwardi', 'Jl. Pandan 08 Rt. 20 Rw. 03 Karangkates Sumberpucung Malang'),
(6254, 2, 1, 'Mochammad Nafa\' Chalimi', 'L', 'Islam', 'Malang', '2002-02-03', 'M. Nurul Huda', 'Jl. Kaliasem Rt. 07 Rw. 02 Kalipare Malang'),
(6255, 2, 2, 'Mochammad Yusuf', 'L', 'islam', 'Malang', '2001-03-26', 'Wignyo Sasono', 'Rt. 10 Rw. 05 Mangun Maguan Ngajum Malang'),
(6256, 2, 1, 'Muchamad Abdullah Rosyid', 'L', 'Islam', 'Malang', '2000-07-23', 'Mochamad Amin Ma\'ruf', 'Jl. Pesantren Rt. 39 Rw. 05 Karangkates Sumberpucung Malang'),
(6257, 1, 2, 'Muhamad Rio Yunianto', 'L', 'islam', 'Malang', '2002-02-24', 'Duddy Heziyanto', 'Rt. 11 Rw. 02 Tumpakmiri Arjosari Kalipare Malang'),
(6258, 2, 2, 'Muhammad El Marbath', 'L', 'islam', 'Malang', '2002-02-18', 'Maulana Syarif Hidayatulloh', 'Jl. A Yani Rt. 23 Rw. 03 Karangkates Sumberpucung Malang'),
(6259, 1, 1, 'Muhammad Firman Adihidayattulloh', 'L', 'islam', 'Malang', '2001-10-02', 'Riadi', 'Rt. 14 Rw. 03 Krantil Karangrejo Kromengan Malang'),
(6260, 5, 1, 'Muhammad Yusuf Asyari Ramadhan', 'L', 'Islam', 'Malang', '2001-04-12', 'Muhammad Musta\'in Asyari', 'Jl. Rambutan Ii/b Rt. 09 Rw. 01 Karangkates Sumberpucung Malang'),
(6261, 2, 2, 'Mukhamad Ainul Yakin', 'L', 'Islam', 'Malang', '2001-08-04', 'Mahfud Zuba\'idi', 'Jl. Anusopati Rt. 24 Rw. 03 Sumberpucung Malang'),
(6262, 1, 1, 'Mutia Nisa Nurjanah', 'P', 'islam', 'Malang', '2000-10-29', 'Rakum', 'Rt. 01 Rw. 05 Plaosan Wonosari Malang'),
(6263, 5, 2, 'Naufal Arrafi Dea Amabel', 'L', 'islam', 'Malang', '2001-09-30', 'Dedy Setyobudi', 'Jl. Waringinarjo Rt. 16 Rw. 05 Senggreng Sumberpucung Malang'),
(6264, 2, 2, 'Ninid Novitasari', 'P', 'islam', 'Blitar', '2000-11-10', 'Sakri', 'Rt. 03 Rw. 02 Ngembul Binangun Blitar'),
(6265, 5, 1, 'Nining Dwi Nur Ardianti', 'P', 'islam', 'Malang', '2001-03-28', 'Sukarmanto', 'Rt. 47 Rw. 05 Duren Arjowilangun Kalipare Malang'),
(6266, 1, 1, 'Nugroho Erwin Wicaksono', 'L', 'islam', 'Blitar', '2002-08-21', 'Edy Supristiyantoro', 'Rt. 13 Rw. 04 Krajan Pagerwojo Kesamben Blitar'),
(6267, 1, 1, 'Nursadi Widianto', 'L', 'islam', 'Malang', '2000-04-07', 'Ngatemin', 'Rt. 09 Rw. 01 Bangelan Wonosari Malang'),
(6268, 2, 2, 'Nurul Rodiyah', 'P', 'islam', 'Malang', '2002-05-07', 'Ponomin', 'Jl. Kawi Rt. 15 Rw. 04 Mangir Mangunrejo Kepanjen Malang'),
(6269, 4, 1, 'Prayogi Bayu Salaksa Putra', 'L', 'islam', 'Malang', '2001-08-12', 'Mujianto', 'Jl. Sidodadi Rt. 34 Rw. 05 Jatikerto Kromengan Malang'),
(6270, 4, 1, 'Rani Dwi Novianti', 'P', 'islam', 'Malang', '2001-11-02', 'Eko Santoso', 'Rt. 01 Rw. 02 Baos Butun Gandusari Blitar'),
(6271, 5, 1, 'Redando Yomawan Oka Putra', 'L', 'Islam', 'Malang', '2001-09-30', 'Dwi Mawan', 'Rt. 24 Rw. 03 Dsn. Cendol Tumur Ngadirejo Kromengan Malang'),
(6272, 2, 1, 'Rendra Agustina', 'L', 'islam', 'Blitar', '2001-08-26', 'Sukarno', 'Rt. 03 Rw. 03 Dsn. Ngadri Ngadri Binangun Blitar'),
(6273, 1, 2, 'Reno Alam Dewa', 'L', 'islam', 'Blitar', '2002-03-03', 'Iwan Budianto', 'Rt. 01 Rw. 09 Sobayan Pedan Klaten'),
(6274, 2, 2, 'Restikasari Dwi Pratiwi', 'P', 'islam', 'Malang', '2001-08-12', 'Sanim', 'Rt. 03 Rw. 04 Plaosan Wonosari Malang'),
(6275, 4, 2, 'Rio Saputra', 'L', 'islam', 'Malang', '2002-04-19', 'Supriono', 'Rt. 03 Rw. 02 Krajan 2 Tumpak Rejo Kalipare Malang'),
(6276, 5, 1, 'Rivane Putri Sari', 'L', 'islam', 'Malang', '2001-10-15', 'Kaspirn', 'Rt. 30 Rw. 03 Pangganglele Arjowilangun Kalipare Malang'),
(6277, 4, 1, 'Riza Amelia', 'P', 'islam', 'Malang', '2001-10-04', 'Jumadi', 'Jl. Tirtonadi Rt. 23 Rw. 03 Jatikerto Kromengan Malang'),
(6278, 4, 2, 'Rizal Rahman Fauzi', 'L', 'islam', 'Malang', '2001-10-07', 'Achmad Aminudin', 'Rt. 07 Rw. 02 Sumberoto Donomulyo Malang'),
(6279, 1, 2, 'Rizki Adi Prayogo', 'L', 'islam', 'Malang', '2002-01-18', 'Sudarsono', 'Jl. J. Sultan Agung 22 Rt. 30 Rw. 03 Sumberpucung Malang'),
(6280, 1, 1, 'Romadhon Nur Rachmad', 'L', 'islam', 'Blitar', '2001-11-23', 'Rahmad Yuwono', 'Rt. 02 Rw. 02 Jarangan Boro Selorejo Blitar'),
(6281, 2, 2, 'Rudi Siswanto', 'L', 'islam', 'Malang', '2001-03-23', 'Yahmin', 'Jl. Kebonsari Rt. 09 Rw. 02 Ngebruk Sumberpucung Malang'),
(6282, 1, 1, 'Sandra Virana', 'L', 'islam', 'Malang', '2001-11-26', 'Kadis Suyanto', 'Jl. Jl. Raya Jatikerto Rt. 18 Rw. 02 Jatikerto Kromengan Malang'),
(6283, 2, 1, 'Sari Ningrum', 'P', 'islam', 'malang', '2001-06-27', 'Kusbiantoro', 'Jl. Kp. Melati 22 Rt. 02 Rw. 01 Sumberpucung Malang'),
(6284, 5, 2, 'Selvi Lestari', 'P', 'islam', 'Malang', '2000-09-19', 'Slamet', 'Jl. Sultan Agung Rt. 30 Rw. 03 Sumberpucung Malang'),
(6285, 4, 1, 'Septian Bagus Satrio', 'L', 'islam', 'Malang', '2001-09-09', 'Bambang Wahyudi', 'Jl. Raya Jatikerto Rt. 32 Rw. 04 Jatikerto Kromengan Malang'),
(6286, 4, 1, 'Septian Dewangga Putra', 'L', 'islam', 'Malang', '2001-09-18', 'Sumarji', 'Jl. Flamboyan 40 Rt. 13 Rw. 03 Pakisaji Malang'),
(6287, 1, 2, 'Shefira Febrianti', 'P', 'islam', 'Malang', '2002-02-10', 'Sunardi', 'Rt. 04 Rw. 09 Banduarjo Sumberpetung Kalipare Malang'),
(6288, 1, 2, 'Shusmita Ria Zati', 'P', 'islam', 'Malang', '2001-12-14', 'Mufron', 'Jl. Raya Senggreng Rt. 12 Rw. 04 Senggreng Sumberpucung Malang'),
(6289, 2, 2, 'Sindi Fatikha Wardani', 'P', 'islam', 'Malang', '2001-03-09', 'Wasito', 'Rt. 04 Rw. 12 Ngajum Malang'),
(6290, 4, 2, 'Sindy Etriska', 'P', 'islam', 'Blitar', '2002-10-30', 'Winarno', 'Rt. 02 Rw. 01 Tunggorono Kalimanis Doko Blitar'),
(6291, 5, 1, 'Slash Berlian Pramana', 'L', 'islam', 'Malang', '2000-06-22', 'Sapto Hadi Pramono', 'Rt. 25 Rw. 05 Tawang Sukowilangun Kalipare Malang'),
(6292, 4, 2, 'Susanti', 'L', 'islam', 'Malang', '2001-05-15', 'Tarman', 'Rt. 22 Rw. 08 Ternyang Sumberpucung Malang'),
(6293, 2, 1, 'Tabrizal Shihafafi', 'L', 'islam', 'Malang', '2003-01-06', 'Musa Abdillah', 'Rt. 05 Rw. 07 Kalitelo Kaliasri Kalipare Malang'),
(6294, 1, 2, 'Tasya Aurel Regulita', 'P', 'islam', 'Malang', '2001-10-06', 'Sugianto', 'Jl. Pisang Candi 59 Rt. 03 Rw. 01 Karangkates Sumberpucung Malang'),
(6295, 4, 1, 'Teddy Marcelino', 'L', 'islam', 'Malang', '2000-03-26', 'Sugeng Hariadi', 'Jl. Jl. Pesantren Rt. 39 Rw. 05 Karangkates Sumberpucung Malang'),
(6296, 5, 1, 'Tegar Dwi Pramudya Paksi', 'L', 'Islam', 'Malang', '2002-07-16', 'Priyanto', 'Rt. 03 Rw. 01 Kluwut Wonosari Malang'),
(6297, 4, 1, 'Titik Krisnawati', 'P', 'islam', 'Malang', '2001-07-25', 'Supidi', 'Jl. Dsn Krajan Rt. 03 Rw. 01 Krajan Jatiguwi Sumberpucung Malang'),
(6298, 5, 1, 'Tryska Selfiana', 'L', 'islam', 'Blitar', '2002-12-21', 'Sutrisno', 'Rt. 01 Rw. 04 Sidomulyo Selorejo Blitar'),
(6299, 1, 1, 'Ulfa Rosalia Indah', 'P', 'islam', 'Malang', '2002-04-05', 'Suhadak', 'Rt. 24 Rw. 06 Krajan Jatiguwi Sumberpucung Malang'),
(6300, 4, 2, 'Vivian Eka Asri Mayda R.', 'P', 'islam', 'Malang', '2002-05-17', 'Imam Buchori', 'Rt. 22 Rw. 06 Ternyang Sumberpucung Malang'),
(6301, 1, 1, 'Wahyu Dewa Yulianda', 'L', 'islam', 'Malang', '2001-07-09', 'Surianto', 'Rt. 02 Rw. 05 Sidomulyo Bangelan Wonosari Malang'),
(6302, 2, 2, 'Wijanarko Imam Syahfudin', 'L', 'islam', 'Malang', '2001-04-09', 'Mardiono', 'Rt. 21 Rw. 05 Glagahharum Jambuwer Kromengan Malang'),
(6303, 4, 1, 'Yahya Dwi Pangestu', 'L', 'islam', 'Malang', '2001-02-06', 'Edi Cahyono', 'Jl. Setaman Rt. 29 Rw. 09 Senggreng Sumberpucung Malang'),
(6304, 5, 2, 'Yanuar Adi Prasetiya', 'L', 'islam', 'Malang', '2002-01-01', 'Suprih Aray', 'Jl. Drian 02 Rt. 01 Rw. 02 Karangkates Sumberpucunh Malang'),
(6305, 1, 1, 'Yopy Wijayanto', 'L', 'islam', 'Malang', '2002-05-20', 'Wijianto', 'Rt. 11 Rw. 04 Krajan Tumpakrejo Kalipare Malang'),
(6306, 4, 2, 'Yunisa Darmayanti', 'L', 'islam', 'Blitar', '2002-06-13', 'Ginah Sujianto', 'Jl. - Rt. 01 Rw. 01 Gunungsari Sidomulyo Selorejo Blitar'),
(6307, 5, 1, 'Yunita Eka Saputri', 'L', 'islam', 'Malang', '2002-01-29', 'Katiran', 'Rt. 37 Rw. 08 Kopral Sukowilangun Kalipare Malang'),
(6308, 5, 1, 'Yusuf Alfandi', 'L', 'islam', 'Blitar', '2001-09-22', 'Warsito', 'Rt. 01 Rw. 02 Sumberwader Sumberagung Selorejo Blitar'),
(6309, 4, 2, 'Yusuf Fahri Maulana', 'L', 'islam', 'Malang', '2001-05-27', 'Cecep Iing Suryadi', 'Rt. 12 Rw. 04 Dadapan Tlogorejo Pagak Malang'),
(6310, 1, 1, 'Zaenal Abidin', 'L', 'islam', 'Malang', '2001-04-17', 'Mad Soleh', 'Jl. Dsn Bangelan Rt. 06 Rw. 02 Bangelan Wonosari Malang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wawancara`
--

CREATE TABLE `tbl_wawancara` (
  `id_wawancara` varchar(13) NOT NULL,
  `nis` int(4) NOT NULL,
  `nilai` int(1) NOT NULL,
  `status_wawancara` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wawancara`
--

INSERT INTO `tbl_wawancara` (`id_wawancara`, `nis`, `nilai`, `status_wawancara`) VALUES
('WAWANCARA0001', 6175, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_kehadiran`
--
ALTER TABLE `tbl_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `tbl_kepribadian`
--
ALTER TABLE `tbl_kepribadian`
  ADD PRIMARY KEY (`id_kepribadian`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `tbl_kesehatanfisik`
--
ALTER TABLE `tbl_kesehatanfisik`
  ADD PRIMARY KEY (`id_kesehatanfisik`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tbl_nilairemedial`
--
ALTER TABLE `tbl_nilairemedial`
  ADD PRIMARY KEY (`id_nilairemedial`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `tbl_rapor`
--
ALTER TABLE `tbl_rapor`
  ADD PRIMARY KEY (`id_rapor`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_wawancara`
--
ALTER TABLE `tbl_wawancara`
  ADD PRIMARY KEY (`id_wawancara`),
  ADD KEY `nis` (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_kehadiran`
--
ALTER TABLE `tbl_kehadiran`
  ADD CONSTRAINT `tbl_kehadiran_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`);

--
-- Constraints for table `tbl_kepribadian`
--
ALTER TABLE `tbl_kepribadian`
  ADD CONSTRAINT `tbl_kepribadian_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`);

--
-- Constraints for table `tbl_kesehatanfisik`
--
ALTER TABLE `tbl_kesehatanfisik`
  ADD CONSTRAINT `tbl_kesehatanfisik_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`);

--
-- Constraints for table `tbl_nilairemedial`
--
ALTER TABLE `tbl_nilairemedial`
  ADD CONSTRAINT `tbl_nilairemedial_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`);

--
-- Constraints for table `tbl_rapor`
--
ALTER TABLE `tbl_rapor`
  ADD CONSTRAINT `tbl_rapor_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`);

--
-- Constraints for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `tbl_guru` (`id_guru`),
  ADD CONSTRAINT `tbl_siswa_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `tbl_jurusan` (`id_jurusan`);

--
-- Constraints for table `tbl_wawancara`
--
ALTER TABLE `tbl_wawancara`
  ADD CONSTRAINT `tbl_wawancara_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
