/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.25-MariaDB : Database - test_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `test_database`;

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`nim`,`nama`,`alamat`,`jurusan`,`umur`) values 
('123456','John','Jl. Raya No.5','Teknik Informatika',21),
('234567','Alice','Jl. Gatot Subroto','Sistem Informasi',23),
('345678','Bob','Jl. Sudirman No. 5','Teknik Informatika',20),
('456789','Cindy','Jl. Pahlawan No. 2','Manajemen',22),
('567890','David','Jl. Diponegoro No. 3','Teknik Elektro',25),
('678901','Emily','Jl. Cendrawasih No. 4','Manajemen',24),
('789012','Frank','Jl. Ahmad Yani No. 6','Teknik Informatika',19);

/*Table structure for table `mata_kuliah` */

DROP TABLE IF EXISTS `mata_kuliah`;

CREATE TABLE `mata_kuliah` (
  `id_mata_kuliah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mata_kuliah` varchar(100) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  `dosen_pengajar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_mata_kuliah`),
  KEY `nim` (`nim`),
  CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mata_kuliah` */

insert  into `mata_kuliah`(`id_mata_kuliah`,`nama_mata_kuliah`,`nim`,`nilai`,`dosen_pengajar`) values 
(1,'Pemrograman Web','123456',85,'Pak Budi'),
(2,'Basis Data','234567',70,'Ibu Ani'),
(3,'Jaringan Komputer','345678',75,'Pak Dodi'),
(4,'Sistem Operasi','123456',90,'Pak Budi'),
(5,'Manajemen Proyek','456789',80,'Ibu Desi'),
(6,'Bahasa Inggris','567890',85,'Ibu Eka'),
(7,'Statistika','678901',75,'Pak Farhan'),
(8,'Algoritma','789012',65,'Pak Galih'),
(9,'Pemrograman Java','123456',95,'Pak Budi');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
