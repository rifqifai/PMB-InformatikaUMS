-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2015 at 03:50 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pmb-informatika`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_admin` int(5) NOT NULL,
  `nama_admin` varchar(45) NOT NULL,
  `u` varchar(20) NOT NULL,
  `p` varchar(20) NOT NULL,
  `email_admin` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `u`, `p`, `email_admin`) VALUES
(1, 'Rifqi Fauzi Rahmadzani', 'rifqi', 'ADMIN', 'rifqifai@gmail.com'),
(2, 'Muh. Syahriandi A', 'andi', 'ADMIN', 'muh.syahriandi@gmail.com'),
(3, 'Zesar Matin Aryona', 'zesar', 'ADMIN', 'sesarart@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE IF NOT EXISTS `master` (
`id_daftar` int(5) NOT NULL,
  `s_nama` varchar(150) NOT NULL,
  `s_jk` int(1) NOT NULL,
  `s_agama` int(1) NOT NULL,
  `s_tmp_lahir` varchar(100) NOT NULL,
  `s_tgl_lahir` date NOT NULL,
  `s_alamat` varchar(200) NOT NULL,
  `s_stat_anak` int(1) NOT NULL,
  `s_anak_ke` int(2) NOT NULL,
  `s_jum_sdr` int(2) NOT NULL,
  `k_nama_ay` varchar(100) NOT NULL,
  `k_pend_ay` int(1) NOT NULL,
  `k_pkj_ay` int(1) NOT NULL,
  `k_nama_ib` varchar(100) NOT NULL,
  `k_pend_ib` int(1) NOT NULL,
  `k_pkj_ib` int(1) NOT NULL,
  `thn_lulus` year(4) NOT NULL,
  `no_ijazah` varchar(25) NOT NULL,
  `sc_asal_skl` varchar(100) NOT NULL,
  `sc_status` int(11) NOT NULL,
  `sc_alamat` varchar(150) NOT NULL,
  `sc_kepsek` varchar(100) NOT NULL,
  `nil_1_bing` float DEFAULT NULL,
  `nil_2_bind` float NOT NULL,
  `nil_3_mtk` float NOT NULL,
  `nil_4_ipa` float NOT NULL,
  `nil_pres1_nama` varchar(100) NOT NULL,
  `nil_pres1_tkt` int(1) NOT NULL,
  `nil_pres1` float NOT NULL,
  `nil_pres2_nama` varchar(100) NOT NULL,
  `nil_pres2_tkt` int(11) NOT NULL,
  `nil_pres2` float NOT NULL,
  `nil_pres3_nama` varchar(100) NOT NULL,
  `nil_pres3_tkt` int(1) NOT NULL,
  `nil_pres3` float NOT NULL,
  `nil_seleksi` float NOT NULL,
  `jrsn_pil1` int(2) NOT NULL,
  `jrsn_pil2` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `ip` varchar(50) NOT NULL,
  `u` varchar(20) NOT NULL,
  `p` varchar(20) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `s_hp` varchar(100) NOT NULL,
  `hobi` varchar(100) NOT NULL,
  `penghasilan` varchar(100) NOT NULL,
  `o_hp` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id_daftar`, `s_nama`, `s_jk`, `s_agama`, `s_tmp_lahir`, `s_tgl_lahir`, `s_alamat`, `s_stat_anak`, `s_anak_ke`, `s_jum_sdr`, `k_nama_ay`, `k_pend_ay`, `k_pkj_ay`, `k_nama_ib`, `k_pend_ib`, `k_pkj_ib`, `thn_lulus`, `no_ijazah`, `sc_asal_skl`, `sc_status`, `sc_alamat`, `sc_kepsek`, `nil_1_bing`, `nil_2_bind`, `nil_3_mtk`, `nil_4_ipa`, `nil_pres1_nama`, `nil_pres1_tkt`, `nil_pres1`, `nil_pres2_nama`, `nil_pres2_tkt`, `nil_pres2`, `nil_pres3_nama`, `nil_pres3_tkt`, `nil_pres3`, `nil_seleksi`, `jrsn_pil1`, `jrsn_pil2`, `status`, `tgl_daftar`, `ip`, `u`, `p`, `nisn`, `s_hp`, `hobi`, `penghasilan`, `o_hp`) VALUES
(2, 'NIAM M', 1, 1, 'sukoahrjo', '2007-03-01', 'dnakd kadnka', 1, 2, 3, 'fnfksnfs', 5, 8, 'fsfsf', 5, 11, 1998, '535353', 'nkgnskngs', 1, 'gnsngknsg', 'gnskngks', 0, 0, 0, 0, 'nrnwknrw', 3, 3, '', 0, 0, '', 0, 0, 3, 0, 0, 0, '2015-11-27 10:28:27', '::1', 'yt482y', 'tySm2', 'yt482y', '0849249249', 'dna,nd', '53535353535', '536363'),
(3, 'NFJWNJN FNJWN', 1, 1, 'fnwknfkw', '2008-05-02', 'fknksf fnskf s', 1, 4, 5, 'fwfkw', 2, 11, 'hhknrfkn', 4, 2, 1996, 'f8y824y2', 'nkkfsnkn fksnkf', 1, 'rwrnjw rjnwj', 'nfjne fnje', 21, 21, 21, 22, '', 0, 0, '', 0, 0, '', 0, 0, 85, 0, 0, 0, '2015-11-27 14:13:01', '::1', '492u9', 'ADXTp', '492u9', '08537573585', 'nkvnksknk', '53535353', '89589393'),
(4, 'RWHHRIHW', 2, 2, 'dnjnw', '1990-06-04', 'sndkwnk dknwkdn', 1, 4, 43, 'fknkkek', 3, 2, 'fnkwnkwn', 4, 11, 1998, '4335', 'nknenkqne', 2, 'fnw nwfwkfnw', 'fbjbwj', 21, 232, 22, 33, '', 0, 0, '', 0, 0, '', 0, 0, 308, 0, 0, 0, '2015-11-27 14:28:38', '::1', '429492', 'SBn9r', '429492', '53539583', 'rwknkrw', 'knweknkw', 'mremekmt'),
(6, 'DJBBSJ DBSJ', 2, 4, 'fnskfsfns', '2009-03-02', 'fnksafs fksnknfs', 1, 2, 3, 'dfwbjsf', 4, 11, 'fnksnfks', 4, 2, 0000, '42423ed', 'dsjbjfsfknksn', 2, 'vm sv s', '', 0, 0, 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, 0, 0, 0, 0, '2015-11-27 16:32:24', '::1', '2836183', 'AApS6', '2836183', '8462864284682', 'nkfsnfks', '424242', '43434'),
(7, 'SADASD', 1, 6, 'asdasd', '1990-12-31', 'asdasdasd', 1, 2, 3, 'bkjbkjb', 9, 3, 'jkbkjb', 9, 3, 0000, '121212', 'asdasd', 1, 'klnlnhlk', '', 0, 0, 0, 0, 'mnbn,mn', 4, 4, 'asdasd', 4, 4, 'askdlnas', 4, 4, 12, 0, 0, 0, '2015-11-27 16:35:07', '::1', '123123123', '3MXda', '123123123', '213412341', 'adfa', '896987', '9878'),
(9, 'ASDASDASD', 1, 6, 'q', '1990-12-31', 'sadasdasd', 1, 12, 2, 'asdasd', 9, 3, 'asdasd', 9, 3, 0000, '980908890', 'asdasdasdadsa', 1, 'asdasdasd', '', 0, 0, 0, 0, 'saddasdasd', 4, 4, 'dasd', 4, 4, 'asdasd', 4, 4, 12, 0, 0, 0, '2015-12-10 13:07:41', '::1', 'q', 'F6cwK', 'q', '11111111', 'sadasd', '999999999999999', '9999999999'),
(10, 'CSCSFS', 1, 2, 'fsfcs', '2005-10-05', 'sadasdasd', 0, 0, 0, 'fnfksnfsds', 2, 7, 'asdasd', 1, 7, 0000, '53553353', 'asdasdasdadsafsf', 0, 'ffsfs', '', 45, 45, 54, 45, 'nrnwknrw', 2, 2, 'dasd', 2, 2, 'dada', 2, 2, 195, 0, 0, 0, '2015-12-16 20:45:47', '::1', 'yt482ys32', 'H4838', 'yt482ys32', '0849249249', '', '', '999999999986'),
(11, 'CSCSFSFW', 1, 2, 'fsfcs', '2005-10-05', 'sadasdasd', 0, 0, 0, 'fnfksnfsds', 2, 7, 'asdasd', 1, 7, 0000, '53553353', 'asdasdasdadsafsf', 0, 'ffsfs', '', 45, 45, 54, 45, 'nrnwknrw', 2, 2, 'dasd', 2, 2, 'dada', 2, 2, 195, 0, 0, 0, '2015-12-16 20:51:37', '::1', 'yt482ys32fw', 'd9BRB', 'yt482ys32fw', '0849249249', '', '', '999999999986'),
(12, 'ASDASD', 1, 2, 'dnjnw', '2009-03-08', 'dnakd kadnka', 0, 0, 0, 'asdasd', 2, 11, 'fnkwnkwn', 3, 2, 0000, '43355', 'asdasdasdadsa', 0, 'asdasdasd', '', 45, 23, 54, 45, 'nrnwknrw', 2, 2, '', 0, 0, '', 0, 0, 169, 0, 0, 0, '2015-12-16 21:01:56', '::1', '4294924242', 'SQmem', '4294924242', '08492492498', '', '', '536363');

-- --------------------------------------------------------

--
-- Table structure for table `t_agama`
--

CREATE TABLE IF NOT EXISTS `t_agama` (
`id_agama` int(1) NOT NULL,
  `agama` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `t_agama`
--

INSERT INTO `t_agama` (`id_agama`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen Katolik'),
(3, 'Kristen Protestan'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `t_info`
--

CREATE TABLE IF NOT EXISTS `t_info` (
`id` int(1) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `kaprodi` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `flag` int(1) NOT NULL,
  `beranda` longtext NOT NULL,
  `prosedur` longtext NOT NULL,
  `admin` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `t_info`
--

INSERT INTO `t_info` (`id`, `jurusan`, `alamat`, `tahun_ajaran`, `kaprodi`, `logo`, `flag`, `beranda`, `prosedur`, `admin`) VALUES
(1, 'Informatika UMS', 'Jl. A. Yani Tromol Pos 1 Pabelan Kartasura', '2015/2016', 'Heru Supriyono', 'logo.jpg', 1, '<font size="4"><b>Selamat Datang di Penerimaan Mahasiswa Baru Informatika UMS 2015/2016</b></font>\r\n\r\n<p align=''justify''>Alhamdulillah, penerimaan mahasiswa baru program studi Informatika UMS angkatan 2016 telah dibuka. Dimulai pada tanggal 2 Januari 2016 dan diakhiri pada tanggal 22 Agustus 2016, PMB Informatika UMS akan berlangsung pada setiap hari kerja dari jam 8.00 sampai 15.00 di Gedung Admisi UMS. Calon mahasiswa diminta untuk mencermati syarat-syarat dan prosedur yang sudah ditentukan</p>\r\n<br>\r\n\r\n<table border=''1'' align=''center''>\r\n<tr>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n</tr>\r\n<tr>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n</tr>\r\n<tr>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n<td><img src=''logo.png'' width=''250'' height=''250''></td>\r\n</tr>\r\n</table>\r\n\r\n', '<p>Syarat pendaftaran:</p>\r\n	<ol type=''1'' align=''justify''>\r\n	<li>Calon mahasiswa terlebih dahulu melakukan pendaftaran online melalui halaman pendaftaran online. Calon mahasiswa yang belum mendaftar online harus mengisi data diri secara lengkap di terminal komputer yang disediakan di Gedung Admisi UMS. Mengingat jumlah terminal di Gedung Admisi sangat terbatas, mengisi data diri di Gedung Admisi akan memakan waktu. Calon disarankan untuk mengisi data online terlebih dahulu sebelum datang ke UMS.</li>\r\n	<li>Calon mahasiswa menyerahkan foto kopi Ijazah (Surat Tanda Kelulusan, STTB) yang telah dilegalisir dan NEM/UNAS sebanyak 1 lembar.</li>\r\n	<li>Calon yang belum memiliki STTB/NEM/UNAS dapat menyerahkan di kemudian hari setelah masuk kuliah. Penyerahan dilakukan di Biro Administrasi Akademik UMS.</li>\r\n	<li>Calon menyerahkan pasfoto berwarna ukuran 4 x 6 sebanyak 2 lembar.</li>\r\n	<li>Calon membayar biaya pendaftaran sebesar Rp 300.000 (tiga ratus ribu rupiah).</li>\r\n	<li>Calon menunjukkan kartu identitas diri asli (KTP/SIM/Kartu Pelajar/Paspor). Jika menggunakan surat pengantar, pastikan pasfoto terkena stempel dari instansi yang menerbitkan surat pengantar.</li>\r\n	<li>Tambahan syarat untuk calon mahasiswa Fakultas Kedokteran Umum: surat keterangan sehat mental dari dokter ahli jiwa rumah sakit dan harus berasal dari SMA/Madrasah Aliyah jurusan IPA.</li>\r\n	</ol>\r\n<p>Catatan:</p>\r\n	<ul align=''justify''>\r\n	<li>Mahasiswa yang berprestasi di bidang olah raga dan kesenian akan mendapatkan perhatian khusus.</li>\r\n	<li>Calon mahasiswa Kelas Internasional dan Double Degree tidak diharuskan memiliki bukti kemampuan bahasa Inggris. Kemampuan bahasa Inggris tidak menjadi persyaratan masuk, karena mahasiswa Kelas Internasional dan Double Degree wajib tinggal di asrama mahasiswa internasional (Pondok Internasional KH Mas Mansur) dengan mendapatkan kursus bahasa Inggris secara intensif.</li>\r\n	<li>Berpakaian pantas rapi (memakai kaos oblong dan sandal tidak dilayani).</li>\r\n	</ul>\r\n<p>Waktu pendaftaran:</p>\r\n\r\n<p>Pendaftaran dapat dilakukan secara online sepanjang waktu melalui halaman web (sangat disarankan) atau datang ke Gedung Admisi UMS (kurang disarankan) untuk mengisi data diri pada jam-jam berikut:</p>\r\n	<ul>\r\n	<li>Pagi: 08.00-12.00 WIB</li>\r\n	<li>Siang: 13.00-15.00 WIB</li></ul>\r\n<p>Tes dan registrasi dapat dilakukan pada jam-jam di atas di Gedung Admisi UMS.</p>\r\n<p>Untuk lebih jelasnya, berikut diagram flow chartnya :</p>\r\n<center><img src=''chart.png'' width=''70%'' height=''70%''></center>', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `t_penddk`
--

CREATE TABLE IF NOT EXISTS `t_penddk` (
`id_penddk` int(2) NOT NULL,
  `penddk` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `t_penddk`
--

INSERT INTO `t_penddk` (`id_penddk`, `penddk`) VALUES
(1, 'Tidak Sekolah'),
(2, 'SD/MI'),
(3, 'SMP/MTs'),
(4, 'SMA/SMK/MAN'),
(5, 'Diploma'),
(6, 'Sarjana'),
(7, 'S-2'),
(9, 'S-3');

-- --------------------------------------------------------

--
-- Table structure for table `t_pkj`
--

CREATE TABLE IF NOT EXISTS `t_pkj` (
`id_pkj` int(2) NOT NULL,
  `pkj` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `t_pkj`
--

INSERT INTO `t_pkj` (`id_pkj`, `pkj`) VALUES
(1, 'Tani'),
(2, 'Karyawan Swasta'),
(3, 'Wiraswasta'),
(4, 'PNS'),
(5, 'TNI/Polri'),
(6, 'Perangkat Desa'),
(7, 'Buruh'),
(8, 'Nelayan'),
(10, 'IRT (Ibu Rumah Tangga)'),
(11, 'Lain-lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `t_prestasi`
--

CREATE TABLE IF NOT EXISTS `t_prestasi` (
`id_prestasi` int(1) NOT NULL,
  `prestasi` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t_prestasi`
--

INSERT INTO `t_prestasi` (`id_prestasi`, `prestasi`) VALUES
(1, 'Kabupaten'),
(2, 'Provinsi'),
(3, 'Nasional'),
(4, 'Internasional');

-- --------------------------------------------------------

--
-- Table structure for table `t_skolah`
--

CREATE TABLE IF NOT EXISTS `t_skolah` (
`id_skolah` int(3) NOT NULL,
  `skolah` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `t_skolah`
--

INSERT INTO `t_skolah` (`id_skolah`, `skolah`, `status`, `alamat`, `kepsek`) VALUES
(2, 'rifqi', 1, 'asdasd', 'asda'),
(3, 'nkgnskngs', 1, 'gnsngknsg', 'gnskngks'),
(4, 'nkkfsnkn fksnkf', 1, 'rwrnjw rjnwj', 'nfjne fnje'),
(5, 'nknenkqne', 2, 'fnw nwfwkfnw', 'fbjbwj'),
(6, 'fsknfs', 2, 'ndkndk', 'nksdkw'),
(7, 'dsjbjfsfknksn', 2, 'vm sv s', ''),
(8, 'asdasd', 1, 'klnlnhlk', ''),
(9, 'ndkasdn dan', 1, 'ifjiwf kfsmk', ''),
(10, 'asdasdasdadsa', 1, 'asdasdasd', ''),
(11, 'nkgnskngs', 1, 'gnsngknsg', ''),
(12, 'nkgnskngs', 1, 'gnsngknsg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
 ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `t_agama`
--
ALTER TABLE `t_agama`
 ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `t_info`
--
ALTER TABLE `t_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_penddk`
--
ALTER TABLE `t_penddk`
 ADD PRIMARY KEY (`id_penddk`);

--
-- Indexes for table `t_pkj`
--
ALTER TABLE `t_pkj`
 ADD PRIMARY KEY (`id_pkj`);

--
-- Indexes for table `t_prestasi`
--
ALTER TABLE `t_prestasi`
 ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `t_skolah`
--
ALTER TABLE `t_skolah`
 ADD PRIMARY KEY (`id_skolah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
MODIFY `id_daftar` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `t_agama`
--
ALTER TABLE `t_agama`
MODIFY `id_agama` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_info`
--
ALTER TABLE `t_info`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_penddk`
--
ALTER TABLE `t_penddk`
MODIFY `id_penddk` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `t_pkj`
--
ALTER TABLE `t_pkj`
MODIFY `id_pkj` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `t_prestasi`
--
ALTER TABLE `t_prestasi`
MODIFY `id_prestasi` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_skolah`
--
ALTER TABLE `t_skolah`
MODIFY `id_skolah` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
