/*
Navicat MySQL Data Transfer

Source Server         : MySQL Localhost
Source Server Version : 100132
Source Host           : localhost:3306
Source Database       : dbess

Target Server Type    : MYSQL
Target Server Version : 100132
File Encoding         : 65001

Date: 2018-07-06 22:42:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for caleg
-- ----------------------------
DROP TABLE IF EXISTS `caleg`;
CREATE TABLE `caleg` (
  `kode_caleg` varchar(20) NOT NULL,
  `kode_partai` varchar(3) NOT NULL,
  `kode_dapil` varchar(10) NOT NULL,
  `nama_caleg` varchar(100) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_caleg`),
  KEY `kode_partai` (`kode_partai`) USING BTREE,
  KEY `kode_kategori` (`kode_dapil`) USING BTREE,
  CONSTRAINT `caleg_ibfk_1` FOREIGN KEY (`kode_partai`) REFERENCES `partai` (`kode_partai`) ON UPDATE CASCADE,
  CONSTRAINT `caleg_ibfk_2` FOREIGN KEY (`kode_dapil`) REFERENCES `dapil` (`kode_dapil`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of caleg
-- ----------------------------
INSERT INTO `caleg` VALUES ('001001001', '001', '001', 'H. TEUKU RIEFKY HARSYA B.SC, MT', '');
INSERT INTO `caleg` VALUES ('001001002', '001', '002', 'MUSLIM,SHI, MM', '');
INSERT INTO `caleg` VALUES ('001002001', '002', '001', 'DRS. H. ZAINAL SABRI, MM', '');
INSERT INTO `caleg` VALUES ('001002002', '002', '002', 'ISMAIL BERDAN, SH', '');
INSERT INTO `caleg` VALUES ('001003001', '003', '001', 'H. SAYED FUAD ZAKARIA, SE', '');
INSERT INTO `caleg` VALUES ('001003002', '003', '002', 'H. KAHARUDDIN SYAH', '');
INSERT INTO `caleg` VALUES ('001004001', '004', '001', 'H. MUHLIS MUKHTAR, SH', '');
INSERT INTO `caleg` VALUES ('001004002', '004', '002', 'H.SYAFRUDDIN BUDIMAN', '');
INSERT INTO `caleg` VALUES ('001005002', '005', '002', 'ZULFAN LINDAN', '');
INSERT INTO `caleg` VALUES ('001006001', '006', '001', 'H. ANWAR AHMAD, SE, AK', '');
INSERT INTO `caleg` VALUES ('001006002', '006', '002', 'Ir. Hj. FERRY SORAYA, MSIE', '');
INSERT INTO `caleg` VALUES ('001007001', '007', '001', 'IR. MOCH NASIR', '');
INSERT INTO `caleg` VALUES ('001007002', '007', '002', 'H. KARIMUN USMAN', '');
INSERT INTO `caleg` VALUES ('001008001', '008', '001', 'H. IRMAWAN, S.SOS, M.M', '');
INSERT INTO `caleg` VALUES ('001008002', '008', '002', 'FAISAL RIDHA SAg', '');
INSERT INTO `caleg` VALUES ('001009001', '009', '001', 'M. NASIR DJAMIL, S. AG', '');
INSERT INTO `caleg` VALUES ('001009002', '009', '002', 'H. RAIHAN ISKANDAR, I.c,MM', '');
INSERT INTO `caleg` VALUES ('001010001', '010', '001', 'TGK. H. MOHD FAISAL AMIN', '');
INSERT INTO `caleg` VALUES ('001010002', '010', '002', 'Drs. H. ANWAR IDRIS', '');
INSERT INTO `caleg` VALUES ('001011001', '011', '001', 'ZULMAHDI HASAN, S.AG', '');
INSERT INTO `caleg` VALUES ('001011002', '011', '002', 'MAWARDI ABDULLAH, SE,MM', '');
INSERT INTO `caleg` VALUES ('001013001', '013', '001', 'IR. H. M. NASIR NAWAWI', '');
INSERT INTO `caleg` VALUES ('001013002', '013', '002', 'Ir. H. TEUKU MUDA YUSUF, MM', '');
INSERT INTO `caleg` VALUES ('002001001', '001', '001', 'IR. NOVA IRIANSYAH, MT', '');
INSERT INTO `caleg` VALUES ('002001002', '001', '002', 'TEUKU IRWAN, SE', '');
INSERT INTO `caleg` VALUES ('002002001', '002', '001', 'H. ASFIFUDDIN, SH, MH', '');
INSERT INTO `caleg` VALUES ('002002002', '002', '002', 'H. ASRUL ABBAS, SE', '');
INSERT INTO `caleg` VALUES ('002003001', '003', '001', 'ANDI. HS', '');
INSERT INTO `caleg` VALUES ('002003002', '003', '002', 'H. FIRMANDEZ', '');
INSERT INTO `caleg` VALUES ('002004001', '004', '001', 'AMIR FAISAL', '');
INSERT INTO `caleg` VALUES ('002004002', '004', '002', 'dr. H. SYAFRIRUDDIN, MM', '');
INSERT INTO `caleg` VALUES ('002005002', '005', '002', 'H. ZAINI DJALIL, SH', '');
INSERT INTO `caleg` VALUES ('002006001', '006', '001', 'H.. MUSLIN AYUR, SH, MM', '');
INSERT INTO `caleg` VALUES ('002006002', '006', '002', 'TARMIDINSYAH ABUBAKAR, SE', '');
INSERT INTO `caleg` VALUES ('002007001', '007', '001', 'AZFILLI ISHAK, SH', '');
INSERT INTO `caleg` VALUES ('002007002', '007', '002', 'Drs. H. ARMAND MUIS, MM', '');
INSERT INTO `caleg` VALUES ('002008001', '008', '001', 'DRS. H. RUSLI MUHAMMAD', '');
INSERT INTO `caleg` VALUES ('002008002', '008', '002', 'YENNI FATMAWATI', '');
INSERT INTO `caleg` VALUES ('002009001', '009', '001', 'H. MOHAMMAD IHSAN, BA', '');
INSERT INTO `caleg` VALUES ('002009002', '009', '002', 'KHAIRUL AMAL', '');
INSERT INTO `caleg` VALUES ('002010001', '010', '001', 'EDWAR M. NUR, SE. MM', '');
INSERT INTO `caleg` VALUES ('002010002', '010', '002', 'H. MURHABAN MAKAM', '');
INSERT INTO `caleg` VALUES ('002011001', '011', '001', 'TGK. SYAIFULLAH M. ALI', '');
INSERT INTO `caleg` VALUES ('002011002', '011', '002', 'TgK. TARMIZI GANI', '');
INSERT INTO `caleg` VALUES ('002013001', '013', '001', 'TGK. FAUZI ZAINOEL ABIDIN', '');
INSERT INTO `caleg` VALUES ('002013002', '013', '002', 'DrA. INDAH UZIANA PARAMITA, MSI', '');
INSERT INTO `caleg` VALUES ('003001001', '001', '001', 'IR. HJ. NURSHANTI ADNAN', '');
INSERT INTO `caleg` VALUES ('003001002', '001', '002', 'MIRNAWATI', '');
INSERT INTO `caleg` VALUES ('003002001', '002', '001', 'HJ. CUT EVITA', '');
INSERT INTO `caleg` VALUES ('003002002', '002', '002', 'Dra. Hj. ZULHAFAH', '');
INSERT INTO `caleg` VALUES ('003003001', '003', '001', 'ASRIDA', '');
INSERT INTO `caleg` VALUES ('003003002', '003', '002', 'Hj. FARIAWATI, SE', '');
INSERT INTO `caleg` VALUES ('003004001', '004', '001', 'HJ. CUT ANI VIVIYANTI, SE', '');
INSERT INTO `caleg` VALUES ('003004002', '004', '002', 'DARSIAH', '');
INSERT INTO `caleg` VALUES ('003005002', '005', '002', 'FATIMAH', '');
INSERT INTO `caleg` VALUES ('003006001', '006', '001', 'DRA. MARIANI HAROEN', '');
INSERT INTO `caleg` VALUES ('003006002', '006', '002', 'H. ZAINAL ABIDIN HUSEIN, SE', '');
INSERT INTO `caleg` VALUES ('003007001', '007', '001', 'CUT RIDHA SARTIKA, SE', '');
INSERT INTO `caleg` VALUES ('003007002', '007', '002', 'Dra. Hj. MEINY KAROLINA', '');
INSERT INTO `caleg` VALUES ('003008001', '008', '001', 'MAHDALENA, S.HUT', '');
INSERT INTO `caleg` VALUES ('003008002', '008', '002', 'H. TEUKU NASRUDDIN', '');
INSERT INTO `caleg` VALUES ('003009001', '009', '001', 'KURNIA RAHMAYANTI, S.PSI', '');
INSERT INTO `caleg` VALUES ('003009002', '009', '002', 'Dr. SUESILOWATY,SE,M.Pd', '');
INSERT INTO `caleg` VALUES ('003010001', '010', '001', 'HJ. RUKAIYAH IBRAHIM NAIN', '');
INSERT INTO `caleg` VALUES ('003010002', '010', '002', 'Hj. NURDAHRI IBRAHIM NAIN', '');
INSERT INTO `caleg` VALUES ('003011001', '011', '001', 'LEDIANA', '');
INSERT INTO `caleg` VALUES ('003011002', '011', '002', 'SRI ANDENI', '');
INSERT INTO `caleg` VALUES ('003013001', '013', '001', 'HJ. RATNA MUTIA, SH', '');
INSERT INTO `caleg` VALUES ('003013002', '013', '002', 'T. RASYIDIN MT, SHI, MH', '');
INSERT INTO `caleg` VALUES ('004001001', '001', '001', 'M. ALI YAKOB', '');
INSERT INTO `caleg` VALUES ('004001002', '001', '002', 'MIRWAN AMIR', '');
INSERT INTO `caleg` VALUES ('004002001', '002', '001', 'FARA DIANA', '');
INSERT INTO `caleg` VALUES ('004002002', '002', '002', 'AMIRUDDIN', '');
INSERT INTO `caleg` VALUES ('004003001', '003', '001', 'H. M. SALIM FAKHRY, SE, MM', '');
INSERT INTO `caleg` VALUES ('004003002', '003', '002', 'T. HERIWANSYAH', '');
INSERT INTO `caleg` VALUES ('004004001', '004', '001', 'HAFIDZ MARZUKI, SE', '');
INSERT INTO `caleg` VALUES ('004004002', '004', '002', 'MAHREJE WAHAB', '');
INSERT INTO `caleg` VALUES ('004005002', '005', '002', 'DR.(HC.)H. BASRI ARITA,ST.', '');
INSERT INTO `caleg` VALUES ('004006001', '006', '001', 'SAYED MUSTAFA USAB, SE, M.SI', '');
INSERT INTO `caleg` VALUES ('004006002', '006', '002', 'Hj. SORAYA', '');
INSERT INTO `caleg` VALUES ('004007001', '007', '001', 'H. HUSAINI SETIAWAN, AG, SE, MBA', '');
INSERT INTO `caleg` VALUES ('004007002', '007', '002', 'MALAHAYATI, A.Md', '');
INSERT INTO `caleg` VALUES ('004008001', '008', '001', 'TGK. HUSIN YUSUF, S.PD.I', '');
INSERT INTO `caleg` VALUES ('004008002', '008', '002', 'HAMDANI IDRIS', '');
INSERT INTO `caleg` VALUES ('004009001', '009', '001', 'ZAMZAMI. A. RANI', '');
INSERT INTO `caleg` VALUES ('004009002', '009', '002', 'MUHAMMAD RIZAL,SE', '');
INSERT INTO `caleg` VALUES ('004010001', '010', '001', 'H. ZAINAL ABIDIN ALAWY, M. AG', '');
INSERT INTO `caleg` VALUES ('004010002', '010', '002', 'Drs. H. SULAIMAN DAUDI', '');
INSERT INTO `caleg` VALUES ('004011001', '011', '001', 'NUR YUNIATI, SE, MM', '');
INSERT INTO `caleg` VALUES ('004011002', '011', '002', 'IRJEN POL (PURN) Drs. H. AMIR HASAN SIDIK, MM', '');
INSERT INTO `caleg` VALUES ('004013001', '013', '001', 'IR. RAMLAN, MBA, MM', '');
INSERT INTO `caleg` VALUES ('004013002', '013', '002', 'ZAINI Z. ALWY', '');
INSERT INTO `caleg` VALUES ('005001001', '001', '001', 'DRG. TJUT FADLUNA PARAMITA, SP, ORT', '');
INSERT INTO `caleg` VALUES ('005001002', '001', '002', 'YUDHA JOHANSYAH, SH', '');
INSERT INTO `caleg` VALUES ('005002001', '002', '001', 'YANI WAGE SULISTYOWATI', '');
INSERT INTO `caleg` VALUES ('005002002', '002', '002', 'KHAIDIR', '');
INSERT INTO `caleg` VALUES ('005003001', '003', '001', 'H. MUNTASIR HAMID, SH, MH', '');
INSERT INTO `caleg` VALUES ('005003002', '003', '002', 'Drs. H. MARZUKI DAUD', '');
INSERT INTO `caleg` VALUES ('005004001', '004', '001', 'DENNI ARIE MAHESA, SH', '');
INSERT INTO `caleg` VALUES ('005004002', '004', '002', 'Ir. LISMAINI', '');
INSERT INTO `caleg` VALUES ('005005002', '005', '002', 'Ir. MULIYADI', '');
INSERT INTO `caleg` VALUES ('005006001', '006', '001', 'SYAFRUDDIN NGULMA SIMEULUE', '');
INSERT INTO `caleg` VALUES ('005006002', '006', '002', 'H. RIDWAN YUNUS, SH', '');
INSERT INTO `caleg` VALUES ('005007001', '007', '001', 'IR. T. FUADI', '');
INSERT INTO `caleg` VALUES ('005007002', '007', '002', 'Ir. KLARA AGUSTA', '');
INSERT INTO `caleg` VALUES ('005008001', '008', '001', 'MUNAWAR', '');
INSERT INTO `caleg` VALUES ('005008002', '008', '002', 'NOVA MAULIDYA', '');
INSERT INTO `caleg` VALUES ('005009001', '009', '001', 'ZULKARNAIN', '');
INSERT INTO `caleg` VALUES ('005009002', '009', '002', 'IHSANUDDIN', '');
INSERT INTO `caleg` VALUES ('005010001', '010', '001', 'HJ. TJUT JUSLINA RIJANTO PRATIGNJO, SH, MH', '');
INSERT INTO `caleg` VALUES ('005010002', '010', '002', 'MUHAMMAD ADAMI,SPd', '');
INSERT INTO `caleg` VALUES ('005011001', '011', '001', 'M. RIZA RIZKI', '');
INSERT INTO `caleg` VALUES ('005011002', '011', '002', 'SYAHRIAL, S.Sos', '');
INSERT INTO `caleg` VALUES ('005013001', '013', '001', 'DRS. H. MARZUKI. TA', '');
INSERT INTO `caleg` VALUES ('005013002', '013', '002', 'MUTIA SE', '');
INSERT INTO `caleg` VALUES ('006001001', '001', '001', 'H. IBNU RUSDI, SE', '');
INSERT INTO `caleg` VALUES ('006001002', '001', '002', 'Dra. Hj. NAIMAH HASAN, MA', '');
INSERT INTO `caleg` VALUES ('006002001', '002', '001', 'FADHLULLAH (DEK FAD)', '');
INSERT INTO `caleg` VALUES ('006002002', '002', '002', 'CUT PUTEH', '');
INSERT INTO `caleg` VALUES ('006003001', '003', '001', 'SYLVIA ROSA', '');
INSERT INTO `caleg` VALUES ('006003002', '003', '002', 'YUNIATI', '');
INSERT INTO `caleg` VALUES ('006004001', '004', '001', 'MAYASARI, S.PSI', '');
INSERT INTO `caleg` VALUES ('006004002', '004', '002', 'RUSLI RANTO,SH,MH', '');
INSERT INTO `caleg` VALUES ('006005002', '005', '002', 'Hj. SUFRIDAWATI, SE, MM', '');
INSERT INTO `caleg` VALUES ('006006001', '006', '001', 'HIDAYATI', '');
INSERT INTO `caleg` VALUES ('006006002', '006', '002', 'Ir. H. TUN AZHARI', '');
INSERT INTO `caleg` VALUES ('006007001', '007', '001', 'HJ. NURMALASARI, S.PD', '');
INSERT INTO `caleg` VALUES ('006007002', '007', '002', 'Ir. TAGORE ABUBAKAR', '');
INSERT INTO `caleg` VALUES ('006008001', '008', '001', 'SITI NURAINI, S.PD', '');
INSERT INTO `caleg` VALUES ('006009001', '009', '001', 'DIAN HURIANA', '');
INSERT INTO `caleg` VALUES ('006009002', '009', '002', 'SUTRINAWATI,SE,Ak', '');
INSERT INTO `caleg` VALUES ('006010001', '010', '001', 'EVI SUSANTI, SH, MH', '');
INSERT INTO `caleg` VALUES ('006010002', '010', '002', 'ERNIDAWATY, SH', '');
INSERT INTO `caleg` VALUES ('006011001', '011', '001', 'WIDYAWATI SOFIANA, S. KEP, S.KG', '');
INSERT INTO `caleg` VALUES ('006011002', '011', '002', 'CUT RABIA AL WAFI', '');
INSERT INTO `caleg` VALUES ('006013001', '013', '001', 'LILIS LISNAWATI', '');
INSERT INTO `caleg` VALUES ('006013002', '013', '002', 'MUNIR USMAN', '');
INSERT INTO `caleg` VALUES ('007001001', '001', '001', 'IR. HJ. SRI REZEKI TAKARINA, M.SI', '');
INSERT INTO `caleg` VALUES ('007002001', '002', '001', 'IR. H. T.A. KHALID, MM', '');
INSERT INTO `caleg` VALUES ('007003001', '003', '001', 'SRI HANDAYANI, SE', '');
INSERT INTO `caleg` VALUES ('007004001', '004', '001', 'RINA ROSIANA AGUSTINA', '');
INSERT INTO `caleg` VALUES ('007006001', '006', '001', 'HJ. SRI SITI MUNALAR, SH', '');
INSERT INTO `caleg` VALUES ('007007001', '007', '001', 'ANDRIYANI, SH', '');
INSERT INTO `caleg` VALUES ('007008001', '008', '001', 'DRA. ANDYANA', '');
INSERT INTO `caleg` VALUES ('007010001', '010', '001', 'SRI GUSTINI, SH, MA', '');
INSERT INTO `caleg` VALUES ('007011001', '011', '001', 'NOOR MUHAMMAD, SE', '');
INSERT INTO `caleg` VALUES ('007013001', '013', '001', 'ZULFA AIFI', '');

-- ----------------------------
-- Table structure for dapil
-- ----------------------------
DROP TABLE IF EXISTS `dapil`;
CREATE TABLE `dapil` (
  `kode_dapil` varchar(10) NOT NULL,
  `kode_provinsi` varchar(3) NOT NULL,
  `kode_kategori` varchar(3) NOT NULL,
  `nama_dapil` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_dapil`),
  KEY `kode_provinsi` (`kode_provinsi`),
  KEY `kode_kategori` (`kode_kategori`),
  CONSTRAINT `dapil_ibfk_1` FOREIGN KEY (`kode_provinsi`) REFERENCES `provinsi` (`kode_provinsi`) ON UPDATE CASCADE,
  CONSTRAINT `dapil_ibfk_2` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dapil
-- ----------------------------
INSERT INTO `dapil` VALUES ('001', '021', '006', 'ACEH 1', '');
INSERT INTO `dapil` VALUES ('002', '021', '006', 'ACEH 2', '');

-- ----------------------------
-- Table structure for dapil_user
-- ----------------------------
DROP TABLE IF EXISTS `dapil_user`;
CREATE TABLE `dapil_user` (
  `kode_user` varchar(10) NOT NULL,
  `kode_dapil` varchar(10) NOT NULL,
  KEY `kode_dapil` (`kode_dapil`),
  KEY `kode_user` (`kode_user`),
  CONSTRAINT `dapil_user_ibfk_1` FOREIGN KEY (`kode_dapil`) REFERENCES `dapil` (`kode_dapil`) ON UPDATE CASCADE,
  CONSTRAINT `dapil_user_ibfk_2` FOREIGN KEY (`kode_user`) REFERENCES `user_login` (`kode_user`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dapil_user
-- ----------------------------
INSERT INTO `dapil_user` VALUES ('001', '001');
INSERT INTO `dapil_user` VALUES ('001', '002');

-- ----------------------------
-- Table structure for dpt
-- ----------------------------
DROP TABLE IF EXISTS `dpt`;
CREATE TABLE `dpt` (
  `kode_dpt` varchar(20) NOT NULL,
  `kode_kabupaten_kota` varchar(10) DEFAULT NULL,
  `jumlah_dpt` int(11) DEFAULT NULL,
  `keteraangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_dpt`),
  KEY `kode_kabupaten_kota` (`kode_kabupaten_kota`) USING BTREE,
  CONSTRAINT `dpt_ibfk_2` FOREIGN KEY (`kode_kabupaten_kota`) REFERENCES `kabupaten_kota` (`kode_kabupaten_kota`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dpt
-- ----------------------------

-- ----------------------------
-- Table structure for kabupaten_kota
-- ----------------------------
DROP TABLE IF EXISTS `kabupaten_kota`;
CREATE TABLE `kabupaten_kota` (
  `kode_kabupaten_kota` varchar(10) NOT NULL,
  `kode_dapil` varchar(10) NOT NULL,
  `nama_kabupaten_kota` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL DEFAULT '-',
  PRIMARY KEY (`kode_kabupaten_kota`),
  KEY `kode_provinsi` (`kode_dapil`) USING BTREE,
  CONSTRAINT `kabupaten_kota_ibfk_1` FOREIGN KEY (`kode_dapil`) REFERENCES `dapil` (`kode_dapil`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kabupaten_kota
-- ----------------------------
INSERT INTO `kabupaten_kota` VALUES ('001001', '001', 'SABANG', '');
INSERT INTO `kabupaten_kota` VALUES ('001002', '002', 'BIREUN', '');
INSERT INTO `kabupaten_kota` VALUES ('002001', '001', 'BANDA ACEH', '');
INSERT INTO `kabupaten_kota` VALUES ('002002', '002', 'ACEH TENGAH', '');
INSERT INTO `kabupaten_kota` VALUES ('003001', '001', 'ACEH BESAR', '');
INSERT INTO `kabupaten_kota` VALUES ('003002', '002', 'BENER MERIAH', '');
INSERT INTO `kabupaten_kota` VALUES ('004001', '001', 'PIDIE', '');
INSERT INTO `kabupaten_kota` VALUES ('004002', '002', 'ACEH UTARA', '');
INSERT INTO `kabupaten_kota` VALUES ('005001', '001', 'PIDIE JAYA', '');
INSERT INTO `kabupaten_kota` VALUES ('005002', '002', 'LHOKSEUMAWE', '');
INSERT INTO `kabupaten_kota` VALUES ('006001', '001', 'GAYO LUES', '');
INSERT INTO `kabupaten_kota` VALUES ('006002', '002', 'ACEH TIMUR', '');
INSERT INTO `kabupaten_kota` VALUES ('007001', '001', 'ACEH TENGGARA', '');
INSERT INTO `kabupaten_kota` VALUES ('007002', '002', 'LANGSA', '');
INSERT INTO `kabupaten_kota` VALUES ('008001', '001', 'ACEH SELATAN', '');
INSERT INTO `kabupaten_kota` VALUES ('008002', '002', 'ACEH TAMIANG', '');
INSERT INTO `kabupaten_kota` VALUES ('009001', '001', 'ACEH SINGKIL', '');
INSERT INTO `kabupaten_kota` VALUES ('010001', '001', 'ACEH BARAT DAYA', '');
INSERT INTO `kabupaten_kota` VALUES ('011001', '001', 'SUBUSSALAM', '');
INSERT INTO `kabupaten_kota` VALUES ('012001', '001', 'ACEH BARAT', '');
INSERT INTO `kabupaten_kota` VALUES ('013001', '001', 'ACEH JAYA', '');
INSERT INTO `kabupaten_kota` VALUES ('014001', '001', 'NANGAN RAYA', '');
INSERT INTO `kabupaten_kota` VALUES ('015001', '001', 'SIMELUE', '');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `kode_kategori` varchar(3) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('001', 'BUPATI/WALIKOTA', '');
INSERT INTO `kategori` VALUES ('002', 'DPRD KABUPATEN/KOTA', '');
INSERT INTO `kategori` VALUES ('003', 'GUBERNUR', '');
INSERT INTO `kategori` VALUES ('004', 'DPRD PROVINSI', '');
INSERT INTO `kategori` VALUES ('005', 'DPD', '');
INSERT INTO `kategori` VALUES ('006', 'DPR RI', '');

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(10) NOT NULL,
  `kode_kabupaten_kota` varchar(10) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT '-',
  PRIMARY KEY (`kode_kecamatan`),
  KEY `kode_kabupaten_kota` (`kode_kabupaten_kota`) USING BTREE,
  CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`kode_kabupaten_kota`) REFERENCES `kabupaten_kota` (`kode_kabupaten_kota`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------

-- ----------------------------
-- Table structure for partai
-- ----------------------------
DROP TABLE IF EXISTS `partai`;
CREATE TABLE `partai` (
  `kode_partai` varchar(3) NOT NULL,
  `nama_partai` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT '-',
  PRIMARY KEY (`kode_partai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of partai
-- ----------------------------
INSERT INTO `partai` VALUES ('001', 'DEMOKRAT', '');
INSERT INTO `partai` VALUES ('002', 'GERINDRA', '');
INSERT INTO `partai` VALUES ('003', 'GOLKAR', '');
INSERT INTO `partai` VALUES ('004', 'HANURA', '');
INSERT INTO `partai` VALUES ('005', 'NASDEM', '');
INSERT INTO `partai` VALUES ('006', 'PAN', '');
INSERT INTO `partai` VALUES ('007', 'PDIP', '');
INSERT INTO `partai` VALUES ('008', 'PKB', '');
INSERT INTO `partai` VALUES ('009', 'PKS', '');
INSERT INTO `partai` VALUES ('010', 'PPP', '');
INSERT INTO `partai` VALUES ('011', 'PBB', '');
INSERT INTO `partai` VALUES ('012', 'PSI', '');
INSERT INTO `partai` VALUES ('013', 'PKPI', '');
INSERT INTO `partai` VALUES ('014', 'GARUDA INDONESIA', '');
INSERT INTO `partai` VALUES ('015', 'BERKARYA', '');

-- ----------------------------
-- Table structure for provinsi
-- ----------------------------
DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi` (
  `kode_provinsi` varchar(3) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `keterangan` varchar(50) DEFAULT '-',
  PRIMARY KEY (`kode_provinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO `provinsi` VALUES ('001', 'BALI', '');
INSERT INTO `provinsi` VALUES ('002', 'BANGKA BELITUNG', '');
INSERT INTO `provinsi` VALUES ('003', 'BANTEN', '');
INSERT INTO `provinsi` VALUES ('004', 'BENGKULU', '');
INSERT INTO `provinsi` VALUES ('005', 'DI YOGYAKARTA', '');
INSERT INTO `provinsi` VALUES ('006', 'DKI JAKARTA', '');
INSERT INTO `provinsi` VALUES ('007', 'GORONTALO', '');
INSERT INTO `provinsi` VALUES ('008', 'JAMBI', '');
INSERT INTO `provinsi` VALUES ('009', 'JAWA BARAT', '');
INSERT INTO `provinsi` VALUES ('010', 'JAWA TENGAH', '');
INSERT INTO `provinsi` VALUES ('011', 'JAWA TIMUR', '');
INSERT INTO `provinsi` VALUES ('012', 'KALIMANTAN BARAT', '');
INSERT INTO `provinsi` VALUES ('013', 'KALIMANTAN SELATAN', '');
INSERT INTO `provinsi` VALUES ('014', 'KALIMANTAN TENGAH', '');
INSERT INTO `provinsi` VALUES ('015', 'KALIMANTAN TIMUR', '');
INSERT INTO `provinsi` VALUES ('016', 'KALIMANTAN UTARA', '');
INSERT INTO `provinsi` VALUES ('017', 'KEPULAUAN RIAU', '');
INSERT INTO `provinsi` VALUES ('018', 'LAMPUNG', '');
INSERT INTO `provinsi` VALUES ('019', 'MALUKU', '');
INSERT INTO `provinsi` VALUES ('020', 'MALUKU UTARA', '');
INSERT INTO `provinsi` VALUES ('021', 'NANGGROE ACEH DARUSSALAM (NAD)', '');
INSERT INTO `provinsi` VALUES ('022', 'NUSA TENGGARA BARAT (NTB)', '');
INSERT INTO `provinsi` VALUES ('023', 'NUSA TENGGARA TIMUR (NTT)', '');
INSERT INTO `provinsi` VALUES ('024', 'PAPUA', '');
INSERT INTO `provinsi` VALUES ('025', 'PAPUA BARAT', '');
INSERT INTO `provinsi` VALUES ('026', 'RIAU', '');
INSERT INTO `provinsi` VALUES ('027', 'SULAWESI BARAT', '');
INSERT INTO `provinsi` VALUES ('028', 'SULAWESI SELATAN', '');
INSERT INTO `provinsi` VALUES ('029', 'SULAWESI TENGAH', '');
INSERT INTO `provinsi` VALUES ('030', 'SULAWESI TENGGARA', '');
INSERT INTO `provinsi` VALUES ('031', 'SULAWESI UTARA', '');
INSERT INTO `provinsi` VALUES ('032', 'SUMATERA BARAT', '');
INSERT INTO `provinsi` VALUES ('033', 'SUMATERA SELATAN', '');
INSERT INTO `provinsi` VALUES ('034', 'SUMATERA UTARA', '');

-- ----------------------------
-- Table structure for suara_caleg
-- ----------------------------
DROP TABLE IF EXISTS `suara_caleg`;
CREATE TABLE `suara_caleg` (
  `kode_caleg` varchar(20) NOT NULL,
  `kode_dapil` varchar(10) NOT NULL,
  `kode_partai` varchar(3) DEFAULT NULL,
  `kode_kabupaten_kota` varchar(10) NOT NULL,
  `jumlah_suara_caleg` int(11) NOT NULL,
  KEY `kode_caleg` (`kode_caleg`) USING BTREE,
  KEY `kode_dapil` (`kode_dapil`),
  KEY `kode_kabupaten_kota` (`kode_kabupaten_kota`),
  KEY `kode_partai` (`kode_partai`),
  CONSTRAINT `suara_caleg_ibfk_1` FOREIGN KEY (`kode_dapil`) REFERENCES `dapil` (`kode_dapil`) ON UPDATE CASCADE,
  CONSTRAINT `suara_caleg_ibfk_2` FOREIGN KEY (`kode_kabupaten_kota`) REFERENCES `kabupaten_kota` (`kode_kabupaten_kota`) ON UPDATE CASCADE,
  CONSTRAINT `suara_caleg_ibfk_3` FOREIGN KEY (`kode_caleg`) REFERENCES `caleg` (`kode_caleg`) ON UPDATE CASCADE,
  CONSTRAINT `suara_caleg_ibfk_4` FOREIGN KEY (`kode_partai`) REFERENCES `partai` (`kode_partai`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suara_caleg
-- ----------------------------
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '001001', '178');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '001001', '99');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '001001', '47');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '001001', '43');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '001001', '37');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '001001', '10');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '001001', '5');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '002001', '767');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '002001', '635');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '002001', '165');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '002001', '139');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '002001', '218');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '002001', '49');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '002001', '24');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '003001', '2911');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '003001', '6645');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '003001', '803');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '003001', '563');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '003001', '837');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '003001', '147');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '003001', '62');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '004001', '1294');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '004001', '616');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '004001', '217');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '004001', '423');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '004001', '294');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '004001', '96');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '004001', '40');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '005001', '612');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '005001', '319');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '005001', '72');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '005001', '195');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '005001', '224');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '005001', '34');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '005001', '30');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '006001', '18740');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '006001', '498');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '006001', '79');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '006001', '66');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '006001', '49');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '006001', '30');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '006001', '30');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '007001', '5361');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '007001', '601');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '007001', '166');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '007001', '217');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '007001', '77');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '007001', '37');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '007001', '18');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '008001', '1719');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '008001', '857');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '008001', '293');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '008001', '6071');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '008001', '2282');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '008001', '169');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '008001', '94');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '009001', '1220');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '009001', '479');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '009001', '165');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '009001', '147');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '009001', '73');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '009001', '110');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '009001', '46');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '010001', '1655');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '010001', '533');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '010001', '150');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '010001', '460');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '010001', '160');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '010001', '149');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '010001', '95');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '011001', '1326');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '011001', '520');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '011001', '96');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '011001', '190');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '011001', '76');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '011001', '119');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '011001', '29');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '012001', '1552');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '012001', '766');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '012001', '240');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '012001', '501');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '012001', '196');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '012001', '144');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '012001', '139');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '013001', '613');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '013001', '189');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '013001', '108');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '013001', '140');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '013001', '55');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '013001', '44');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '013001', '17');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '014001', '1396');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '014001', '719');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '014001', '230');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '014001', '443');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '014001', '105');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '014001', '116');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '014001', '63');
INSERT INTO `suara_caleg` VALUES ('001008001', '001', '008', '015001', '847');
INSERT INTO `suara_caleg` VALUES ('002008001', '001', '008', '015001', '296');
INSERT INTO `suara_caleg` VALUES ('003008001', '001', '008', '015001', '95');
INSERT INTO `suara_caleg` VALUES ('004008001', '001', '008', '015001', '125');
INSERT INTO `suara_caleg` VALUES ('005008001', '001', '008', '015001', '175');
INSERT INTO `suara_caleg` VALUES ('006008001', '001', '008', '015001', '37');
INSERT INTO `suara_caleg` VALUES ('007008001', '001', '008', '015001', '28');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '001001', '1796');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '001001', '141');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '001001', '61');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '001001', '83');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '001001', '68');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '001001', '23');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '002001', '10196');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '002001', '516');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '002001', '300');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '002001', '296');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '002001', '216');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '002001', '305');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '003001', '11156');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '003001', '975');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '003001', '526');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '003001', '534');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '003001', '336');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '003001', '336');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '004001', '12200');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '004001', '623');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '004001', '419');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '004001', '265');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '004001', '191');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '004001', '147');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '005001', '3630');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '005001', '255');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '005001', '103');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '005001', '106');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '005001', '82');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '005001', '35');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '006001', '866');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '006001', '219');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '006001', '93');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '006001', '36');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '006001', '45');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '006001', '27');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '007001', '2197');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '007001', '377');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '007001', '183');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '007001', '72');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '007001', '70');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '007001', '46');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '008001', '3115');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '008001', '432');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '008001', '314');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '008001', '260');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '008001', '168');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '008001', '89');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '009001', '1480');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '009001', '343');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '009001', '164');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '009001', '62');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '009001', '59');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '009001', '44');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '010001', '2162');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '010001', '278');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '010001', '1012');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '010001', '206');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '010001', '108');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '010001', '51');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '011001', '1569');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '011001', '201');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '011001', '120');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '011001', '55');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '011001', '45');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '011001', '23');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '012001', '5714');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '012001', '840');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '012001', '364');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '012001', '998');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '012001', '225');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '012001', '228');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '013001', '1747');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '013001', '177');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '013001', '119');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '013001', '3907');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '013001', '86');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '013001', '35');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '014001', '2357');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '014001', '496');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '014001', '267');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '014001', '284');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '014001', '169');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '014001', '87');
INSERT INTO `suara_caleg` VALUES ('001009001', '001', '009', '015001', '2215');
INSERT INTO `suara_caleg` VALUES ('002009001', '001', '009', '015001', '550');
INSERT INTO `suara_caleg` VALUES ('003009001', '001', '009', '015001', '159');
INSERT INTO `suara_caleg` VALUES ('004009001', '001', '009', '015001', '108');
INSERT INTO `suara_caleg` VALUES ('005009001', '001', '009', '015001', '169');
INSERT INTO `suara_caleg` VALUES ('006009001', '001', '009', '015001', '52');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '001001', '115');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '001001', '45');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '001001', '37');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '001001', '70');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '001001', '60');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '001001', '12');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '001001', '14');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '002001', '332');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '002001', '327');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '002001', '221');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '002001', '199');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '002001', '150');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '002001', '69');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '002001', '53');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '003001', '643');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '003001', '238');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '003001', '246');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '003001', '333');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '003001', '122');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '003001', '90');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '003001', '51');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '004001', '209');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '004001', '183');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '004001', '89');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '004001', '364');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '004001', '67');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '004001', '68');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '004001', '31');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '005001', '217');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '005001', '344');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '005001', '67');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '005001', '626');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '005001', '73');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '005001', '34');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '005001', '12');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '006001', '562');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '006001', '161');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '006001', '62');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '006001', '83');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '006001', '27');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '006001', '24');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '006001', '19');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '007001', '1822');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '007001', '362');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '007001', '305');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '007001', '505');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '007001', '94');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '007001', '94');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '007001', '115');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '008001', '739');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '008001', '304');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '008001', '166');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '008001', '421');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '008001', '381');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '008001', '72');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '008001', '134');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '009001', '797');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '009001', '340');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '009001', '216');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '009001', '291');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '009001', '92');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '009001', '55');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '009001', '66');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '010001', '461');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '010001', '173');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '010001', '87');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '010001', '309');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '010001', '1344');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '010001', '91');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '010001', '223');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '011001', '363');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '011001', '136');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '011001', '110');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '011001', '116');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '011001', '26');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '011001', '20');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '011001', '24');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '012001', '384');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '012001', '161');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '012001', '188');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '012001', '153');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '012001', '154');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '012001', '44');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '012001', '226');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '013001', '112');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '013001', '67');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '013001', '35');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '013001', '92');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '013001', '20');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '013001', '73');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '013001', '6');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '014001', '773');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '014001', '313');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '014001', '181');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '014001', '222');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '014001', '256');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '014001', '81');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '014001', '308');
INSERT INTO `suara_caleg` VALUES ('001007001', '001', '007', '015001', '838');
INSERT INTO `suara_caleg` VALUES ('002007001', '001', '007', '015001', '290');
INSERT INTO `suara_caleg` VALUES ('003007001', '001', '007', '015001', '178');
INSERT INTO `suara_caleg` VALUES ('004007001', '001', '007', '015001', '445');
INSERT INTO `suara_caleg` VALUES ('005007001', '001', '007', '015001', '101');
INSERT INTO `suara_caleg` VALUES ('006007001', '001', '007', '015001', '78');
INSERT INTO `suara_caleg` VALUES ('007007001', '001', '007', '015001', '91');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '001001', '540');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '001001', '74');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '001001', '74');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '001001', '102');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '001001', '53');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '001001', '52');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '001001', '12');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '002001', '3611');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '002001', '243');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '002001', '287');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '002001', '256');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '002001', '1011');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '002001', '347');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '002001', '71');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '003001', '6767');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '003001', '521');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '003001', '496');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '003001', '555');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '003001', '920');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '003001', '633');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '003001', '229');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '004001', '3576');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '004001', '573');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '004001', '370');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '004001', '1248');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '004001', '600');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '004001', '174');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '004001', '199');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '005001', '1759');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '005001', '329');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '005001', '126');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '005001', '400');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '005001', '257');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '005001', '32');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '005001', '49');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '006001', '1599');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '006001', '978');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '006001', '289');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '006001', '2058');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '006001', '223');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '006001', '78');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '006001', '53');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '007001', '2759');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '007001', '12470');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '007001', '592');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '007001', '32873');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '007001', '955');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '007001', '156');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '007001', '100');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '008001', '2660');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '008001', '517');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '008001', '224');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '008001', '1326');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '008001', '398');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '008001', '78');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '008001', '85');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '009001', '4115');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '009001', '462');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '009001', '316');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '009001', '615');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '009001', '363');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '009001', '134');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '009001', '109');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '010001', '1169');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '010001', '235');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '010001', '137');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '010001', '489');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '010001', '147');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '010001', '65');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '010001', '83');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '011001', '1179');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '011001', '162');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '011001', '173');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '011001', '559');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '011001', '458');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '011001', '53');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '011001', '60');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '012001', '2631');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '012001', '331');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '012001', '231');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '012001', '561');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '012001', '474');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '012001', '278');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '012001', '95');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '013001', '1205');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '013001', '431');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '013001', '135');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '013001', '311');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '013001', '152');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '013001', '53');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '013001', '38');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '014001', '4170');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '014001', '2286');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '014001', '391');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '014001', '969');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '014001', '520');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '014001', '150');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '014001', '275');
INSERT INTO `suara_caleg` VALUES ('001003001', '001', '003', '015001', '944');
INSERT INTO `suara_caleg` VALUES ('002003001', '001', '003', '015001', '143');
INSERT INTO `suara_caleg` VALUES ('003003001', '001', '003', '015001', '104');
INSERT INTO `suara_caleg` VALUES ('004003001', '001', '003', '015001', '235');
INSERT INTO `suara_caleg` VALUES ('005003001', '001', '003', '015001', '183');
INSERT INTO `suara_caleg` VALUES ('006003001', '001', '003', '015001', '37');
INSERT INTO `suara_caleg` VALUES ('007003001', '001', '003', '015001', '57');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '001001', '208');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '001001', '393');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '001001', '297');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '001001', '33');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '001001', '46');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '001001', '75');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '001001', '308');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '002001', '1369');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '002001', '761');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '002001', '1388');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '002001', '292');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '002001', '106');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '002001', '412');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '002001', '1191');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '003001', '2540');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '003001', '2096');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '003001', '3055');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '003001', '687');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '003001', '157');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '003001', '602');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '003001', '3832');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '004001', '1716');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '004001', '16363');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '004001', '1648');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '004001', '569');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '004001', '707');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '004001', '58185');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '004001', '5254');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '005001', '890');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '005001', '1687');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '005001', '527');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '005001', '482');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '005001', '148');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '005001', '2269');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '005001', '9463');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '006001', '641');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '006001', '149');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '006001', '177');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '006001', '23');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '006001', '13');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '006001', '30');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '006001', '76');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '007001', '1360');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '007001', '454');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '007001', '580');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '007001', '138');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '007001', '62');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '007001', '117');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '007001', '91');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '008001', '1464');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '008001', '667');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '008001', '900');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '008001', '339');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '008001', '214');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '008001', '333');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '008001', '1274');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '009001', '1858');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '009001', '530');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '009001', '379');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '009001', '129');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '009001', '90');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '009001', '91');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '009001', '220');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '010001', '1770');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '010001', '652');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '010001', '363');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '010001', '223');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '010001', '99');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '010001', '231');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '010001', '571');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '011001', '661');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '011001', '441');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '011001', '444');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '011001', '71');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '011001', '45');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '011001', '28');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '011001', '187');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '012001', '2370');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '012001', '1071');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '012001', '602');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '012001', '403');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '012001', '211');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '012001', '513');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '012001', '1217');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '013001', '987');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '013001', '434');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '013001', '738');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '013001', '234');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '013001', '56');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '013001', '261');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '013001', '594');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '014001', '3020');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '014001', '727');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '014001', '660');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '014001', '457');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '014001', '512');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '014001', '576');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '014001', '817');
INSERT INTO `suara_caleg` VALUES ('001002001', '001', '002', '015001', '1160');
INSERT INTO `suara_caleg` VALUES ('002002001', '001', '002', '015001', '463');
INSERT INTO `suara_caleg` VALUES ('003002001', '001', '002', '015001', '418');
INSERT INTO `suara_caleg` VALUES ('004002001', '001', '002', '015001', '300');
INSERT INTO `suara_caleg` VALUES ('005002001', '001', '002', '015001', '90');
INSERT INTO `suara_caleg` VALUES ('006002001', '001', '002', '015001', '149');
INSERT INTO `suara_caleg` VALUES ('007002001', '001', '002', '015001', '768');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '001001', '1431');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '001001', '699');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '001001', '116');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '001001', '99');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '001001', '54');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '001001', '86');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '001001', '60');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '002001', '5167');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '002001', '5265');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '002001', '2143');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '002001', '2630');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '002001', '113');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '002001', '978');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '002001', '241');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '003001', '7498');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '003001', '7574');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '003001', '2580');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '003001', '8691');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '003001', '279');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '003001', '1317');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '003001', '558');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '004001', '9061');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '004001', '2997');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '004001', '1085');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '004001', '5797');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '004001', '325');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '004001', '9672');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '004001', '555');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '005001', '4123');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '005001', '840');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '005001', '252');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '005001', '3450');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '005001', '187');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '005001', '2149');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '005001', '192');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '006001', '1378');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '006001', '710');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '006001', '136');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '006001', '184');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '006001', '24');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '006001', '38');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '006001', '40');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '007001', '4485');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '007001', '669');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '007001', '172');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '007001', '521');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '007001', '65');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '007001', '58');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '007001', '88');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '008001', '8629');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '008001', '2396');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '008001', '717');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '008001', '882');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '008001', '353');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '008001', '977');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '008001', '481');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '009001', '2919');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '009001', '696');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '009001', '237');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '009001', '452');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '009001', '56');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '009001', '266');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '009001', '258');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '010001', '4216');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '010001', '2699');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '010001', '411');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '010001', '652');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '010001', '152');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '010001', '1715');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '010001', '334');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '011001', '1548');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '011001', '495');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '011001', '223');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '011001', '151');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '011001', '32');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '011001', '85');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '011001', '45');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '012001', '7232');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '012001', '2480');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '012001', '447');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '012001', '710');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '012001', '210');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '012001', '1279');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '012001', '415');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '013001', '2623');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '013001', '2088');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '013001', '221');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '013001', '1345');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '013001', '61');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '013001', '248');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '013001', '116');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '014001', '4301');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '014001', '1484');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '014001', '569');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '014001', '541');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '014001', '220');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '014001', '729');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '014001', '238');
INSERT INTO `suara_caleg` VALUES ('001001001', '001', '001', '015001', '1240');
INSERT INTO `suara_caleg` VALUES ('002001001', '001', '001', '015001', '3052');
INSERT INTO `suara_caleg` VALUES ('003001001', '001', '001', '015001', '183');
INSERT INTO `suara_caleg` VALUES ('004001001', '001', '001', '015001', '245');
INSERT INTO `suara_caleg` VALUES ('005001001', '001', '001', '015001', '149');
INSERT INTO `suara_caleg` VALUES ('006001001', '001', '001', '015001', '93');
INSERT INTO `suara_caleg` VALUES ('007001001', '001', '001', '015001', '117');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '001001', '241');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '001001', '226');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '001001', '79');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '001001', '52');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '001001', '32');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '001001', '52');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '001001', '17');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '002001', '2541');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '002001', '1534');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '002001', '186');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '002001', '445');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '002001', '103');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '002001', '62');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '002001', '61');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '003001', '11826');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '003001', '3196');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '003001', '408');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '003001', '803');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '003001', '427');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '003001', '210');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '003001', '218');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '004001', '2876');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '004001', '872');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '004001', '251');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '004001', '337');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '004001', '177');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '004001', '90');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '004001', '97');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '005001', '2116');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '005001', '916');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '005001', '156');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '005001', '381');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '005001', '217');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '005001', '65');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '005001', '101');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '006001', '502');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '006001', '795');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '006001', '77');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '006001', '55');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '006001', '16');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '006001', '24');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '006001', '57');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '007001', '1158');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '007001', '15054');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '007001', '237');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '007001', '184');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '007001', '83');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '007001', '31');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '007001', '17');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '008001', '2090');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '008001', '6053');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '008001', '281');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '008001', '1510');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '008001', '196');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '008001', '121');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '008001', '123');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '009001', '1261');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '009001', '5040');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '009001', '155');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '009001', '334');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '009001', '160');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '009001', '93');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '009001', '160');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '010001', '1271');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '010001', '1871');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '010001', '217');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '010001', '748');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '010001', '104');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '010001', '112');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '010001', '99');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '011001', '845');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '011001', '8239');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '011001', '112');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '011001', '142');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '011001', '74');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '011001', '24');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '011001', '27');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '012001', '3346');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '012001', '1306');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '012001', '454');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '012001', '4582');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '012001', '425');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '012001', '295');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '012001', '217');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '013001', '1604');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '013001', '397');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '013001', '78');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '013001', '420');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '013001', '40');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '013001', '49');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '013001', '27');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '014001', '1752');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '014001', '922');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '014001', '315');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '014001', '14055');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '014001', '300');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '014001', '81');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '014001', '67');
INSERT INTO `suara_caleg` VALUES ('001006001', '001', '006', '015001', '689');
INSERT INTO `suara_caleg` VALUES ('002006001', '001', '006', '015001', '614');
INSERT INTO `suara_caleg` VALUES ('003006001', '001', '006', '015001', '118');
INSERT INTO `suara_caleg` VALUES ('004006001', '001', '006', '015001', '432');
INSERT INTO `suara_caleg` VALUES ('005006001', '001', '006', '015001', '11568');
INSERT INTO `suara_caleg` VALUES ('006006001', '001', '006', '015001', '72');
INSERT INTO `suara_caleg` VALUES ('007006001', '001', '006', '015001', '53');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '001001', '381');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '001001', '184');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '001001', '57');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '001001', '58');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '001001', '18');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '001001', '40');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '001001', '21');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '002001', '2107');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '002001', '851');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '002001', '583');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '002001', '792');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '002001', '133');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '002001', '180');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '002001', '91');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '003001', '7241');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '003001', '3825');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '003001', '1073');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '003001', '947');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '003001', '104');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '003001', '149');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '003001', '123');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '004001', '2675');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '004001', '487');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '004001', '322');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '004001', '346');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '004001', '123');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '004001', '65');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '004001', '64');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '005001', '2045');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '005001', '676');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '005001', '146');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '005001', '176');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '005001', '47');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '005001', '37');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '005001', '40');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '006001', '621');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '006001', '253');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '006001', '40');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '006001', '37');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '006001', '23');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '006001', '25');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '006001', '14');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '007001', '2043');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '007001', '128');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '007001', '76');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '007001', '99');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '007001', '26');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '007001', '20');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '007001', '13');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '008001', '3115');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '008001', '699');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '008001', '367');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '008001', '278');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '008001', '117');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '008001', '134');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '008001', '69');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '009001', '574');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '009001', '181');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '009001', '69');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '009001', '86');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '009001', '20');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '009001', '26');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '009001', '30');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '010001', '1564');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '010001', '338');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '010001', '227');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '010001', '268');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '010001', '72');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '010001', '104');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '010001', '101');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '011001', '611');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '011001', '78');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '011001', '69');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '011001', '53');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '011001', '31');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '011001', '15');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '011001', '38');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '012001', '4225');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '012001', '597');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '012001', '224');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '012001', '393');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '012001', '116');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '012001', '105');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '012001', '102');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '013001', '2404');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '013001', '522');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '013001', '154');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '013001', '175');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '013001', '65');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '013001', '50');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '013001', '36');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '014001', '1656');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '014001', '257');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '014001', '126');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '014001', '157');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '014001', '41');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '014001', '43');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '014001', '56');
INSERT INTO `suara_caleg` VALUES ('001010001', '001', '010', '015001', '427');
INSERT INTO `suara_caleg` VALUES ('002010001', '001', '010', '015001', '180');
INSERT INTO `suara_caleg` VALUES ('003010001', '001', '010', '015001', '68');
INSERT INTO `suara_caleg` VALUES ('004010001', '001', '010', '015001', '70');
INSERT INTO `suara_caleg` VALUES ('005010001', '001', '010', '015001', '20');
INSERT INTO `suara_caleg` VALUES ('006010001', '001', '010', '015001', '31');
INSERT INTO `suara_caleg` VALUES ('007010001', '001', '010', '015001', '17');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '001001', '280');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '001001', '52');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '001001', '60');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '001001', '23');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '001001', '76');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '001001', '14');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '001001', '14');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '002001', '727');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '002001', '122');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '002001', '143');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '002001', '186');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '002001', '262');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '002001', '38');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '002001', '52');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '003001', '828');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '003001', '211');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '003001', '281');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '003001', '234');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '003001', '112');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '003001', '47');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '003001', '89');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '004001', '1219');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '004001', '487');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '004001', '236');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '004001', '221');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '004001', '564');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '004001', '158');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '004001', '71');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '005001', '1350');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '005001', '114');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '005001', '80');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '005001', '49');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '005001', '50');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '005001', '54');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '005001', '100');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '006001', '652');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '006001', '185');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '006001', '81');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '006001', '47');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '006001', '70');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '006001', '37');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '006001', '32');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '007001', '1206');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '007001', '586');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '007001', '138');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '007001', '91');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '007001', '102');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '007001', '35');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '007001', '106');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '008001', '985');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '008001', '522');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '008001', '300');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '008001', '806');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '008001', '597');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '008001', '111');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '008001', '116');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '009001', '1031');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '009001', '391');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '009001', '134');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '009001', '252');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '009001', '126');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '009001', '50');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '009001', '97');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '010001', '900');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '010001', '359');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '010001', '151');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '010001', '193');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '010001', '93');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '010001', '73');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '010001', '138');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '011001', '977');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '011001', '265');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '011001', '169');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '011001', '121');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '011001', '123');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '011001', '32');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '011001', '23');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '012001', '786');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '012001', '301');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '012001', '244');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '012001', '112');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '012001', '152');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '012001', '71');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '012001', '108');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '013001', '347');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '013001', '190');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '013001', '106');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '013001', '131');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '013001', '63');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '013001', '64');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '013001', '42');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '014001', '1167');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '014001', '395');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '014001', '235');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '014001', '174');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '014001', '103');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '014001', '71');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '014001', '105');
INSERT INTO `suara_caleg` VALUES ('001004001', '001', '004', '015001', '457');
INSERT INTO `suara_caleg` VALUES ('002004001', '001', '004', '015001', '344');
INSERT INTO `suara_caleg` VALUES ('003004001', '001', '004', '015001', '135');
INSERT INTO `suara_caleg` VALUES ('004004001', '001', '004', '015001', '114');
INSERT INTO `suara_caleg` VALUES ('005004001', '001', '004', '015001', '120');
INSERT INTO `suara_caleg` VALUES ('006004001', '001', '004', '015001', '104');
INSERT INTO `suara_caleg` VALUES ('007004001', '001', '004', '015001', '71');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '001001', '297');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '001001', '225');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '001001', '21');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '001001', '9');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '001001', '24');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '001001', '10');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '001001', '15');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '002001', '697');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '002001', '282');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '002001', '98');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '002001', '72');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '002001', '55');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '002001', '31');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '002001', '63');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '003001', '1378');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '003001', '632');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '003001', '136');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '003001', '132');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '003001', '98');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '003001', '64');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '003001', '88');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '004001', '1922');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '004001', '2953');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '004001', '154');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '004001', '131');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '004001', '113');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '004001', '95');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '004001', '57');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '005001', '497');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '005001', '550');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '005001', '62');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '005001', '105');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '005001', '75');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '005001', '53');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '005001', '28');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '006001', '346');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '006001', '139');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '006001', '40');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '006001', '28');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '006001', '16');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '006001', '9');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '006001', '30');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '007001', '1961');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '007001', '448');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '007001', '74');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '007001', '76');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '007001', '39');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '007001', '18');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '007001', '18');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '008001', '831');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '008001', '716');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '008001', '117');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '008001', '165');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '008001', '126');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '008001', '50');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '008001', '476');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '009001', '643');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '009001', '152');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '009001', '61');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '009001', '67');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '009001', '40');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '009001', '26');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '009001', '59');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '010001', '648');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '010001', '351');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '010001', '68');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '010001', '108');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '010001', '61');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '010001', '61');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '010001', '86');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '011001', '481');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '011001', '93');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '011001', '48');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '011001', '44');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '011001', '20');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '011001', '25');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '011001', '45');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '012001', '605');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '012001', '338');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '012001', '78');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '012001', '56');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '012001', '61');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '012001', '269');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '012001', '65');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '013001', '229');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '013001', '171');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '013001', '40');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '013001', '35');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '013001', '21');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '013001', '21');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '013001', '16');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '014001', '800');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '014001', '340');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '014001', '85');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '014001', '97');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '014001', '57');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '014001', '94');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '014001', '56');
INSERT INTO `suara_caleg` VALUES ('001011001', '001', '011', '015001', '1431');
INSERT INTO `suara_caleg` VALUES ('002011001', '001', '011', '015001', '306');
INSERT INTO `suara_caleg` VALUES ('003011001', '001', '011', '015001', '87');
INSERT INTO `suara_caleg` VALUES ('004011001', '001', '011', '015001', '85');
INSERT INTO `suara_caleg` VALUES ('005011001', '001', '011', '015001', '78');
INSERT INTO `suara_caleg` VALUES ('006011001', '001', '011', '015001', '30');
INSERT INTO `suara_caleg` VALUES ('007011001', '001', '011', '015001', '35');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '001001', '15');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '001001', '15');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '001001', '29');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '001001', '10');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '001001', '22');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '001001', '1');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '001001', '4');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '002001', '245');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '002001', '219');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '002001', '461');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '002001', '83');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '002001', '125');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '002001', '26');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '002001', '19');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '003001', '276');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '003001', '250');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '003001', '1251');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '003001', '68');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '003001', '108');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '003001', '29');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '003001', '51');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '004001', '467');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '004001', '631');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '004001', '151');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '004001', '136');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '004001', '808');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '004001', '35');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '004001', '42');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '005001', '88');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '005001', '61');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '005001', '29');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '005001', '15');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '005001', '260');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '005001', '18');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '005001', '27');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '006001', '334');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '006001', '59');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '006001', '29');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '006001', '20');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '006001', '14');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '006001', '16');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '006001', '15');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '007001', '85');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '007001', '33');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '007001', '21');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '007001', '15');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '007001', '9');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '007001', '17');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '007001', '18');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '008001', '1085');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '008001', '584');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '008001', '306');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '008001', '314');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '008001', '194');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '008001', '132');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '008001', '291');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '009001', '994');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '009001', '235');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '009001', '105');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '009001', '85');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '009001', '38');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '009001', '22');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '009001', '23');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '010001', '449');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '010001', '201');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '010001', '60');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '010001', '52');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '010001', '103');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '010001', '55');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '010001', '313');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '011001', '521');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '011001', '135');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '011001', '98');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '011001', '25');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '011001', '28');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '011001', '17');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '011001', '13');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '012001', '270');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '012001', '145');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '012001', '105');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '012001', '42');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '012001', '53');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '012001', '34');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '012001', '107');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '013001', '95');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '013001', '58');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '013001', '56');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '013001', '12');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '013001', '10');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '013001', '26');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '013001', '10');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '014001', '393');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '014001', '233');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '014001', '65');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '014001', '85');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '014001', '49');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '014001', '21');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '014001', '42');
INSERT INTO `suara_caleg` VALUES ('001013001', '001', '013', '015001', '91');
INSERT INTO `suara_caleg` VALUES ('002013001', '001', '013', '015001', '94');
INSERT INTO `suara_caleg` VALUES ('003013001', '001', '013', '015001', '36');
INSERT INTO `suara_caleg` VALUES ('004013001', '001', '013', '015001', '23');
INSERT INTO `suara_caleg` VALUES ('005013001', '001', '013', '015001', '30');
INSERT INTO `suara_caleg` VALUES ('006013001', '001', '013', '015001', '28');
INSERT INTO `suara_caleg` VALUES ('007013001', '001', '013', '015001', '32');
INSERT INTO `suara_caleg` VALUES ('001005002', '002', '005', '001002', '4246');
INSERT INTO `suara_caleg` VALUES ('002005002', '002', '005', '001002', '7844');
INSERT INTO `suara_caleg` VALUES ('003005002', '002', '005', '001002', '743');
INSERT INTO `suara_caleg` VALUES ('004005002', '002', '005', '001002', '666');
INSERT INTO `suara_caleg` VALUES ('005005002', '002', '005', '001002', '628');
INSERT INTO `suara_caleg` VALUES ('006005002', '002', '005', '001002', '488');
INSERT INTO `suara_caleg` VALUES ('001005002', '002', '005', '002002', '2360');
INSERT INTO `suara_caleg` VALUES ('002005002', '002', '005', '002002', '1182');
INSERT INTO `suara_caleg` VALUES ('003005002', '002', '005', '002002', '567');
INSERT INTO `suara_caleg` VALUES ('004005002', '002', '005', '002002', '6742');
INSERT INTO `suara_caleg` VALUES ('005005002', '002', '005', '002002', '458');
INSERT INTO `suara_caleg` VALUES ('006005002', '002', '005', '002002', '188');
INSERT INTO `suara_caleg` VALUES ('001005002', '002', '005', '003002', '1491');
INSERT INTO `suara_caleg` VALUES ('002005002', '002', '005', '003002', '575');
INSERT INTO `suara_caleg` VALUES ('003005002', '002', '005', '003002', '334');
INSERT INTO `suara_caleg` VALUES ('004005002', '002', '005', '003002', '1541');
INSERT INTO `suara_caleg` VALUES ('005005002', '002', '005', '003002', '231');
INSERT INTO `suara_caleg` VALUES ('006005002', '002', '005', '003002', '141');
INSERT INTO `suara_caleg` VALUES ('001005002', '002', '005', '004002', '4772');
INSERT INTO `suara_caleg` VALUES ('002005002', '002', '005', '004002', '4426');
INSERT INTO `suara_caleg` VALUES ('003005002', '002', '005', '004002', '738');
INSERT INTO `suara_caleg` VALUES ('004005002', '002', '005', '004002', '973');
INSERT INTO `suara_caleg` VALUES ('005005002', '002', '005', '004002', '985');
INSERT INTO `suara_caleg` VALUES ('006005002', '002', '005', '004002', '943');
INSERT INTO `suara_caleg` VALUES ('001005002', '002', '005', '005002', '1930');
INSERT INTO `suara_caleg` VALUES ('002005002', '002', '005', '005002', '2103');
INSERT INTO `suara_caleg` VALUES ('003005002', '002', '005', '005002', '267');
INSERT INTO `suara_caleg` VALUES ('004005002', '002', '005', '005002', '457');
INSERT INTO `suara_caleg` VALUES ('005005002', '002', '005', '005002', '320');
INSERT INTO `suara_caleg` VALUES ('006005002', '002', '005', '005002', '324');
INSERT INTO `suara_caleg` VALUES ('001005002', '002', '005', '006002', '4893');
INSERT INTO `suara_caleg` VALUES ('002005002', '002', '005', '006002', '2517');
INSERT INTO `suara_caleg` VALUES ('003005002', '002', '005', '006002', '1806');
INSERT INTO `suara_caleg` VALUES ('004005002', '002', '005', '006002', '814');
INSERT INTO `suara_caleg` VALUES ('005005002', '002', '005', '006002', '1662');
INSERT INTO `suara_caleg` VALUES ('006005002', '002', '005', '006002', '436');
INSERT INTO `suara_caleg` VALUES ('001005002', '002', '005', '007002', '1937');
INSERT INTO `suara_caleg` VALUES ('002005002', '002', '005', '007002', '1136');
INSERT INTO `suara_caleg` VALUES ('003005002', '002', '005', '007002', '277');
INSERT INTO `suara_caleg` VALUES ('004005002', '002', '005', '007002', '271');
INSERT INTO `suara_caleg` VALUES ('005005002', '002', '005', '007002', '287');
INSERT INTO `suara_caleg` VALUES ('006005002', '002', '005', '007002', '276');
INSERT INTO `suara_caleg` VALUES ('001005002', '002', '005', '008002', '2119');
INSERT INTO `suara_caleg` VALUES ('002005002', '002', '005', '008002', '891');
INSERT INTO `suara_caleg` VALUES ('003005002', '002', '005', '008002', '2081');
INSERT INTO `suara_caleg` VALUES ('004005002', '002', '005', '008002', '359');
INSERT INTO `suara_caleg` VALUES ('005005002', '002', '005', '008002', '2130');
INSERT INTO `suara_caleg` VALUES ('006005002', '002', '005', '008002', '314');
INSERT INTO `suara_caleg` VALUES ('001008002', '002', '008', '001002', '0');
INSERT INTO `suara_caleg` VALUES ('002008002', '002', '008', '001002', '3930');
INSERT INTO `suara_caleg` VALUES ('003008002', '002', '008', '001002', '517');
INSERT INTO `suara_caleg` VALUES ('004008002', '002', '008', '001002', '830');
INSERT INTO `suara_caleg` VALUES ('005008002', '002', '008', '001002', '439');
INSERT INTO `suara_caleg` VALUES ('001008002', '002', '008', '002002', '0');
INSERT INTO `suara_caleg` VALUES ('002008002', '002', '008', '002002', '1164');
INSERT INTO `suara_caleg` VALUES ('003008002', '002', '008', '002002', '439');
INSERT INTO `suara_caleg` VALUES ('004008002', '002', '008', '002002', '516');
INSERT INTO `suara_caleg` VALUES ('005008002', '002', '008', '002002', '248');
INSERT INTO `suara_caleg` VALUES ('001008002', '002', '008', '003002', '41');
INSERT INTO `suara_caleg` VALUES ('002008002', '002', '008', '003002', '445');
INSERT INTO `suara_caleg` VALUES ('003008002', '002', '008', '003002', '138');
INSERT INTO `suara_caleg` VALUES ('004008002', '002', '008', '003002', '260');
INSERT INTO `suara_caleg` VALUES ('005008002', '002', '008', '003002', '95');
INSERT INTO `suara_caleg` VALUES ('001008002', '002', '008', '004002', '0');
INSERT INTO `suara_caleg` VALUES ('002008002', '002', '008', '004002', '3155');
INSERT INTO `suara_caleg` VALUES ('003008002', '002', '008', '004002', '953');
INSERT INTO `suara_caleg` VALUES ('004008002', '002', '008', '004002', '1391');
INSERT INTO `suara_caleg` VALUES ('005008002', '002', '008', '004002', '479');
INSERT INTO `suara_caleg` VALUES ('001008002', '002', '008', '005002', '22');
INSERT INTO `suara_caleg` VALUES ('002008002', '002', '008', '005002', '955');
INSERT INTO `suara_caleg` VALUES ('003008002', '002', '008', '005002', '153');
INSERT INTO `suara_caleg` VALUES ('004008002', '002', '008', '005002', '473');
INSERT INTO `suara_caleg` VALUES ('005008002', '002', '008', '005002', '346');
INSERT INTO `suara_caleg` VALUES ('001008002', '002', '008', '006002', '92');
INSERT INTO `suara_caleg` VALUES ('002008002', '002', '008', '006002', '1071');
INSERT INTO `suara_caleg` VALUES ('003008002', '002', '008', '006002', '556');
INSERT INTO `suara_caleg` VALUES ('004008002', '002', '008', '006002', '548');
INSERT INTO `suara_caleg` VALUES ('005008002', '002', '008', '006002', '179');
INSERT INTO `suara_caleg` VALUES ('001008002', '002', '008', '007002', '6');
INSERT INTO `suara_caleg` VALUES ('002008002', '002', '008', '007002', '427');
INSERT INTO `suara_caleg` VALUES ('003008002', '002', '008', '007002', '230');
INSERT INTO `suara_caleg` VALUES ('004008002', '002', '008', '007002', '203');
INSERT INTO `suara_caleg` VALUES ('005008002', '002', '008', '007002', '46');
INSERT INTO `suara_caleg` VALUES ('001008002', '002', '008', '008002', '24');
INSERT INTO `suara_caleg` VALUES ('002008002', '002', '008', '008002', '936');
INSERT INTO `suara_caleg` VALUES ('003008002', '002', '008', '008002', '486');
INSERT INTO `suara_caleg` VALUES ('004008002', '002', '008', '008002', '451');
INSERT INTO `suara_caleg` VALUES ('005008002', '002', '008', '008002', '208');
INSERT INTO `suara_caleg` VALUES ('001009002', '002', '009', '001002', '4533');
INSERT INTO `suara_caleg` VALUES ('002009002', '002', '009', '001002', '3215');
INSERT INTO `suara_caleg` VALUES ('003009002', '002', '009', '001002', '582');
INSERT INTO `suara_caleg` VALUES ('004009002', '002', '009', '001002', '1306');
INSERT INTO `suara_caleg` VALUES ('005009002', '002', '009', '001002', '272');
INSERT INTO `suara_caleg` VALUES ('006009002', '002', '009', '001002', '126');
INSERT INTO `suara_caleg` VALUES ('001009002', '002', '009', '002002', '2005');
INSERT INTO `suara_caleg` VALUES ('002009002', '002', '009', '002002', '690');
INSERT INTO `suara_caleg` VALUES ('003009002', '002', '009', '002002', '266');
INSERT INTO `suara_caleg` VALUES ('004009002', '002', '009', '002002', '302');
INSERT INTO `suara_caleg` VALUES ('005009002', '002', '009', '002002', '1088');
INSERT INTO `suara_caleg` VALUES ('006009002', '002', '009', '002002', '103');
INSERT INTO `suara_caleg` VALUES ('001009002', '002', '009', '003002', '1309');
INSERT INTO `suara_caleg` VALUES ('002009002', '002', '009', '003002', '472');
INSERT INTO `suara_caleg` VALUES ('003009002', '002', '009', '003002', '174');
INSERT INTO `suara_caleg` VALUES ('004009002', '002', '009', '003002', '174');
INSERT INTO `suara_caleg` VALUES ('005009002', '002', '009', '003002', '270');
INSERT INTO `suara_caleg` VALUES ('006009002', '002', '009', '003002', '62');
INSERT INTO `suara_caleg` VALUES ('001009002', '002', '009', '004002', '4942');
INSERT INTO `suara_caleg` VALUES ('002009002', '002', '009', '004002', '2393');
INSERT INTO `suara_caleg` VALUES ('003009002', '002', '009', '004002', '827');
INSERT INTO `suara_caleg` VALUES ('004009002', '002', '009', '004002', '786');
INSERT INTO `suara_caleg` VALUES ('005009002', '002', '009', '004002', '393');
INSERT INTO `suara_caleg` VALUES ('006009002', '002', '009', '004002', '190');
INSERT INTO `suara_caleg` VALUES ('001009002', '002', '009', '005002', '3821');
INSERT INTO `suara_caleg` VALUES ('002009002', '002', '009', '005002', '919');
INSERT INTO `suara_caleg` VALUES ('003009002', '002', '009', '005002', '313');
INSERT INTO `suara_caleg` VALUES ('004009002', '002', '009', '005002', '321');
INSERT INTO `suara_caleg` VALUES ('005009002', '002', '009', '005002', '120');
INSERT INTO `suara_caleg` VALUES ('006009002', '002', '009', '005002', '99');
INSERT INTO `suara_caleg` VALUES ('001009002', '002', '009', '006002', '2031');
INSERT INTO `suara_caleg` VALUES ('002009002', '002', '009', '006002', '889');
INSERT INTO `suara_caleg` VALUES ('003009002', '002', '009', '006002', '296');
INSERT INTO `suara_caleg` VALUES ('004009002', '002', '009', '006002', '373');
INSERT INTO `suara_caleg` VALUES ('005009002', '002', '009', '006002', '171');
INSERT INTO `suara_caleg` VALUES ('006009002', '002', '009', '006002', '84');
INSERT INTO `suara_caleg` VALUES ('001009002', '002', '009', '007002', '2193');
INSERT INTO `suara_caleg` VALUES ('002009002', '002', '009', '007002', '2786');
INSERT INTO `suara_caleg` VALUES ('003009002', '002', '009', '007002', '351');
INSERT INTO `suara_caleg` VALUES ('004009002', '002', '009', '007002', '269');
INSERT INTO `suara_caleg` VALUES ('005009002', '002', '009', '007002', '68');
INSERT INTO `suara_caleg` VALUES ('006009002', '002', '009', '007002', '103');
INSERT INTO `suara_caleg` VALUES ('001009002', '002', '009', '008002', '4047');
INSERT INTO `suara_caleg` VALUES ('002009002', '002', '009', '008002', '3361');
INSERT INTO `suara_caleg` VALUES ('003009002', '002', '009', '008002', '1739');
INSERT INTO `suara_caleg` VALUES ('004009002', '002', '009', '008002', '641');
INSERT INTO `suara_caleg` VALUES ('005009002', '002', '009', '008002', '311');
INSERT INTO `suara_caleg` VALUES ('006009002', '002', '009', '008002', '221');
INSERT INTO `suara_caleg` VALUES ('001007002', '002', '007', '001002', '791');
INSERT INTO `suara_caleg` VALUES ('002007002', '002', '007', '001002', '130');
INSERT INTO `suara_caleg` VALUES ('003007002', '002', '007', '001002', '74');
INSERT INTO `suara_caleg` VALUES ('004007002', '002', '007', '001002', '118');
INSERT INTO `suara_caleg` VALUES ('005007002', '002', '007', '001002', '27');
INSERT INTO `suara_caleg` VALUES ('006007002', '002', '007', '001002', '56');
INSERT INTO `suara_caleg` VALUES ('001007002', '002', '007', '002002', '1471');
INSERT INTO `suara_caleg` VALUES ('002007002', '002', '007', '002002', '419');
INSERT INTO `suara_caleg` VALUES ('003007002', '002', '007', '002002', '184');
INSERT INTO `suara_caleg` VALUES ('004007002', '002', '007', '002002', '286');
INSERT INTO `suara_caleg` VALUES ('005007002', '002', '007', '002002', '283');
INSERT INTO `suara_caleg` VALUES ('006007002', '002', '007', '002002', '30980');
INSERT INTO `suara_caleg` VALUES ('001007002', '002', '007', '003002', '1119');
INSERT INTO `suara_caleg` VALUES ('002007002', '002', '007', '003002', '315');
INSERT INTO `suara_caleg` VALUES ('003007002', '002', '007', '003002', '239');
INSERT INTO `suara_caleg` VALUES ('004007002', '002', '007', '003002', '238');
INSERT INTO `suara_caleg` VALUES ('005007002', '002', '007', '003002', '466');
INSERT INTO `suara_caleg` VALUES ('006007002', '002', '007', '003002', '30355');
INSERT INTO `suara_caleg` VALUES ('001007002', '002', '007', '004002', '1660');
INSERT INTO `suara_caleg` VALUES ('002007002', '002', '007', '004002', '223');
INSERT INTO `suara_caleg` VALUES ('003007002', '002', '007', '004002', '127');
INSERT INTO `suara_caleg` VALUES ('004007002', '002', '007', '004002', '223');
INSERT INTO `suara_caleg` VALUES ('005007002', '002', '007', '004002', '72');
INSERT INTO `suara_caleg` VALUES ('006007002', '002', '007', '004002', '279');
INSERT INTO `suara_caleg` VALUES ('001007002', '002', '007', '005002', '348');
INSERT INTO `suara_caleg` VALUES ('002007002', '002', '007', '005002', '131');
INSERT INTO `suara_caleg` VALUES ('003007002', '002', '007', '005002', '76');
INSERT INTO `suara_caleg` VALUES ('004007002', '002', '007', '005002', '100');
INSERT INTO `suara_caleg` VALUES ('005007002', '002', '007', '005002', '29');
INSERT INTO `suara_caleg` VALUES ('006007002', '002', '007', '005002', '123');
INSERT INTO `suara_caleg` VALUES ('001007002', '002', '007', '006002', '1675');
INSERT INTO `suara_caleg` VALUES ('002007002', '002', '007', '006002', '248');
INSERT INTO `suara_caleg` VALUES ('003007002', '002', '007', '006002', '118');
INSERT INTO `suara_caleg` VALUES ('004007002', '002', '007', '006002', '182');
INSERT INTO `suara_caleg` VALUES ('005007002', '002', '007', '006002', '64');
INSERT INTO `suara_caleg` VALUES ('006007002', '002', '007', '006002', '1264');
INSERT INTO `suara_caleg` VALUES ('001007002', '002', '007', '007002', '1183');
INSERT INTO `suara_caleg` VALUES ('002007002', '002', '007', '007002', '573');
INSERT INTO `suara_caleg` VALUES ('003007002', '002', '007', '007002', '114');
INSERT INTO `suara_caleg` VALUES ('004007002', '002', '007', '007002', '315');
INSERT INTO `suara_caleg` VALUES ('005007002', '002', '007', '007002', '54');
INSERT INTO `suara_caleg` VALUES ('006007002', '002', '007', '007002', '198');
INSERT INTO `suara_caleg` VALUES ('001007002', '002', '007', '008002', '1831');
INSERT INTO `suara_caleg` VALUES ('002007002', '002', '007', '008002', '15229');
INSERT INTO `suara_caleg` VALUES ('003007002', '002', '007', '008002', '358');
INSERT INTO `suara_caleg` VALUES ('004007002', '002', '007', '008002', '426');
INSERT INTO `suara_caleg` VALUES ('005007002', '002', '007', '008002', '136');
INSERT INTO `suara_caleg` VALUES ('006007002', '002', '007', '008002', '904');
INSERT INTO `suara_caleg` VALUES ('001003002', '002', '003', '001002', '2471');
INSERT INTO `suara_caleg` VALUES ('002003002', '002', '003', '001002', '16105');
INSERT INTO `suara_caleg` VALUES ('003003002', '002', '003', '001002', '684');
INSERT INTO `suara_caleg` VALUES ('004003002', '002', '003', '001002', '476');
INSERT INTO `suara_caleg` VALUES ('005003002', '002', '003', '001002', '6880');
INSERT INTO `suara_caleg` VALUES ('006003002', '002', '003', '001002', '234');
INSERT INTO `suara_caleg` VALUES ('001003002', '002', '003', '002002', '2761');
INSERT INTO `suara_caleg` VALUES ('002003002', '002', '003', '002002', '1270');
INSERT INTO `suara_caleg` VALUES ('003003002', '002', '003', '002002', '658');
INSERT INTO `suara_caleg` VALUES ('004003002', '002', '003', '002002', '486');
INSERT INTO `suara_caleg` VALUES ('005003002', '002', '003', '002002', '612');
INSERT INTO `suara_caleg` VALUES ('006003002', '002', '003', '002002', '199');
INSERT INTO `suara_caleg` VALUES ('001003002', '002', '003', '003002', '1367');
INSERT INTO `suara_caleg` VALUES ('002003002', '002', '003', '003002', '1704');
INSERT INTO `suara_caleg` VALUES ('003003002', '002', '003', '003002', '375');
INSERT INTO `suara_caleg` VALUES ('004003002', '002', '003', '003002', '216');
INSERT INTO `suara_caleg` VALUES ('005003002', '002', '003', '003002', '359');
INSERT INTO `suara_caleg` VALUES ('006003002', '002', '003', '003002', '169');
INSERT INTO `suara_caleg` VALUES ('001003002', '002', '003', '004002', '2079');
INSERT INTO `suara_caleg` VALUES ('002003002', '002', '003', '004002', '2191');
INSERT INTO `suara_caleg` VALUES ('003003002', '002', '003', '004002', '484');
INSERT INTO `suara_caleg` VALUES ('004003002', '002', '003', '004002', '926');
INSERT INTO `suara_caleg` VALUES ('005003002', '002', '003', '004002', '5884');
INSERT INTO `suara_caleg` VALUES ('006003002', '002', '003', '004002', '258');
INSERT INTO `suara_caleg` VALUES ('001003002', '002', '003', '005002', '639');
INSERT INTO `suara_caleg` VALUES ('002003002', '002', '003', '005002', '418');
INSERT INTO `suara_caleg` VALUES ('003003002', '002', '003', '005002', '187');
INSERT INTO `suara_caleg` VALUES ('004003002', '002', '003', '005002', '304');
INSERT INTO `suara_caleg` VALUES ('005003002', '002', '003', '005002', '1398');
INSERT INTO `suara_caleg` VALUES ('006003002', '002', '003', '005002', '134');
INSERT INTO `suara_caleg` VALUES ('001003002', '002', '003', '006002', '2542');
INSERT INTO `suara_caleg` VALUES ('002003002', '002', '003', '006002', '1939');
INSERT INTO `suara_caleg` VALUES ('003003002', '002', '003', '006002', '394');
INSERT INTO `suara_caleg` VALUES ('004003002', '002', '003', '006002', '468');
INSERT INTO `suara_caleg` VALUES ('005003002', '002', '003', '006002', '2868');
INSERT INTO `suara_caleg` VALUES ('006003002', '002', '003', '006002', '167');
INSERT INTO `suara_caleg` VALUES ('001003002', '002', '003', '007002', '1664');
INSERT INTO `suara_caleg` VALUES ('002003002', '002', '003', '007002', '602');
INSERT INTO `suara_caleg` VALUES ('003003002', '002', '003', '007002', '310');
INSERT INTO `suara_caleg` VALUES ('004003002', '002', '003', '007002', '446');
INSERT INTO `suara_caleg` VALUES ('005003002', '002', '003', '007002', '2996');
INSERT INTO `suara_caleg` VALUES ('006003002', '002', '003', '007002', '508');
INSERT INTO `suara_caleg` VALUES ('001003002', '002', '003', '008002', '2212');
INSERT INTO `suara_caleg` VALUES ('002003002', '002', '003', '008002', '632');
INSERT INTO `suara_caleg` VALUES ('003003002', '002', '003', '008002', '739');
INSERT INTO `suara_caleg` VALUES ('004003002', '002', '003', '008002', '541');
INSERT INTO `suara_caleg` VALUES ('005003002', '002', '003', '008002', '1605');
INSERT INTO `suara_caleg` VALUES ('006003002', '002', '003', '008002', '426');
INSERT INTO `suara_caleg` VALUES ('001002002', '002', '002', '001002', '2138');
INSERT INTO `suara_caleg` VALUES ('002002002', '002', '002', '001002', '15704');
INSERT INTO `suara_caleg` VALUES ('003002002', '002', '002', '001002', '939');
INSERT INTO `suara_caleg` VALUES ('004002002', '002', '002', '001002', '4196');
INSERT INTO `suara_caleg` VALUES ('005002002', '002', '002', '001002', '640');
INSERT INTO `suara_caleg` VALUES ('006002002', '002', '002', '001002', '411');
INSERT INTO `suara_caleg` VALUES ('001002002', '002', '002', '002002', '1660');
INSERT INTO `suara_caleg` VALUES ('002002002', '002', '002', '002002', '676');
INSERT INTO `suara_caleg` VALUES ('003002002', '002', '002', '002002', '507');
INSERT INTO `suara_caleg` VALUES ('004002002', '002', '002', '002002', '895');
INSERT INTO `suara_caleg` VALUES ('005002002', '002', '002', '002002', '169');
INSERT INTO `suara_caleg` VALUES ('006002002', '002', '002', '002002', '378');
INSERT INTO `suara_caleg` VALUES ('001002002', '002', '002', '003002', '1107');
INSERT INTO `suara_caleg` VALUES ('002002002', '002', '002', '003002', '492');
INSERT INTO `suara_caleg` VALUES ('003002002', '002', '002', '003002', '349');
INSERT INTO `suara_caleg` VALUES ('004002002', '002', '002', '003002', '571');
INSERT INTO `suara_caleg` VALUES ('005002002', '002', '002', '003002', '234');
INSERT INTO `suara_caleg` VALUES ('006002002', '002', '002', '003002', '305');
INSERT INTO `suara_caleg` VALUES ('001002002', '002', '002', '004002', '7424');
INSERT INTO `suara_caleg` VALUES ('002002002', '002', '002', '004002', '2568');
INSERT INTO `suara_caleg` VALUES ('003002002', '002', '002', '004002', '1398');
INSERT INTO `suara_caleg` VALUES ('004002002', '002', '002', '004002', '23553');
INSERT INTO `suara_caleg` VALUES ('005002002', '002', '002', '004002', '32331');
INSERT INTO `suara_caleg` VALUES ('006002002', '002', '002', '004002', '1232');
INSERT INTO `suara_caleg` VALUES ('001002002', '002', '002', '005002', '1015');
INSERT INTO `suara_caleg` VALUES ('002002002', '002', '002', '005002', '939');
INSERT INTO `suara_caleg` VALUES ('003002002', '002', '002', '005002', '529');
INSERT INTO `suara_caleg` VALUES ('004002002', '002', '002', '005002', '7330');
INSERT INTO `suara_caleg` VALUES ('005002002', '002', '002', '005002', '6269');
INSERT INTO `suara_caleg` VALUES ('006002002', '002', '002', '005002', '389');
INSERT INTO `suara_caleg` VALUES ('001002002', '002', '002', '006002', '15756');
INSERT INTO `suara_caleg` VALUES ('002002002', '002', '002', '006002', '1020');
INSERT INTO `suara_caleg` VALUES ('003002002', '002', '002', '006002', '578');
INSERT INTO `suara_caleg` VALUES ('004002002', '002', '002', '006002', '845');
INSERT INTO `suara_caleg` VALUES ('005002002', '002', '002', '006002', '771');
INSERT INTO `suara_caleg` VALUES ('006002002', '002', '002', '006002', '444');
INSERT INTO `suara_caleg` VALUES ('001002002', '002', '002', '007002', '2991');
INSERT INTO `suara_caleg` VALUES ('002002002', '002', '002', '007002', '609');
INSERT INTO `suara_caleg` VALUES ('003002002', '002', '002', '007002', '450');
INSERT INTO `suara_caleg` VALUES ('004002002', '002', '002', '007002', '329');
INSERT INTO `suara_caleg` VALUES ('005002002', '002', '002', '007002', '706');
INSERT INTO `suara_caleg` VALUES ('006002002', '002', '002', '007002', '280');
INSERT INTO `suara_caleg` VALUES ('001002002', '002', '002', '008002', '3416');
INSERT INTO `suara_caleg` VALUES ('002002002', '002', '002', '008002', '1176');
INSERT INTO `suara_caleg` VALUES ('003002002', '002', '002', '008002', '695');
INSERT INTO `suara_caleg` VALUES ('004002002', '002', '002', '008002', '516');
INSERT INTO `suara_caleg` VALUES ('005002002', '002', '002', '008002', '1004');
INSERT INTO `suara_caleg` VALUES ('006002002', '002', '002', '008002', '466');
INSERT INTO `suara_caleg` VALUES ('001001002', '002', '001', '001002', '5085');
INSERT INTO `suara_caleg` VALUES ('002001002', '002', '001', '001002', '2433');
INSERT INTO `suara_caleg` VALUES ('003001002', '002', '001', '001002', '802');
INSERT INTO `suara_caleg` VALUES ('004001002', '002', '001', '001002', '1195');
INSERT INTO `suara_caleg` VALUES ('005001002', '002', '001', '001002', '971');
INSERT INTO `suara_caleg` VALUES ('006001002', '002', '001', '001002', '1188');
INSERT INTO `suara_caleg` VALUES ('001001002', '002', '001', '002002', '3184');
INSERT INTO `suara_caleg` VALUES ('002001002', '002', '001', '002002', '1395');
INSERT INTO `suara_caleg` VALUES ('003001002', '002', '001', '002002', '1424');
INSERT INTO `suara_caleg` VALUES ('004001002', '002', '001', '002002', '1479');
INSERT INTO `suara_caleg` VALUES ('005001002', '002', '001', '002002', '2152');
INSERT INTO `suara_caleg` VALUES ('006001002', '002', '001', '002002', '210');
INSERT INTO `suara_caleg` VALUES ('001001002', '002', '001', '003002', '1462');
INSERT INTO `suara_caleg` VALUES ('002001002', '002', '001', '003002', '970');
INSERT INTO `suara_caleg` VALUES ('003001002', '002', '001', '003002', '407');
INSERT INTO `suara_caleg` VALUES ('004001002', '002', '001', '003002', '556');
INSERT INTO `suara_caleg` VALUES ('005001002', '002', '001', '003002', '964');
INSERT INTO `suara_caleg` VALUES ('006001002', '002', '001', '003002', '181');
INSERT INTO `suara_caleg` VALUES ('001001002', '002', '001', '004002', '6697');
INSERT INTO `suara_caleg` VALUES ('002001002', '002', '001', '004002', '3784');
INSERT INTO `suara_caleg` VALUES ('003001002', '002', '001', '004002', '1385');
INSERT INTO `suara_caleg` VALUES ('004001002', '002', '001', '004002', '1848');
INSERT INTO `suara_caleg` VALUES ('005001002', '002', '001', '004002', '1646');
INSERT INTO `suara_caleg` VALUES ('006001002', '002', '001', '004002', '835');
INSERT INTO `suara_caleg` VALUES ('001001002', '002', '001', '005002', '2286');
INSERT INTO `suara_caleg` VALUES ('002001002', '002', '001', '005002', '2227');
INSERT INTO `suara_caleg` VALUES ('003001002', '002', '001', '005002', '796');
INSERT INTO `suara_caleg` VALUES ('004001002', '002', '001', '005002', '832');
INSERT INTO `suara_caleg` VALUES ('005001002', '002', '001', '005002', '477');
INSERT INTO `suara_caleg` VALUES ('006001002', '002', '001', '005002', '673');
INSERT INTO `suara_caleg` VALUES ('001001002', '002', '001', '006002', '7917');
INSERT INTO `suara_caleg` VALUES ('002001002', '002', '001', '006002', '1740');
INSERT INTO `suara_caleg` VALUES ('003001002', '002', '001', '006002', '3873');
INSERT INTO `suara_caleg` VALUES ('004001002', '002', '001', '006002', '712');
INSERT INTO `suara_caleg` VALUES ('005001002', '002', '001', '006002', '681');
INSERT INTO `suara_caleg` VALUES ('006001002', '002', '001', '006002', '550');
INSERT INTO `suara_caleg` VALUES ('001001002', '002', '001', '007002', '7835');
INSERT INTO `suara_caleg` VALUES ('002001002', '002', '001', '007002', '1008');
INSERT INTO `suara_caleg` VALUES ('003001002', '002', '001', '007002', '2439');
INSERT INTO `suara_caleg` VALUES ('004001002', '002', '001', '007002', '837');
INSERT INTO `suara_caleg` VALUES ('005001002', '002', '001', '007002', '1287');
INSERT INTO `suara_caleg` VALUES ('006001002', '002', '001', '007002', '422');
INSERT INTO `suara_caleg` VALUES ('001001002', '002', '001', '008002', '6753');
INSERT INTO `suara_caleg` VALUES ('002001002', '002', '001', '008002', '3122');
INSERT INTO `suara_caleg` VALUES ('003001002', '002', '001', '008002', '3765');
INSERT INTO `suara_caleg` VALUES ('004001002', '002', '001', '008002', '2894');
INSERT INTO `suara_caleg` VALUES ('005001002', '002', '001', '008002', '2043');
INSERT INTO `suara_caleg` VALUES ('006001002', '002', '001', '008002', '499');
INSERT INTO `suara_caleg` VALUES ('001006002', '002', '006', '001002', '5316');
INSERT INTO `suara_caleg` VALUES ('002006002', '002', '006', '001002', '739');
INSERT INTO `suara_caleg` VALUES ('003006002', '002', '006', '001002', '1156');
INSERT INTO `suara_caleg` VALUES ('004006002', '002', '006', '001002', '790');
INSERT INTO `suara_caleg` VALUES ('005006002', '002', '006', '001002', '405');
INSERT INTO `suara_caleg` VALUES ('006006002', '002', '006', '001002', '395');
INSERT INTO `suara_caleg` VALUES ('001006002', '002', '006', '002002', '2296');
INSERT INTO `suara_caleg` VALUES ('002006002', '002', '006', '002002', '435');
INSERT INTO `suara_caleg` VALUES ('003006002', '002', '006', '002002', '292');
INSERT INTO `suara_caleg` VALUES ('004006002', '002', '006', '002002', '707');
INSERT INTO `suara_caleg` VALUES ('005006002', '002', '006', '002002', '183');
INSERT INTO `suara_caleg` VALUES ('006006002', '002', '006', '002002', '110');
INSERT INTO `suara_caleg` VALUES ('001006002', '002', '006', '003002', '1224');
INSERT INTO `suara_caleg` VALUES ('002006002', '002', '006', '003002', '286');
INSERT INTO `suara_caleg` VALUES ('003006002', '002', '006', '003002', '200');
INSERT INTO `suara_caleg` VALUES ('004006002', '002', '006', '003002', '556');
INSERT INTO `suara_caleg` VALUES ('005006002', '002', '006', '003002', '130');
INSERT INTO `suara_caleg` VALUES ('006006002', '002', '006', '003002', '84');
INSERT INTO `suara_caleg` VALUES ('001006002', '002', '006', '004002', '2902');
INSERT INTO `suara_caleg` VALUES ('002006002', '002', '006', '004002', '1806');
INSERT INTO `suara_caleg` VALUES ('003006002', '002', '006', '004002', '1638');
INSERT INTO `suara_caleg` VALUES ('004006002', '002', '006', '004002', '2237');
INSERT INTO `suara_caleg` VALUES ('005006002', '002', '006', '004002', '23363');
INSERT INTO `suara_caleg` VALUES ('006006002', '002', '006', '004002', '2536');
INSERT INTO `suara_caleg` VALUES ('001006002', '002', '006', '005002', '1422');
INSERT INTO `suara_caleg` VALUES ('002006002', '002', '006', '005002', '496');
INSERT INTO `suara_caleg` VALUES ('003006002', '002', '006', '005002', '990');
INSERT INTO `suara_caleg` VALUES ('004006002', '002', '006', '005002', '481');
INSERT INTO `suara_caleg` VALUES ('005006002', '002', '006', '005002', '1190');
INSERT INTO `suara_caleg` VALUES ('006006002', '002', '006', '005002', '1843');
INSERT INTO `suara_caleg` VALUES ('001006002', '002', '006', '006002', '1225');
INSERT INTO `suara_caleg` VALUES ('002006002', '002', '006', '006002', '277');
INSERT INTO `suara_caleg` VALUES ('003006002', '002', '006', '006002', '321');
INSERT INTO `suara_caleg` VALUES ('004006002', '002', '006', '006002', '248');
INSERT INTO `suara_caleg` VALUES ('005006002', '002', '006', '006002', '252');
INSERT INTO `suara_caleg` VALUES ('006006002', '002', '006', '006002', '165');
INSERT INTO `suara_caleg` VALUES ('001006002', '002', '006', '007002', '1742');
INSERT INTO `suara_caleg` VALUES ('002006002', '002', '006', '007002', '283');
INSERT INTO `suara_caleg` VALUES ('003006002', '002', '006', '007002', '211');
INSERT INTO `suara_caleg` VALUES ('004006002', '002', '006', '007002', '647');
INSERT INTO `suara_caleg` VALUES ('005006002', '002', '006', '007002', '92');
INSERT INTO `suara_caleg` VALUES ('006006002', '002', '006', '007002', '83');
INSERT INTO `suara_caleg` VALUES ('001006002', '002', '006', '008002', '2677');
INSERT INTO `suara_caleg` VALUES ('002006002', '002', '006', '008002', '1001');
INSERT INTO `suara_caleg` VALUES ('003006002', '002', '006', '008002', '1050');
INSERT INTO `suara_caleg` VALUES ('004006002', '002', '006', '008002', '738');
INSERT INTO `suara_caleg` VALUES ('005006002', '002', '006', '008002', '270');
INSERT INTO `suara_caleg` VALUES ('006006002', '002', '006', '008002', '238');
INSERT INTO `suara_caleg` VALUES ('001010002', '002', '010', '001002', '35478');
INSERT INTO `suara_caleg` VALUES ('002010002', '002', '010', '001002', '7266');
INSERT INTO `suara_caleg` VALUES ('003010002', '002', '010', '001002', '412');
INSERT INTO `suara_caleg` VALUES ('004010002', '002', '010', '001002', '355');
INSERT INTO `suara_caleg` VALUES ('005010002', '002', '010', '001002', '374');
INSERT INTO `suara_caleg` VALUES ('006010002', '002', '010', '001002', '185');
INSERT INTO `suara_caleg` VALUES ('001010002', '002', '010', '002002', '1689');
INSERT INTO `suara_caleg` VALUES ('002010002', '002', '010', '002002', '312');
INSERT INTO `suara_caleg` VALUES ('003010002', '002', '010', '002002', '147');
INSERT INTO `suara_caleg` VALUES ('004010002', '002', '010', '002002', '148');
INSERT INTO `suara_caleg` VALUES ('005010002', '002', '010', '002002', '285');
INSERT INTO `suara_caleg` VALUES ('006010002', '002', '010', '002002', '74');
INSERT INTO `suara_caleg` VALUES ('001010002', '002', '010', '003002', '711');
INSERT INTO `suara_caleg` VALUES ('002010002', '002', '010', '003002', '353');
INSERT INTO `suara_caleg` VALUES ('003010002', '002', '010', '003002', '99');
INSERT INTO `suara_caleg` VALUES ('004010002', '002', '010', '003002', '111');
INSERT INTO `suara_caleg` VALUES ('005010002', '002', '010', '003002', '104');
INSERT INTO `suara_caleg` VALUES ('006010002', '002', '010', '003002', '53');
INSERT INTO `suara_caleg` VALUES ('001010002', '002', '010', '004002', '6686');
INSERT INTO `suara_caleg` VALUES ('002010002', '002', '010', '004002', '9202');
INSERT INTO `suara_caleg` VALUES ('003010002', '002', '010', '004002', '812');
INSERT INTO `suara_caleg` VALUES ('004010002', '002', '010', '004002', '669');
INSERT INTO `suara_caleg` VALUES ('005010002', '002', '010', '004002', '1374');
INSERT INTO `suara_caleg` VALUES ('006010002', '002', '010', '004002', '408');
INSERT INTO `suara_caleg` VALUES ('001010002', '002', '010', '005002', '1652');
INSERT INTO `suara_caleg` VALUES ('002010002', '002', '010', '005002', '1087');
INSERT INTO `suara_caleg` VALUES ('003010002', '002', '010', '005002', '250');
INSERT INTO `suara_caleg` VALUES ('004010002', '002', '010', '005002', '192');
INSERT INTO `suara_caleg` VALUES ('005010002', '002', '010', '005002', '233');
INSERT INTO `suara_caleg` VALUES ('006010002', '002', '010', '005002', '91');
INSERT INTO `suara_caleg` VALUES ('001010002', '002', '010', '006002', '4068');
INSERT INTO `suara_caleg` VALUES ('002010002', '002', '010', '006002', '18169');
INSERT INTO `suara_caleg` VALUES ('003010002', '002', '010', '006002', '491');
INSERT INTO `suara_caleg` VALUES ('004010002', '002', '010', '006002', '305');
INSERT INTO `suara_caleg` VALUES ('005010002', '002', '010', '006002', '424');
INSERT INTO `suara_caleg` VALUES ('006010002', '002', '010', '006002', '156');
INSERT INTO `suara_caleg` VALUES ('001010002', '002', '010', '007002', '551');
INSERT INTO `suara_caleg` VALUES ('002010002', '002', '010', '007002', '2118');
INSERT INTO `suara_caleg` VALUES ('003010002', '002', '010', '007002', '165');
INSERT INTO `suara_caleg` VALUES ('004010002', '002', '010', '007002', '76');
INSERT INTO `suara_caleg` VALUES ('005010002', '002', '010', '007002', '75');
INSERT INTO `suara_caleg` VALUES ('006010002', '002', '010', '007002', '62');
INSERT INTO `suara_caleg` VALUES ('001010002', '002', '010', '008002', '1624');
INSERT INTO `suara_caleg` VALUES ('002010002', '002', '010', '008002', '1798');
INSERT INTO `suara_caleg` VALUES ('003010002', '002', '010', '008002', '291');
INSERT INTO `suara_caleg` VALUES ('004010002', '002', '010', '008002', '185');
INSERT INTO `suara_caleg` VALUES ('005010002', '002', '010', '008002', '259');
INSERT INTO `suara_caleg` VALUES ('006010002', '002', '010', '008002', '203');
INSERT INTO `suara_caleg` VALUES ('001004002', '002', '004', '001002', '1809');
INSERT INTO `suara_caleg` VALUES ('002004002', '002', '004', '001002', '702');
INSERT INTO `suara_caleg` VALUES ('003004002', '002', '004', '001002', '234');
INSERT INTO `suara_caleg` VALUES ('004004002', '002', '004', '001002', '122');
INSERT INTO `suara_caleg` VALUES ('005004002', '002', '004', '001002', '90');
INSERT INTO `suara_caleg` VALUES ('006004002', '002', '004', '001002', '78');
INSERT INTO `suara_caleg` VALUES ('001004002', '002', '004', '002002', '816');
INSERT INTO `suara_caleg` VALUES ('002004002', '002', '004', '002002', '298');
INSERT INTO `suara_caleg` VALUES ('003004002', '002', '004', '002002', '220');
INSERT INTO `suara_caleg` VALUES ('004004002', '002', '004', '002002', '2262');
INSERT INTO `suara_caleg` VALUES ('005004002', '002', '004', '002002', '98');
INSERT INTO `suara_caleg` VALUES ('006004002', '002', '004', '002002', '93');
INSERT INTO `suara_caleg` VALUES ('001004002', '002', '004', '003002', '896');
INSERT INTO `suara_caleg` VALUES ('002004002', '002', '004', '003002', '342');
INSERT INTO `suara_caleg` VALUES ('003004002', '002', '004', '003002', '182');
INSERT INTO `suara_caleg` VALUES ('004004002', '002', '004', '003002', '692');
INSERT INTO `suara_caleg` VALUES ('005004002', '002', '004', '003002', '62');
INSERT INTO `suara_caleg` VALUES ('006004002', '002', '004', '003002', '127');
INSERT INTO `suara_caleg` VALUES ('001004002', '002', '004', '004002', '5309');
INSERT INTO `suara_caleg` VALUES ('002004002', '002', '004', '004002', '1005');
INSERT INTO `suara_caleg` VALUES ('003004002', '002', '004', '004002', '638');
INSERT INTO `suara_caleg` VALUES ('004004002', '002', '004', '004002', '351');
INSERT INTO `suara_caleg` VALUES ('005004002', '002', '004', '004002', '334');
INSERT INTO `suara_caleg` VALUES ('006004002', '002', '004', '004002', '217');
INSERT INTO `suara_caleg` VALUES ('001004002', '002', '004', '005002', '805');
INSERT INTO `suara_caleg` VALUES ('002004002', '002', '004', '005002', '324');
INSERT INTO `suara_caleg` VALUES ('003004002', '002', '004', '005002', '368');
INSERT INTO `suara_caleg` VALUES ('004004002', '002', '004', '005002', '81');
INSERT INTO `suara_caleg` VALUES ('005004002', '002', '004', '005002', '69');
INSERT INTO `suara_caleg` VALUES ('006004002', '002', '004', '005002', '98');
INSERT INTO `suara_caleg` VALUES ('001004002', '002', '004', '006002', '1291');
INSERT INTO `suara_caleg` VALUES ('002004002', '002', '004', '006002', '643');
INSERT INTO `suara_caleg` VALUES ('003004002', '002', '004', '006002', '268');
INSERT INTO `suara_caleg` VALUES ('004004002', '002', '004', '006002', '174');
INSERT INTO `suara_caleg` VALUES ('005004002', '002', '004', '006002', '167');
INSERT INTO `suara_caleg` VALUES ('006004002', '002', '004', '006002', '1095');
INSERT INTO `suara_caleg` VALUES ('001004002', '002', '004', '007002', '807');
INSERT INTO `suara_caleg` VALUES ('002004002', '002', '004', '007002', '823');
INSERT INTO `suara_caleg` VALUES ('003004002', '002', '004', '007002', '179');
INSERT INTO `suara_caleg` VALUES ('004004002', '002', '004', '007002', '87');
INSERT INTO `suara_caleg` VALUES ('005004002', '002', '004', '007002', '67');
INSERT INTO `suara_caleg` VALUES ('006004002', '002', '004', '007002', '290');
INSERT INTO `suara_caleg` VALUES ('001004002', '002', '004', '008002', '1167');
INSERT INTO `suara_caleg` VALUES ('002004002', '002', '004', '008002', '610');
INSERT INTO `suara_caleg` VALUES ('003004002', '002', '004', '008002', '268');
INSERT INTO `suara_caleg` VALUES ('004004002', '002', '004', '008002', '97');
INSERT INTO `suara_caleg` VALUES ('005004002', '002', '004', '008002', '117');
INSERT INTO `suara_caleg` VALUES ('006004002', '002', '004', '008002', '186');
INSERT INTO `suara_caleg` VALUES ('001011002', '002', '011', '001002', '1539');
INSERT INTO `suara_caleg` VALUES ('002011002', '002', '011', '001002', '1885');
INSERT INTO `suara_caleg` VALUES ('003011002', '002', '011', '001002', '161');
INSERT INTO `suara_caleg` VALUES ('004011002', '002', '011', '001002', '185');
INSERT INTO `suara_caleg` VALUES ('005011002', '002', '011', '001002', '135');
INSERT INTO `suara_caleg` VALUES ('006011002', '002', '011', '001002', '75');
INSERT INTO `suara_caleg` VALUES ('001011002', '002', '011', '002002', '471');
INSERT INTO `suara_caleg` VALUES ('002011002', '002', '011', '002002', '308');
INSERT INTO `suara_caleg` VALUES ('003011002', '002', '011', '002002', '111');
INSERT INTO `suara_caleg` VALUES ('004011002', '002', '011', '002002', '982');
INSERT INTO `suara_caleg` VALUES ('005011002', '002', '011', '002002', '68');
INSERT INTO `suara_caleg` VALUES ('006011002', '002', '011', '002002', '59');
INSERT INTO `suara_caleg` VALUES ('001011002', '002', '011', '003002', '234');
INSERT INTO `suara_caleg` VALUES ('002011002', '002', '011', '003002', '242');
INSERT INTO `suara_caleg` VALUES ('003011002', '002', '011', '003002', '69');
INSERT INTO `suara_caleg` VALUES ('004011002', '002', '011', '003002', '707');
INSERT INTO `suara_caleg` VALUES ('005011002', '002', '011', '003002', '37');
INSERT INTO `suara_caleg` VALUES ('006011002', '002', '011', '003002', '25');
INSERT INTO `suara_caleg` VALUES ('001011002', '002', '011', '004002', '1248');
INSERT INTO `suara_caleg` VALUES ('002011002', '002', '011', '004002', '1411');
INSERT INTO `suara_caleg` VALUES ('003011002', '002', '011', '004002', '215');
INSERT INTO `suara_caleg` VALUES ('004011002', '002', '011', '004002', '169');
INSERT INTO `suara_caleg` VALUES ('005011002', '002', '011', '004002', '313');
INSERT INTO `suara_caleg` VALUES ('006011002', '002', '011', '004002', '182');
INSERT INTO `suara_caleg` VALUES ('001011002', '002', '011', '005002', '248');
INSERT INTO `suara_caleg` VALUES ('002011002', '002', '011', '005002', '268');
INSERT INTO `suara_caleg` VALUES ('003011002', '002', '011', '005002', '23');
INSERT INTO `suara_caleg` VALUES ('004011002', '002', '011', '005002', '54');
INSERT INTO `suara_caleg` VALUES ('005011002', '002', '011', '005002', '47');
INSERT INTO `suara_caleg` VALUES ('006011002', '002', '011', '005002', '32');
INSERT INTO `suara_caleg` VALUES ('001011002', '002', '011', '006002', '636');
INSERT INTO `suara_caleg` VALUES ('002011002', '002', '011', '006002', '798');
INSERT INTO `suara_caleg` VALUES ('003011002', '002', '011', '006002', '147');
INSERT INTO `suara_caleg` VALUES ('004011002', '002', '011', '006002', '196');
INSERT INTO `suara_caleg` VALUES ('005011002', '002', '011', '006002', '366');
INSERT INTO `suara_caleg` VALUES ('006011002', '002', '011', '006002', '115');
INSERT INTO `suara_caleg` VALUES ('001011002', '002', '011', '007002', '167');
INSERT INTO `suara_caleg` VALUES ('002011002', '002', '011', '007002', '149');
INSERT INTO `suara_caleg` VALUES ('003011002', '002', '011', '007002', '43');
INSERT INTO `suara_caleg` VALUES ('004011002', '002', '011', '007002', '152');
INSERT INTO `suara_caleg` VALUES ('005011002', '002', '011', '007002', '145');
INSERT INTO `suara_caleg` VALUES ('006011002', '002', '011', '007002', '15');
INSERT INTO `suara_caleg` VALUES ('001011002', '002', '011', '008002', '447');
INSERT INTO `suara_caleg` VALUES ('002011002', '002', '011', '008002', '286');
INSERT INTO `suara_caleg` VALUES ('003011002', '002', '011', '008002', '105');
INSERT INTO `suara_caleg` VALUES ('004011002', '002', '011', '008002', '229');
INSERT INTO `suara_caleg` VALUES ('005011002', '002', '011', '008002', '151');
INSERT INTO `suara_caleg` VALUES ('006011002', '002', '011', '008002', '80');
INSERT INTO `suara_caleg` VALUES ('001013002', '002', '013', '001002', '276');
INSERT INTO `suara_caleg` VALUES ('002013002', '002', '013', '001002', '97');
INSERT INTO `suara_caleg` VALUES ('003013002', '002', '013', '001002', '635');
INSERT INTO `suara_caleg` VALUES ('004013002', '002', '013', '001002', '222');
INSERT INTO `suara_caleg` VALUES ('005013002', '002', '013', '001002', '47');
INSERT INTO `suara_caleg` VALUES ('006013002', '002', '013', '001002', '95');
INSERT INTO `suara_caleg` VALUES ('001013002', '002', '013', '002002', '383');
INSERT INTO `suara_caleg` VALUES ('002013002', '002', '013', '002002', '94');
INSERT INTO `suara_caleg` VALUES ('003013002', '002', '013', '002002', '61');
INSERT INTO `suara_caleg` VALUES ('004013002', '002', '013', '002002', '123');
INSERT INTO `suara_caleg` VALUES ('005013002', '002', '013', '002002', '54');
INSERT INTO `suara_caleg` VALUES ('006013002', '002', '013', '002002', '64');
INSERT INTO `suara_caleg` VALUES ('001013002', '002', '013', '003002', '451');
INSERT INTO `suara_caleg` VALUES ('002013002', '002', '013', '003002', '122');
INSERT INTO `suara_caleg` VALUES ('003013002', '002', '013', '003002', '76');
INSERT INTO `suara_caleg` VALUES ('004013002', '002', '013', '003002', '117');
INSERT INTO `suara_caleg` VALUES ('005013002', '002', '013', '003002', '52');
INSERT INTO `suara_caleg` VALUES ('006013002', '002', '013', '003002', '62');
INSERT INTO `suara_caleg` VALUES ('001013002', '002', '013', '004002', '296');
INSERT INTO `suara_caleg` VALUES ('002013002', '002', '013', '004002', '332');
INSERT INTO `suara_caleg` VALUES ('003013002', '002', '013', '004002', '164');
INSERT INTO `suara_caleg` VALUES ('004013002', '002', '013', '004002', '112');
INSERT INTO `suara_caleg` VALUES ('005013002', '002', '013', '004002', '135');
INSERT INTO `suara_caleg` VALUES ('006013002', '002', '013', '004002', '154');
INSERT INTO `suara_caleg` VALUES ('001013002', '002', '013', '005002', '117');
INSERT INTO `suara_caleg` VALUES ('002013002', '002', '013', '005002', '112');
INSERT INTO `suara_caleg` VALUES ('003013002', '002', '013', '005002', '94');
INSERT INTO `suara_caleg` VALUES ('004013002', '002', '013', '005002', '59');
INSERT INTO `suara_caleg` VALUES ('005013002', '002', '013', '005002', '22');
INSERT INTO `suara_caleg` VALUES ('006013002', '002', '013', '005002', '412');
INSERT INTO `suara_caleg` VALUES ('001013002', '002', '013', '006002', '482');
INSERT INTO `suara_caleg` VALUES ('002013002', '002', '013', '006002', '99');
INSERT INTO `suara_caleg` VALUES ('003013002', '002', '013', '006002', '84');
INSERT INTO `suara_caleg` VALUES ('004013002', '002', '013', '006002', '117');
INSERT INTO `suara_caleg` VALUES ('005013002', '002', '013', '006002', '59');
INSERT INTO `suara_caleg` VALUES ('006013002', '002', '013', '006002', '76');
INSERT INTO `suara_caleg` VALUES ('001013002', '002', '013', '007002', '88');
INSERT INTO `suara_caleg` VALUES ('002013002', '002', '013', '007002', '29');
INSERT INTO `suara_caleg` VALUES ('003013002', '002', '013', '007002', '10');
INSERT INTO `suara_caleg` VALUES ('004013002', '002', '013', '007002', '21');
INSERT INTO `suara_caleg` VALUES ('005013002', '002', '013', '007002', '19');
INSERT INTO `suara_caleg` VALUES ('006013002', '002', '013', '007002', '24');
INSERT INTO `suara_caleg` VALUES ('001013002', '002', '013', '008002', '509');
INSERT INTO `suara_caleg` VALUES ('002013002', '002', '013', '008002', '104');
INSERT INTO `suara_caleg` VALUES ('003013002', '002', '013', '008002', '67');
INSERT INTO `suara_caleg` VALUES ('004013002', '002', '013', '008002', '113');
INSERT INTO `suara_caleg` VALUES ('005013002', '002', '013', '008002', '102');
INSERT INTO `suara_caleg` VALUES ('006013002', '002', '013', '008002', '121');

-- ----------------------------
-- Table structure for suara_partai
-- ----------------------------
DROP TABLE IF EXISTS `suara_partai`;
CREATE TABLE `suara_partai` (
  `kode_kabupaten_kota` varchar(10) DEFAULT NULL,
  `kode_partai` varchar(3) DEFAULT NULL,
  `kode_dapil` varchar(10) DEFAULT NULL,
  `jumlah_suara_partai` int(11) DEFAULT NULL,
  KEY `kode_kabupaten_kota` (`kode_kabupaten_kota`) USING BTREE,
  KEY `kode_partai` (`kode_partai`) USING BTREE,
  KEY `kode_dapil` (`kode_dapil`) USING BTREE,
  CONSTRAINT `suara_partai_ibfk_3` FOREIGN KEY (`kode_kabupaten_kota`) REFERENCES `kabupaten_kota` (`kode_kabupaten_kota`) ON UPDATE CASCADE,
  CONSTRAINT `suara_partai_ibfk_4` FOREIGN KEY (`kode_partai`) REFERENCES `partai` (`kode_partai`) ON UPDATE CASCADE,
  CONSTRAINT `suara_partai_ibfk_5` FOREIGN KEY (`kode_dapil`) REFERENCES `dapil` (`kode_dapil`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suara_partai
-- ----------------------------
INSERT INTO `suara_partai` VALUES ('001001', '008', '001', '123');
INSERT INTO `suara_partai` VALUES ('002001', '008', '001', '666');
INSERT INTO `suara_partai` VALUES ('003001', '008', '001', '3108');
INSERT INTO `suara_partai` VALUES ('004001', '008', '001', '2975');
INSERT INTO `suara_partai` VALUES ('005001', '008', '001', '917');
INSERT INTO `suara_partai` VALUES ('006001', '008', '001', '1631');
INSERT INTO `suara_partai` VALUES ('007001', '008', '001', '962');
INSERT INTO `suara_partai` VALUES ('008001', '008', '001', '1934');
INSERT INTO `suara_partai` VALUES ('009001', '008', '001', '1037');
INSERT INTO `suara_partai` VALUES ('010001', '008', '001', '1265');
INSERT INTO `suara_partai` VALUES ('011001', '008', '001', '689');
INSERT INTO `suara_partai` VALUES ('012001', '008', '001', '1966');
INSERT INTO `suara_partai` VALUES ('013001', '008', '001', '693');
INSERT INTO `suara_partai` VALUES ('014001', '008', '001', '1181');
INSERT INTO `suara_partai` VALUES ('015001', '008', '001', '277');
INSERT INTO `suara_partai` VALUES ('001001', '009', '001', '454');
INSERT INTO `suara_partai` VALUES ('002001', '009', '001', '2292');
INSERT INTO `suara_partai` VALUES ('003001', '009', '001', '4682');
INSERT INTO `suara_partai` VALUES ('004001', '009', '001', '4478');
INSERT INTO `suara_partai` VALUES ('005001', '009', '001', '891');
INSERT INTO `suara_partai` VALUES ('006001', '009', '001', '556');
INSERT INTO `suara_partai` VALUES ('007001', '009', '001', '806');
INSERT INTO `suara_partai` VALUES ('008001', '009', '001', '1310');
INSERT INTO `suara_partai` VALUES ('009001', '009', '001', '739');
INSERT INTO `suara_partai` VALUES ('010001', '009', '001', '825');
INSERT INTO `suara_partai` VALUES ('011001', '009', '001', '557');
INSERT INTO `suara_partai` VALUES ('012001', '009', '001', '2220');
INSERT INTO `suara_partai` VALUES ('013001', '009', '001', '809');
INSERT INTO `suara_partai` VALUES ('014001', '009', '001', '1036');
INSERT INTO `suara_partai` VALUES ('015001', '009', '001', '349');
INSERT INTO `suara_partai` VALUES ('001001', '007', '001', '194');
INSERT INTO `suara_partai` VALUES ('002001', '007', '001', '1128');
INSERT INTO `suara_partai` VALUES ('003001', '007', '001', '1429');
INSERT INTO `suara_partai` VALUES ('004001', '007', '001', '1114');
INSERT INTO `suara_partai` VALUES ('005001', '007', '001', '606');
INSERT INTO `suara_partai` VALUES ('006001', '007', '001', '671');
INSERT INTO `suara_partai` VALUES ('007001', '007', '001', '1350');
INSERT INTO `suara_partai` VALUES ('008001', '007', '001', '876');
INSERT INTO `suara_partai` VALUES ('009001', '007', '001', '943');
INSERT INTO `suara_partai` VALUES ('010001', '007', '001', '565');
INSERT INTO `suara_partai` VALUES ('011001', '007', '001', '399');
INSERT INTO `suara_partai` VALUES ('012001', '007', '001', '803');
INSERT INTO `suara_partai` VALUES ('013001', '007', '001', '295');
INSERT INTO `suara_partai` VALUES ('014001', '007', '001', '1051');
INSERT INTO `suara_partai` VALUES ('015001', '007', '001', '522');
INSERT INTO `suara_partai` VALUES ('001001', '003', '001', '308');
INSERT INTO `suara_partai` VALUES ('002001', '003', '001', '1356');
INSERT INTO `suara_partai` VALUES ('003001', '003', '001', '4085');
INSERT INTO `suara_partai` VALUES ('004001', '003', '001', '4429');
INSERT INTO `suara_partai` VALUES ('005001', '003', '001', '966');
INSERT INTO `suara_partai` VALUES ('006001', '003', '001', '1554');
INSERT INTO `suara_partai` VALUES ('007001', '003', '001', '2387');
INSERT INTO `suara_partai` VALUES ('008001', '003', '001', '1730');
INSERT INTO `suara_partai` VALUES ('009001', '003', '001', '594');
INSERT INTO `suara_partai` VALUES ('010001', '003', '001', '754');
INSERT INTO `suara_partai` VALUES ('011001', '003', '001', '836');
INSERT INTO `suara_partai` VALUES ('012001', '003', '001', '2105');
INSERT INTO `suara_partai` VALUES ('013001', '003', '001', '1154');
INSERT INTO `suara_partai` VALUES ('014001', '003', '001', '2778');
INSERT INTO `suara_partai` VALUES ('015001', '003', '001', '428');
INSERT INTO `suara_partai` VALUES ('001001', '002', '001', '456');
INSERT INTO `suara_partai` VALUES ('002001', '002', '001', '1865');
INSERT INTO `suara_partai` VALUES ('003001', '002', '001', '4263');
INSERT INTO `suara_partai` VALUES ('004001', '002', '001', '4622');
INSERT INTO `suara_partai` VALUES ('005001', '002', '001', '2065');
INSERT INTO `suara_partai` VALUES ('006001', '002', '001', '597');
INSERT INTO `suara_partai` VALUES ('007001', '002', '001', '833');
INSERT INTO `suara_partai` VALUES ('008001', '002', '001', '1680');
INSERT INTO `suara_partai` VALUES ('009001', '002', '001', '1538');
INSERT INTO `suara_partai` VALUES ('010001', '002', '001', '1716');
INSERT INTO `suara_partai` VALUES ('011001', '002', '001', '739');
INSERT INTO `suara_partai` VALUES ('012001', '002', '001', '2475');
INSERT INTO `suara_partai` VALUES ('013001', '002', '001', '1147');
INSERT INTO `suara_partai` VALUES ('014001', '002', '001', '2061');
INSERT INTO `suara_partai` VALUES ('015001', '002', '001', '732');
INSERT INTO `suara_partai` VALUES ('001001', '001', '001', '807');
INSERT INTO `suara_partai` VALUES ('002001', '001', '001', '3059');
INSERT INTO `suara_partai` VALUES ('003001', '001', '001', '8799');
INSERT INTO `suara_partai` VALUES ('004001', '001', '001', '9252');
INSERT INTO `suara_partai` VALUES ('005001', '001', '001', '2754');
INSERT INTO `suara_partai` VALUES ('006001', '001', '001', '1085');
INSERT INTO `suara_partai` VALUES ('007001', '001', '001', '1390');
INSERT INTO `suara_partai` VALUES ('008001', '001', '001', '4748');
INSERT INTO `suara_partai` VALUES ('009001', '001', '001', '1689');
INSERT INTO `suara_partai` VALUES ('010001', '001', '001', '3099');
INSERT INTO `suara_partai` VALUES ('011001', '001', '001', '785');
INSERT INTO `suara_partai` VALUES ('012001', '001', '001', '4639');
INSERT INTO `suara_partai` VALUES ('013001', '001', '001', '2752');
INSERT INTO `suara_partai` VALUES ('014001', '001', '001', '2594');
INSERT INTO `suara_partai` VALUES ('015001', '001', '001', '601');
INSERT INTO `suara_partai` VALUES ('001001', '006', '001', '212');
INSERT INTO `suara_partai` VALUES ('002001', '006', '001', '1083');
INSERT INTO `suara_partai` VALUES ('003001', '006', '001', '5657');
INSERT INTO `suara_partai` VALUES ('004001', '006', '001', '3656');
INSERT INTO `suara_partai` VALUES ('005001', '006', '001', '2272');
INSERT INTO `suara_partai` VALUES ('006001', '006', '001', '490');
INSERT INTO `suara_partai` VALUES ('007001', '006', '001', '999');
INSERT INTO `suara_partai` VALUES ('008001', '006', '001', '1794');
INSERT INTO `suara_partai` VALUES ('009001', '006', '001', '966');
INSERT INTO `suara_partai` VALUES ('010001', '006', '001', '1259');
INSERT INTO `suara_partai` VALUES ('011001', '006', '001', '639');
INSERT INTO `suara_partai` VALUES ('012001', '006', '001', '4396');
INSERT INTO `suara_partai` VALUES ('013001', '006', '001', '1071');
INSERT INTO `suara_partai` VALUES ('014001', '006', '001', '1628');
INSERT INTO `suara_partai` VALUES ('015001', '006', '001', '473');
INSERT INTO `suara_partai` VALUES ('001001', '010', '001', '311');
INSERT INTO `suara_partai` VALUES ('002001', '010', '001', '1999');
INSERT INTO `suara_partai` VALUES ('003001', '010', '001', '5335');
INSERT INTO `suara_partai` VALUES ('004001', '010', '001', '4739');
INSERT INTO `suara_partai` VALUES ('005001', '010', '001', '1653');
INSERT INTO `suara_partai` VALUES ('006001', '010', '001', '557');
INSERT INTO `suara_partai` VALUES ('007001', '010', '001', '415');
INSERT INTO `suara_partai` VALUES ('008001', '010', '001', '2254');
INSERT INTO `suara_partai` VALUES ('009001', '010', '001', '430');
INSERT INTO `suara_partai` VALUES ('010001', '010', '001', '1368');
INSERT INTO `suara_partai` VALUES ('011001', '010', '001', '432');
INSERT INTO `suara_partai` VALUES ('012001', '010', '001', '3070');
INSERT INTO `suara_partai` VALUES ('013001', '010', '001', '1852');
INSERT INTO `suara_partai` VALUES ('014001', '010', '001', '867');
INSERT INTO `suara_partai` VALUES ('015001', '010', '001', '227');
INSERT INTO `suara_partai` VALUES ('001001', '004', '001', '206');
INSERT INTO `suara_partai` VALUES ('002001', '004', '001', '715');
INSERT INTO `suara_partai` VALUES ('003001', '004', '001', '1380');
INSERT INTO `suara_partai` VALUES ('004001', '004', '001', '3188');
INSERT INTO `suara_partai` VALUES ('005001', '004', '001', '572');
INSERT INTO `suara_partai` VALUES ('006001', '004', '001', '757');
INSERT INTO `suara_partai` VALUES ('007001', '004', '001', '824');
INSERT INTO `suara_partai` VALUES ('008001', '004', '001', '1488');
INSERT INTO `suara_partai` VALUES ('009001', '004', '001', '1183');
INSERT INTO `suara_partai` VALUES ('010001', '004', '001', '1277');
INSERT INTO `suara_partai` VALUES ('011001', '004', '001', '892');
INSERT INTO `suara_partai` VALUES ('012001', '004', '001', '1398');
INSERT INTO `suara_partai` VALUES ('013001', '004', '001', '617');
INSERT INTO `suara_partai` VALUES ('014001', '004', '001', '1173');
INSERT INTO `suara_partai` VALUES ('015001', '004', '001', '325');
INSERT INTO `suara_partai` VALUES ('001001', '011', '001', '183');
INSERT INTO `suara_partai` VALUES ('002001', '011', '001', '625');
INSERT INTO `suara_partai` VALUES ('003001', '011', '001', '2279');
INSERT INTO `suara_partai` VALUES ('004001', '011', '001', '4066');
INSERT INTO `suara_partai` VALUES ('005001', '011', '001', '832');
INSERT INTO `suara_partai` VALUES ('006001', '011', '001', '424');
INSERT INTO `suara_partai` VALUES ('007001', '011', '001', '803');
INSERT INTO `suara_partai` VALUES ('008001', '011', '001', '1070');
INSERT INTO `suara_partai` VALUES ('009001', '011', '001', '575');
INSERT INTO `suara_partai` VALUES ('010001', '011', '001', '815');
INSERT INTO `suara_partai` VALUES ('011001', '011', '001', '332');
INSERT INTO `suara_partai` VALUES ('012001', '011', '001', '763');
INSERT INTO `suara_partai` VALUES ('013001', '011', '001', '362');
INSERT INTO `suara_partai` VALUES ('014001', '011', '001', '744');
INSERT INTO `suara_partai` VALUES ('015001', '011', '001', '397');
INSERT INTO `suara_partai` VALUES ('001001', '013', '001', '25');
INSERT INTO `suara_partai` VALUES ('002001', '013', '001', '259');
INSERT INTO `suara_partai` VALUES ('003001', '013', '001', '576');
INSERT INTO `suara_partai` VALUES ('004001', '013', '001', '1165');
INSERT INTO `suara_partai` VALUES ('005001', '013', '001', '156');
INSERT INTO `suara_partai` VALUES ('006001', '013', '001', '441');
INSERT INTO `suara_partai` VALUES ('007001', '013', '001', '57');
INSERT INTO `suara_partai` VALUES ('008001', '013', '001', '1131');
INSERT INTO `suara_partai` VALUES ('009001', '013', '001', '553');
INSERT INTO `suara_partai` VALUES ('010001', '013', '001', '534');
INSERT INTO `suara_partai` VALUES ('011001', '013', '001', '414');
INSERT INTO `suara_partai` VALUES ('012001', '013', '001', '367');
INSERT INTO `suara_partai` VALUES ('013001', '013', '001', '158');
INSERT INTO `suara_partai` VALUES ('014001', '013', '001', '364');
INSERT INTO `suara_partai` VALUES ('015001', '013', '001', '84');
INSERT INTO `suara_partai` VALUES ('001002', '005', '002', '8513');
INSERT INTO `suara_partai` VALUES ('002002', '005', '002', '1804');
INSERT INTO `suara_partai` VALUES ('003002', '005', '002', '1315');
INSERT INTO `suara_partai` VALUES ('004002', '005', '002', '10412');
INSERT INTO `suara_partai` VALUES ('005002', '005', '002', '3694');
INSERT INTO `suara_partai` VALUES ('006002', '005', '002', '15854');
INSERT INTO `suara_partai` VALUES ('007002', '005', '002', '2798');
INSERT INTO `suara_partai` VALUES ('008002', '005', '002', '3194');
INSERT INTO `suara_partai` VALUES ('001002', '008', '002', '5288');
INSERT INTO `suara_partai` VALUES ('002002', '008', '002', '1340');
INSERT INTO `suara_partai` VALUES ('003002', '008', '002', '656');
INSERT INTO `suara_partai` VALUES ('004002', '008', '002', '5392');
INSERT INTO `suara_partai` VALUES ('005002', '008', '002', '1378');
INSERT INTO `suara_partai` VALUES ('006002', '008', '002', '4468');
INSERT INTO `suara_partai` VALUES ('007002', '008', '002', '882');
INSERT INTO `suara_partai` VALUES ('008002', '008', '002', '1788');
INSERT INTO `suara_partai` VALUES ('001002', '009', '002', '5503');
INSERT INTO `suara_partai` VALUES ('002002', '009', '002', '873');
INSERT INTO `suara_partai` VALUES ('003002', '009', '002', '702');
INSERT INTO `suara_partai` VALUES ('004002', '009', '002', '5124');
INSERT INTO `suara_partai` VALUES ('005002', '009', '002', '2120');
INSERT INTO `suara_partai` VALUES ('006002', '009', '002', '3816');
INSERT INTO `suara_partai` VALUES ('007002', '009', '002', '1419');
INSERT INTO `suara_partai` VALUES ('008002', '009', '002', '2376');
INSERT INTO `suara_partai` VALUES ('001002', '007', '002', '1286');
INSERT INTO `suara_partai` VALUES ('002002', '007', '002', '1749');
INSERT INTO `suara_partai` VALUES ('003002', '007', '002', '2099');
INSERT INTO `suara_partai` VALUES ('004002', '007', '002', '2106');
INSERT INTO `suara_partai` VALUES ('005002', '007', '002', '622');
INSERT INTO `suara_partai` VALUES ('006002', '007', '002', '2233');
INSERT INTO `suara_partai` VALUES ('007002', '007', '002', '1336');
INSERT INTO `suara_partai` VALUES ('008002', '007', '002', '3036');
INSERT INTO `suara_partai` VALUES ('001002', '003', '002', '1442');
INSERT INTO `suara_partai` VALUES ('002002', '003', '002', '1662');
INSERT INTO `suara_partai` VALUES ('003002', '003', '002', '1236');
INSERT INTO `suara_partai` VALUES ('004002', '003', '002', '4242');
INSERT INTO `suara_partai` VALUES ('005002', '003', '002', '1130');
INSERT INTO `suara_partai` VALUES ('006002', '003', '002', '4155');
INSERT INTO `suara_partai` VALUES ('007002', '003', '002', '1974');
INSERT INTO `suara_partai` VALUES ('008002', '003', '002', '2718');
INSERT INTO `suara_partai` VALUES ('001002', '002', '002', '1475');
INSERT INTO `suara_partai` VALUES ('002002', '002', '002', '1681');
INSERT INTO `suara_partai` VALUES ('003002', '002', '002', '1883');
INSERT INTO `suara_partai` VALUES ('004002', '002', '002', '11509');
INSERT INTO `suara_partai` VALUES ('005002', '002', '002', '3747');
INSERT INTO `suara_partai` VALUES ('006002', '002', '002', '5827');
INSERT INTO `suara_partai` VALUES ('007002', '002', '002', '3093');
INSERT INTO `suara_partai` VALUES ('008002', '002', '002', '4232');
INSERT INTO `suara_partai` VALUES ('001002', '001', '002', '7823');
INSERT INTO `suara_partai` VALUES ('002002', '001', '002', '1923');
INSERT INTO `suara_partai` VALUES ('003002', '001', '002', '1588');
INSERT INTO `suara_partai` VALUES ('004002', '001', '002', '10220');
INSERT INTO `suara_partai` VALUES ('005002', '001', '002', '3820');
INSERT INTO `suara_partai` VALUES ('006002', '001', '002', '9764');
INSERT INTO `suara_partai` VALUES ('007002', '001', '002', '3505');
INSERT INTO `suara_partai` VALUES ('008002', '001', '002', '5847');
INSERT INTO `suara_partai` VALUES ('001002', '006', '002', '4099');
INSERT INTO `suara_partai` VALUES ('002002', '006', '002', '892');
INSERT INTO `suara_partai` VALUES ('003002', '006', '002', '637');
INSERT INTO `suara_partai` VALUES ('004002', '006', '002', '7953');
INSERT INTO `suara_partai` VALUES ('005002', '006', '002', '1491');
INSERT INTO `suara_partai` VALUES ('006002', '006', '002', '2883');
INSERT INTO `suara_partai` VALUES ('007002', '006', '002', '958');
INSERT INTO `suara_partai` VALUES ('008002', '006', '002', '2559');
INSERT INTO `suara_partai` VALUES ('001002', '010', '002', '1980');
INSERT INTO `suara_partai` VALUES ('002002', '010', '002', '693');
INSERT INTO `suara_partai` VALUES ('003002', '010', '002', '633');
INSERT INTO `suara_partai` VALUES ('004002', '010', '002', '8228');
INSERT INTO `suara_partai` VALUES ('005002', '010', '002', '1757');
INSERT INTO `suara_partai` VALUES ('006002', '010', '002', '5736');
INSERT INTO `suara_partai` VALUES ('007002', '010', '002', '885');
INSERT INTO `suara_partai` VALUES ('008002', '010', '002', '2202');
INSERT INTO `suara_partai` VALUES ('001002', '004', '002', '2228');
INSERT INTO `suara_partai` VALUES ('002002', '004', '002', '723');
INSERT INTO `suara_partai` VALUES ('003002', '004', '002', '790');
INSERT INTO `suara_partai` VALUES ('004002', '004', '002', '5312');
INSERT INTO `suara_partai` VALUES ('005002', '004', '002', '1226');
INSERT INTO `suara_partai` VALUES ('006002', '004', '002', '4440');
INSERT INTO `suara_partai` VALUES ('007002', '004', '002', '1254');
INSERT INTO `suara_partai` VALUES ('008002', '004', '002', '1737');
INSERT INTO `suara_partai` VALUES ('001002', '011', '002', '2866');
INSERT INTO `suara_partai` VALUES ('002002', '011', '002', '452');
INSERT INTO `suara_partai` VALUES ('003002', '011', '002', '261');
INSERT INTO `suara_partai` VALUES ('004002', '011', '002', '3865');
INSERT INTO `suara_partai` VALUES ('005002', '011', '002', '463');
INSERT INTO `suara_partai` VALUES ('006002', '011', '002', '2944');
INSERT INTO `suara_partai` VALUES ('007002', '011', '002', '307');
INSERT INTO `suara_partai` VALUES ('008002', '011', '002', '630');
INSERT INTO `suara_partai` VALUES ('001002', '013', '002', '624');
INSERT INTO `suara_partai` VALUES ('002002', '013', '002', '274');
INSERT INTO `suara_partai` VALUES ('003002', '013', '002', '408');
INSERT INTO `suara_partai` VALUES ('004002', '013', '002', '797');
INSERT INTO `suara_partai` VALUES ('005002', '013', '002', '172');
INSERT INTO `suara_partai` VALUES ('006002', '013', '002', '1197');
INSERT INTO `suara_partai` VALUES ('007002', '013', '002', '65');
INSERT INTO `suara_partai` VALUES ('008002', '013', '002', '511');

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `kode_user` varchar(10) NOT NULL,
  `kode_partai` varchar(3) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`kode_user`),
  KEY `kode_partai` (`kode_partai`),
  CONSTRAINT `user_login_ibfk_1` FOREIGN KEY (`kode_partai`) REFERENCES `partai` (`kode_partai`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('001', '008', 'Admin', '-', '-', '-');

-- ----------------------------
-- Procedure structure for SpCaleg
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpCaleg`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpCaleg`(IN `nama` VARCHAR(50))
BEGIN
    SELECT c.nama_caleg
		FROM caleg c
    WHERE c.nama_caleg like nama;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SpDapil
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpDapil`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDapil`(in `KodeUser`  varchar(50))
    NO SQL
BEGIN
    SELECT d.kode_dapil, d.nama_dapil
		FROM dapil d
		join dapil_user du on du.kode_dapil = d.kode_dapil
		join user_login ul on ul.kode_user = du.kode_user
		where ul.kode_user = "'"+KodeUser+"'"
		order by d.kode_dapil asc;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SpKabupatenKota
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpKabupatenKota`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpKabupatenKota`(IN nama VARCHAR(50))
BEGIN
    SELECT kk.nama_kabupaten_kota
		FROM kabupaten_kota kk
    WHERE kk.nama_kabupaten_kota like nama;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SpMasterDapil
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpMasterDapil`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpMasterDapil`(in `kode` varchar(50))
BEGIN
	SELECT d.kode_dapil, d.nama_dapil, p.nama_provinsi, k.nama_kategori, d.keterangan
	from dapil d
	join provinsi p on p.kode_provinsi = d.kode_provinsi
	join kategori k on k.kode_kategori = d.kode_kategori
	where d.kode_dapil like kode
	order by d.kode_dapil asc;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SpMasterKabupatenKota
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpMasterKabupatenKota`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpMasterKabupatenKota`(in `kode` varchar (50))
BEGIN
	select kk.kode_kabupaten_kota, kk.nama_kabupaten_kota, d.nama_dapil, p.nama_provinsi, k.nama_kategori, kk.keterangan
	from dapil d
	join kabupaten_kota kk on kk.kode_dapil = d.kode_dapil
	join provinsi p on p.kode_provinsi = d.kode_provinsi
	join kategori k on k.kode_kategori = d.kode_kategori
	where kk.kode_kabupaten_kota like kode
	or kk.nama_kabupaten_kota like kode
	or p.nama_provinsi like kode
	or k.nama_kategori like kode
	order by d.kode_dapil, kk.kode_kabupaten_kota asc;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SpProvinsi
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpProvinsi`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpProvinsi`(IN `KodeUser` VARCHAR(50))
BEGIN
    SELECT distinct(p.kode_provinsi) as kode_provinsi, p.nama_provinsi 
		FROM dapil d
		join dapil_user dp on dp.kode_dapil = d.kode_dapil
		join user_login ul on ul.kode_user = dp.kode_user
		join provinsi p on p.kode_provinsi = d.kode_provinsi
    WHERE ul.kode_user = "'"+KodeUser+"'"
		order by p.nama_provinsi asc;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SpSimulasiStep1
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpSimulasiStep1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpSimulasiStep1`(IN `KodeDapil` VARCHAR(50))
BEGIN
    select kode_caleg, nama_caleg, nama_partai, nama_provinsi, nama_dapil, sum(suara_caleg), sum(suara_partai)
		from
		(
			SELECT c.kode_caleg, c.nama_caleg, p.nama_partai, pr.nama_provinsi, d.nama_dapil, sum(sc.jumlah_suara_caleg) as suara_caleg, 0 as suara_partai
			from dapil d
			join caleg c on c.kode_dapil = d.kode_dapil
			join partai p on p.kode_partai = c.kode_partai
			join provinsi pr on pr.kode_provinsi = d.kode_provinsi
			join suara_caleg sc on sc.kode_caleg = c.kode_caleg and sc.kode_dapil = d.kode_dapil and sc.kode_partai = p.kode_partai
			where d.kode_dapil = "'"+KodeDapil+"'"
			group by c.nama_caleg, p.nama_partai, pr.nama_provinsi, d.nama_dapil
			
			union all

			select clg.kode_caleg, clg.nama_caleg, prt.nama_partai, prv.nama_provinsi, dpl.nama_dapil, 0 as suara_caleg, 
				sum(sprt.jumlah_suara_partai) as suara_partai
			from dapil dpl
			join suara_partai sprt on sprt.kode_dapil = dpl.kode_dapil
			join partai prt on prt.kode_partai = sprt.kode_partai
			join caleg clg on clg.kode_dapil = dpl.kode_dapil and clg.kode_partai = prt.kode_partai
			join provinsi prv on prv.kode_provinsi = dpl.kode_provinsi
			where dpl.kode_dapil = "'"+KodeDapil+"'"
			group by clg.kode_caleg, clg.nama_caleg, prt.nama_partai, prv.nama_provinsi, dpl.nama_dapil
		) as temp
		group by kode_caleg, nama_caleg, nama_partai, nama_provinsi, nama_dapil
		order by nama_partai, kode_caleg asc;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SpSuaraCalegAkhir
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpSuaraCalegAkhir`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpSuaraCalegAkhir`(in `KodeDapil` varchar(50), in `KodeCaleg` varchar(50), in `KodePartai` char(50))
BEGIN
	CREATE TEMPORARY TABLE SuaraCaleg
	(
		kode_dapil varchar(50),
		kode_caleg varchar(50),
		kode_partai varchar(50),
		nama_dapil varchar(50),
		nama_caleg varchar(50),
		nama_partai varchar(50),
		jumlah_suara_caleg INT
	);

	CREATE TEMPORARY TABLE Suara
	(
		jumlah INT
	);

	insert into SuaraCaleg
		select d.kode_dapil, sc.kode_caleg, p.kode_partai, d.nama_dapil, c.nama_caleg, p.nama_partai, sum(sc.jumlah_suara_caleg) as jumlah_suara_caleg
		from dapil d
		join suara_caleg sc on sc.kode_dapil = d.kode_dapil
		join caleg c on c.kode_caleg = sc.kode_caleg
		join partai p on p.kode_partai = sc.kode_partai
		where d.kode_dapil = "'"+KodeDapil+"'"
		group by d.nama_dapil, c.nama_caleg, p.nama_partai;

	insert into SuaraCaleg(kode_dapil, kode_caleg, kode_partai, nama_dapil, nama_caleg, nama_partai, jumlah_suara_caleg) values
		(KodeDapil, KodeCaleg, KodePartai, (select nama_dapil from dapil where kode_dapil = "'"+KodeDapil+"'"), (select nama_caleg from caleg where kode_caleg = "'"+KodeCaleg+"'"),
		(select nama_partai from partai where kode_partai = "'"+KodePartai+"'"), (select sum(jumlah_suara_caleg) from suara_caleg where kode_caleg = "'"+KodeCaleg+"'"));

	insert into Suara
		select sum(jumlah_suara_caleg) from SuaraCaleg;

	delete from SuaraCaleg where kode_caleg = "'"+KodeCaleg+"'" and kode_partai = (select p.kode_partai from caleg c join partai p on p.kode_partai = c.kode_partai where c.kode_caleg = "'"+KodeCaleg+"'");

	select kode_dapil, kode_caleg, kode_partai, nama_dapil, nama_caleg, nama_partai, jumlah_suara_caleg,
		round((jumlah_suara_caleg/(select jumlah from Suara)) * 100, 2) as persentase
	from SuaraCaleg 
	group by kode_dapil, kode_caleg, kode_partai, nama_dapil, nama_caleg, nama_partai, jumlah_suara_caleg
	order by persentase desc;

	drop TEMPORARY TABLE SuaraCaleg;
	drop TEMPORARY TABLE Suara;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SpSuaraCalegAwal
-- ----------------------------
DROP PROCEDURE IF EXISTS `SpSuaraCalegAwal`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpSuaraCalegAwal`(in `KodeDapil` varchar(50))
BEGIN
	select d.nama_dapil, c.nama_caleg, p.nama_partai, sum(sc.jumlah_suara_caleg) as jumlah_suara_caleg,
		round((sum(sc.jumlah_suara_caleg)/(select sum(clg.jumlah_suara_caleg) from suara_caleg clg where clg.kode_dapil = "'"+KodeDapil+"'")) * 100,2) as persentase
	from dapil d
	join suara_caleg sc on sc.kode_dapil = d.kode_dapil
	join caleg c on c.kode_caleg = sc.kode_caleg
	join partai p on p.kode_partai = sc.kode_partai
	where d.kode_dapil = "'"+KodeDapil+"'"
	group by d.nama_dapil, c.nama_caleg, p.nama_partai
	order by persentase desc;
END
;;
DELIMITER ;
