-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Host: groupebocfbouren.mysql.db
-- Generation Time: Jun 16, 2021 at 03:41 PM
-- Server version: 5.6.50-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groupebocfbouren`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_passe` varchar(100) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nom`, `prenom`, `email`, `mot_passe`, `hash`, `active`, `avatar`, `date_ajout`) VALUES
(3, 'comfex', 'comfex', 'info@comfex.org', '7518c9c3bdc850d00be6366bcbab468c', '', 1, '1537710232.png', '2018-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `albumphotos`
--

CREATE TABLE `albumphotos` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `media_id` int(11) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albumphotos`
--

INSERT INTO `albumphotos` (`id`, `nom`, `image`, `media_id`, `date_ajout`) VALUES
(5, 'new', 'photo-1549450506.png', 0, '2019-02-06'),
(9, 'album2', 'photo-1549458061.jpg', 0, '2019-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `albumvideos`
--

CREATE TABLE `albumvideos` (
  `id` int(11) NOT NULL,
  `nom_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_ara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` date NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albumvideos`
--

INSERT INTO `albumvideos` (`id`, `nom_fr`, `nom_ara`, `nom_en`, `date_ajout`, `image`) VALUES
(5, 'album1', '', '', '2018-06-25', '1529912899.jpg'),
(6, 'album2', '', '', '2018-06-25', '1529913868.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `catalogues`
--

CREATE TABLE `catalogues` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `image`, `date_ajout`) VALUES
(5, 'Bordures', '1549363857.png', '2019-02-05'),
(6, 'Pavés', '1549364030.png', '2019-02-05'),
(7, 'Caniveaux', '1549364091.png', '2019-02-05'),
(8, 'Blocs', '1549372303.png', '2019-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` int(11) NOT NULL,
  `titre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `certificat` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `titre`, `image`, `certificat`) VALUES
(8, 'hourdis', '1549706038.png', 'certificat-1549708093.jpg'),
(9, 'Hourdis 16 cm', '1549707305.png', 'certificat-1549707305.pdf'),
(10, 'hourdis 16', '1549708977.png', 'certificat-1549708977.png'),
(11, 'h', '1549708993.png', 'certificat-1549708993.png'),
(12, 'hourd', '1549709016.png', 'certificat-1549709016.png');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) NOT NULL,
  `fax` varchar(22) NOT NULL,
  `tel1` varchar(22) NOT NULL,
  `tel2` varchar(22) NOT NULL,
  `tel3` varchar(22) NOT NULL,
  `mob1` varchar(25) NOT NULL,
  `mob2` varchar(25) NOT NULL,
  `mob3` varchar(25) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `nom`, `email`, `adresse`, `map`, `fax`, `tel1`, `tel2`, `tel3`, `mob1`, `mob2`, `mob3`, `date_ajout`) VALUES
(1, 'Direction Générale', 'contact@gp.com', 'bordj bou arreridj', '36.0647589,4.7902138', '0350686868', '0350686868', '', '', '0661 61 61 61', '0661 61 61 61', '', '2018-10-02'),
(2, 'Direction commerciale', 'contact@GP.com', 'bba', '36.0647589,4.7902138', '0350686868', '0350686868', '', '', '0661 61 61 61', '', '', '2019-02-06'),
(3, 'Secretariat des commissions', 'contact@GP.com', 'bba', '36.0647589,4.7902138', '0350686868', '0350686868', '', '', '0661 61 61 61', '', '', '2019-02-06'),
(4, 'Secretariat des commissions', 'contact@GP.com', 'bba', '36.0647589,4.7902138', '0350686868', '0350686868', '', '', '0661 61 61 61', '', '', '2019-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `destinataires`
--

CREATE TABLE `destinataires` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evenements`
--

CREATE TABLE `evenements` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `evenements`
--

INSERT INTO `evenements` (`id`, `titre`, `text`, `image`, `date_ajout`) VALUES
(1, 'New events', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.</p>\r\n', '1549961537.png', '2019-02-06'),
(2, 'Evenement2', '<p>Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1549961388.png', '2019-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `image_produits`
--

CREATE TABLE `image_produits` (
  `id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `gout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(11) NOT NULL,
  `ref` varchar(60) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `ref`, `ref_id`, `file`, `position`) VALUES
(12, 'Albumphoto', 5, '/assets/images/uploads/2019/02/Layer_15.png', 0),
(13, 'Albumphoto', 5, '/assets/images/uploads/2019/02/Layer_16.png', 0),
(14, 'Albumphoto', 5, '/assets/images/uploads/2019/02/Layer_17.png', 0),
(15, 'Albumphoto', 9, '/assets/images/uploads/2019/02/Abstract_PNG_Photo_1.png', 0),
(16, 'Albumphoto', 9, '/assets/images/uploads/2019/02/orange_splash.png', 0),
(20, 'Evenement', 2, '/assets/images/uploads/2019/02/Abstract_Shape_PNG_File.png', 0),
(21, 'Evenement', 2, '/assets/images/uploads/2019/02/import.jpg', 0),
(23, 'Albumphoto', 5, '/assets/images/uploads/2019/02/slidtublux.png', 0),
(24, 'Service', 1, '/assets/images/uploads/2019/02/cat2.png', 0),
(25, 'Service', 1, '/assets/images/uploads/2019/02/cat3.png', 0),
(26, 'Service', 1, '/assets/images/uploads/2019/02/cat4.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paragraphes`
--

CREATE TABLE `paragraphes` (
  `id` int(11) NOT NULL,
  `resume` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `solution` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `service` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paragraphes`
--

INSERT INTO `paragraphes` (`id`, `resume`, `solution`, `service`, `date_ajout`) VALUES
(1, '<p>omposition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte. Il n&#39;a pas fait que survivre cinq si&egrave;cles, mais s&#39;est aussi adapt&eacute; &agrave; la bureautique informatique, sans que son contenu n&#39;en soit modifi&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 gr&acirc;ce &agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\r\n', '<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et emp&ecirc;che de se concentrer sur la mise en page elle-m&ecirc;me.&nbsp;</p>\r\n', '<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et emp&ecirc;che de se concentrer sur la mise en page elle-m&ecirc;me.&nbsp;</p>\r\n', '2019-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `souscat_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fiche-technique` varchar(255) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `souscat_id`, `categorie_id`, `image`, `description`, `fiche-technique`, `date_ajout`) VALUES
(7, 'test788', 2, 5, '1549961764.png', '', 'produit3-1549961764.pdf', '2019-02-12'),
(8, 'produit10', 4, 6, '1549961863.png', '<p>hnjgsddelliu</p>\r\n', 'produit3-1549961863.png', '2019-02-12'),
(9, 'teste', 2, 5, '1550045578.png', '<p>ytjhjyjytttttttttttttttttttttttttttttttttttttdclcc;lmsdl;mmlf</p>\r\n', '', '2019-02-13'),
(10, 'test1589', 2, 5, '1550045683.png', '<p>ku;uik;iu</p>\r\n', '', '2019-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `nom`, `description`, `image`, `date_ajout`) VALUES
(1, 'TRAVAUX HYDRAULIQUES', '<p>omposition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte. Il n&#39;a pas fait que survivre cinq si&egrave;cles, mais s&#39;est aussi adapt&eacute; &agrave; la bureautique informatique, sans que son contenu n&#39;en soit modifi&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 gr&acirc;ce &agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMake</p>\r\n', '1550573252.jpg', '2019-02-17'),
(2, 'TRAVAUX AMENAGEMENT', '<p>TETSW TSTQDYJ IFDKLVFML VDMVM%F VM%M% &sect;F</p>\n', 'service1-1550419054.jpg', '2019-02-17'),
(3, 'LOGISTIQUE &TRANSPORT', '<p>TRANSPORT TRANSPORT TRANSPORT TRANSPORT TRANSPORT TRANSPORT TRANSPORT TRANSPORT</p>\n', 'service1-1550419081.jpg', '2019-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` date NOT NULL,
  `titre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `lien` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `date_ajout`, `titre`, `resume`, `page_id`, `service_id`, `lien`) VALUES
(15, '1549960970.png', '2019-02-12', '', '', 1, 0, ''),
(16, '1549960979.png', '2019-02-12', '', '', 1, 0, ''),
(17, '1549960993.png', '2019-02-12', '', '', 2, 0, ''),
(18, '1549961004.png', '2019-02-12', '', '', 2, 0, ''),
(19, '1550411624.png', '2019-02-17', '', '', 0, 0, ''),
(20, '1550411635.png', '2019-02-17', '', '', 0, 0, ''),
(21, '1550564963.jpg', '2019-02-19', '', '', 2, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `sociales`
--

CREATE TABLE `sociales` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sociales`
--

INSERT INTO `sociales` (`id`, `nom`, `lien`, `image`, `color`, `date_ajout`) VALUES
(1, 'Facebook', 'https://facebook.com', 'fa fa-facebook ', '#3b5998', '2016-05-02'),
(2, 'twitter', 'https://twitter.com', ' fa fa-twitter ', '#55ACEE', '2018-11-03'),
(3, 'google', 'https://googleplus.com', 'fa fa-google-plus ', '#dd4b39', '2018-11-03'),
(4, 'rss', 'https://rss.com', 'fa fa-rss', '#f26522', '2018-11-03'),
(22, 'youtube', 'https://youtube.com', ' fa fa-youtube ', '#ff0000', '2019-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `souscats`
--

CREATE TABLE `souscats` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `souscats`
--

INSERT INTO `souscats` (`id`, `nom`, `categorie_id`, `date_ajout`) VALUES
(2, 'Bordures Type P', 5, '2019-02-06'),
(3, 'Bordures Type T', 6, '2019-02-06'),
(4, 'pavé1', 14, '2019-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) NOT NULL,
  `imagevideo` varchar(255) NOT NULL,
  `albumvideos_id` int(11) NOT NULL,
  `date_ajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `nom`, `description`, `imagevideo`, `albumvideos_id`, `date_ajout`) VALUES
(13, '1538474775.mp4', 'video 1', '1538474775.jpg', 0, '2018-10-02'),
(14, '1538475164.mp4', 'video 2', '1538475164.png', 0, '2018-10-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albumphotos`
--
ALTER TABLE `albumphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinataires`
--
ALTER TABLE `destinataires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paragraphes`
--
ALTER TABLE `paragraphes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sociales`
--
ALTER TABLE `sociales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souscats`
--
ALTER TABLE `souscats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `albumphotos`
--
ALTER TABLE `albumphotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `destinataires`
--
ALTER TABLE `destinataires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `paragraphes`
--
ALTER TABLE `paragraphes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sociales`
--
ALTER TABLE `sociales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `souscats`
--
ALTER TABLE `souscats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
