-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 20 mai 2018 à 18:30
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `twittanalyze`
--

-- --------------------------------------------------------

--
-- Structure de la table `hashtags`
--

DROP TABLE IF EXISTS `hashtags`;
CREATE TABLE IF NOT EXISTS `hashtags` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `id_tweet` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hashtags`
--

INSERT INTO `hashtags` (`id`, `id_tweet`, `content`, `date_ajout`) VALUES
(77, '994917472406032384', 'Karlspreis', '2018-05-15 17:30:34'),
(78, '994917301618135040', 'Karlspreis', '2018-05-15 17:30:34'),
(79, '994917191874220032', 'Karlspreis', '2018-05-15 17:30:34'),
(80, '994899090508058625', 'Karlspreis', '2018-05-15 17:30:34'),
(81, '994899020563787776', 'Karlspreis', '2018-05-15 17:30:34'),
(82, '994898955392700417', 'Karlspreis', '2018-05-15 17:30:34'),
(83, '994898861134172160', 'Karlspreis', '2018-05-15 17:30:34'),
(84, '994898759879405568', 'Karlspreis', '2018-05-15 17:30:34'),
(85, '996344192967245826', '1andaction', '2018-05-15 17:30:35'),
(86, '995407406053150726', 'Paris', '2018-05-15 17:30:35'),
(87, '993891631794479109', 'JeannedArc2018', '2018-05-15 17:30:35'),
(88, '996320217927217153', 'LeViolEstunCrime', '2018-05-15 17:30:35'),
(89, '996314689167556608', 'AN', '2018-05-15 17:30:35'),
(90, '995568641239330816', 'Mercy', '2018-05-15 17:30:35'),
(91, '995209469951913985', 'LEmissionPolitique', '2018-05-15 17:30:35'),
(92, '995000399546470400', 'RT', '2018-05-15 17:30:35'),
(93, '994999974986469376', 'TaxedHabitation', '2018-05-15 17:30:35'),
(94, '994546885498228738', 'Enquête', '2018-05-15 17:30:35'),
(95, '995431732764643329', 'Paris', '2018-05-15 17:30:36'),
(96, '992408627901280256', 'AuvergneRhôneAlpes', '2018-05-15 17:30:36'),
(97, '991951847849152513', 'ExitTax', '2018-05-15 17:30:36'),
(98, '996021657293737984', 'Gaza', '2018-05-15 17:30:36'),
(99, '995575809682309120', 'Moscou', '2018-05-15 17:30:36'),
(100, '994941314100813824', 'Arcueil', '2018-05-15 17:30:36'),
(101, '994923047990845440', 'Arcueil', '2018-05-15 17:30:36'),
(102, '994619008447115265', 'Moscou', '2018-05-15 17:30:36'),
(103, '994283174506188800', 'Moscou', '2018-05-15 17:30:36'),
(104, '993937167239008256', 'Trump', '2018-05-15 17:30:36'),
(105, '993924939601227777', 'Trump', '2018-05-15 17:30:36'),
(106, '993922488261402625', 'Iran', '2018-05-15 17:30:36'),
(107, '993900904804945923', 'Moscou', '2018-05-15 17:30:36'),
(108, '993880089074044928', 'Russie', '2018-05-15 17:30:36'),
(109, '993817872798543873', 'Moscou', '2018-05-15 17:30:36'),
(110, '993579873967988736', 'MacronLeDoc', '2018-05-15 17:30:36'),
(111, '996374308657254400', 'QAG', '2018-05-15 17:30:36'),
(112, '996374153845444614', 'QAG', '2018-05-15 17:30:36'),
(113, '996373471654563840', 'QAG', '2018-05-15 17:30:36'),
(114, '996373268813832192', 'Gaza', '2018-05-15 17:30:36'),
(115, '996373133593636864', 'Macron', '2018-05-15 17:30:36'),
(116, '995977439556841473', 'QAG', '2018-05-15 17:30:36'),
(117, '995917809459847168', 'ClassiqueMatin', '2018-05-15 17:30:36'),
(118, '996422229687717890', 'DirectSénat', '2018-05-15 18:09:37'),
(119, '996420199443288064', 'DirectAN', '2018-05-15 18:09:39'),
(120, '996442465933643776', 'AuvergneRhôneAlpes', '2018-05-15 22:11:28'),
(121, '996442053050585089', 'AuvergneRhôneAlpes', '2018-05-15 22:11:28'),
(122, '997134512512536576', 'EUWesternBalkansSummit', '2018-05-18 13:40:01'),
(123, '997112765654491136', 'EUWesternBalkansSummit', '2018-05-18 13:40:01'),
(124, '997095242452086784', 'JT1920', '2018-05-18 13:40:02'),
(125, '997003027826532352', '1andaction', '2018-05-18 13:40:02'),
(126, '997142976756412416', 'LEmissionPolitique', '2018-05-18 13:40:03'),
(127, '996859058505347072', 'Schiappa', '2018-05-18 13:40:03'),
(128, '996829821744439298', 'OMAtletico', '2018-05-18 13:40:03'),
(129, '997165509148803072', 'AuvergneRhôneAlpes', '2018-05-18 13:40:04'),
(130, '997042760476639232', 'Moselle', '2018-05-18 13:40:04'),
(131, '997387914014322688', 'LEmissionPolitique', '2018-05-18 13:40:04'),
(132, '997238936308273154', 'LEmissionPolitique', '2018-05-18 13:40:04'),
(133, '997212185951600640', 'paix', '2018-05-18 13:40:04'),
(134, '997206107281117184', 'paix', '2018-05-18 13:40:04'),
(135, '997204347875414021', 'SNCF', '2018-05-18 13:40:04'),
(136, '997200625984208897', 'Macron', '2018-05-18 13:40:04'),
(137, '997199544638234625', '26mai', '2018-05-18 13:40:04'),
(138, '997194616825884672', 'CETA', '2018-05-18 13:40:04'),
(139, '997194413901340672', 'glyphosate', '2018-05-18 13:40:04'),
(140, '997194271441682432', 'CETA', '2018-05-18 13:40:04'),
(141, '997193499769556992', 'LEmissionPolitique', '2018-05-18 13:40:04'),
(142, '997193359671398400', 'LEmissionPolitique', '2018-05-18 13:40:04'),
(143, '997193215131471873', 'AirFrance', '2018-05-18 13:40:04'),
(144, '997404857995874305', 'ÉmissionPolitique', '2018-05-18 13:40:05'),
(145, '997214532044034049', 'LÉmissionPolitique', '2018-05-18 13:40:05'),
(146, '997212879471431680', 'LÉmissionPolitique', '2018-05-18 13:40:05'),
(147, '997212369565769731', 'migrants', '2018-05-18 13:40:05'),
(148, '997454668660912130', 'CongrèsCJD', '2018-05-18 18:31:40'),
(149, '997526831900299264', '26mai', '2018-05-19 09:32:57'),
(150, '997750412601122816', 'RDLS62', '2018-05-19 10:10:56');

-- --------------------------------------------------------

--
-- Structure de la table `hashtags_history`
--

DROP TABLE IF EXISTS `hashtags_history`;
CREATE TABLE IF NOT EXISTS `hashtags_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashtag_content` varchar(255) NOT NULL DEFAULT '',
  `month` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hashtags_history`
--

INSERT INTO `hashtags_history` (`id`, `hashtag_content`, `month`) VALUES
(42, 'Karlspreis', '052018'),
(43, 'LEmissionPolitique', '052018'),
(44, 'Moscou', '052018'),
(45, 'QAG', '052018'),
(46, 'AuvergneRhôneAlpes', '052018'),
(47, 'Trump', '052018'),
(48, '26mai', '052018'),
(49, 'CETA', '052018'),
(50, '1andaction', '052018'),
(51, 'Paris', '052018');

-- --------------------------------------------------------

--
-- Structure de la table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `text` text NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tweets`
--

INSERT INTO `tweets` (`id`, `created_at`, `text`, `id_user`, `date_ajout`) VALUES
('990951643796725761', '2018-04-30 13:50:57', 'Les Français voient tous les jours les conséquences de cette immigration non maîtrisée. Leur a-t-on demandé leur av… https://t.co/ClvIx5tDy9', '19438626', '2018-05-15 17:30:36'),
('990951733705826304', '2018-04-30 13:51:18', 'Ne raisonnons plus en fonction d’un cadre juridique gravé dans le marbre. La France doit retrouver sa souveraineté… https://t.co/fbzxK1iMCg', '19438626', '2018-05-15 17:30:36'),
('991030676639109125', '2018-04-30 19:05:00', 'Plus que quelques heures avant le départ de la Course du 1er mai. Toujours un plaisir de courir au cœur du Puy, de… https://t.co/lt4QG8rPq9', '19438626', '2018-05-15 17:30:36'),
('991342231075377152', '2018-05-01 15:43:00', 'Terribles images aujourd\'hui pour notre pays. Faillite de l’État régalien. Il est urgent de rétablir l’autorité : s… https://t.co/qSLJu8MayE', '19438626', '2018-05-15 17:30:36'),
('991770654490943493', '2018-05-02 20:05:24', 'RT @20Minutes: Laurent Wauquiez: «Il faut rendre la castration chimique obligatoire pour les violeurs» https://t.co/e1OP1Cxxqs https://t.co…', '19438626', '2018-05-15 17:30:36'),
('991951572677652481', '2018-05-03 08:04:19', 'Chaque année, 62.000 femmes sont violées en France et un violeur sur vingt récidive. On ne peut pas rester les bras… https://t.co/ExIXj2MB3f', '19438626', '2018-05-15 17:30:36'),
('991951667682775040', '2018-05-03 08:04:41', 'Ce qui m’importe, c’est la protection des victimes, pas les droits des violeurs. Aujourd’hui, la castration chimiqu… https://t.co/LXfsRVjDvI', '19438626', '2018-05-15 17:30:36'),
('991951749727637510', '2018-05-03 08:05:01', 'On finit par se résigner à l’inacceptable. C’est la même crise profonde de l’autorité qu’illustrent les zadistes de… https://t.co/IE3uAIbCqx', '19438626', '2018-05-15 17:30:36'),
('991951847849152513', '2018-05-03 08:05:24', '#ExitTax : avec Macron, c’est deux poids, deux mesures. Ce n’est pas juste. 42 % des cadeaux fiscaux ont été faits… https://t.co/wtemDrgV5U', '19438626', '2018-05-15 17:30:36'),
('991951962013863936', '2018-05-03 08:05:51', 'Nous voulons remettre l’Europe la tête à l’endroit : arrêter l’élargissement qui nous a menés dans le mur. Il y a d… https://t.co/bou0NNLjyV', '19438626', '2018-05-15 17:30:36'),
('992105979499212801', '2018-05-03 18:17:52', 'La Region est aux côtés des industriels qui investissent et créent des emplois sur les territoires en… https://t.co/QAtbos9MJd', '19438626', '2018-05-15 17:30:36'),
('992407978744713216', '2018-05-04 14:17:54', 'J\'avais promis que l\'Auvergne ne serait pas oubliée. Aujourd\'hui nous pouvons dire que jamais l\'Allier n\'a été auta… https://t.co/BVtnO57dgl', '19438626', '2018-05-15 17:30:36'),
('992408418915897344', '2018-05-04 14:19:39', 'La Région Auvergne-Rhône-Alpes, c\'est la défense des territoires. Quand l\'Etat se désengage des milieux ruraux, nou… https://t.co/Auq7ZsRq6v', '19438626', '2018-05-15 17:30:36'),
('992408627901280256', '2018-05-04 14:20:29', 'Nous avons décidé que la Région #AuvergneRhôneAlpes participerait au financement de l\'extension du magnifique Centr… https://t.co/okXnyqriic', '19438626', '2018-05-15 17:30:36'),
('992426710078509056', '2018-05-04 15:32:20', 'Aux représentants de la CGT qui sont venus m’interpeller dans le hall du conseil départemental de l’Allier, j’ai re… https://t.co/nlN872uy4n', '19438626', '2018-05-15 17:30:36'),
('992711457375686657', '2018-05-05 10:23:49', 'Avec la signature du plan filière \"Bovins viande\" chez Puigrenier dans l\'Allier, nous rappelons qu\'à la Région… https://t.co/3BcrHDTUET', '19438626', '2018-05-15 17:30:36'),
('993579873967988736', '2018-05-07 19:54:36', 'Le culte de la personnalité du président en France devient  insupportable.\n#MacronLeDoc', '80820758', '2018-05-15 17:30:36'),
('993754340002328577', '2018-05-08 07:27:52', 'Beltrame a exprimé le maximum humain du soin de l\'autre. À Macron, on ne demande que l\'APL. Et même ça, il en est incapable.', '80820758', '2018-05-15 17:30:36'),
('993817872798543873', '2018-05-08 11:40:19', 'Ce matin, de #Moscou et devant un monument dressé en hommage au régiment de chasse Normandie-Niemen, nous célébrion… https://t.co/KMFi1gNySR', '80820758', '2018-05-15 17:30:36'),
('993857116648673281', '2018-05-08 14:16:16', 'À Mathilde Edey Gamassou, merci d’avoir accepté la lourde et belle charge d’incarner Jeanne d’Arc, avec la douce fe… https://t.co/D1SpawcNmR', '1110890216', '2018-05-15 17:30:35'),
('993880089074044928', '2018-05-08 15:47:33', '#Russie : les raisons du déplacement de Jean-Luc Mélenchon. #Moscou \n Retrouvez l\'intégralité de la conférence de… https://t.co/BQeid46jpu', '80820758', '2018-05-15 17:30:36'),
('993891631794479109', '2018-05-08 16:33:25', 'En cette belle journée des fêtes de Jeanne d’Arc, merci à tous les Orléanais pour leur accueil ! #JeannedArc2018 https://t.co/EoawwxnBYl', '1110890216', '2018-05-15 17:30:35'),
('993900904804945923', '2018-05-08 17:10:16', 'À #Moscou, rencontre avec Sergueï Oudaltsov, leader du Front de gauche de #Russie, emprisonné durant 4 ans et demi… https://t.co/kFYZPbZ2Cu', '80820758', '2018-05-15 17:30:36'),
('993922488261402625', '2018-05-08 18:36:02', 'Alerte à la guerre en #Iran. #Trump est un irresponsable va-t-en-guerre. Tous les pays pris en otage des nouvelles sanctions des USA.', '80820758', '2018-05-15 17:30:36'),
('993924939601227777', '2018-05-08 18:45:46', '#Trump et Netanyahou mentent. Ras-le-bol de l\'empire US, de ses provocations, de son arrogance et de ses guerres sans fin. \n#Iran', '80820758', '2018-05-15 17:30:36'),
('993937167239008256', '2018-05-08 19:34:21', 'Communiqué - Donald #Trump est un danger pour la paix. \n#Iran \nhttps://t.co/JRlTZ4ev47', '80820758', '2018-05-15 17:30:36'),
('994179741824573440', '2018-05-09 11:38:16', 'Notre mission : rénover le fonctionnement de la vie politique française et regagner la confiance des citoyens dans… https://t.co/ezsBrmWt35', '1110890216', '2018-05-15 17:30:35'),
('994283174506188800', '2018-05-09 18:29:16', 'À #Moscou ce 9 mai pour le défilé du Régiment immortel, qui célèbre la victoire sur le nazisme et la mémoire de ceu… https://t.co/Sed3nJAuDK', '80820758', '2018-05-15 17:30:36'),
('994511833343188994', '2018-05-10 09:37:52', 'RT @gouvernementFR: ', '1110890216', '2018-05-15 17:30:35'),
('994515156578250752', '2018-05-10 09:51:05', 'Le devoir de mémoire commence à une échelle communale. Il faut inscrire la mémoire de l’esclavage dans le paysage u… https://t.co/I4dxzehNYY', '1110890216', '2018-05-15 17:30:35'),
('994515506035118080', '2018-05-10 09:52:28', 'La mémoire des meurtrissures est encore à vif. Nous ne devons pas oublier les corps mécanisés, les corps martyrisés… https://t.co/CVv7jaEDUq', '1110890216', '2018-05-15 17:30:35'),
('994516930148126720', '2018-05-10 09:58:08', 'Il faut entretenir la mémoire des résistances car le seul choix des esclaves a toujours été la liberté, que ce soit… https://t.co/CMgbP2LHwu', '1110890216', '2018-05-15 17:30:35'),
('994519533367984129', '2018-05-10 10:08:28', 'Graver dans la pierre la dignité de la personne humaine sera l’objectif du Mémorial qui recensera les quelque 200 0… https://t.co/AgcDWzMacR', '1110890216', '2018-05-15 17:30:35'),
('994520804527403009', '2018-05-10 10:13:31', 'A l’occasion des 170 ans du décret de la IIe République abolissant l’esclavage, le Président de la République a rap… https://t.co/mcC09GWJdT', '1110890216', '2018-05-15 17:30:35'),
('994528997903085568', '2018-05-10 10:46:05', 'Une mémoire en actes, c’est une mémoire consciente que l’abolition de l’esclavage n’a aboli ni les préventions soci… https://t.co/CDCFZRMA6l', '1110890216', '2018-05-15 17:30:35'),
('994543155499368448', '2018-05-10 11:42:20', 'RT @cdallonnes: \"Nous nous mobilisons pour que la France de Macron cesse de bloquer cette directive européenne défendant l\'égalité hommes-f…', '213754264', '2018-05-15 17:30:35'),
('994546885498228738', '2018-05-10 11:57:09', 'RT @expliciteJA: #Enquête ', '213754264', '2018-05-15 17:30:35'),
('994619008447115265', '2018-05-10 16:43:45', 'Salle comble à la chambre de commerce et d’industrie franco-russe de #Moscou pour une conférence sur la géopolitiqu… https://t.co/c0n297j9ov', '80820758', '2018-05-15 17:30:36'),
('994641138198999040', '2018-05-10 18:11:41', 'Une nouvelle étape importante pour la protection de l\'environnement : large adoption à l\'ONU, à l’initiative de la… https://t.co/WKBH4wKEDj', '1976143068', '2018-05-15 17:30:34'),
('994659662996951042', '2018-05-10 19:25:18', 'RT @lesRepublicains: Pensées émues pour la famille et les proches de Frédéric Bouscarle. Hommage au militant de cœur, engagé, fidèle et si…', '19438626', '2018-05-15 17:30:36'),
('994683720962576384', '2018-05-10 21:00:54', 'Nouvelle version du « en même temps ». D’un côté je baisse les impôts, de l’autre je laisse les maires faire le sal… https://t.co/5F9T4VEXQC', '213754264', '2018-05-15 17:30:35'),
('994683754391228416', '2018-05-10 21:01:02', 'Le 10 mai, la France célèbre la journée nationale des mémoires de la traite, de l\'esclavage et de leurs abolitions.… https://t.co/0GlMGVnQ8g', '1976143068', '2018-05-15 17:30:34'),
('994870277782851584', '2018-05-11 09:22:12', 'Für Europa: \n1. Seien wir nicht schwach! Entscheiden wir uns! \n2. Lassen wir uns nicht spalten! Handeln wir gemeins… https://t.co/9BcgzF1X91', '1976143068', '2018-05-15 17:30:34'),
('994870414651346944', '2018-05-11 09:22:45', 'For Europe:\n1. We must not be weak. We must choose.\n2. We must not be divided. We must unite.\n3. We must not be afr… https://t.co/uteN8sfsoi', '1976143068', '2018-05-15 17:30:34'),
('994870526878408704', '2018-05-11 09:23:12', 'Per l\'Europa: \n1. Non siamo deboli. Scegliamo. \n2. Non siamo divisi. Uniamoci.\n3. Non abbiamo paura. Osiamo fare.… https://t.co/kPOs1Rco8n', '1976143068', '2018-05-15 17:30:34'),
('994870657317040129', '2018-05-11 09:23:43', 'Por y para Europa: \n1. No seamos débiles. Elijamos. \n2. No estemos divididos. Unámonos. \n3. No tengamos miedo. Atre… https://t.co/8Mi6QA0jpf', '1976143068', '2018-05-15 17:30:34'),
('994897556097388544', '2018-05-11 11:10:36', 'Para a Europa: \n1. Não podemos ser fracos. Devemos fazer a escolha certa. \n2. Não podemos dividir-nos. Devemos esta… https://t.co/ZOK1YMwWgT', '1976143068', '2018-05-15 17:30:34'),
('994898759879405568', '2018-05-11 11:15:23', 'Wer hat gesagt, Europa habe keine Zukunft? #Karlspreis\nhttps://t.co/35PZ78nBq0', '1976143068', '2018-05-15 17:30:34'),
('994898861134172160', '2018-05-11 11:15:47', 'Who said there was no future for Europe? #Karlspreis\nhttps://t.co/35PZ78nBq0', '1976143068', '2018-05-15 17:30:34'),
('994898955392700417', '2018-05-11 11:16:09', 'Chi ha detto che l’Europa non aveva futuro? #Karlspreis\nhttps://t.co/35PZ78nBq0', '1976143068', '2018-05-15 17:30:34'),
('994899020563787776', '2018-05-11 11:16:25', '¿Quién ha dicho que Europa no tiene futuro? #Karlspreis\nhttps://t.co/35PZ78nBq0', '1976143068', '2018-05-15 17:30:34'),
('994899090508058625', '2018-05-11 11:16:42', 'Quem disse que a Europa não tinha futuro? #Karlspreis\nhttps://t.co/35PZ78nBq0', '1976143068', '2018-05-15 17:30:34'),
('994917191874220032', '2018-05-11 12:28:37', 'Die deutsche Jugend setzt auf Europa, denn sie ist sich ihrer Geschichte bewusst. #Karlspreis\nhttps://t.co/iEMb5Kdwea', '1976143068', '2018-05-15 17:30:34'),
('994917301618135040', '2018-05-11 12:29:04', 'Germany’s young people have great expectations of Europe because they remember their country’s history. #Karlspreis\nhttps://t.co/iEMb5Kdwea', '1976143068', '2018-05-15 17:30:34'),
('994917472406032384', '2018-05-11 12:29:44', 'I giovani tedeschi aspettano tutto dall\'Europa perchè ricordano la propria storia. #Karlspreis\nhttps://t.co/iEMb5Kdwea', '1976143068', '2018-05-15 17:30:34'),
('994923047990845440', '2018-05-11 12:51:54', '#Arcueil - Inadmissible gazage d’un député. https://t.co/rQPrjJHKbj https://t.co/E4gGFhksxi', '80820758', '2018-05-15 17:30:36'),
('994937328786378752', '2018-05-11 13:48:38', 'Entretien passionnant avec Elio Di Rupo, pdt du PS belge et ancien Premier Ministre. Avenir de L’Union Europeenne,… https://t.co/WHfPjrYd3W', '213754264', '2018-05-15 17:30:35'),
('994938829047025665', '2018-05-11 13:54:36', 'Nationalistische Strömungen überwinden wir, indem wir uns zu einer europäischen Souveränität bekennen, solidarisch… https://t.co/kTwxPZKpRu', '1976143068', '2018-05-15 17:30:34'),
('994939016222035968', '2018-05-11 13:55:21', 'To overcome all forms of nationalism, we need to be proud of having European sovereignty, develop solidarity, and g… https://t.co/5vgRCB1o5h', '1976143068', '2018-05-15 17:30:34'),
('994939418594168832', '2018-05-11 13:56:57', 'Per battere i nazionalismi: prendere atto di avere una sovranità europea, sviluppare la solidarietà... e non mollar… https://t.co/qoUb7vy3Il', '1976143068', '2018-05-15 17:30:34'),
('994941314100813824', '2018-05-11 14:04:29', '@ericcoquerel @FranceInsoumise #Arcueil - Un député en écharpe à l\'écart est gazé volontairement, lacrymo à bout po… https://t.co/NRdQ2LKUuB', '80820758', '2018-05-15 17:30:36'),
('994999916798898176', '2018-05-11 17:57:21', 'RT @cpiresbeaune: La suppression de la Taxe d’habitation : Une promesse qui  tourne au casse-tête ! Et non il n’y a pas d’argent magique !@…', '213754264', '2018-05-15 17:30:35'),
('994999974986469376', '2018-05-11 17:57:34', 'RT @partisocialiste: #TaxedHabitation : quand la baisse est « en même temps » une hausse ! : retrouvez le communiqué de @faureolivier @Vale…', '213754264', '2018-05-15 17:30:35'),
('995000399546470400', '2018-05-11 17:59:16', 'RT @fmcailleau: #RT @fede_PS29: RT @BorisVallaud: « Les salariés de l’UE ne peuvent plus continuer à être exclus de la construction europée…', '213754264', '2018-05-15 17:30:35'),
('995017706624749569', '2018-05-11 19:08:02', 'RT @HAC_Foot: BUUUUUUUUUUUUUUUUUUUUUUUUUUUUUT de JP Mateta  sur une passe de Fontaine ! Son 17ème but de la saison ! 2-0 au @StadeOceane #H…', '1110890216', '2018-05-15 17:30:35'),
('995209469951913985', '2018-05-12 07:50:02', 'RT @France2_Presse: #LEmissionPolitique, en direct @france2tv jeudi 17 mai à 20h55  \"Macron, An 1 : le verdict\", présentée par @LeaSalame,…', '213754264', '2018-05-15 17:30:35'),
('995249328250937346', '2018-05-12 10:28:25', 'La semaine où le monde est mon village - Nouvelle note de blog à découvrir https://t.co/unmKrnEU0D', '80820758', '2018-05-15 17:30:36'),
('995399511412563970', '2018-05-12 20:25:11', 'Pensées émues pour les proches et les familles. Hommage au sang-froid des forces de l’ordre. L’horreur frappe une n… https://t.co/yLzjvEJJep', '213754264', '2018-05-15 17:30:35'),
('995407406053150726', '2018-05-12 20:56:34', 'RT @gerardcollomb: Agression à #Paris : je salue le sang froid et la réactivité des forces de police qui ont neutralisé l’assaillant.\nMes p…', '1110890216', '2018-05-15 17:30:35'),
('995423710088761344', '2018-05-12 22:01:21', 'Toutes mes pensées vont aux victimes et aux blessés de l’attaque au couteau perpétrée ce soir à Paris, ainsi qu’à l… https://t.co/9wIMmPGNS7', '1976143068', '2018-05-15 17:30:34'),
('995423712764727297', '2018-05-12 22:01:21', 'La France paye une nouvelle fois le prix du sang mais ne cède pas un pouce aux ennemis de la liberté (2/2).', '1976143068', '2018-05-15 17:30:34'),
('995430983531945985', '2018-05-12 22:30:15', 'RT @EmmanuelMacron: Toutes mes pensées vont aux victimes et aux blessés de l’attaque au couteau perpétrée ce soir à Paris, ainsi qu’à leurs…', '1110890216', '2018-05-15 17:30:35'),
('995430988711890945', '2018-05-12 22:30:16', 'RT @EmmanuelMacron: La France paye une nouvelle fois le prix du sang mais ne cède pas un pouce aux ennemis de la liberté (2/2).', '1110890216', '2018-05-15 17:30:35'),
('995431732764643329', '2018-05-12 22:33:13', '#Paris : hommage à nos forces de l’ordre et pensées aux victimes et à leurs proches. Une fois encore, la barbarie i… https://t.co/sNe46YjkJ7', '19438626', '2018-05-15 17:30:36'),
('995442346685816837', '2018-05-12 23:15:24', 'Attaque à Opéra : Le bilan est lourd et je veux exprimer à la famille de la victime et des blessés mes pensées les plus sincères. (1/3)', '1110890216', '2018-05-15 17:30:35'),
('995442714538803205', '2018-05-12 23:16:52', 'Dans les 9 minutes après le premier appel, l’assaillant était neutralisé. Nos forces de police ont encore une fois… https://t.co/ctfaD14m2Q', '1110890216', '2018-05-15 17:30:35'),
('995443099949240322', '2018-05-12 23:18:24', 'La France est absolument déterminée à ne céder en rien aux menaces que les assaillants veulent faire peser sur elle. (3/3)', '1110890216', '2018-05-15 17:30:35'),
('995550616784195585', '2018-05-13 06:25:38', 'Quel genre de guerre prétendent-ils mener avec un misérable assassin qui frappe par surprise des gens sans défense… https://t.co/QDCDUazERk', '80820758', '2018-05-15 17:30:36'),
('995568641239330816', '2018-05-13 07:37:15', '#Mercy la vraie victoire c’est celle de la vie. La tienne, et celle de tous ceux que nous parviendrons à sauver par… https://t.co/A1O8m5zGYM', '213754264', '2018-05-15 17:30:35'),
('995575809682309120', '2018-05-13 08:05:44', '40 000 vues en 24H sur le vlog qui revient en détail sur le déplacement à #Moscou. https://t.co/eTp871SjhS', '80820758', '2018-05-15 17:30:36'),
('995614053941829632', '2018-05-13 10:37:42', 'Soutien aux salariés de Mc Do en lutte pour leurs droits à Paris et à Marseille. https://t.co/0s43nbo6X2', '80820758', '2018-05-15 17:30:36'),
('995630871771262978', '2018-05-13 11:44:32', 'Avec les salariés de Mc Donald\'s en lutte pour leurs droits. https://t.co/8n1mJtLnYM', '80820758', '2018-05-15 17:30:36'),
('995631462887186438', '2018-05-13 11:46:53', 'Nous exigeons que le Président de la République et le gouvernement mettent enfin en place l\'ensemble des mesures qu… https://t.co/pF39lc4ZSk', '19438626', '2018-05-15 17:30:36'),
('995640270560661510', '2018-05-13 12:21:53', 'RT @PotierDominique: Cinq réformes pour un nouveau modèle européen de l\'entreprise: rejoignez les 450 premiers signataires de notre tribune…', '213754264', '2018-05-15 17:30:35'),
('995648772913975297', '2018-05-13 12:55:40', 'A chaque acte terroriste Daech met à l’épreuve notre capacité à répondre dans l’unité et la fidélité aux principes… https://t.co/atwLKkwsbb', '213754264', '2018-05-15 17:30:35'),
('995907115683282944', '2018-05-14 06:02:14', '\"Il faut judiciariser les Français radicalisés, et évidemment expulser manu militari les étrangers radicalisés. Les… https://t.co/S0mY5Anghr', '217749896', '2018-05-15 17:30:36'),
('995907666567450624', '2018-05-14 06:04:25', '\"Nous devons considérer que nous sommes victimes d\'une guerre ! Et lorsqu\'il y a la guerre, on met en place des pro… https://t.co/ssHt5ECM8B', '217749896', '2018-05-15 17:30:36'),
('995908235407298560', '2018-05-14 06:06:41', '\"La loi sur le Renseignement ne contient rien, c\'est un vide absolu, c\'est uniquement un acte de communication. Ell… https://t.co/VCdCzogR5s', '217749896', '2018-05-15 17:30:36'),
('995908760907501568', '2018-05-14 06:08:46', '\"Rien n\'a changé dans nos critères d\'asile ou de naturalisation... On se retrouve avec des radicalisés qui ont obte… https://t.co/ezFKnZg4XQ', '217749896', '2018-05-15 17:30:36'),
('995909112931155968', '2018-05-14 06:10:10', '\"Il faut d\'urgence maîtriser nos frontières. Pour nous protéger, on ne peut pas faire confiance à l\'Union européenn… https://t.co/WK3KCBb5DX', '217749896', '2018-05-15 17:30:36'),
('995909656047505408', '2018-05-14 06:12:19', '\"On sait pertinemment que nous allons être confrontés aux revenants de  Daech, dont un certain nombre se cachent da… https://t.co/UuCwJZSvV0', '217749896', '2018-05-15 17:30:36'),
('995910089872674817', '2018-05-14 06:14:03', '\"Pour une sécurité supplémentaire dans un niveau d\'alerte maximum, il faut que chaque pays puisse à nouveau, dans l… https://t.co/c5tqj65lXg', '217749896', '2018-05-15 17:30:36'),
('995970645782597632', '2018-05-14 10:14:40', 'Ce que j\'allais faire en Russie. https://t.co/dB3rUYa2mk', '80820758', '2018-05-15 17:30:36'),
('996008688841261056', '2018-05-14 12:45:51', 'Je demande au président de la République de réunir l\'ensemble des chefs de parti pour échanger sur les mesures effi… https://t.co/erMsUyLRsK', '19438626', '2018-05-15 17:30:36'),
('996021657293737984', '2018-05-14 13:37:22', 'La France doit condamner les massacres à #Gaza. L\'ambassadeur d\'Israël à Paris doit être convoqué à l\'Élysée pour s… https://t.co/f9mEXuAnai', '80820758', '2018-05-15 17:30:36'),
('996060892109426689', '2018-05-14 16:13:17', 'Une fois de plus @realDonaldTrump fait la démonstration que s’il n’est pas une solution il peut être un problème. 1… https://t.co/hrn4PI5y81', '213754264', '2018-05-15 17:30:35'),
('996061450866130946', '2018-05-14 16:15:30', 'Le PS condamne la répression violente &amp; disproportionnée à Gaza ayant conduit à de nombreux morts et blessés parmi… https://t.co/UXMCK7UyHB', '213754264', '2018-05-15 17:30:35'),
('996103394011041792', '2018-05-14 19:02:10', 'RT @rosesarkissian: .@AzzazNadege nouvelle présidente du @EnsembleIDF. Bravo à elle ! \nMerci à @Da_Silva_Carlos pour son travail et son eng…', '213754264', '2018-05-15 17:30:35'),
('996280588771495936', '2018-05-15 06:46:17', 'Je viens de la droite. Mais un an après mon arrivée à Matignon, je ne me pose plus cette question, et les Français… https://t.co/1vSTxM0Ebs', '1110890216', '2018-05-15 17:30:35'),
('996314689167556608', '2018-05-15 09:01:47', 'En conférence des présidents #AN @Valerie_Rabault a ce matin confirmé notre demande de commission d’enquête sur les… https://t.co/Zja6pHHkD4', '213754264', '2018-05-15 17:30:35'),
('996320217927217153', '2018-05-15 09:23:45', 'Je suis allé ce matin à la rencontre des associations à l\'origine de l\'interpellation légitime #LeViolEstunCrime. L… https://t.co/gHWS6HDHwe', '213754264', '2018-05-15 17:30:35'),
('996342139272486912', '2018-05-15 10:50:51', '@f_personne @MarleneSchiappa Ce n\'est pas ce que j\'ai écrit. Il suffit de me lire.', '213754264', '2018-05-15 17:30:35'),
('996342314346909696', '2018-05-15 10:51:33', 'Merci à vous https://t.co/08XrwTpFSc', '213754264', '2018-05-15 17:30:35'),
('996344192967245826', '2018-05-15 10:59:01', 'Retrouvez mon entretien @lemondefr : https://t.co/A3uRGHQWRN #1andaction https://t.co/xr9XmhZJnh', '1110890216', '2018-05-15 17:30:35'),
('996344202005970944', '2018-05-15 10:59:03', 'RT @Asso_AIVI: Un grand merci au député @faureolivier qui a pris le temps de venir dialoguer avec les militant(e)s et s\'est montré très réc…', '213754264', '2018-05-15 17:30:35'),
('996372718919520256', '2018-05-15 12:52:22', '« Trump a pris une responsabilité en allumant une allumette près d’une station-essence, c’est-à-dire en prenant deu… https://t.co/rRcVTQnAo6', '217749896', '2018-05-15 17:30:36'),
('996372918107082752', '2018-05-15 12:53:10', '« Israël a envoyé un message clair sur l’inviolabilité de sa frontière : on peut le juger excessivement, inutilemen… https://t.co/XQ81y251B8', '217749896', '2018-05-15 17:30:36'),
('996373133593636864', '2018-05-15 12:54:01', '« #Macron n’apparaît plus comme un interlocuteur qui privilégie l’équilibre. Il a suivi les Américains sur la Syrie… https://t.co/PMuhhznrbD', '217749896', '2018-05-15 17:30:36'),
('996373268813832192', '2018-05-15 12:54:33', '« Il faut une enquête indépendante sur ce qui s’est passé entre Israël et #Gaza. » @LCP #QAG #DirectAN', '217749896', '2018-05-15 17:30:36'),
('996373471654563840', '2018-05-15 12:55:22', '« Le Premier Ministre s’agace parce qu’on lui dit que sa politique ne permet pas de protéger les Français ! » @LCP #QAG #DirectAN', '217749896', '2018-05-15 17:30:36'),
('996373993467928576', '2018-05-15 12:57:26', '« Le gouvernement joue à la roulette russe avec les fichés S. Aujourd’hui, ces fiches S ne servent plus à rien parc… https://t.co/zR9MD5pRAL', '217749896', '2018-05-15 17:30:36'),
('996374153845444614', '2018-05-15 12:58:04', '« On doit appliquer le principe de précaution et expulser les fichés S étrangers. » @LCP #QAG #DirectAN', '217749896', '2018-05-15 17:30:36'),
('996374308657254400', '2018-05-15 12:58:41', '« L’islamisme est une idéologie mortifère qu’il faut neutraliser. » @LCP #QAG #DirectAN', '217749896', '2018-05-15 17:30:36'),
('996374658764234752', '2018-05-15 13:00:05', '« Macron veut assouplir les règles de la laïcité : cela permettra au fondamentalisme islamiste de prendre sa place,… https://t.co/pPSYTQHdiS', '217749896', '2018-05-15 17:30:36'),
('996375014562770945', '2018-05-15 13:01:29', '« Le meilleur hommage que l’on puisse rendre aux victimes des attentats islamistes, c’est de prendre les décisions… https://t.co/YWSDxt3RxE', '217749896', '2018-05-15 17:30:36'),
('996388267229696007', '2018-05-15 13:54:09', 'Mais quand un député de la nation intervient pour empêcher des étudiants de passer des examens, je trouve ça lament… https://t.co/CAZo4ay1Bo', '1110890216', '2018-05-15 17:30:35'),
('996399788852678656', '2018-05-15 14:39:56', 'Fermeture arbitraire de la page Facebook de Génération Identitaire : j\'interpelle M. le Premier Ministre sur le com… https://t.co/QrczAcSIwO', '217749896', '2018-05-15 17:30:36'),
('996422229687717890', '2018-05-15 16:09:06', 'En hommage à la victime et aux blessés de l’attentat terroriste de samedi dernier à Paris. #DirectSénat https://t.co/339e2bmjD7', '1110890216', '2018-05-15 18:09:37'),
('996433724718927872', '2018-05-15 16:54:47', '«Je vous informe que vous allez encore nous voir souvent, ceints de notre écharpe, participer à toutes sortes de lu… https://t.co/hsyXAPKasm', '80820758', '2018-05-15 22:11:30'),
('996437244490764289', '2018-05-15 17:08:46', 'Ce qui m’intéresse, c’est que les Français perçoivent que notre politique permet de réparer le pays, après des anné… https://t.co/W6XtxhT8nU', '1110890216', '2018-05-15 22:11:25'),
('996441791846141953', '2018-05-15 17:26:50', 'Les projets de croissance de Tecalemit Aerospace illustrent notre stratégie industrielle : faire émerger des champi… https://t.co/HXBayR6b8u', '19438626', '2018-05-15 22:11:28'),
('996442053050585089', '2018-05-15 17:27:53', 'Grâce à la réactivité et à l\'appui de la Région #AuvergneRhôneAlpes, Tecalemit va pouvoir se placer comme leader eu… https://t.co/FRA5wRfj4H', '19438626', '2018-05-15 22:11:28'),
('996442465933643776', '2018-05-15 17:29:31', 'Nous sommes fiers en #AuvergneRhôneAlpes d\'avoir des pépites comme Tecalemit grâce à qui nous sommes l\'une des 4 pl… https://t.co/McLH7iQ2JG', '19438626', '2018-05-15 22:11:28'),
('996506778430050306', '2018-05-15 21:45:04', 'En séance publique j\'ai défendu un amendement visant à réécrire l\'article 2 du projet de loi sur les… https://t.co/qU4hZURyUz', '213754264', '2018-05-18 13:40:03'),
('996739664919789569', '2018-05-16 13:10:29', 'Nous sommes déterminés à mener la lutte : pour la première fois, la France réunira en 2019 les acteurs engagés dans… https://t.co/SWXWOePJ8X', '1976143068', '2018-05-18 13:40:01'),
('996744316776304642', '2018-05-16 13:28:58', 'We are determined to lead the fight: in 2019, France will bring together players in the fight against AIDS, TB and… https://t.co/xjpAIFqhU0', '1976143068', '2018-05-18 13:40:01'),
('996829821744439298', '2018-05-16 19:08:44', 'Exceptionnellement ce soir le drapeau français est bleu et blanc ! Tous avec Marseille ! #OMAtletico', '213754264', '2018-05-18 13:40:03'),
('996854683619790848', '2018-05-16 20:47:31', 'RT @partisocialiste: Réaction du Parti socialiste à la crise environnementale et sanitaire des « sargasses » : retrouvez le communiqué de @…', '213754264', '2018-05-18 13:40:03'),
('996859058505347072', '2018-05-16 21:04:54', 'RT @UNICEF_france: L’@UNICEF_france déplore le vote de l’article 2 du projet de loi #Schiappa par l’@AssembleeNat. Tout viol commis sur un…', '213754264', '2018-05-18 13:40:03'),
('996873522956963842', '2018-05-16 22:02:23', 'RT @BorisVallaud: Quand on a des services publics dans de telles difficultés mais qu’on préfère consacrer les moyens à un hypothétique ruis…', '213754264', '2018-05-18 13:40:03'),
('997003027826532352', '2018-05-17 06:36:59', 'Après #1andaction, tous les ministres seront ce soir en réunion publique à travers la France pour échanger directem… https://t.co/bGBjhuqM09', '1110890216', '2018-05-18 13:40:02'),
('997018412680441856', '2018-05-17 07:38:07', 'Quand des défis menacent de déstabiliser le monde, la seule solution : combiner nos forces pour y répondre d\'une mê… https://t.co/MbfNTSfAJC', '1976143068', '2018-05-18 13:40:01'),
('997026903365169152', '2018-05-17 08:11:52', 'Le sujet du jour : développer les partenariats avec les Balkans, pour garantir notre sécurité commune. Quelques ins… https://t.co/XmXpt0vBRa', '1976143068', '2018-05-18 13:40:01'),
('997042056454463488', '2018-05-17 09:12:05', 'Visite de l\'EHPAD de Vic-sur-Seille. La situation dans nos maisons de retraite s\'est considérablement dégradée : ma… https://t.co/nOUjxoVdlI', '19438626', '2018-05-18 13:40:04'),
('997042760476639232', '2018-05-17 09:14:52', 'À travers ce déplacement en #Moselle, j\'ai voulu lancer un cri d\'alerte sur la situation de nos aînés. On ne donne… https://t.co/0snoNlSFVB', '19438626', '2018-05-18 13:40:04'),
('997043069076766720', '2018-05-17 09:16:06', 'Partout dans le monde des gays, lesbiennes, bisexuels et personnes trans sont discriminés, victimes de violence, vo… https://t.co/RFRmRBAWL2', '1976143068', '2018-05-18 13:40:01'),
('997086774395654144', '2018-05-17 12:09:46', 'Across the world, lesbian, gay, bisexual and trans people are victims of discrimination and violence, and even sent… https://t.co/x56qvH0mcI', '1976143068', '2018-05-18 13:40:01'),
('997095242452086784', '2018-05-17 12:43:25', 'Première année du gouvernement : je serai ce soir sur @France3tv. #JT1920 #1andaction https://t.co/WNUgAXewz7', '1110890216', '2018-05-18 13:40:02'),
('997112765654491136', '2018-05-17 13:53:03', 'LIVE | Conférence de presse à Sofia. #EUWesternBalkansSummit\nhttps://t.co/ZMZCh86AQ7', '1976143068', '2018-05-18 13:40:01'),
('997129699208978434', '2018-05-17 15:00:20', 'Les Balkans occidentaux font l\'objet de multiples pressions. Notre intérêt comme notre responsabilité : ancrer les… https://t.co/YcmNsDssfw', '1976143068', '2018-05-18 13:40:01'),
('997130091762249730', '2018-05-17 15:01:54', 'Si nous voulons avoir une Union européenne plus forte il nous faut la réformer avant de l\'élargir.', '1976143068', '2018-05-18 13:40:01'),
('997131198492303361', '2018-05-17 15:06:18', 'L\'accord de 2015 sur le nucléaire iranien est un bon accord. Cet accord peut être complété, pour tenir compte des p… https://t.co/TZbXszSOoH', '1976143068', '2018-05-18 13:40:01'),
('997134512512536576', '2018-05-17 15:19:28', 'L\'Histoire est revenue et le temps des décisions est là. #EUWesternBalkansSummit https://t.co/EGF0a1tOjQ', '1976143068', '2018-05-18 13:40:01'),
('997135111148666882', '2018-05-17 15:21:51', 'Soyons pragmatiques : nous connaîtrons encore des périodes de tensions, mais il faut continuer, sans relâche, à con… https://t.co/00M8SLfQv2', '1976143068', '2018-05-18 13:40:01'),
('997142976756412416', '2018-05-17 15:53:06', 'RT @partisocialiste: ', '213754264', '2018-05-18 13:40:03'),
('997165509148803072', '2018-05-17 17:22:38', 'La région #AuvergneRhôneAlpes accueillera les championnats du monde de ski en 2023 à Courchevel et Meribel. Bravo a… https://t.co/utGEKha1wf', '19438626', '2018-05-18 13:40:04'),
('997173334516424706', '2018-05-17 17:53:44', 'RT @FedFranceSki: La FFS et les stations Olympiques de @courchevel et de @Meribel3vallees ont le plaisir d’annoncer que la FRANCE vient d’ê…', '1976143068', '2018-05-18 13:40:01'),
('997193031223783425', '2018-05-17 19:12:00', 'La semaine dernière, j\'étais en Russie, à la chambre de commerce. Et dans la discussion avec les dirigeants de gran… https://t.co/OMG3Ob4eMx', '80820758', '2018-05-18 13:40:04'),
('997193215131471873', '2018-05-17 19:12:44', 'Le patron d\'#AirFrance a inventé pour son compte le référendum révocatoire que nous voulons mettre en place dans to… https://t.co/H8SlfKMhzY', '80820758', '2018-05-18 13:40:04'),
('997193359671398400', '2018-05-17 19:13:18', 'Le seul souverain c\'est le peuple. #LEmissionPolitique #France2 https://t.co/fzCO3GLGse', '80820758', '2018-05-18 13:40:04'),
('997193499769556992', '2018-05-17 19:13:51', 'La concurrence dans le rail n\'a jamais fonctionné nulle part. C\'est le monopole public qui fonctionne. #LEmissionPolitique #France2', '80820758', '2018-05-18 13:40:04'),
('997194074389188609', '2018-05-17 19:16:08', '17 réacteurs nucléaires arrivent en fin de vie à la fin de ce mandat. On va pourtant continuer avec le grand caréna… https://t.co/gGIMINrQhU', '80820758', '2018-05-18 13:40:04'),
('997194271441682432', '2018-05-17 19:16:55', 'Quelqu\'un qui applique le #CETA n\'est pas un écologiste. Monsieur #Macron est un écologiste de comédie. #LEmissionPolitique #France2', '80820758', '2018-05-18 13:40:04'),
('997194413901340672', '2018-05-17 19:17:29', 'L\'amendement de la @FranceInsoumise pour interdire le #glyphosate a été refusé. #LEmissionPolitique #France2 https://t.co/SHuIlHZ1NL', '80820758', '2018-05-18 13:40:04'),
('997194616825884672', '2018-05-17 19:18:18', 'Rappel - Le #CETA : Dangereux pour la démocratie et l\'environnement. #LEmissionPolitique #France2 https://t.co/BLbHtAIxzS', '80820758', '2018-05-18 13:40:04'),
('997194906530705410', '2018-05-17 19:19:27', 'Je dis aux gens ce que je crois. La vérité met parfois en colère. Ça me met en colère de voir que des gens ont tell… https://t.co/WZFHBYjOiO', '80820758', '2018-05-18 13:40:04'),
('997195264053170176', '2018-05-17 19:20:52', 'Le monde est au bord d\'une guerre généralisée. La paix est une construction politique. Pour la faire, il faut être… https://t.co/SyB0HgPuGn', '80820758', '2018-05-18 13:40:04'),
('997197101506420737', '2018-05-17 19:28:10', 'Cette année s\'ouvre pour les familles et les classes moyennes plus particulièrement par une baisse du pouvoir d\'ach… https://t.co/ELlcJ1gCtX', '19438626', '2018-05-18 13:40:04'),
('997198177450299393', '2018-05-17 19:32:27', 'Les Français ne sont pas protégés, pas parce qu\'on ne peut pas mais parce qu\'on ne veut pas. Je demande des mesures… https://t.co/O2Kjivqj0m', '19438626', '2018-05-18 13:40:04'),
('997198253652312069', '2018-05-17 19:32:45', 'Je ne peux pas accepter la même scénographie après chaque attentat sans que rien ne change. Il y a des mesures qui… https://t.co/Gt3ggbzzxY', '19438626', '2018-05-18 13:40:04'),
('997199146443517953', '2018-05-17 19:36:18', 'Ma conception de la droite, ce n\'est pas le ruissellement : on ne peut pas oublier les classes moyennes. Je défends… https://t.co/yMrD2YPakc', '19438626', '2018-05-18 13:40:04'),
('997199208800227328', '2018-05-17 19:36:33', 'On n\'est pas de droite quand on augmente les impôts. On n\'est pas de droite quand on ne baisse pas la dépense publi… https://t.co/XHirANUa9o', '19438626', '2018-05-18 13:40:04'),
('997199261262598144', '2018-05-17 19:36:45', 'Il y a une France qui se sent aujourd\'hui abandonnée et qui a le sentiment que la politique qui est menée est faite… https://t.co/eyCqTBkgGo', '19438626', '2018-05-18 13:40:04'),
('997199544638234625', '2018-05-17 19:37:53', 'Rendez-vous le #26mai pour des marées populaires partout en France. #LEmissionPolitique #France2… https://t.co/2xAaPzPOGh', '80820758', '2018-05-18 13:40:04'),
('997200625984208897', '2018-05-17 19:42:10', 'Emmanuel #Macron est le président des riches. Mais le monarque républicain n\'a pas un sceptre, il a une paire de ci… https://t.co/eTOnKcjkv0', '80820758', '2018-05-18 13:40:04'),
('997201428396609536', '2018-05-17 19:45:22', 'J\'entends un président de la République qui parle de start-up nation et des premiers de cordée. On passe aujourd\'hu… https://t.co/bx0C9hUrBI', '19438626', '2018-05-18 13:40:04'),
('997201496830816256', '2018-05-17 19:45:38', 'Je crois que le travail, la méritocratie, l\'intégration et l\'amour de France sont des valeurs fondatrices. La Franc… https://t.co/M6Hx5iTSeA', '19438626', '2018-05-18 13:40:04'),
('997204347875414021', '2018-05-17 19:56:58', 'Pourquoi quand nous avons proposé l\'incessibilité des capitaux de la #SNCF à l\'Assemblée nationale, elle a été refu… https://t.co/vre9Z9SjfO', '80820758', '2018-05-18 13:40:04'),
('997204503224111104', '2018-05-17 19:57:35', 'Vous faites erreur. On parle sur les 6 derniers mois pour les 13 ultrariches. Donc il faut aussi compter sur 6 mois… https://t.co/PRvdyXd67l', '80820758', '2018-05-18 13:40:04'),
('997204631603343360', '2018-05-17 19:58:05', '@LEPolitique Vous faites erreur. On parle sur les 6 derniers mois pour les 13  ultrariches. Donc il faut aussi comp… https://t.co/5CUecHNcEQ', '80820758', '2018-05-18 13:40:04'),
('997206107281117184', '2018-05-17 20:03:57', 'La #paix est en danger en Europe. #LEmissionPolitique #France2 https://t.co/D8ubynVQli', '80820758', '2018-05-18 13:40:04'),
('997209948269481984', '2018-05-17 20:19:13', 'Bonne nouvelle ! Olivier Faure fait sienne une proposition phare de « L\'Avenir en commun » : l\'impôt universel.… https://t.co/VauozYtky5', '80820758', '2018-05-18 13:40:04'),
('997211675454574593', '2018-05-17 20:26:05', '\"La diplomatie floue de la France entraîne un danger pour nos entreprises comme pour nos concitoyens. Nous n\'avons… https://t.co/PKs15Go312', '217749896', '2018-05-18 13:40:05'),
('997211909366657025', '2018-05-17 20:27:01', '\"Nous allons subir les conséquences de l’extraterritorialité du droit américain, qui est un scandale ! Il faut une… https://t.co/lsC33bZpp6', '217749896', '2018-05-18 13:40:05'),
('997212060110000128', '2018-05-17 20:27:37', '\"L\'extraterritorialité du droit américain permet de sanctionner des entreprises, souvent européennes, qui sont - co… https://t.co/KkBedypH5n', '217749896', '2018-05-18 13:40:05'),
('997212185951600640', '2018-05-17 20:28:07', 'Tout le monde doit comprendre que la #paix doit être un objectif et qu\'elle est une construction politique. La Fran… https://t.co/8LII97T56N', '80820758', '2018-05-18 13:40:04'),
('997212369565769731', '2018-05-17 20:28:50', '\"Le gouvernement aggrave le phénomène d\'immigration, en autorisant les \"mineurs #migrants\" à faire venir leur famil… https://t.co/g7RT41WW1H', '217749896', '2018-05-18 13:40:05'),
('997212665692000257', '2018-05-17 20:30:01', '\"Les mesures que nous devons prendre, c\'est de réformer le droit d\'asile, d\'obliger les demandeurs d\'asiles à dépos… https://t.co/FNorVkJNwJ', '217749896', '2018-05-18 13:40:05'),
('997212791395311616', '2018-05-17 20:30:31', '\"Il faut arrêter l\'immigration. On est à saturation totale. 500 000 clandestins se maintiennent sur le territoire,… https://t.co/voxpgSQPqg', '217749896', '2018-05-18 13:40:05'),
('997212879471431680', '2018-05-17 20:30:52', '\"Il faut supprimer le droit du sol, qui est trop attractif pour l\'immigration.\" #LÉmissionPolitique', '217749896', '2018-05-18 13:40:05'),
('997213271190065153', '2018-05-17 20:32:25', '\"\"Le réel, c\'est quand se cogne\", comme disait Lacan. La France s\'est cognée à l\'échec de sa politique d\'immigratio… https://t.co/zuGYDe12Kl', '217749896', '2018-05-18 13:40:05'),
('997213613357191168', '2018-05-17 20:33:47', '\"En France, il faut que l\'on adopte l\'intégralité des mœurs, des codes, de l\'histoire de France, que l\'on adopte sa… https://t.co/wVjfMsQIXP', '217749896', '2018-05-18 13:40:05'),
('997214000382398464', '2018-05-17 20:35:19', '\"Il y a, en Europe, des gens qui arrivent au pouvoir et qui portent les mêmes exigences, les mêmes rêves que nous,… https://t.co/wZwENT1XVg', '217749896', '2018-05-18 13:40:05'),
('997214180661972993', '2018-05-17 20:36:02', '\"Il peut y avoir demain une majorité d\'eurosceptiques au Parlement européen ! Et ça fait peur à la Commission europ… https://t.co/JWHXYs6P95', '217749896', '2018-05-18 13:40:05'),
('997214446044041216', '2018-05-17 20:37:05', '\"Je reste un défenseur absolu de la souveraineté du peuple français et de l\'indépendance de la France. Je veux une… https://t.co/Q4CLGgyNzs', '217749896', '2018-05-18 13:40:05'),
('997214532044034049', '2018-05-17 20:37:26', '\"L\'urgence, c\'est de retrouver nos frontières nationales. C\'est la première souveraineté à recouvrer.\" #LÉmissionPolitique', '217749896', '2018-05-18 13:40:05'),
('997215016418988034', '2018-05-17 20:39:21', '\"Tous les voyants sont au rouge. Le chômage augmente de 63 000 chômeurs, toutes catégories confondues. Le déficit e… https://t.co/ZsVjkBfefE', '217749896', '2018-05-18 13:40:05'),
('997215162468917250', '2018-05-17 20:39:56', '\"Le modèle économique mondialisé est en cause. Avec ce modèle, on va à la ruine. Il y a un autre modèle, fondé sur… https://t.co/Sd0ArRY3Fk', '217749896', '2018-05-18 13:40:05'),
('997215231288979462', '2018-05-17 20:40:13', '\"Il faut baisser l\'impôt sur les revenus pour les classes moyennes et les classes populaires, et défiscaliser les h… https://t.co/5Gq2I4dqbW', '217749896', '2018-05-18 13:40:05'),
('997215551721299968', '2018-05-17 20:41:29', '\"\"Je ne perds jamais : je gagne ou j\'apprends\". J\'aime cette phrase de Mandela. J\'ai appris de ce qu\'il s\'est passé… https://t.co/JNp3jkWbXx', '217749896', '2018-05-18 13:40:05'),
('997226114450952198', '2018-05-17 21:23:27', '« Il faut arrêter l\'immigration, on est à saturation totale. Il y a 500 000 clandestins qui se maintiennent sur le… https://t.co/2oNuC6lsMN', '217749896', '2018-05-18 13:40:05'),
('997235878148919304', '2018-05-17 22:02:15', '« Il y a un autre modèle possible, fondé sur le patriotisme économique, sur la régulation d\'une concurrence interna… https://t.co/LMfM1nwE6x', '217749896', '2018-05-18 13:40:05'),
('997238936308273154', '2018-05-17 22:14:24', 'Dans #LEmissionPolitique : \n Qui a été le plus convaincant ? Jean-Luc Mélenchon en tête avec 47 %.\n Qui incarne l… https://t.co/xugAa0CRSe', '80820758', '2018-05-18 13:40:04'),
('997254883773419521', '2018-05-17 23:17:47', 'RT @_LICRA_: &gt; @TwitterFrance, sponsor quasi officiel de l’antisémite Jérome Bourbon. Depuis 1112 jours, il vomit son obsession des Juifs e…', '213754264', '2018-05-18 13:40:03'),
('997387914014322688', '2018-05-18 08:06:23', 'J\'étais hier l\'invité de #LEmissionPolitique. https://t.co/QMUOMKjxaD', '80820758', '2018-05-18 13:40:04'),
('997399610137116672', '2018-05-18 08:52:52', 'RT @annelauremondon: L’objet de @faureolivier : une balance. « Nous avons le Président des « en même temps », mais les plateaux de la balan…', '213754264', '2018-05-18 13:40:03'),
('997454668660912130', '2018-05-18 12:31:39', 'Arrivée au Congrès du Centre des jeunes dirigeants d’entreprise. #CongrèsCJD https://t.co/0B1HpNxnzv', '1110890216', '2018-05-18 18:31:40'),
('997455465331249152', '2018-05-18 12:34:49', 'Aujourd\'hui, Emmanuel Macron prend dans la poche des Français car il n\'y a pas d\'économie sur la dépense publique.… https://t.co/t81VVDXoNV', '19438626', '2018-05-18 18:31:41'),
('997455880840011777', '2018-05-18 12:36:28', 'Il y a une France qui se sent aujourd\'hui abandonnée et qui a le sentiment que la politique qui est menée est faite… https://t.co/wnFcS7j3as', '19438626', '2018-05-18 18:31:41'),
('997456759076851713', '2018-05-18 12:39:57', 'RT @gouvernementFR: ', '1110890216', '2018-05-18 18:31:40'),
('997456763300478976', '2018-05-18 12:39:58', 'Les Français ne sont pas protégés, pas parce qu\'on ne peut pas mais parce qu\'on ne veut pas. Je ne peux pas accepte… https://t.co/3FlrwKJvEa', '19438626', '2018-05-18 18:31:41'),
('997457166582894593', '2018-05-18 12:41:35', 'La France a besoin de retrouver ses fondations. Aujourd’hui, on nous explique que la modernité, c’est d’y renoncer.… https://t.co/XryEjEvw37', '19438626', '2018-05-18 18:31:41'),
('997464535110963200', '2018-05-18 13:10:51', 'Pour mieux associer les salariés aux résultats et à la marche de leur entreprise, nous allons supprimer les charges… https://t.co/ezumBSRP7f', '1110890216', '2018-05-18 18:31:40'),
('997466134185168896', '2018-05-18 13:17:13', 'Je ne connais pas d’actionnaire plus stable, plus fidèle et plus soucieux du long terme, que celui qui travaille da… https://t.co/CdwTi39QG2', '1110890216', '2018-05-18 18:31:40'),
('997467214935621633', '2018-05-18 13:21:30', 'Pour diffuser plus largement l’actionnariat-salarié, nous allons diviser par 2 le taux de forfait social qui s’appl… https://t.co/ke1OgkLoBh', '1110890216', '2018-05-18 18:31:40'),
('997468796775555073', '2018-05-18 13:27:47', 'Dans le code civil, nous allons introduire noir sur blanc la considération des enjeux sociétaux et environnementaux… https://t.co/kBPXwom51G', '1110890216', '2018-05-18 18:31:40'),
('997469679290585088', '2018-05-18 13:31:18', 'Enraciner l’entreprise dans la société, c’est aussi lui faire partager ses combats : l’égalité femme-homme, l’inser… https://t.co/kolwCPTDkz', '1110890216', '2018-05-18 18:31:40'),
('997470110452469760', '2018-05-18 13:33:01', 'Nous voulons résorber d’ici 3 ans l’écart salarial qui existe entre les hommes et les femmes pour des postes équiva… https://t.co/nFTnz5n1WV', '1110890216', '2018-05-18 18:31:40'),
('997476108202336256', '2018-05-18 13:56:51', 'https://t.co/OGsRhdjbZy https://t.co/FHEJqmIKbN', '80820758', '2018-05-18 18:31:41'),
('997476935780401152', '2018-05-18 14:00:08', 'The first electric @MercedesBenz made in France!\nThank you Dieter Zetsche for your commitment. Your choice of inves… https://t.co/7B8NCnxz6Y', '1976143068', '2018-05-18 18:31:39'),
('997498899651756034', '2018-05-18 15:27:24', 'Il y a des ballons d’essai qui vont toujours vers le même but ! https://t.co/4kqiW7DIHd', '213754264', '2018-05-18 18:31:40'),
('997505789232369665', '2018-05-18 15:54:47', 'Après avoir accordé des cadeaux fiscaux aux plus aisés, le gouvernement réfléchit à une casse sociale sans précéden… https://t.co/4bEIbaqtvG', '217749896', '2018-05-18 18:31:41'),
('997509108248039425', '2018-05-18 16:07:58', 'RT @cpiresbeaune: Réforme de la TH, retrouvez mon billet sur mon blog « y a pas d’argent magique : alors qui va payer la note ? ». @partiso…', '213754264', '2018-05-18 18:31:40'),
('997526831900299264', '2018-05-18 17:18:24', 'Le #26mai, la société toute entière doit pouvoir dire : « Stop, on ne veut plus de ça, on veut un autre monde». \n … https://t.co/USu2PaY0hz', '80820758', '2018-05-19 09:32:57'),
('997599030057357312', '2018-05-18 22:05:17', 'L’entreprise, c’est d’abord un lieu de vie. Un lieu de production certes, de revendication parfois, d’insertion, d’… https://t.co/ZWkJ0Phnp7', '1110890216', '2018-05-19 09:32:55'),
('997750412601122816', '2018-05-19 08:06:50', 'La #RDLS62 est en ligne ! \n\n https://t.co/B1q95l7Ago \n\nLes thèmes : \n Lutte contre l\'#homophobie et la… https://t.co/pWP3UsYtUu', '80820758', '2018-05-19 10:10:56');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `pseudo`) VALUES
('1976143068', 'Emmanuel Macron', 'emmanuelmacron'),
('1110890216', 'Edouard Philippe', 'ephilippepm'),
('213754264', 'Olivier Faure', 'faureolivier'),
('19438626', 'Laurent Wauquiez', 'laurentwauquiez'),
('80820758', 'Jean-Luc Mélenchon', 'jlmelenchon'),
('217749896', 'Marine Le Pen', 'mlp_officiel');

-- --------------------------------------------------------

--
-- Structure de la table `wordcloud`
--

DROP TABLE IF EXISTS `wordcloud`;
CREATE TABLE IF NOT EXISTS `wordcloud` (
  `id_user` int(55) NOT NULL,
  `word` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `wordcloud`
--

INSERT INTO `wordcloud` (`id_user`, `word`, `weight`) VALUES
(213754264, 'RT', 18),
(213754264, 'cdallonnes', 1),
(213754264, 'nous', 2),
(213754264, 'pour', 4),
(213754264, 'la', 14),
(213754264, 'de', 28),
(213754264, 'du', 6),
(213754264, 'les', 8),
(213754264, 'le', 9),
(213754264, 'avec', 3),
(213754264, 'à', 15),
(19438626, 'Les', 4),
(19438626, 'voient', 1),
(19438626, 'de', 32),
(19438626, 'plus', 2),
(19438626, 'en', 6),
(19438626, 'le', 10),
(19438626, 'La', 7),
(19438626, 'aujourd\'hui', 3),
(19438626, 'pour', 5),
(19438626, 'pas', 20),
(19438626, 'qui', 12),
(19438626, 'des', 17),
(19438626, 'à', 8),
(80820758, 'Le', 6),
(80820758, 'culte', 1),
(80820758, 'de', 33),
(80820758, 'la', 17),
(80820758, 'du', 5),
(80820758, 'président', 2),
(80820758, 'en', 22),
(80820758, 'France', 3),
(80820758, 'que', 7),
(80820758, 'est', 12),
(80820758, 'et', 10),
(80820758, 'un', 9),
(80820758, 'nous', 4),
(80820758, 'à', 15),
(217749896, 'Il', 13),
(217749896, 'faut', 11),
(217749896, 'judiciariser', 1),
(217749896, 'les', 18),
(217749896, 'Français', 2),
(217749896, 'radicalisés', 3),
(217749896, 'et', 7),
(217749896, 'que', 9),
(217749896, 'nous', 4),
(217749896, 'y', 6),
(217749896, 'a', 8),
(217749896, 'la', 12),
(217749896, 'on', 5),
(217749896, 'sur', 10),
(217749896, 'de', 25),
(1110890216, 'À', 1),
(1110890216, 'merci', 2),
(1110890216, 'la', 24),
(1110890216, 'et', 12),
(1110890216, 'des', 14),
(1110890216, 'de', 27),
(1110890216, 'les', 15),
(1110890216, 'pour', 4),
(1110890216, 'le', 10),
(1110890216, 'RT', 6),
(1110890216, 'une', 5),
(1110890216, 'l’esclavage', 3),
(1976143068, 'Une', 1),
(1976143068, 'nouvelle', 2),
(1976143068, 'pour', 5),
(1976143068, 'la', 13),
(1976143068, 'de', 16),
(1976143068, 'à', 6),
(1976143068, 'France', 4),
(1976143068, 'Europa', 7),
(1976143068, 'uns', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
