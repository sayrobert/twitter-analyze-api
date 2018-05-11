-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 11 mai 2018 à 17:45
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hashtags`
--

INSERT INTO `hashtags` (`id`, `id_tweet`, `content`, `date_ajout`) VALUES
(1, '993806519966863360', '8mai', '2018-05-08 15:01:33'),
(2, '993485573770924032', 'SNCF', '2018-05-08 15:01:36'),
(3, '992393928216317954', 'MatignonCher', '2018-05-08 15:01:36'),
(4, '993094148256354305', 'Questionspol', '2018-05-08 15:01:38'),
(5, '993093209470439424', 'Trump', '2018-05-08 15:01:38'),
(6, '993093209470439424', 'NRA', '2018-05-08 15:01:38'),
(7, '993092800576217088', 'ExitTax', '2018-05-08 15:01:38'),
(8, '992408627901280256', 'AuvergneRhÃ´neAlpes', '2018-05-08 15:01:39'),
(9, '993817872798543873', 'Moscou', '2018-05-08 15:01:41'),
(10, '993579873967988736', 'MacronLeDoc', '2018-05-08 15:01:41'),
(11, '993413071094865920', 'Russie', '2018-05-08 15:01:41'),
(12, '993087477425627136', 'LaFeteAMacron', '2018-05-08 15:01:41'),
(13, '992824606472982529', 'FeteAMacron', '2018-05-08 15:01:41'),
(14, '992824606472982529', 'StopMacron', '2018-05-08 15:01:41'),
(15, '992824606472982529', '5Mai', '2018-05-08 15:01:41'),
(16, '993816205755666432', 'Carvin', '2018-05-08 15:01:42'),
(17, '993542921667346434', 'EuropÃ©ennes2019', '2018-05-08 15:01:42'),
(18, '993542524559085569', 'RassemblementNational', '2018-05-08 15:01:42'),
(19, '993542410339782656', 'Macron', '2018-05-08 15:01:42'),
(20, '993802677489414150', '8mai', '2018-05-08 15:06:56'),
(21, '993481455996203009', 'SNCF', '2018-05-08 15:06:57'),
(22, '993480460608172032', 'SNCF', '2018-05-08 15:06:57'),
(23, '993478399933976577', 'SNCF', '2018-05-08 15:06:57'),
(24, '993476653438459904', 'SNCF', '2018-05-08 15:06:57'),
(25, '992135062262083584', 'MatignonCher', '2018-05-08 15:06:57'),
(26, '993093846329364480', 'Questionspol', '2018-05-08 15:06:59'),
(27, '993092763188105216', 'Trump', '2018-05-08 15:06:59'),
(28, '991951847849152513', 'ExitTax', '2018-05-08 15:07:00'),
(29, '993558235717226496', 'Moscou', '2018-05-08 15:07:02'),
(30, '992809131076710404', 'laFeteAMacron', '2018-05-08 15:07:02'),
(31, '992769623903883264', 'LaFeteAMacron', '2018-05-08 15:07:02'),
(32, '992755787989704705', 'FeteAMacron', '2018-05-08 15:07:02'),
(33, '993542787592282114', 'EuropÃ©ennes2019', '2018-05-08 15:07:03'),
(34, '993541361117822982', 'Macron', '2018-05-08 15:07:03'),
(35, '993540893205508100', 'Macron', '2018-05-08 15:07:03'),
(36, '993540692902318082', 'Macron', '2018-05-08 15:07:03'),
(37, '993540522835894272', 'Macron', '2018-05-08 15:07:03');

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
('989444773827268608', '2018-04-26 10:03:11', 'Aujourd\'hui nous avons voulu prendre une position commune avec l\'essentiel des dÃ©partements de notre rÃ©gion pour noâ€¦ https://t.co/zdx6wJMKU0', '19438626', '2018-05-08 15:01:39'),
('989445653989412865', '2018-04-26 10:06:41', 'Nous demandons au PR de revenir sur sa vision parisienne de notre pays et de rÃ©ellement agir pour la sÃ©curitÃ© des aâ€¦ https://t.co/BBJH6egA5B', '19438626', '2018-05-08 15:01:39'),
('989445910240350208', '2018-04-26 10:07:42', 'Depuis trop longtemps l\'Ã‰tat se retire de l\'investissement routier. Seule la sÃ©curisation des routes par l\'investisâ€¦ https://t.co/16eKEM8s9G', '19438626', '2018-05-08 15:01:39'),
('990951595197296640', '2018-04-30 13:50:45', 'Depuis trente ans, l\'immigration de masse que connaÃ®t la France a Ã©tÃ© prÃ©sentÃ©e comme un fait naturel, inÃ©luctable,â€¦ https://t.co/Udy0PstuBg', '19438626', '2018-05-08 15:01:39'),
('990951643796725761', '2018-04-30 13:50:57', 'Les FranÃ§ais voient tous les jours les consÃ©quences de cette immigration non maÃ®trisÃ©e. Leur a-t-on demandÃ© leur avâ€¦ https://t.co/ClvIx5tDy9', '19438626', '2018-05-08 15:01:39'),
('990951733705826304', '2018-04-30 13:51:18', 'Ne raisonnons plus en fonction dâ€™un cadre juridique gravÃ© dans le marbre. La France doit retrouver sa souverainetÃ©â€¦ https://t.co/fbzxK1iMCg', '19438626', '2018-05-08 15:01:39'),
('991030676639109125', '2018-04-30 19:05:00', 'Plus que quelques heures avant le dÃ©part de la Course du 1er mai. Toujours un plaisir de courir au cÅ“ur du Puy, deâ€¦ https://t.co/lt4QG8rPq9', '19438626', '2018-05-08 15:01:39'),
('991342231075377152', '2018-05-01 15:43:00', 'Terribles images aujourd\'hui pour notre pays. Faillite de lâ€™Ã‰tat rÃ©galien. Il est urgent de rÃ©tablir lâ€™autoritÃ© : sâ€¦ https://t.co/qSLJu8MayE', '19438626', '2018-05-08 15:01:39'),
('991770654490943493', '2018-05-02 20:05:24', 'RT @20Minutes: Laurent Wauquiez: Â«Il faut rendre la castration chimique obligatoire pour les violeursÂ» https://t.co/e1OP1Cxxqs https://t.coâ€¦', '19438626', '2018-05-08 15:01:39'),
('991951572677652481', '2018-05-03 08:04:19', 'Chaque annÃ©e, 62.000 femmes sont violÃ©es en France et un violeur sur vingt rÃ©cidive. On ne peut pas rester les brasâ€¦ https://t.co/ExIXj2MB3f', '19438626', '2018-05-08 15:01:39'),
('991951667682775040', '2018-05-03 08:04:41', 'Ce qui mâ€™importe, câ€™est la protection des victimes, pas les droits des violeurs. Aujourdâ€™hui, la castration chimiquâ€¦ https://t.co/LXfsRVjDvI', '19438626', '2018-05-08 15:01:39'),
('991951749727637510', '2018-05-03 08:05:01', 'On finit par se rÃ©signer Ã  lâ€™inacceptable. Câ€™est la mÃªme crise profonde de lâ€™autoritÃ© quâ€™illustrent les zadistes deâ€¦ https://t.co/IE3uAIbCqx', '19438626', '2018-05-08 15:01:39'),
('991951847849152513', '2018-05-03 08:05:24', '#ExitTax : avec Macron, câ€™est deux poids, deux mesures. Ce nâ€™est pas juste. 42 % des cadeaux fiscaux ont Ã©tÃ© faitsâ€¦ https://t.co/wtemDrgV5U', '19438626', '2018-05-08 15:01:39'),
('991951962013863936', '2018-05-03 08:05:51', 'Nous voulons remettre lâ€™Europe la tÃªte Ã  lâ€™endroit : arrÃªter lâ€™Ã©largissement qui nous a menÃ©s dans le mur. Il y a dâ€¦ https://t.co/bou0NNLjyV', '19438626', '2018-05-08 15:01:39'),
('992010602225852416', '2018-05-03 11:58:52', 'Lâ€™objectif : passer le plus vite possible du Â« labo Ã  la dÃ©mo Â», de lâ€™Ã©prouvette, de la molÃ©cule au prototype, puisâ€¦ https://t.co/DbXA4Rl69D', '1110890216', '2018-05-08 15:01:36'),
('992013193798144005', '2018-05-03 12:09:10', 'Les chercheurs seront accompagnÃ©s dans leur crÃ©ation dâ€™entreprise, quâ€™ils puissent prendre leur risque avec un maxiâ€¦ https://t.co/uxe3KhAyBW', '1110890216', '2018-05-08 15:01:36'),
('992054140657336325', '2018-05-03 14:51:53', 'Il ne faut pas opposer les territoires. Ma conviction : tout ne peut fonctionner que si on cherche les complÃ©mentarâ€¦ https://t.co/2bZE3S3x9h', '1110890216', '2018-05-08 15:01:36'),
('992056413953327105', '2018-05-03 15:00:55', 'RT @mounir: Â«Â De nâ€™importe oÃ¹ on peut sâ€™Ã©lancer vers le cielÂ Â». Notre ambition avec @EPhilippePM : permettre Ã  chacun, partout sur le terriâ€¦', '1110890216', '2018-05-08 15:01:36'),
('992105979499212801', '2018-05-03 18:17:52', 'La Region est aux cÃ´tÃ©s des industriels qui investissent et crÃ©ent des emplois sur les territoires enâ€¦ https://t.co/QAtbos9MJd', '19438626', '2018-05-08 15:01:39'),
('992135062262083584', '2018-05-03 20:13:26', 'Avec les chefs dâ€™entreprise du Cher, qui entreprennent, investissent et crÃ©ent de la richesse. #MatignonCher https://t.co/UdF9aZh4cF', '1110890216', '2018-05-08 15:01:36'),
('992285743316811776', '2018-05-04 06:12:11', 'Soutenir les projets dâ€™entreprises innovantes, permettre Ã  chacun, ici dans le Cher ou ailleurs en France, de se laâ€¦ https://t.co/RWMtlTFxoR', '1110890216', '2018-05-08 15:01:36'),
('992330496679038976', '2018-05-04 09:10:01', 'Visite du centre de ressources technologiques @CetimCertec de Bourges puis rÃ©union de travail avec @BrunoLeMaire etâ€¦ https://t.co/xHOfXEUnDH', '1110890216', '2018-05-08 15:01:36'),
('992330705320468485', '2018-05-04 09:10:51', 'Plus la rÃ©gion et l\'Ã‰tat travaillent main dans la main, mieux nous pouvons accompagner les entreprises et les aiderâ€¦ https://t.co/vmEbd0YxDu', '1110890216', '2018-05-08 15:01:36'),
('992393928216317954', '2018-05-04 13:22:04', 'Ã‰tape Ã  Sancerre pour discuter avec les viticulteurs locaux - et vanter notre patrimoine ! #MatignonCher https://t.co/J1bbm80TNh', '1110890216', '2018-05-08 15:01:36'),
('992407978744713216', '2018-05-04 14:17:54', 'J\'avais promis que l\'Auvergne ne serait pas oubliÃ©e. Aujourd\'hui nous pouvons dire que jamais l\'Allier n\'a Ã©tÃ© autaâ€¦ https://t.co/BVtnO57dgl', '19438626', '2018-05-08 15:01:39'),
('992408418915897344', '2018-05-04 14:19:39', 'La RÃ©gion Auvergne-RhÃ´ne-Alpes, c\'est la dÃ©fense des territoires. Quand l\'Etat se dÃ©sengage des milieux ruraux, nouâ€¦ https://t.co/Auq7ZsRq6v', '19438626', '2018-05-08 15:01:39'),
('992408627901280256', '2018-05-04 14:20:29', 'Nous avons dÃ©cidÃ© que la RÃ©gion #AuvergneRhÃ´neAlpes participerait au financement de l\'extension du magnifique Centrâ€¦ https://t.co/okXnyqriic', '19438626', '2018-05-08 15:01:39'),
('992426710078509056', '2018-05-04 15:32:20', 'Aux reprÃ©sentants de la CGT qui sont venus mâ€™interpeller dans le hall du conseil dÃ©partemental de lâ€™Allier, jâ€™ai reâ€¦ https://t.co/nlN872uy4n', '19438626', '2018-05-08 15:01:39'),
('992656110757670912', '2018-05-05 06:43:54', 'Ã€ OuvÃ©a, trente ans aprÃ¨s le drame. Je suis venu porter un message dâ€™apaisement et dâ€™avenir. https://t.co/2VPCoCUazb', '1976143068', '2018-05-07 22:46:08'),
('992665637536370690', '2018-05-05 07:21:45', 'LIVE | CÃ©rÃ©monie de remise de lâ€™acte de prise de possession de Nouvelle-CalÃ©donie. https://t.co/L7jlnAlcdV', '1976143068', '2018-05-07 22:46:08'),
('992680253897297920', '2018-05-05 08:19:50', 'LIVE | Discours sur la Nouvelle-CalÃ©donie Ã  NoumÃ©a. https://t.co/OXx1hyyAxZ', '1976143068', '2018-05-07 22:46:08'),
('992705329631711232', '2018-05-05 09:59:28', 'Symbole de vie et dâ€™avenir lÃ  oÃ¹ a coulÃ© le sang. https://t.co/jJYDnrol6t', '1976143068', '2018-05-07 22:46:08'),
('992710715608887296', '2018-05-05 10:20:52', 'Pendant ces trois jours en Nouvelle-CalÃ©donie, jâ€™ai vu une jeunesse ardente qui a envie dâ€™avancer. https://t.co/hIvrIXmc4X', '1976143068', '2018-05-07 22:46:08'),
('992711457375686657', '2018-05-05 10:23:49', 'Avec la signature du plan filiÃ¨re \"Bovins viande\" chez Puigrenier dans l\'Allier, nous rappelons qu\'Ã  la RÃ©gionâ€¦ https://t.co/3BcrHDTUET', '19438626', '2018-05-08 15:01:39'),
('992713131356053505', '2018-05-05 10:30:28', 'La civilisation kanak est plus ancienne que la RÃ©publique.\nSes hommes ont combattu quelques annÃ©es plus tard pour dâ€¦ https://t.co/Jye2GAd6Wd', '1976143068', '2018-05-07 22:46:08'),
('992713548995481600', '2018-05-05 10:32:08', 'Ce que je viens proposer sereinement en Nouvelle-CalÃ©donie, câ€™est lâ€™alliance des mÃ©moires, pour avancer avec confiaâ€¦ https://t.co/sXwLQRBpoK', '1976143068', '2018-05-07 22:46:08'),
('992713660228407296', '2018-05-05 10:32:34', 'Pendant la pÃ©riode coloniale, la France a souvent perdu le sens de notre histoire et de ses valeurs. \nNotre histoirâ€¦ https://t.co/79AfdNU7aY', '1976143068', '2018-05-07 22:46:08'),
('992714413596663809', '2018-05-05 10:35:34', 'Le combat des kanak pour retrouver leur libertÃ© Ã©tait juste. \nLe reconnaÃ®tre câ€™est faire rentrer dans la dignitÃ© ceâ€¦ https://t.co/94QZAKOttJ', '1976143068', '2018-05-07 22:46:08'),
('992714709794213888', '2018-05-05 10:36:45', 'En Nouvelle-CalÃ©donie, le temps n\'est plus celui de la possession unilatÃ©rale mais d\'un lien Ã  rÃ©inventer.', '1976143068', '2018-05-07 22:46:08'),
('992715114750111744', '2018-05-05 10:38:21', 'Je ne prendrai pas parti dans le rÃ©fÃ©rendum sur l\'indÃ©pendance de la Nouvelle-CalÃ©donie.', '1976143068', '2018-05-07 22:46:08'),
('992715374922788865', '2018-05-05 10:39:23', 'Du fond du cÅ“ur : la France ne serait pas la mÃªme sans la Nouvelle-CalÃ©donie, car elle est une part de cette Franceâ€¦ https://t.co/NexPI8oIZV', '1976143068', '2018-05-07 22:46:08'),
('992715589234974720', '2018-05-05 10:40:14', 'C\'est aux CalÃ©doniens qu\'il appartient de choisir leur avenir.', '1976143068', '2018-05-07 22:46:08'),
('992715769522900992', '2018-05-05 10:40:57', 'Le rÃ©fÃ©rendum Ã©tait prÃ©vu. C\'est une Ã©tape qui ne doit pas nous diviser. \nIl nous appartient de ne pas faire reculer l\'histoire.', '1976143068', '2018-05-07 22:46:08'),
('992716050595762176', '2018-05-05 10:42:04', 'La meilleure faÃ§on d\'aborder les mois qui viennent, c\'est se poser cette question : quel avenir voulons-nous constrâ€¦ https://t.co/K6vfAwkNSi', '1976143068', '2018-05-07 22:46:08'),
('992716251859480576', '2018-05-05 10:42:52', 'Lâ€™ambition pour la Nouvelle-CalÃ©donie : en faire un territoire exportateur, au cÅ“ur de lâ€™Indo-Pacifique. https://t.co/107uuhmX36', '1976143068', '2018-05-07 22:46:08'),
('992716723529965568', '2018-05-05 10:44:45', 'En Nouvelle-CalÃ©donie nous devons construire les voies et moyens d\'une souverainetÃ© alimentaire durable en accord aâ€¦ https://t.co/126f1ZbHWJ', '1976143068', '2018-05-07 22:46:08'),
('992717015180808200', '2018-05-05 10:45:54', 'Je ne veux pas dire aux CalÃ©doniens quoi choisir lors du rÃ©fÃ©rendum sur l\'indÃ©pendance. \nJe leur propose simplementâ€¦ https://t.co/xFAwCtQj9q', '1976143068', '2018-05-07 22:46:08'),
('992717166918144000', '2018-05-05 10:46:31', 'DÃ©cider, ensemble, de regarder l\'avenir. https://t.co/QTV1gNzep2', '1976143068', '2018-05-07 22:46:08'),
('992737826415529991', '2018-05-05 12:08:36', 'Par-delÃ  les ocÃ©ans, câ€™est sur la baie de Lannion que sâ€™Ã©chouent mes pensÃ©es. \nPour Corinne Erhel. Disparue il y aâ€¦ https://t.co/GcUh72Gl7d', '1976143068', '2018-05-07 22:46:08'),
('992752224328732673', '2018-05-05 13:05:49', 'Nous envoyons notre salut Ã  toute la fonction publique grÃ¢ce Ã  laquelle ce pays se tient debout ainsi qu\'aux salariâ€¦ https://t.co/lrIPz6nvFh', '80820758', '2018-05-08 15:01:41'),
('992752816614707201', '2018-05-05 13:08:10', 'Nous croyons au bien commun, au service publique, aux monopoles publics pour le rail, les barrages, l\'Ã©lectricitÃ©,â€¦ https://t.co/oWXjZEAAuh', '80820758', '2018-05-08 15:01:41'),
('992753272162267136', '2018-05-05 13:09:59', 'Nous sommes un rassemblement joyeux et souriant Ã  l\'image du monde que nous voulons fonder. Nous condamnons la violâ€¦ https://t.co/IdrWyRqgif', '80820758', '2018-05-08 15:01:41'),
('992753491956457472', '2018-05-05 13:10:51', 'Nous sommes le peuple qui refuse qu\'on meurt de froid, de faim, d\'abandon, dans l\'un des pays les plus riches du moâ€¦ https://t.co/OOZYnx1EGy', '80820758', '2018-05-08 15:01:41'),
('992753813051379712', '2018-05-05 13:12:08', 'Oui, nous pouvons perdre une Ã©lection. Mais jamais nous n\'abandonnerons la lutte alors que nous vivons dans un mondâ€¦ https://t.co/kf0X4Consb', '80820758', '2018-05-08 15:01:41'),
('992754077284040705', '2018-05-05 13:13:11', 'Nous sommes le peuple rÃ©voltÃ© de France qui se prÃ©pare Ã  Ãªtre le peuple rÃ©volutionnaire. Il faut rester groupÃ©s pouâ€¦ https://t.co/3urRZ4Aa1F', '80820758', '2018-05-08 15:01:41'),
('992755787989704705', '2018-05-05 13:19:59', 'RT @FranceInsoumise: Nous sommes 160 000 pour la #FeteAMacron ! Impressionnant ! Le peuple insoumis est dans la rue ! \n#LaFeteAMacron #Stopâ€¦', '80820758', '2018-05-08 15:01:41'),
('992757922223525888', '2018-05-05 13:28:27', 'N\'Ã©coutez personne qui vous dise de baisser les yeux ! Et, le 26 mai prochain, dÃ©ferlez ! Courage ! RÃ©sistance !â€¦ https://t.co/8xqpLF4y02', '80820758', '2018-05-08 15:01:41'),
('992769623903883264', '2018-05-05 14:14:57', 'Avec lâ€™auteure de la BD Â«insoumissionÂ» âœŠ ! \n\n#LaFeteAMacron #FeteAMacron #StopMacron\n\nPour la commander câ€™est par iâ€¦ https://t.co/t8nSKZZznS', '80820758', '2018-05-08 15:01:41'),
('992794479169064962', '2018-05-05 15:53:43', 'Sachant que la seule place de la Bastille contient 40 000 personnes,  combien sont payÃ©s pour mentir ceux qui affirâ€¦ https://t.co/EiA0bp4Z1U', '80820758', '2018-05-08 15:01:41'),
('992809131076710404', '2018-05-05 16:51:57', 'De retour chez moi les batteries regonflÃ©es Ã  bloc par la fÃªte du 5 mai.\n#laFeteAMacron #FeteAMacron #StopMacron', '80820758', '2018-05-08 15:01:41'),
('992824606472982529', '2018-05-05 17:53:26', 'La bataille ne fait que commencer ! \nProchain RDV le 26 mai. \n#LaFeteAMacron #FeteAMacron #StopMacron #5Mai https://t.co/hyLTiZIrqm', '80820758', '2018-05-08 15:01:41'),
('993087477425627136', '2018-05-06 11:17:59', 'Â«Vous voudriez que nous soyons soumisÂ» - Interview en duplex de #LaFeteAMacron hier.\nhttps://t.co/EURsjL0ZIe', '80820758', '2018-05-08 15:01:41'),
('993092721949716480', '2018-05-06 11:38:50', 'RT @annelauremondon: Â«Â Il ne faut pas chercher Ã  imposer une prÃ©sence politique dans des mouvements qui sont des mouvements sociaux, sous pâ€¦', '213754264', '2018-05-08 15:01:38'),
('993092763188105216', '2018-05-06 11:39:00', 'RT @annelauremondon: Â«Â Sâ€™il fallait une illustration du mot indÃ©cence dans le dictionnaire, ce serait la photo de Donald #Trump ! Ses propoâ€¦', '213754264', '2018-05-08 15:01:38'),
('993092800576217088', '2018-05-06 11:39:09', 'RT @annelauremondon: Â«Â Le PrÃ©sident a rÃ©servÃ© ses annonces sur lâ€™#ExitTax au magazine Forbes. Il sâ€™agit lÃ  dâ€™une amnistie pour ceux qui vouâ€¦', '213754264', '2018-05-08 15:01:38'),
('993092965655568385', '2018-05-06 11:39:48', 'RT @mandinette77: \"Il faut vÃ©rifier que le conflit d\'intÃ©rÃªts entre En Marche et GL Events n\'est pas allÃ© au-delÃ  de la campagne Ã©lectoraleâ€¦', '213754264', '2018-05-08 15:01:38'),
('993093029086015488', '2018-05-06 11:40:03', 'RT @mandinette77: \"Ce que l\'Europe a fait pour sauver le systÃ¨me bancaire, ne peut-elle pas le faire aujourd\'hui pour des hommes, pour rÃ©soâ€¦', '213754264', '2018-05-08 15:01:38'),
('993093069724626946', '2018-05-06 11:40:13', 'RT @mandinette77: \"L\'offre que je vais bÃ¢tir avec mes camarades socialistes est une offre horizontale, en Ã©coutant et en nous nourrissant dâ€¦', '213754264', '2018-05-08 15:01:38'),
('993093106940641280', '2018-05-06 11:40:22', 'RT @mandinette77: \"Le politique ne doit pas rÃ©cupÃ©rer le mouvement social sous peine de l\'affaiblir, comme ce fut le cas pour les ordonnancâ€¦', '213754264', '2018-05-08 15:01:38'),
('993093148955041793', '2018-05-06 11:40:32', 'RT @mandinette77: \"On dit que Macron et MÃ©lenchon forment un duel. Je crois qu\'ils forment plutÃ´t un duo, chacun voulant Ãªtre l\'Ã©pouvantailâ€¦', '213754264', '2018-05-08 15:01:38'),
('993093182723362817', '2018-05-06 11:40:40', 'RT @mandinette77: \"Les propos de Donald Trump sur le Bataclan sont indignes. OÃ¹ est la rÃ©action du PrÃ©sident Macron, lui qui Ã©tait en pleinâ€¦', '213754264', '2018-05-08 15:01:38'),
('993093209470439424', '2018-05-06 11:40:46', 'RT @franceinter: Olivier Faure, #Trump, la #NRA et Macron : \"Je souhaiterai que le prÃ©sident de la RÃ©publique intervienne directement\" #Queâ€¦', '213754264', '2018-05-08 15:01:38'),
('993093347534344197', '2018-05-06 11:41:19', 'RT @mandinette77: \"Â La suppression de lâ€™exit tax est une amnistie pour les Ã©vadÃ©s fiscaux ! Et dans le mÃªme temps le gouvernement veut rÃ©foâ€¦', '213754264', '2018-05-08 15:01:38'),
('993093846329364480', '2018-05-06 11:43:18', 'RT @franceinter: Olivier Faure : \"Emmanuel Macron mÃ¨ne une politique exclusivement de droite\" #Questionspol https://t.co/2TPoXk4t0r', '213754264', '2018-05-08 15:01:38'),
('993093956421537792', '2018-05-06 11:43:44', 'RT @estellepicard: \" On peut Ãªtre europÃ©en convaincu sans partager la mÃªme vision ce fut le cas entre Giscard et Mitterrand , je ne partageâ€¦', '213754264', '2018-05-08 15:01:38'),
('993094038084575232', '2018-05-06 11:44:04', 'RT @VincentDael: \"Macron a une vision institutionnelle lÃ  oÃ¹ j\'ai une vision de projet ; est-ce que ce que nous avons fait pour le systÃ¨meâ€¦', '213754264', '2018-05-08 15:01:38'),
('993094148256354305', '2018-05-06 11:44:30', 'RT @franceinter: Olivier Faure : \"Je souhaite parler avec tout le monde Ã  gauche\" [y compris MÃ©lenchon] #Questionspol https://t.co/agujw28gâ€¦', '213754264', '2018-05-08 15:01:38'),
('993094391932780544', '2018-05-06 11:45:28', 'RT @TomGodard: ðŸŽ™@olivierfaure : Â« La vocation des partis politiques câ€™est de rÃ©pondre Ã  la colÃ¨re sociale. On ne peut pas seulement Ãªtre daâ€¦', '213754264', '2018-05-08 15:01:38'),
('993116283712561152', '2018-05-06 13:12:27', 'RT @estellepicard: Je souhaite que la mobilisation contre la politique du gvt puisse s\'Ã©largir et que les franÃ§ais qui souhaitent se joindrâ€¦', '213754264', '2018-05-08 15:01:38'),
('993116306462429185', '2018-05-06 13:12:33', 'RT @estellepicard: Sur la prÃ©sidence de FranÃ§ois Hollande certains choix n\'ont pas Ã©tÃ© conformes Ã  ce que j\'attendais , soyons lucide sur câ€¦', '213754264', '2018-05-08 15:01:38'),
('993122308301737984', '2018-05-06 13:36:24', 'Les agressions dâ€™Ã©lus par les milices dâ€™extrÃªme gauche deviennent rÃ©currentes, et la complaisance  du pouvoir faceâ€¦ https://t.co/NynYRoYYNJ', '217749896', '2018-05-08 15:01:42'),
('993413071094865920', '2018-05-07 08:51:47', 'Ce que je vais faire et ce que je ne vais pas faire en #Russie. https://t.co/HhqZK7PjyK', '80820758', '2018-05-08 15:01:41'),
('993430633090371584', '2018-05-07 10:01:34', 'Bravo @olbesancenot. Ã€ son tour pour la jonction syndicat/parti ! Tout le monde y viendra j\'espÃ¨re. Vive le 26 mai !', '80820758', '2018-05-08 15:01:41'),
('993476388270280705', '2018-05-07 13:03:23', 'EN DIRECT | Nous venons de recevoir avec @Elisabeth_Borne les confÃ©dÃ©rations syndicales avec les fÃ©dÃ©rations de cheâ€¦ https://t.co/6xhXVsQJUo', '1110890216', '2018-05-08 15:01:36'),
('993476653438459904', '2018-05-07 13:04:26', 'Le Gouvernement a engagÃ© une rÃ©forme POUR la #SNCF et POUR les FranÃ§ais pour prÃ©parer lâ€™entreprise Ã  la concurrenceâ€¦ https://t.co/aUSIdLBSb1', '1110890216', '2018-05-08 15:01:36'),
('993477041122144256', '2018-05-07 13:05:59', 'Le Gouvernement a pris trois dÃ©cisions sur lesquelles il ne reviendra pas :\n- lâ€™ouverture Ã  la concurrence\n- la finâ€¦ https://t.co/AhL53lphUB', '1110890216', '2018-05-08 15:01:36'),
('993477903785578497', '2018-05-07 13:09:24', 'La fermetÃ© nâ€™interdit pas la discussion. Les concertations qui ont dÃ©jÃ  Ã©tÃ© menÃ©es ont Ã©tÃ© trÃ¨s utiles. Le texte deâ€¦ https://t.co/5GeQKsMuhg', '1110890216', '2018-05-08 15:01:36'),
('993478399933976577', '2018-05-07 13:11:23', 'Jâ€™ai proposÃ© aux organisations syndicales de nous rÃ©unir autour dâ€™un objectif commun : celui de renforcer la #SNCFâ€¦ https://t.co/uADBPJ8CMI', '1110890216', '2018-05-08 15:01:36'),
('993479065389629440', '2018-05-07 13:14:01', 'D\'abord, aller plus loin sur lâ€™investissement. Nous investissons 3,6Mdâ‚¬ par an sur le rÃ©seau, 10M par jour. Nous deâ€¦ https://t.co/1G4ef0Lq4J', '1110890216', '2018-05-08 15:01:36'),
('993480460608172032', '2018-05-07 13:19:34', 'Ensuite, investir sur les hommes et les femmes qui font vivre la #SNCF. Je vais demander cet aprÃ¨s-midi Ã  la SNCF dâ€¦ https://t.co/Aokmf4omPM', '1110890216', '2018-05-08 15:01:36'),
('993481455996203009', '2018-05-07 13:23:31', 'Enfin, sur la reprise de la dette : Ã  partir de 2022, la #SNCF ne doit plus perdre dâ€™argent chaque annÃ©e. Je proposâ€¦ https://t.co/r8jHX5NwmV', '1110890216', '2018-05-08 15:01:36'),
('993483952458534914', '2018-05-07 13:33:26', 'Il faut allÃ©ger les frais financiers et investir sur le rÃ©seau, câ€™est lâ€™engagement de lâ€™Etat. Il faut faire des Ã©coâ€¦ https://t.co/1OWaxOe54J', '1110890216', '2018-05-08 15:01:36'),
('993485573770924032', '2018-05-07 13:39:53', 'La reprise de dette sera clairement identifiÃ©e dans les comptes publics et fera lâ€™objet dâ€™un vote devant la reprÃ©sentation nationale. #SNCF', '1110890216', '2018-05-08 15:01:36'),
('993514948486721537', '2018-05-07 15:36:36', 'RT @RaquelGarridoFr: [Breaking] Mon avocat prÃ¨s la @Courdecassation, Me Paul Mathonnet, viens de mâ€™annoncer que jâ€™ai dÃ©finitivement gagnÃ© mâ€¦', '80820758', '2018-05-08 15:01:41'),
('993540228131508224', '2018-05-07 17:17:04', '\"Macron a abandonnÃ© l\'idÃ©e de rÃ©guler la mondialisation, qui est devenue sauvage et catastrophique pour les peuplesâ€¦ https://t.co/kcmYpX4XWm', '217749896', '2018-05-08 15:01:42'),
('993540434629726209', '2018-05-07 17:17:53', '\"Il faut une nouvelle rÃ©gulation de la mondialisation, qui prenne en compte notre Ã©poque mais fasse en sorte que ceâ€¦ https://t.co/rF566PB2sN', '217749896', '2018-05-08 15:01:42'),
('993540522835894272', '2018-05-07 17:18:14', '\"#Macron a une fascination pour l\'argent, qui me semble contraire Ã  l\'esprit franÃ§ais.\" @radioclassique', '217749896', '2018-05-08 15:01:42'),
('993540692902318082', '2018-05-07 17:18:54', '\"#Macron a fait le choix de la dÃ©rÃ©gulation, un choix qui est abandonnÃ© dans le monde entier par les grandes Nationâ€¦ https://t.co/xqpDId1Ylx', '217749896', '2018-05-08 15:01:42'),
('993540893205508100', '2018-05-07 17:19:42', '\"Est-ce que la France sort grandie des dÃ©placements de #Macron Ã  l\'Ã©tranger ? Je pense que le choix des frappes enâ€¦ https://t.co/xzEsnFEehT', '217749896', '2018-05-08 15:01:42'),
('993541148043038726', '2018-05-07 17:20:43', '\"Macron a une infinie confiance en lui-mÃªme. C\'est une qualitÃ© pour gagner, mais est-ce une qualitÃ© pour gouvernerâ€¦ https://t.co/J6hjsZL5TH', '217749896', '2018-05-08 15:01:42'),
('993541361117822982', '2018-05-07 17:21:34', '\"Il y a une indÃ©cence dans la dÃ©claration de #Macron sur les APL, un mÃ©pris Ã  l\'Ã©gard des FranÃ§ais humbles.\" @radioclassique', '217749896', '2018-05-08 15:01:42'),
('993541517859086336', '2018-05-07 17:22:11', '\"Toutes catÃ©gories confondues, le chÃ´mage augmente en France. Les rÃ©sultats Ã©conomiques ne sont pas lÃ .\" @radioclassique', '217749896', '2018-05-08 15:01:42'),
('993541702878101504', '2018-05-07 17:22:55', '\"Les choix fiscaux de Macron ont Ã©tÃ© injustes. Les classes moyennes et les classes populaires voient augmenter le pâ€¦ https://t.co/xMQg189XH3', '217749896', '2018-05-08 15:01:42'),
('993541935238467585', '2018-05-07 17:23:51', '\"Le sondage me mettant deuxiÃ¨me a appelÃ© Ã  la modestie les Ã©ditorialistes qui m\'avaient enterrÃ©e.\" @radioclassique', '217749896', '2018-05-08 15:01:42'),
('993542087575592961', '2018-05-07 17:24:27', '\"Le systÃ¨me de protection sociale doit Ãªtre prÃ©servÃ©, et sauvÃ©, pour peu qu\'on n\'arrÃªte d\'ouvrir les frontiÃ¨res Ã  lâ€¦ https://t.co/7giGUspLak', '217749896', '2018-05-08 15:01:42'),
('993542410339782656', '2018-05-07 17:25:44', '\"Nous sommes en pleine recomposition de la vie politique franÃ§aise. #Macron est devenu le chef des mondialistes etâ€¦ https://t.co/ujFm4K1U4a', '217749896', '2018-05-08 15:01:42'),
('993542524559085569', '2018-05-07 17:26:11', '\"On doit Ãªtre avec les FranÃ§ais, c\'est pour cela que je soumets le nom de #RassemblementNational Ã  nos adhÃ©rents.\" @radioclassique', '217749896', '2018-05-08 15:01:42'),
('993542588992016384', '2018-05-07 17:26:27', '\"On doit rassembler ceux qui ne veulent pas que la Nation devienne un vieux souvenir.\" @radioclassique', '217749896', '2018-05-08 15:01:42'),
('993542787592282114', '2018-05-07 17:27:14', '\"Je suis pour une liste de rassemblement aux #EuropÃ©ennes2019. Nous sommes Ã  un moment historique. Si nous ne sommeâ€¦ https://t.co/hd8BSA2mah', '217749896', '2018-05-08 15:01:42'),
('993542921667346434', '2018-05-07 17:27:46', '\"Je ne compte pas Ãªtre tÃªte de liste aux #EuropÃ©ennes2019, mais je ferai la campagne. Je peux dÃ©jÃ  vous dire que deâ€¦ https://t.co/ryo154vICM', '217749896', '2018-05-08 15:01:42'),
('993558235717226496', '2018-05-07 18:28:37', 'Juste aprÃ¨s lâ€™arrivÃ©e Ã  #Moscou, rencontre avec des compatriotes devant le BolchoÃ¯, puis avec une statue de Karl Maâ€¦ https://t.co/SygiUdOA5g', '80820758', '2018-05-08 15:01:41'),
('993558250900639745', '2018-05-07 18:28:41', 'RT @FN_officiel: ðŸ“£ RT ! MÃ©pris, insultes, dÃ©sinvolture : en un an de pouvoir, Emmanuel Macron aura confirmÃ© qu\'il est bien le prÃ©sident desâ€¦', '217749896', '2018-05-08 15:01:42'),
('993579873967988736', '2018-05-07 19:54:36', 'Le culte de la personnalitÃ© du prÃ©sident en France devient  insupportable.\n#MacronLeDoc', '80820758', '2018-05-08 15:01:41'),
('993593136281776129', '2018-05-07 20:47:18', 'Le problÃ¨me d\'Emmanuel Macron c\'est qu\'il confond dÃ©sir d\'absolu et absolutisme. Le problÃ¨me de Bertrand Delais c\'eâ€¦ https://t.co/GOB48Ng6NV', '213754264', '2018-05-08 15:01:38'),
('993634054259036160', '2018-05-07 23:29:54', 'https://t.co/awKgK9PcTU', '213754264', '2018-05-08 15:01:38'),
('993754340002328577', '2018-05-08 07:27:52', 'Beltrame a exprimÃ© le maximum humain du soin de l\'autre. Ã€ Macron, on ne demande que l\'APL. Et mÃªme Ã§a, il en est incapable.', '80820758', '2018-05-08 15:01:41'),
('993773288672366594', '2018-05-08 08:43:10', 'LIVE | 8 mai 1945. Se souvenir pour mieux construire. \nhttps://t.co/ypxLFj3QCs', '1976143068', '2018-05-08 11:25:45'),
('993788528407523328', '2018-05-08 09:43:43', 'Pour tous nos soldats. Ceux qui ont donnÃ© leur vie hier pour notre libertÃ©. Ceux qui se battent en ce moment mÃªme pâ€¦ https://t.co/PgCpDqIoV8', '1976143068', '2018-05-08 11:25:45'),
('993796616636321793', '2018-05-08 10:15:51', 'ðŸ† La Coupe de France est la compÃ©tition que l\'on aime le plus, celle des plus petits contre les plus forts. Ce soirâ€¦ https://t.co/nw7geHPOnM', '217749896', '2018-05-08 15:01:42'),
('993802677489414150', '2018-05-08 10:39:56', 'Le #8mai c\'est la fin de la guerre, le retour de la paix et le dÃ©but de l\'Europe. https://t.co/25RBL6FmlZ', '1976143068', '2018-05-08 11:25:45'),
('993806519966863360', '2018-05-08 10:55:13', 'Deux gÃ©nÃ©rations, une mÃ©moire partagÃ©e.\nFidÃ¨les au poste du #8mai, heureux de retrouver les vÃ©tÃ©rans, mais aussi deâ€¦ https://t.co/OCAOSC7HRO', '1976143068', '2018-05-08 11:25:45'),
('993814450502361088', '2018-05-08 11:26:43', 'Jour du souvenir, du recueillement et de la reconnaissance chez les nations libres. L\'occasion de reconnaÃ®tre la châ€¦ https://t.co/cCdJPs4ehS', '1110890216', '2018-05-08 15:01:36'),
('993816205755666432', '2018-05-08 11:33:42', 'Jâ€™Ã©tais ce matin Ã  #Carvin pour commÃ©morer la victoire des AlliÃ©s et me recueillir devant le Monument aux Morts.â€¦ https://t.co/ZAD644wjcC', '217749896', '2018-05-08 15:01:42'),
('993817872798543873', '2018-05-08 11:40:19', 'Ce matin, de #Moscou et devant un monument dressÃ© en hommage au rÃ©giment de chasse Normandie-Niemen, nous cÃ©lÃ©brionâ€¦ https://t.co/KMFi1gNySR', '80820758', '2018-05-08 15:01:41');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
