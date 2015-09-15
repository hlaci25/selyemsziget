-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 15, 2015 at 05:26 
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `selyemsziget`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `szovegek`
--

CREATE TABLE IF NOT EXISTS `szovegek` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `text` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `szovegek`
--

INSERT INTO `szovegek` (`id`, `name`, `text`) VALUES
(1, 'technologia', '<p><strong>Az SHR technol&oacute;gia az IPL tov&aacute;bbfejlesztett v&aacute;ltozata</strong></p>\r\n\r\n<p>Minden bőr &eacute;s szőr t&iacute;puson alkalmazhat&oacute;!</p>\r\n\r\n<div>\r\n<p style="text-align:justify">Kisebb f&aacute;jdalom&eacute;rzet!</p>\r\n\r\n<p style="text-align:justify">Barnult bőr&ouml;n is alkalmazhat&oacute;!</p>\r\n\r\n<p style="text-align:justify"><strong>SHR, mint f&aacute;jdalommentes szőrtelen&iacute;t&eacute;si m&oacute;dszer</strong></p>\r\n\r\n<p style="text-align:justify">A tart&oacute;s szőrtelen&iacute;t&eacute;snek ez a m&oacute;dja szinte teljesen f&aacute;jdalommentes. Amennyiben olyan testr&eacute;szen alkalmazzuk, amelyet sok szőr fed le, &eacute;rezhető a f&eacute;ny pulz&aacute;l&aacute;sa &eacute;s n&eacute;mi melegs&eacute;g. Cs&iacute;pő &eacute;s kellemetlen &eacute;rz&eacute;s, mely a l&eacute;zer &eacute;s az IPL kezel&eacute;s sor&aacute;n &eacute;rz&eacute;kelhető, az SHR m&oacute;dszer haszn&aacute;lat&aacute;n&aacute;l nem jelentkezik. Az SHR m&oacute;dszert alkalmazhatjuk a test minden r&eacute;sz&eacute;n, kiv&eacute;ve a szem k&ouml;zvetlen k&ouml;rnyezet&eacute;t.</p>\r\n\r\n<p style="text-align:justify"><strong>Mi a k&uuml;l&ouml;nbs&eacute;g a technol&oacute;gi&aacute;k k&ouml;z&ouml;tt?</strong></p>\r\n\r\n<p style="text-align:justify">A hagyom&aacute;nyos l&eacute;zer vagy IPL technol&oacute;gi&aacute;k r&ouml;vid impulzusokat alkalmaznak, melyek megk&ouml;zel&iacute;tőleg 2-300 milliszekundumosak, &eacute;s &oacute;ri&aacute;si m&eacute;rt&eacute;kű energi&aacute;t (12-120 Joule) adnak le egy n&eacute;gyzetcentim&eacute;teren. Az energia a szőrsz&aacute;lon kereszt&uuml;l annak gy&ouml;ker&eacute;be hatol a melanin tartalom seg&iacute;ts&eacute;g&eacute;vel, ahol a hőfok el&eacute;rheti a 65-72&deg;C-ot is. A bőrnek &eacute;s a v&ouml;r&ouml;s v&eacute;rsejteknek azonos felsz&iacute;v&aacute;si t&eacute;nyezőj&uuml;k van, mint a melaninnak, ez&eacute;rt elnyeli a magas energia szintű l&eacute;zer &eacute;s IPL &aacute;ltal gener&aacute;lt hőt.<br />\r\n<br />\r\nAz SHR technol&oacute;gia a melanint r&eacute;szben haszn&aacute;lja fel (50 %-ban). A hagyom&aacute;nyos eszk&ouml;z&ouml;k nem haszn&aacute;lnak SHR technol&oacute;gi&aacute;t, csup&aacute;n sz&aacute;ll&iacute;tj&aacute;k az energi&aacute;t a melanin tartalmon kereszt&uuml;l a szőrt&uuml;szőbe. Az SHR finoman sz&aacute;ll&iacute;tja az energi&aacute;t a bőr&ouml;n, &eacute;s a melaninon kereszt&uuml;l a szőrt&uuml;szőh&ouml;z.<br />\r\n<br />\r\nA kutat&aacute;sok azt mutatj&aacute;k, hogy a lass&uacute;, azonban hosszantart&oacute; meleg&iacute;t&eacute;si folyamat jelentősen hat&aacute;sosabb a tart&oacute;s szőrtelen&iacute;t&eacute;sben, mint a magas &eacute;s r&ouml;vid energiaszintű folyamatok. Ez&eacute;rt amikor az SHR eszk&ouml;z &aacute;thalad a sz&ouml;veten 6-10 X, alkalmazzunk alacsony energiaszintet, azonban magas sz&aacute;m&uacute; ism&eacute;tlőd&eacute;st (10 Hz-ig, 10X/sec) a hagyom&aacute;nyos m&oacute;dszer (magas energia impulzusok) helyett. &Iacute;gy a szőr melaninja, ahogy az őssejt sz&ouml;vetei, alacsony energi&aacute;val melegszenek fel, lass&uacute; mozdulatok seg&iacute;ts&eacute;g&eacute;vel hosszabb peri&oacute;dusokon &aacute;t (90 sec), kellemes hőfokon (45&deg;C). Az SHR m&oacute;dszer sikeres kezel&eacute;si m&oacute;d lehet a vil&aacute;gosabb szőrsz&aacute;lon, hiszen a szőrsz&aacute;l pigment tartalma csup&aacute;n m&aacute;sodlagos.</p>\r\n\r\n<p style="text-align:justify"><strong>Minden szőr &eacute;s bőrt&iacute;pus kezelhető az SHR technol&oacute;gi&aacute;val?</strong></p>\r\n\r\n<p style="text-align:justify">M&aacute;s l&eacute;zeres &eacute;s IPL szőrtelen&iacute;t&eacute;si m&oacute;dszerekkel szemben nagy előnye az SHR technol&oacute;gi&aacute;nak, hogy a szőr- &eacute;s bőrsz&iacute;n nem j&aacute;tszik olyan jelentős szerepet. Am&iacute;g a r&eacute;gebbi m&oacute;dszerekn&eacute;l a vil&aacute;gos bőr &eacute;s a s&ouml;t&eacute;tebb szőrsz&iacute;n volt sz&uuml;ks&eacute;ges a sikeres kezel&eacute;shez, az SHR m&oacute;dszern&eacute;l nem ilyen szigor&uacute; a szab&aacute;ly. Persze a legjobb eredm&eacute;ny a vil&aacute;gos bőr &eacute;s s&ouml;t&eacute;t szőrsz&iacute;n kombin&aacute;ci&oacute;n lesz, azonban az SHR technol&oacute;gia nem csup&aacute;n a melanin szinttől f&uuml;gg, hanem ugyanannyira az őssejt protein tartalm&aacute;t&oacute;l is. Emiatt nem jelenthet akkora neh&eacute;zs&eacute;get a s&ouml;t&eacute;tebb t&iacute;pus&uacute; bőr &eacute;s vil&aacute;gosabb szőrsz&iacute;nű emberekn&eacute;l a kezel&eacute;s.</p>\r\n\r\n<p style="text-align:justify"><strong>H&aacute;ny kezel&eacute;s sz&uuml;ks&eacute;ges?</strong></p>\r\n\r\n<p style="text-align:justify">Mostan&aacute;ig a szőrsz&aacute;lakat csak a n&ouml;veked&eacute;si f&aacute;zis alatt lehetett kezelni (20-30 %). Az SHR m&oacute;dszerrel a telog&eacute;n f&aacute;zisban l&eacute;vő szőrsz&aacute;lakat is lehet kezelni. A tart&oacute;s szőrtelens&eacute;ghez megk&ouml;zel&iacute;tőleg az IPL-n&eacute;l 12-16, az SHR-n&eacute;l 8 kezel&eacute;s sz&uuml;ks&eacute;ges.</p>\r\n\r\n<p style="text-align:justify"><strong>Hogyan &eacute;rkezzek a kezel&eacute;sre?</strong></p>\r\n\r\n<p style="text-align:justify">Előző este borotv&aacute;ld le a kezelendő fel&uuml;letet.</p>\r\n\r\n<p style="text-align:justify"><strong>Napoz&aacute;s &eacute;s szol&aacute;rium</strong></p>\r\n\r\n<p style="text-align:justify">A szol&aacute;rium haszn&aacute;lat&aacute;t a kezel&eacute;st megelőző egy h&eacute;tben ker&uuml;lni kell, de napbarn&iacute;tott bőrfel&uuml;leten el lehet v&eacute;gezni a kezel&eacute;st. (Fontos, hogy a bőrfel&uuml;let napbarn&iacute;tott, &eacute;s NE le&eacute;gett legyen!) Kezel&eacute;s ut&aacute;n a szol&aacute;rium haszn&aacute;lata &eacute;s a k&ouml;zvetlen napoz&aacute;s k&eacute;t h&eacute;tig nem aj&aacute;nlott!</p>\r\n\r\n<p style="text-align:justify"><strong>Mire sz&aacute;m&iacute;thatunk a kezel&eacute;s ut&aacute;n?</strong></p>\r\n\r\n<p style="text-align:justify">Tapasztalt kezelő eset&eacute;ben nagyon ritk&aacute;n előfordulhat enyhe bőrpirosod&aacute;s. Ez &aacute;ltal&aacute;ban 2-24 &oacute;r&aacute;n bel&uuml;l elm&uacute;lik. Jegelni vagy aloe kr&eacute;mmel kezelni &eacute;rdemes a ter&uuml;letet. A kezel&eacute;s napj&aacute;n pr&oacute;b&aacute;ljon tart&oacute;zkodni a forr&oacute; zuhanyt&oacute;l. A kezel&eacute;s ut&aacute;ni sebek a kezel&eacute;s ut&aacute;n bes&ouml;t&eacute;tednek, k&ouml;r&uuml;l&ouml;tt&uuml;k v&ouml;r&ouml;s keret jelenik meg. A k&ouml;vetkező 24-48 &oacute;ra alatt egyre s&ouml;t&eacute;tebb&eacute; v&aacute;lnak. Eg&eacute;szen s&ouml;t&eacute;tbarn&aacute;v&aacute; vagy ak&aacute;r feket&eacute;v&eacute; is v&aacute;lhatnak. A seb 2-3 napon bel&uuml;l elkezd hegesedni, majd lepattogni. A szőrtelen&iacute;tő kezel&eacute;s ut&aacute;n 7-21 nappal borosta fog megjelenni, de ezek nem &uacute;j szőrsz&aacute;lak, hanem a r&eacute;giek, amik elhagyj&aacute;k a mirigyet. Ne szedje ki, gyant&aacute;zza le a kezelt ter&uuml;letet, mert cs&ouml;kkenti a kezel&eacute;s sikeress&eacute;g&eacute;t.<span style="font-family:calibri; font-size:medium">&nbsp;</span></p>\r\n</div>\r\n'),
(2, 'arlista', '<p>Hamarosan...</p>\r\n'),
(3, 'akciok', '<p>Hamarosan...</p>\r\n\r\n<p>50%!!!</p>\r\n'),
(4, 'kapcsolat', '<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:medium">1024 Budapest, Margit k&ouml;r&uacute;t 48. I. em 7. </span></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:16px">Kapucsengő: 11</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:medium">Telefonsz&aacute;m: +36 70 705 1515</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:medium">E-mail: selyemsziget@gmail.com</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:16px">Nyitvatart&aacute;s: bejelentkez&eacute;s alapj&aacute;n.</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:16px">Telefonos bejelentkez&eacute;s: </span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:16px">minden h&eacute;tk&ouml;znap 9-19, ha nem vessz&uuml;k fel, visszah&iacute;vjuk.</span></span></p>\r\n'),
(5, 'fooldal', '<p><span style="color:rgb(20,24,35); font-family:helvetica,arial,sans-serif; font-size:13px">A Selyemsziget szalon fő c&eacute;lkitűz&eacute;se, hogy vend&eacute;geink sz&aacute;m&aacute;ra, egy szem&eacute;lyes konzult&aacute;ci&oacute;t k&ouml;vetően, a legmegfelelőbb kezel&eacute;st aj&aacute;nljuk. Kellemes csal&aacute;di k&ouml;rnyezetben - villan&aacute;ssz&aacute;mra lebontva- a legelőny&ouml;sebb &aacute;ron juthat hozz&aacute; profi szolg&aacute;ltat&aacute;sainkhoz. A legmodernebb SHR g&eacute;ppel dolgozunk, melyn&eacute;l szőr- &eacute;s bőrsz&iacute;n m&aacute;r nem j&aacute;tszik olyan jelentős szerepet, viszont teljesen f&aacute;jdalommenes. Arra t&ouml;reksz&uuml;nk, hogy szolg&aacute;ltat&aacute;sunk mindenki sz&aacute;m&aacute;ra el&eacute;rhető legyen. T&ouml;rzsvend&eacute;geink tov&aacute;bbi kedvezm&eacute;nyben r&eacute;szes&uuml;lnek. Szalonunk mind aut&oacute;val, mind t&ouml;megk&ouml;zleked&eacute;ssel is k&ouml;nnyen megk&ouml;zel&iacute;thető, A 4, 6- os villamos, vagy a 11, 111 -es busz Mechwart ligeti meg&aacute;ll&oacute;j&aacute;t&oacute;l csup&aacute;n 1 percet kell s&eacute;t&aacute;lni.</span></p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `szovegek`
--
ALTER TABLE `szovegek`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `szovegek`
--
ALTER TABLE `szovegek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
