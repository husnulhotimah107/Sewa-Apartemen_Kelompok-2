-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Des 2020 pada 08.29
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apart_aja`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `apartemen`
--

CREATE TABLE `apartemen` (
  `id_apartemen` int(1) NOT NULL,
  `id_pengelola` int(1) NOT NULL,
  `nama_apartemen` varchar(10) NOT NULL,
  `alamat_apartemen` varchar(20) NOT NULL,
  `kota_kabupaten` varchar(20) NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `gambar_apartemen` text NOT NULL,
  `maps_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `apartemen`
--

INSERT INTO `apartemen` (`id_apartemen`, `id_pengelola`, `nama_apartemen`, `alamat_apartemen`, `kota_kabupaten`, `provinsi`, `gambar_apartemen`, `maps_link`) VALUES
(13, 1, 'Kenanga', 'Jl. Patih No.9', 'Malang', 'Jawa Timur', '0307202017132911032020085558a.jpg', 'https://goo.gl/maps/oY8TDJzL5JcQvgu17'),
(22, 1, 'Gemerlap R', 'Jl. Panglima Sudirma', 'Malang', 'Jawa Timur', '01072020170046110320200704591.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_tambahan`
--

CREATE TABLE `fasilitas_tambahan` (
  `id_fasilitas` int(1) NOT NULL,
  `id_apartemen` int(1) NOT NULL,
  `nama_fasilitas` varchar(20) NOT NULL,
  `deskripsi_fasilitas` text NOT NULL,
  `harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar_apartemen`
--

CREATE TABLE `gambar_apartemen` (
  `id_gambar` int(2) NOT NULL,
  `id_ruangan` int(2) NOT NULL,
  `gambar` text NOT NULL,
  `deskripsi_singkat` varchar(50) NOT NULL DEFAULT 'Image'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gambar_apartemen`
--

INSERT INTO `gambar_apartemen` (`id_gambar`, `id_ruangan`, `gambar`, `deskripsi_singkat`) VALUES
(2, 10, '2406202016133804032020091229Screenshot_3.jpg', 'Ruang Keluarga'),
(11, 14, '26062020161922110320200935527.jpg', 'Toilet'),
(12, 14, '26062020161933110320200936096.jpg', 'Kamar Mandi'),
(13, 14, '26062020161945110320200934575.jpg', 'Mini Bar & Dapur'),
(14, 14, '26062020162003110320200938268.jpg', 'Ruangan Depan'),
(15, 14, '26062020162015110320200934403.jpg', 'Ruang Keluarga'),
(22, 19, '0107202017085111032020125318Screenshot_5.jpg', 'Kulkas'),
(23, 19, '0107202017090311032020125150Screenshot_1.jpg', 'Toilet'),
(24, 19, '0107202017091211032020125214Screenshot_2.jpg', 'Kamar Mandi'),
(26, 10, '0307202016063604032020091321Screenshot_6.jpg', 'Dapur'),
(32, 10, '0307202016535304032020091250Screenshot_8.jpg', 'Toilet'),
(33, 10, '0307202017014904032020091301Screenshot_7.jpg', 'Wastafel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `id_kritik_saran` int(3) NOT NULL,
  `id_apartemen` int(1) NOT NULL,
  `id_user` int(3) NOT NULL,
  `isi_kritik_saran` text NOT NULL,
  `tanggal_masuk` varchar(10) NOT NULL,
  `kategori` varchar(7) NOT NULL,
  `respon_pengelola` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kritik_saran`
--

INSERT INTO `kritik_saran` (`id_kritik_saran`, `id_apartemen`, `id_user`, `isi_kritik_saran`, `tanggal_masuk`, `kategori`, `respon_pengelola`) VALUES
(9, 13, 6, 'Tolong Pot didepan ruangan saya dipindahkan, agak menghalangi jalan.', '01-07-2020', 'kritik', 'Baik akan kami kirim tim untuk memindahkan potnya.'),
(10, 13, 12, 'Tolong pintu kamar saya diberi smartlock otomatis agar lebih efisien, contohnya dengan sidik jari.', '01-07-2020', 'saran', 'Tentu kami akan implementasikan fitur berikut di kemudian hari. Terimakasih Sarannya.'),
(11, 22, 4, 'Tolong tempat sampah didepan dibetulkan tutupnya agar tidak bau.', '01-07-2020', 'kritik', 'Belum ada respon dari pihak pengelola Apartemen.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik_apartemen`
--

CREATE TABLE `pemilik_apartemen` (
  `id_pemilik_apartemen` int(1) NOT NULL,
  `id_user` int(3) NOT NULL,
  `id_ruangan` int(2) NOT NULL,
  `id_pengelola` int(1) NOT NULL,
  `nama_nomer_ruangan` varchar(20) NOT NULL,
  `lantai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemilik_apartemen`
--

INSERT INTO `pemilik_apartemen` (`id_pemilik_apartemen`, `id_user`, `id_ruangan`, `id_pengelola`, `nama_nomer_ruangan`, `lantai`) VALUES
(7, 12, 10, 1, 'Fluffy 01', 1),
(8, 6, 14, 1, 'Luxury 1', 2),
(9, 4, 19, 2, 'Kejora 01', 1),
(10, 7, 10, 1, 'Fluffy 02', 1),
(11, 12, 10, 1, 'Seville 2', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengelola_apartemen`
--

CREATE TABLE `pengelola_apartemen` (
  `id_pengelola` int(1) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `gambar_identitas` text NOT NULL,
  `kyc_identitas` text NOT NULL,
  `status_pengelola` varchar(20) NOT NULL DEFAULT 'Belum Terverifikasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengelola_apartemen`
--

INSERT INTO `pengelola_apartemen` (`id_pengelola`, `nama`, `no_telpon`, `jenis_kelamin`, `email`, `username`, `password`, `gambar_identitas`, `kyc_identitas`, `status_pengelola`) VALUES
(1, 'Husnul Hotimah', '085247003680', 'Wanita', 'husnulhotimah9c@gmail.com', 'husnul', 'f468f7176cf2bb5504bc2f04db1e3b18', '14072020160622ktp.jpg', '14072020160622example_kyc_(2).jpg', 'Terverifikasi'),
(2, 'Agit Ari Irawan', '62851213512', 'Pria', 'agitari@gmail.com', 'agitari', '47efee1c35ca222d8a29c7eb8616e3b5', 'None', 'None', 'Terverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_bank`
--

CREATE TABLE `rekening_bank` (
  `id_rekening` int(1) NOT NULL,
  `id_pengelola` int(1) NOT NULL,
  `nama_bank` varchar(15) NOT NULL,
  `nama_pemilik` varchar(25) NOT NULL,
  `no_rek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekening_bank`
--

INSERT INTO `rekening_bank` (`id_rekening`, `id_pengelola`, `nama_bank`, `nama_pemilik`, `no_rek`) VALUES
(3, 1, 'BCA', 'Ardan Anjung Kusuma', '94178932178'),
(4, 1, 'Mandiri', 'Ardan Anjung Kusuma', '90478192736'),
(5, 2, 'BNI', 'Agit Ari Irawan', '8976146723'),
(9, 1, 'BNI', 'Ardan Anjung Kusuma', '9871897872');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan_apartemen`
--

CREATE TABLE `ruangan_apartemen` (
  `id_ruangan` int(2) NOT NULL,
  `id_apartemen` int(1) NOT NULL,
  `id_pengelola` int(1) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  `jenis_ruangan` varchar(15) NOT NULL,
  `harga_beli` bigint(7) NOT NULL,
  `detail_ruangan` text NOT NULL,
  `sisa_ruang_apartemen` int(2) NOT NULL,
  `gambar_utama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruangan_apartemen`
--

INSERT INTO `ruangan_apartemen` (`id_ruangan`, `id_apartemen`, `id_pengelola`, `nama_ruangan`, `jenis_ruangan`, `harga_beli`, `detail_ruangan`, `sisa_ruang_apartemen`, `gambar_utama`) VALUES
(10, 13, 1, 'Fluffy', 'Mini Suite', 145000000, 'Fasilitas :\r\n1. Air Panas\r\n2. TV Antena\r\n3. 2 Kasur (Bisa dijadikan 1)', 20, '2306202017035204032020091144Screenshot_5.jpg'),
(14, 13, 1, 'Luxury', 'Luxury Suite', 240000000, 'Fasilitas : \r\n1. Mini Bar\r\n2. Air Panas & Dingin\r\n3. TV\r\n4. Penghangat Ruangan\r\n', 15, '26062020161908110320200928282.jpg'),
(19, 22, 2, 'Kejora', 'Mini Suite', 113000000, 'Fasilitas :\r\n1. AC\r\n2. Air Panas & Dingin\r\n3. Kulkas\r\n4. Dapur Kecil', 20, '0107202017083011032020125139Screenshot_3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pembelian`
--

CREATE TABLE `transaksi_pembelian` (
  `id_transaksi_pembelian` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `id_ruangan` int(1) NOT NULL,
  `id_pengelola` int(1) NOT NULL,
  `kode_transaksi` int(5) NOT NULL,
  `total_harga` int(8) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `status_pemesanan` varchar(20) NOT NULL DEFAULT 'Belum Terverifikasi',
  `pesan_pengelola` text NOT NULL,
  `gambar_bukti_transfer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_pembelian`
--

INSERT INTO `transaksi_pembelian` (`id_transaksi_pembelian`, `id_user`, `id_ruangan`, `id_pengelola`, `kode_transaksi`, `total_harga`, `tanggal_transaksi`, `status_pemesanan`, `pesan_pengelola`, `gambar_bukti_transfer`) VALUES
(1, 12, 10, 1, 1281, 145001281, '2020-06-28', 'Berhasil Verifikasi', 'Terimakasih, pembayaran sudah berhasil terverifikasi. Anda akan segera mendapatkan akses ke Ruang Apartemen Anda.', '30062020164521struk.jpg'),
(4, 6, 14, 1, 9894, 240009894, '2020-07-01', 'Berhasil Verifikasi', 'Terimakasih, pembayaran sudah berhasil terverifikasi. Anda akan segera mendapatkan akses ke Ruang Apartemen Anda.', '01072020063356ads.jpg'),
(5, 4, 19, 2, 3998, 113003998, '2020-07-01', 'Berhasil Verifikasi', 'Terimakasih, pembayaran sudah berhasil terverifikasi. Anda akan segera mendapatkan akses ke Ruang Apartemen Anda.', '01072020171525hunayntf.jpg'),
(6, 7, 10, 1, 1494, 145001494, '2020-07-03', 'Berhasil Verifikasi', 'Terimakasih, pembayaran sudah berhasil terverifikasi. Anda akan segera mendapatkan akses ke Ruang Apartemen Anda.', '03072020174318struk.jpg'),
(7, 4, 14, 1, 3259, 240003259, '2020-12-18', 'Berhasil Verifikasi', 'Terimakasih, pembayaran sudah berhasil terverifikasi. Anda akan segera mendapatkan akses ke Ruang Apartemen Anda.', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `gambar_kartu_identitas` text NOT NULL,
  `status_user` varchar(20) NOT NULL DEFAULT 'Belum Terverifikasi',
  `level` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `alamat`, `no_telpon`, `jenis_kelamin`, `email`, `username`, `password`, `gambar_kartu_identitas`, `status_user`, `level`) VALUES
(1, 'Kharis Muhaimin', 'Malang', '087860511251', 'Pria', 'kharismm19@gmail.com', 'kharis', '34f74c049edea51851c6924f4a386762', 'None', 'Terverifikasi', 'kepala'),
(2, 'Agit Ari', 'Malang', '081329419687', 'Pria', 'agitari17@gmail.com', 'agitari', 'd2219d75098abd01493908d2f7f4d13d', 'None', 'Terverifikasi', 'staff'),
(4, 'Husnul Hotimah', 'Jl. Cemara No.9', '085247003680', 'Wanita', 'husnulhotimah9c@gmail.com', 'husnul', 'f468f7176cf2bb5504bc2f04db1e3b18', 'None', 'Terverifikasi', 'user'),
(6, 'Osa Mahanani', 'Jl. Basuki Rahmat 25', '0895609076721', 'Wanita', 'osamahanani@gmail.com', 'osa', '374762714ec840404a3c2c4afc32cc22', '12072020142601ktp.jpg', 'Terverifikasi', 'user'),
(7, 'Denny Nur', 'None', 'None', 'Pria', 'dennynur@gmail.com', 'denny', '34814f45c5b89ee4ea7e77662747a0e6', 'None', 'Belum Terverifikasi', 'user'),
(8, 'Risda Dewi', 'None', '085212345623', 'Wanita', 'risdadewi@apartaja.com', 'risda', '1439c273342e708a0be4874aa6994b52', 'None', 'Terverifikasi', 'staff'),
(10, 'Unero Bhagaskara', 'Jl. Pisang Kipas', '62849823842', 'Pria', 'unero@gmail.com', 'unero', 'b98b83c535005abfdf996d5e248dc944', 'None', 'Belum Terverifikasi', 'user'),
(12, 'Qorinda Yulva', 'Malang', '085731426513', 'Pria', 'qorindayulva@gmail.com', 'qorinda', '82aca52ab05bf2d2a5f6d2243d3dca99', 'None', 'Terverifikasi', 'user'),
(13, 'Amelia Kusuma', '', '08264646472', 'Wanita', 'amelia1212@gmail.com', 'amel', '4338bdd345300e0bc575352a5637dc60', 'None', 'Terverifikasi', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartemen`
--
ALTER TABLE `apartemen`
  ADD PRIMARY KEY (`id_apartemen`),
  ADD KEY `id_pengelola` (`id_pengelola`);

--
-- Indexes for table `fasilitas_tambahan`
--
ALTER TABLE `fasilitas_tambahan`
  ADD PRIMARY KEY (`id_fasilitas`),
  ADD KEY `fasilitas_tambahan_ibfk_1` (`id_apartemen`);

--
-- Indexes for table `gambar_apartemen`
--
ALTER TABLE `gambar_apartemen`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_ruangan` (`id_ruangan`);

--
-- Indexes for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD PRIMARY KEY (`id_kritik_saran`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_apartemen` (`id_apartemen`);

--
-- Indexes for table `pemilik_apartemen`
--
ALTER TABLE `pemilik_apartemen`
  ADD PRIMARY KEY (`id_pemilik_apartemen`),
  ADD KEY `id_ruangan` (`id_ruangan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pengelola` (`id_pengelola`);

--
-- Indexes for table `pengelola_apartemen`
--
ALTER TABLE `pengelola_apartemen`
  ADD PRIMARY KEY (`id_pengelola`);

--
-- Indexes for table `rekening_bank`
--
ALTER TABLE `rekening_bank`
  ADD PRIMARY KEY (`id_rekening`),
  ADD KEY `id_pengelola` (`id_pengelola`);

--
-- Indexes for table `ruangan_apartemen`
--
ALTER TABLE `ruangan_apartemen`
  ADD PRIMARY KEY (`id_ruangan`),
  ADD KEY `id_apartemen` (`id_apartemen`),
  ADD KEY `id_pengelola` (`id_pengelola`);

--
-- Indexes for table `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  ADD PRIMARY KEY (`id_transaksi_pembelian`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pengelola` (`id_pengelola`),
  ADD KEY `id_ruangan` (`id_ruangan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartemen`
--
ALTER TABLE `apartemen`
  MODIFY `id_apartemen` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `fasilitas_tambahan`
--
ALTER TABLE `fasilitas_tambahan`
  MODIFY `id_fasilitas` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gambar_apartemen`
--
ALTER TABLE `gambar_apartemen`
  MODIFY `id_gambar` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `id_kritik_saran` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pemilik_apartemen`
--
ALTER TABLE `pemilik_apartemen`
  MODIFY `id_pemilik_apartemen` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pengelola_apartemen`
--
ALTER TABLE `pengelola_apartemen`
  MODIFY `id_pengelola` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rekening_bank`
--
ALTER TABLE `rekening_bank`
  MODIFY `id_rekening` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ruangan_apartemen`
--
ALTER TABLE `ruangan_apartemen`
  MODIFY `id_ruangan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  MODIFY `id_transaksi_pembelian` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `apartemen`
--
ALTER TABLE `apartemen`
  ADD CONSTRAINT `apartemen_ibfk_1` FOREIGN KEY (`id_pengelola`) REFERENCES `pengelola_apartemen` (`id_pengelola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fasilitas_tambahan`
--
ALTER TABLE `fasilitas_tambahan`
  ADD CONSTRAINT `fasilitas_tambahan_ibfk_1` FOREIGN KEY (`id_apartemen`) REFERENCES `apartemen` (`id_apartemen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gambar_apartemen`
--
ALTER TABLE `gambar_apartemen`
  ADD CONSTRAINT `gambar_apartemen_ibfk_1` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan_apartemen` (`id_ruangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD CONSTRAINT `kritik_saran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kritik_saran_ibfk_2` FOREIGN KEY (`id_apartemen`) REFERENCES `apartemen` (`id_apartemen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemilik_apartemen`
--
ALTER TABLE `pemilik_apartemen`
  ADD CONSTRAINT `pemilik_apartemen_ibfk_1` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan_apartemen` (`id_ruangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemilik_apartemen_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemilik_apartemen_ibfk_3` FOREIGN KEY (`id_pengelola`) REFERENCES `pengelola_apartemen` (`id_pengelola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rekening_bank`
--
ALTER TABLE `rekening_bank`
  ADD CONSTRAINT `rekening_bank_ibfk_1` FOREIGN KEY (`id_pengelola`) REFERENCES `pengelola_apartemen` (`id_pengelola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ruangan_apartemen`
--
ALTER TABLE `ruangan_apartemen`
  ADD CONSTRAINT `ruangan_apartemen_ibfk_1` FOREIGN KEY (`id_apartemen`) REFERENCES `apartemen` (`id_apartemen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ruangan_apartemen_ibfk_2` FOREIGN KEY (`id_pengelola`) REFERENCES `pengelola_apartemen` (`id_pengelola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  ADD CONSTRAINT `transaksi_pembelian_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_pembelian_ibfk_2` FOREIGN KEY (`id_pengelola`) REFERENCES `pengelola_apartemen` (`id_pengelola`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_pembelian_ibfk_3` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan_apartemen` (`id_ruangan`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
