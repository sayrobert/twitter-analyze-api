# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: 127.0.0.1 (MySQL 5.6.38)
# Base de données: twittanalyze
# Temps de génération: 2018-05-15 20:10:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table hashtags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hashtags`;

CREATE TABLE `hashtags` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `id_tweet` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hashtags` WRITE;
/*!40000 ALTER TABLE `hashtags` DISABLE KEYS */;

INSERT INTO `hashtags` (`id`, `id_tweet`, `content`, `date_ajout`)
VALUES
	(77,'994917472406032384','Karlspreis','2018-05-15 17:30:34'),
	(78,'994917301618135040','Karlspreis','2018-05-15 17:30:34'),
	(79,'994917191874220032','Karlspreis','2018-05-15 17:30:34'),
	(80,'994899090508058625','Karlspreis','2018-05-15 17:30:34'),
	(81,'994899020563787776','Karlspreis','2018-05-15 17:30:34'),
	(82,'994898955392700417','Karlspreis','2018-05-15 17:30:34'),
	(83,'994898861134172160','Karlspreis','2018-05-15 17:30:34'),
	(84,'994898759879405568','Karlspreis','2018-05-15 17:30:34'),
	(85,'996344192967245826','1andaction','2018-05-15 17:30:35'),
	(86,'995407406053150726','Paris','2018-05-15 17:30:35'),
	(87,'993891631794479109','JeannedArc2018','2018-05-15 17:30:35'),
	(88,'996320217927217153','LeViolEstunCrime','2018-05-15 17:30:35'),
	(89,'996314689167556608','AN','2018-05-15 17:30:35'),
	(90,'995568641239330816','Mercy','2018-05-15 17:30:35'),
	(91,'995209469951913985','LEmissionPolitique','2018-05-15 17:30:35'),
	(92,'995000399546470400','RT','2018-05-15 17:30:35'),
	(93,'994999974986469376','TaxedHabitation','2018-05-15 17:30:35'),
	(94,'994546885498228738','Enquête','2018-05-15 17:30:35'),
	(95,'995431732764643329','Paris','2018-05-15 17:30:36'),
	(96,'992408627901280256','AuvergneRhôneAlpes','2018-05-15 17:30:36'),
	(97,'991951847849152513','ExitTax','2018-05-15 17:30:36'),
	(98,'996021657293737984','Gaza','2018-05-15 17:30:36'),
	(99,'995575809682309120','Moscou','2018-05-15 17:30:36'),
	(100,'994941314100813824','Arcueil','2018-05-15 17:30:36'),
	(101,'994923047990845440','Arcueil','2018-05-15 17:30:36'),
	(102,'994619008447115265','Moscou','2018-05-15 17:30:36'),
	(103,'994283174506188800','Moscou','2018-05-15 17:30:36'),
	(104,'993937167239008256','Trump','2018-05-15 17:30:36'),
	(105,'993924939601227777','Trump','2018-05-15 17:30:36'),
	(106,'993922488261402625','Iran','2018-05-15 17:30:36'),
	(107,'993900904804945923','Moscou','2018-05-15 17:30:36'),
	(108,'993880089074044928','Russie','2018-05-15 17:30:36'),
	(109,'993817872798543873','Moscou','2018-05-15 17:30:36'),
	(110,'993579873967988736','MacronLeDoc','2018-05-15 17:30:36'),
	(111,'996374308657254400','QAG','2018-05-15 17:30:36'),
	(112,'996374153845444614','QAG','2018-05-15 17:30:36'),
	(113,'996373471654563840','QAG','2018-05-15 17:30:36'),
	(114,'996373268813832192','Gaza','2018-05-15 17:30:36'),
	(115,'996373133593636864','Macron','2018-05-15 17:30:36'),
	(116,'995977439556841473','QAG','2018-05-15 17:30:36'),
	(117,'995917809459847168','ClassiqueMatin','2018-05-15 17:30:36'),
	(118,'996422229687717890','DirectSénat','2018-05-15 18:09:37'),
	(119,'996420199443288064','DirectAN','2018-05-15 18:09:39');

/*!40000 ALTER TABLE `hashtags` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table tweets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tweets`;

CREATE TABLE `tweets` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `text` text NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;

INSERT INTO `tweets` (`id`, `created_at`, `text`, `id_user`, `date_ajout`)
VALUES
	('990951643796725761','2018-04-30 13:50:57','Les Français voient tous les jours les conséquences de cette immigration non maîtrisée. Leur a-t-on demandé leur av… https://t.co/ClvIx5tDy9','19438626','2018-05-15 17:30:36'),
	('990951733705826304','2018-04-30 13:51:18','Ne raisonnons plus en fonction d’un cadre juridique gravé dans le marbre. La France doit retrouver sa souveraineté… https://t.co/fbzxK1iMCg','19438626','2018-05-15 17:30:36'),
	('991030676639109125','2018-04-30 19:05:00','Plus que quelques heures avant le départ de la Course du 1er mai. Toujours un plaisir de courir au cœur du Puy, de… https://t.co/lt4QG8rPq9','19438626','2018-05-15 17:30:36'),
	('991342231075377152','2018-05-01 15:43:00','Terribles images aujourd\'hui pour notre pays. Faillite de l’État régalien. Il est urgent de rétablir l’autorité : s… https://t.co/qSLJu8MayE','19438626','2018-05-15 17:30:36'),
	('991770654490943493','2018-05-02 20:05:24','RT @20Minutes: Laurent Wauquiez: «Il faut rendre la castration chimique obligatoire pour les violeurs» https://t.co/e1OP1Cxxqs https://t.co…','19438626','2018-05-15 17:30:36'),
	('991951572677652481','2018-05-03 08:04:19','Chaque année, 62.000 femmes sont violées en France et un violeur sur vingt récidive. On ne peut pas rester les bras… https://t.co/ExIXj2MB3f','19438626','2018-05-15 17:30:36'),
	('991951667682775040','2018-05-03 08:04:41','Ce qui m’importe, c’est la protection des victimes, pas les droits des violeurs. Aujourd’hui, la castration chimiqu… https://t.co/LXfsRVjDvI','19438626','2018-05-15 17:30:36'),
	('991951749727637510','2018-05-03 08:05:01','On finit par se résigner à l’inacceptable. C’est la même crise profonde de l’autorité qu’illustrent les zadistes de… https://t.co/IE3uAIbCqx','19438626','2018-05-15 17:30:36'),
	('991951847849152513','2018-05-03 08:05:24','#ExitTax : avec Macron, c’est deux poids, deux mesures. Ce n’est pas juste. 42 % des cadeaux fiscaux ont été faits… https://t.co/wtemDrgV5U','19438626','2018-05-15 17:30:36'),
	('991951962013863936','2018-05-03 08:05:51','Nous voulons remettre l’Europe la tête à l’endroit : arrêter l’élargissement qui nous a menés dans le mur. Il y a d… https://t.co/bou0NNLjyV','19438626','2018-05-15 17:30:36'),
	('992105979499212801','2018-05-03 18:17:52','La Region est aux côtés des industriels qui investissent et créent des emplois sur les territoires en… https://t.co/QAtbos9MJd','19438626','2018-05-15 17:30:36'),
	('992407978744713216','2018-05-04 14:17:54','J\'avais promis que l\'Auvergne ne serait pas oubliée. Aujourd\'hui nous pouvons dire que jamais l\'Allier n\'a été auta… https://t.co/BVtnO57dgl','19438626','2018-05-15 17:30:36'),
	('992408418915897344','2018-05-04 14:19:39','La Région Auvergne-Rhône-Alpes, c\'est la défense des territoires. Quand l\'Etat se désengage des milieux ruraux, nou… https://t.co/Auq7ZsRq6v','19438626','2018-05-15 17:30:36'),
	('992408627901280256','2018-05-04 14:20:29','Nous avons décidé que la Région #AuvergneRhôneAlpes participerait au financement de l\'extension du magnifique Centr… https://t.co/okXnyqriic','19438626','2018-05-15 17:30:36'),
	('992426710078509056','2018-05-04 15:32:20','Aux représentants de la CGT qui sont venus m’interpeller dans le hall du conseil départemental de l’Allier, j’ai re… https://t.co/nlN872uy4n','19438626','2018-05-15 17:30:36'),
	('992711457375686657','2018-05-05 10:23:49','Avec la signature du plan filière \"Bovins viande\" chez Puigrenier dans l\'Allier, nous rappelons qu\'à la Région… https://t.co/3BcrHDTUET','19438626','2018-05-15 17:30:36'),
	('993579873967988736','2018-05-07 19:54:36','Le culte de la personnalité du président en France devient  insupportable.\n#MacronLeDoc','80820758','2018-05-15 17:30:36'),
	('993754340002328577','2018-05-08 07:27:52','Beltrame a exprimé le maximum humain du soin de l\'autre. À Macron, on ne demande que l\'APL. Et même ça, il en est incapable.','80820758','2018-05-15 17:30:36'),
	('993817872798543873','2018-05-08 11:40:19','Ce matin, de #Moscou et devant un monument dressé en hommage au régiment de chasse Normandie-Niemen, nous célébrion… https://t.co/KMFi1gNySR','80820758','2018-05-15 17:30:36'),
	('993857116648673281','2018-05-08 14:16:16','À Mathilde Edey Gamassou, merci d’avoir accepté la lourde et belle charge d’incarner Jeanne d’Arc, avec la douce fe… https://t.co/D1SpawcNmR','1110890216','2018-05-15 17:30:35'),
	('993880089074044928','2018-05-08 15:47:33','#Russie : les raisons du déplacement de Jean-Luc Mélenchon. #Moscou \n➡️Retrouvez l\'intégralité de la conférence de… https://t.co/BQeid46jpu','80820758','2018-05-15 17:30:36'),
	('993891631794479109','2018-05-08 16:33:25','En cette belle journée des fêtes de Jeanne d’Arc, merci à tous les Orléanais pour leur accueil ! #JeannedArc2018 https://t.co/EoawwxnBYl','1110890216','2018-05-15 17:30:35'),
	('993900904804945923','2018-05-08 17:10:16','À #Moscou, rencontre avec Sergueï Oudaltsov, leader du Front de gauche de #Russie, emprisonné durant 4 ans et demi… https://t.co/kFYZPbZ2Cu','80820758','2018-05-15 17:30:36'),
	('993922488261402625','2018-05-08 18:36:02','Alerte à la guerre en #Iran. #Trump est un irresponsable va-t-en-guerre. Tous les pays pris en otage des nouvelles sanctions des USA.','80820758','2018-05-15 17:30:36'),
	('993924939601227777','2018-05-08 18:45:46','#Trump et Netanyahou mentent. Ras-le-bol de l\'empire US, de ses provocations, de son arrogance et de ses guerres sans fin. \n#Iran','80820758','2018-05-15 17:30:36'),
	('993937167239008256','2018-05-08 19:34:21','Communiqué - Donald #Trump est un danger pour la paix. \n#Iran \nhttps://t.co/JRlTZ4ev47','80820758','2018-05-15 17:30:36'),
	('994179741824573440','2018-05-09 11:38:16','Notre mission : rénover le fonctionnement de la vie politique française et regagner la confiance des citoyens dans… https://t.co/ezsBrmWt35','1110890216','2018-05-15 17:30:35'),
	('994283174506188800','2018-05-09 18:29:16','À #Moscou ce 9 mai pour le défilé du Régiment immortel, qui célèbre la victoire sur le nazisme et la mémoire de ceu… https://t.co/Sed3nJAuDK','80820758','2018-05-15 17:30:36'),
	('994511833343188994','2018-05-10 09:37:52','RT @gouvernementFR: ','1110890216','2018-05-15 17:30:35'),
	('994515156578250752','2018-05-10 09:51:05','Le devoir de mémoire commence à une échelle communale. Il faut inscrire la mémoire de l’esclavage dans le paysage u… https://t.co/I4dxzehNYY','1110890216','2018-05-15 17:30:35'),
	('994515506035118080','2018-05-10 09:52:28','La mémoire des meurtrissures est encore à vif. Nous ne devons pas oublier les corps mécanisés, les corps martyrisés… https://t.co/CVv7jaEDUq','1110890216','2018-05-15 17:30:35'),
	('994516930148126720','2018-05-10 09:58:08','Il faut entretenir la mémoire des résistances car le seul choix des esclaves a toujours été la liberté, que ce soit… https://t.co/CMgbP2LHwu','1110890216','2018-05-15 17:30:35'),
	('994519533367984129','2018-05-10 10:08:28','Graver dans la pierre la dignité de la personne humaine sera l’objectif du Mémorial qui recensera les quelque 200 0… https://t.co/AgcDWzMacR','1110890216','2018-05-15 17:30:35'),
	('994520804527403009','2018-05-10 10:13:31','A l’occasion des 170 ans du décret de la IIe République abolissant l’esclavage, le Président de la République a rap… https://t.co/mcC09GWJdT','1110890216','2018-05-15 17:30:35'),
	('994528997903085568','2018-05-10 10:46:05','Une mémoire en actes, c’est une mémoire consciente que l’abolition de l’esclavage n’a aboli ni les préventions soci… https://t.co/CDCFZRMA6l','1110890216','2018-05-15 17:30:35'),
	('994543155499368448','2018-05-10 11:42:20','RT @cdallonnes: \"Nous nous mobilisons pour que la France de Macron cesse de bloquer cette directive européenne défendant l\'égalité hommes-f…','213754264','2018-05-15 17:30:35'),
	('994546885498228738','2018-05-10 11:57:09','RT @expliciteJA: #Enquête ','213754264','2018-05-15 17:30:35'),
	('994619008447115265','2018-05-10 16:43:45','Salle comble à la chambre de commerce et d’industrie franco-russe de #Moscou pour une conférence sur la géopolitiqu… https://t.co/c0n297j9ov','80820758','2018-05-15 17:30:36'),
	('994641138198999040','2018-05-10 18:11:41','Une nouvelle étape importante pour la protection de l\'environnement : large adoption à l\'ONU, à l’initiative de la… https://t.co/WKBH4wKEDj','1976143068','2018-05-15 17:30:34'),
	('994659662996951042','2018-05-10 19:25:18','RT @lesRepublicains: Pensées émues pour la famille et les proches de Frédéric Bouscarle. Hommage au militant de cœur, engagé, fidèle et si…','19438626','2018-05-15 17:30:36'),
	('994683720962576384','2018-05-10 21:00:54','Nouvelle version du « en même temps ». D’un côté je baisse les impôts, de l’autre je laisse les maires faire le sal… https://t.co/5F9T4VEXQC','213754264','2018-05-15 17:30:35'),
	('994683754391228416','2018-05-10 21:01:02','Le 10 mai, la France célèbre la journée nationale des mémoires de la traite, de l\'esclavage et de leurs abolitions.… https://t.co/0GlMGVnQ8g','1976143068','2018-05-15 17:30:34'),
	('994870277782851584','2018-05-11 09:22:12','Für Europa: \n1. Seien wir nicht schwach! Entscheiden wir uns! \n2. Lassen wir uns nicht spalten! Handeln wir gemeins… https://t.co/9BcgzF1X91','1976143068','2018-05-15 17:30:34'),
	('994870414651346944','2018-05-11 09:22:45','For Europe:\n1. We must not be weak. We must choose.\n2. We must not be divided. We must unite.\n3. We must not be afr… https://t.co/uteN8sfsoi','1976143068','2018-05-15 17:30:34'),
	('994870526878408704','2018-05-11 09:23:12','Per l\'Europa: \n1. Non siamo deboli. Scegliamo. \n2. Non siamo divisi. Uniamoci.\n3. Non abbiamo paura. Osiamo fare.… https://t.co/kPOs1Rco8n','1976143068','2018-05-15 17:30:34'),
	('994870657317040129','2018-05-11 09:23:43','Por y para Europa: \n1. No seamos débiles. Elijamos. \n2. No estemos divididos. Unámonos. \n3. No tengamos miedo. Atre… https://t.co/8Mi6QA0jpf','1976143068','2018-05-15 17:30:34'),
	('994897556097388544','2018-05-11 11:10:36','Para a Europa: \n1. Não podemos ser fracos. Devemos fazer a escolha certa. \n2. Não podemos dividir-nos. Devemos esta… https://t.co/ZOK1YMwWgT','1976143068','2018-05-15 17:30:34'),
	('994898759879405568','2018-05-11 11:15:23','Wer hat gesagt, Europa habe keine Zukunft? #Karlspreis\nhttps://t.co/35PZ78nBq0','1976143068','2018-05-15 17:30:34'),
	('994898861134172160','2018-05-11 11:15:47','Who said there was no future for Europe? #Karlspreis\nhttps://t.co/35PZ78nBq0','1976143068','2018-05-15 17:30:34'),
	('994898955392700417','2018-05-11 11:16:09','Chi ha detto che l’Europa non aveva futuro? #Karlspreis\nhttps://t.co/35PZ78nBq0','1976143068','2018-05-15 17:30:34'),
	('994899020563787776','2018-05-11 11:16:25','¿Quién ha dicho que Europa no tiene futuro? #Karlspreis\nhttps://t.co/35PZ78nBq0','1976143068','2018-05-15 17:30:34'),
	('994899090508058625','2018-05-11 11:16:42','Quem disse que a Europa não tinha futuro? #Karlspreis\nhttps://t.co/35PZ78nBq0','1976143068','2018-05-15 17:30:34'),
	('994917191874220032','2018-05-11 12:28:37','Die deutsche Jugend setzt auf Europa, denn sie ist sich ihrer Geschichte bewusst. #Karlspreis\nhttps://t.co/iEMb5Kdwea','1976143068','2018-05-15 17:30:34'),
	('994917301618135040','2018-05-11 12:29:04','Germany’s young people have great expectations of Europe because they remember their country’s history. #Karlspreis\nhttps://t.co/iEMb5Kdwea','1976143068','2018-05-15 17:30:34'),
	('994917472406032384','2018-05-11 12:29:44','I giovani tedeschi aspettano tutto dall\'Europa perchè ricordano la propria storia. #Karlspreis\nhttps://t.co/iEMb5Kdwea','1976143068','2018-05-15 17:30:34'),
	('994923047990845440','2018-05-11 12:51:54','#Arcueil - Inadmissible gazage d’un député. https://t.co/rQPrjJHKbj https://t.co/E4gGFhksxi','80820758','2018-05-15 17:30:36'),
	('994937328786378752','2018-05-11 13:48:38','Entretien passionnant avec Elio Di Rupo, pdt du PS belge et ancien Premier Ministre. Avenir de L’Union Europeenne,… https://t.co/WHfPjrYd3W','213754264','2018-05-15 17:30:35'),
	('994938829047025665','2018-05-11 13:54:36','Nationalistische Strömungen überwinden wir, indem wir uns zu einer europäischen Souveränität bekennen, solidarisch… https://t.co/kTwxPZKpRu','1976143068','2018-05-15 17:30:34'),
	('994939016222035968','2018-05-11 13:55:21','To overcome all forms of nationalism, we need to be proud of having European sovereignty, develop solidarity, and g… https://t.co/5vgRCB1o5h','1976143068','2018-05-15 17:30:34'),
	('994939418594168832','2018-05-11 13:56:57','Per battere i nazionalismi: prendere atto di avere una sovranità europea, sviluppare la solidarietà... e non mollar… https://t.co/qoUb7vy3Il','1976143068','2018-05-15 17:30:34'),
	('994941314100813824','2018-05-11 14:04:29','@ericcoquerel @FranceInsoumise #Arcueil - Un député en écharpe à l\'écart est gazé volontairement, lacrymo à bout po… https://t.co/NRdQ2LKUuB','80820758','2018-05-15 17:30:36'),
	('994999916798898176','2018-05-11 17:57:21','RT @cpiresbeaune: La suppression de la Taxe d’habitation : Une promesse qui  tourne au casse-tête ! Et non il n’y a pas d’argent magique !@…','213754264','2018-05-15 17:30:35'),
	('994999974986469376','2018-05-11 17:57:34','RT @partisocialiste: #TaxedHabitation : quand la baisse est « en même temps » une hausse ! : retrouvez le communiqué de @faureolivier @Vale…','213754264','2018-05-15 17:30:35'),
	('995000399546470400','2018-05-11 17:59:16','RT @fmcailleau: #RT @fede_PS29: RT @BorisVallaud: « Les salariés de l’UE ne peuvent plus continuer à être exclus de la construction europée…','213754264','2018-05-15 17:30:35'),
	('995017706624749569','2018-05-11 19:08:02','RT @HAC_Foot: BUUUUUUUUUUUUUUUUUUUUUUUUUUUUUT de JP Mateta  sur une passe de Fontaine ! Son 17ème but de la saison ! 2-0 au @StadeOceane #H…','1110890216','2018-05-15 17:30:35'),
	('995209469951913985','2018-05-12 07:50:02','RT @France2_Presse: #LEmissionPolitique, en direct @france2tv jeudi 17 mai à 20h55  \"Macron, An 1 : le verdict\", présentée par @LeaSalame,…','213754264','2018-05-15 17:30:35'),
	('995212937345282049','2018-05-12 08:03:49','','80820758','2018-05-15 17:30:36'),
	('995249328250937346','2018-05-12 10:28:25','La semaine où le monde est mon village - Nouvelle note de blog à découvrir https://t.co/unmKrnEU0D','80820758','2018-05-15 17:30:36'),
	('995399511412563970','2018-05-12 20:25:11','Pensées émues pour les proches et les familles. Hommage au sang-froid des forces de l’ordre. L’horreur frappe une n… https://t.co/yLzjvEJJep','213754264','2018-05-15 17:30:35'),
	('995407406053150726','2018-05-12 20:56:34','RT @gerardcollomb: Agression à #Paris : je salue le sang froid et la réactivité des forces de police qui ont neutralisé l’assaillant.\nMes p…','1110890216','2018-05-15 17:30:35'),
	('995423710088761344','2018-05-12 22:01:21','Toutes mes pensées vont aux victimes et aux blessés de l’attaque au couteau perpétrée ce soir à Paris, ainsi qu’à l… https://t.co/9wIMmPGNS7','1976143068','2018-05-15 17:30:34'),
	('995423712764727297','2018-05-12 22:01:21','La France paye une nouvelle fois le prix du sang mais ne cède pas un pouce aux ennemis de la liberté (2/2).','1976143068','2018-05-15 17:30:34'),
	('995430983531945985','2018-05-12 22:30:15','RT @EmmanuelMacron: Toutes mes pensées vont aux victimes et aux blessés de l’attaque au couteau perpétrée ce soir à Paris, ainsi qu’à leurs…','1110890216','2018-05-15 17:30:35'),
	('995430988711890945','2018-05-12 22:30:16','RT @EmmanuelMacron: La France paye une nouvelle fois le prix du sang mais ne cède pas un pouce aux ennemis de la liberté (2/2).','1110890216','2018-05-15 17:30:35'),
	('995431732764643329','2018-05-12 22:33:13','#Paris : hommage à nos forces de l’ordre et pensées aux victimes et à leurs proches. Une fois encore, la barbarie i… https://t.co/sNe46YjkJ7','19438626','2018-05-15 17:30:36'),
	('995442346685816837','2018-05-12 23:15:24','Attaque à Opéra : Le bilan est lourd et je veux exprimer à la famille de la victime et des blessés mes pensées les plus sincères. (1/3)','1110890216','2018-05-15 17:30:35'),
	('995442714538803205','2018-05-12 23:16:52','Dans les 9 minutes après le premier appel, l’assaillant était neutralisé. Nos forces de police ont encore une fois… https://t.co/ctfaD14m2Q','1110890216','2018-05-15 17:30:35'),
	('995443099949240322','2018-05-12 23:18:24','La France est absolument déterminée à ne céder en rien aux menaces que les assaillants veulent faire peser sur elle. (3/3)','1110890216','2018-05-15 17:30:35'),
	('995550616784195585','2018-05-13 06:25:38','Quel genre de guerre prétendent-ils mener avec un misérable assassin qui frappe par surprise des gens sans défense… https://t.co/QDCDUazERk','80820758','2018-05-15 17:30:36'),
	('995568641239330816','2018-05-13 07:37:15','#Mercy la vraie victoire c’est celle de la vie. La tienne, et celle de tous ceux que nous parviendrons à sauver par… https://t.co/A1O8m5zGYM','213754264','2018-05-15 17:30:35'),
	('995575809682309120','2018-05-13 08:05:44','40 000 vues en 24H sur le vlog qui revient en détail sur le déplacement à #Moscou. https://t.co/eTp871SjhS','80820758','2018-05-15 17:30:36'),
	('995614053941829632','2018-05-13 10:37:42','Soutien aux salariés de Mc Do en lutte pour leurs droits à Paris et à Marseille. https://t.co/0s43nbo6X2','80820758','2018-05-15 17:30:36'),
	('995630871771262978','2018-05-13 11:44:32','Avec les salariés de Mc Donald\'s en lutte pour leurs droits. https://t.co/8n1mJtLnYM','80820758','2018-05-15 17:30:36'),
	('995631462887186438','2018-05-13 11:46:53','Nous exigeons que le Président de la République et le gouvernement mettent enfin en place l\'ensemble des mesures qu… https://t.co/pF39lc4ZSk','19438626','2018-05-15 17:30:36'),
	('995640270560661510','2018-05-13 12:21:53','RT @PotierDominique: Cinq réformes pour un nouveau modèle européen de l\'entreprise: rejoignez les 450 premiers signataires de notre tribune…','213754264','2018-05-15 17:30:35'),
	('995648772913975297','2018-05-13 12:55:40','A chaque acte terroriste Daech met à l’épreuve notre capacité à répondre dans l’unité et la fidélité aux principes… https://t.co/atwLKkwsbb','213754264','2018-05-15 17:30:35'),
	('995907115683282944','2018-05-14 06:02:14','\"Il faut judiciariser les Français radicalisés, et évidemment expulser manu militari les étrangers radicalisés. Les… https://t.co/S0mY5Anghr','217749896','2018-05-15 17:30:36'),
	('995907666567450624','2018-05-14 06:04:25','\"Nous devons considérer que nous sommes victimes d\'une guerre ! Et lorsqu\'il y a la guerre, on met en place des pro… https://t.co/ssHt5ECM8B','217749896','2018-05-15 17:30:36'),
	('995908235407298560','2018-05-14 06:06:41','\"La loi sur le Renseignement ne contient rien, c\'est un vide absolu, c\'est uniquement un acte de communication. Ell… https://t.co/VCdCzogR5s','217749896','2018-05-15 17:30:36'),
	('995908760907501568','2018-05-14 06:08:46','\"Rien n\'a changé dans nos critères d\'asile ou de naturalisation... On se retrouve avec des radicalisés qui ont obte… https://t.co/ezFKnZg4XQ','217749896','2018-05-15 17:30:36'),
	('995909112931155968','2018-05-14 06:10:10','\"Il faut d\'urgence maîtriser nos frontières. Pour nous protéger, on ne peut pas faire confiance à l\'Union européenn… https://t.co/WK3KCBb5DX','217749896','2018-05-15 17:30:36'),
	('995909656047505408','2018-05-14 06:12:19','\"On sait pertinemment que nous allons être confrontés aux revenants de  Daech, dont un certain nombre se cachent da… https://t.co/UuCwJZSvV0','217749896','2018-05-15 17:30:36'),
	('995910089872674817','2018-05-14 06:14:03','\"Pour une sécurité supplémentaire dans un niveau d\'alerte maximum, il faut que chaque pays puisse à nouveau, dans l… https://t.co/c5tqj65lXg','217749896','2018-05-15 17:30:36'),
	('995917809459847168','2018-05-14 06:44:43','','217749896','2018-05-15 17:30:36'),
	('995970645782597632','2018-05-14 10:14:40','Ce que j\'allais faire en Russie. https://t.co/dB3rUYa2mk','80820758','2018-05-15 17:30:36'),
	('995977439556841473','2018-05-14 10:41:40','','217749896','2018-05-15 17:30:36'),
	('996008688841261056','2018-05-14 12:45:51','Je demande au président de la République de réunir l\'ensemble des chefs de parti pour échanger sur les mesures effi… https://t.co/erMsUyLRsK','19438626','2018-05-15 17:30:36'),
	('996021657293737984','2018-05-14 13:37:22','La France doit condamner les massacres à #Gaza. L\'ambassadeur d\'Israël à Paris doit être convoqué à l\'Élysée pour s… https://t.co/f9mEXuAnai','80820758','2018-05-15 17:30:36'),
	('996060892109426689','2018-05-14 16:13:17','Une fois de plus @realDonaldTrump fait la démonstration que s’il n’est pas une solution il peut être un problème. 1… https://t.co/hrn4PI5y81','213754264','2018-05-15 17:30:35'),
	('996061450866130946','2018-05-14 16:15:30','Le PS condamne la répression violente &amp; disproportionnée à Gaza ayant conduit à de nombreux morts et blessés parmi… https://t.co/UXMCK7UyHB','213754264','2018-05-15 17:30:35'),
	('996103394011041792','2018-05-14 19:02:10','RT @rosesarkissian: .@AzzazNadege nouvelle présidente du @EnsembleIDF. Bravo à elle ! \nMerci à @Da_Silva_Carlos pour son travail et son eng…','213754264','2018-05-15 17:30:35'),
	('996280588771495936','2018-05-15 06:46:17','Je viens de la droite. Mais un an après mon arrivée à Matignon, je ne me pose plus cette question, et les Français… https://t.co/1vSTxM0Ebs','1110890216','2018-05-15 17:30:35'),
	('996314689167556608','2018-05-15 09:01:47','En conférence des présidents #AN @Valerie_Rabault a ce matin confirmé notre demande de commission d’enquête sur les… https://t.co/Zja6pHHkD4','213754264','2018-05-15 17:30:35'),
	('996320217927217153','2018-05-15 09:23:45','Je suis allé ce matin à la rencontre des associations à l\'origine de l\'interpellation légitime #LeViolEstunCrime. L… https://t.co/gHWS6HDHwe','213754264','2018-05-15 17:30:35'),
	('996342139272486912','2018-05-15 10:50:51','@f_personne @MarleneSchiappa Ce n\'est pas ce que j\'ai écrit. Il suffit de me lire.','213754264','2018-05-15 17:30:35'),
	('996342314346909696','2018-05-15 10:51:33','Merci à vous https://t.co/08XrwTpFSc','213754264','2018-05-15 17:30:35'),
	('996344192967245826','2018-05-15 10:59:01','Retrouvez mon entretien @lemondefr : https://t.co/A3uRGHQWRN #1andaction https://t.co/xr9XmhZJnh','1110890216','2018-05-15 17:30:35'),
	('996344202005970944','2018-05-15 10:59:03','RT @Asso_AIVI: Un grand merci au député @faureolivier qui a pris le temps de venir dialoguer avec les militant(e)s et s\'est montré très réc…','213754264','2018-05-15 17:30:35'),
	('996372718919520256','2018-05-15 12:52:22','« Trump a pris une responsabilité en allumant une allumette près d’une station-essence, c’est-à-dire en prenant deu… https://t.co/rRcVTQnAo6','217749896','2018-05-15 17:30:36'),
	('996372918107082752','2018-05-15 12:53:10','« Israël a envoyé un message clair sur l’inviolabilité de sa frontière : on peut le juger excessivement, inutilemen… https://t.co/XQ81y251B8','217749896','2018-05-15 17:30:36'),
	('996373133593636864','2018-05-15 12:54:01','« #Macron n’apparaît plus comme un interlocuteur qui privilégie l’équilibre. Il a suivi les Américains sur la Syrie… https://t.co/PMuhhznrbD','217749896','2018-05-15 17:30:36'),
	('996373268813832192','2018-05-15 12:54:33','« Il faut une enquête indépendante sur ce qui s’est passé entre Israël et #Gaza. » @LCP #QAG #DirectAN','217749896','2018-05-15 17:30:36'),
	('996373471654563840','2018-05-15 12:55:22','« Le Premier Ministre s’agace parce qu’on lui dit que sa politique ne permet pas de protéger les Français ! » @LCP #QAG #DirectAN','217749896','2018-05-15 17:30:36'),
	('996373993467928576','2018-05-15 12:57:26','« Le gouvernement joue à la roulette russe avec les fichés S. Aujourd’hui, ces fiches S ne servent plus à rien parc… https://t.co/zR9MD5pRAL','217749896','2018-05-15 17:30:36'),
	('996374153845444614','2018-05-15 12:58:04','« On doit appliquer le principe de précaution et expulser les fichés S étrangers. » @LCP #QAG #DirectAN','217749896','2018-05-15 17:30:36'),
	('996374308657254400','2018-05-15 12:58:41','« L’islamisme est une idéologie mortifère qu’il faut neutraliser. » @LCP #QAG #DirectAN','217749896','2018-05-15 17:30:36'),
	('996374658764234752','2018-05-15 13:00:05','« Macron veut assouplir les règles de la laïcité : cela permettra au fondamentalisme islamiste de prendre sa place,… https://t.co/pPSYTQHdiS','217749896','2018-05-15 17:30:36'),
	('996375014562770945','2018-05-15 13:01:29','« Le meilleur hommage que l’on puisse rendre aux victimes des attentats islamistes, c’est de prendre les décisions… https://t.co/YWSDxt3RxE','217749896','2018-05-15 17:30:36'),
	('996388267229696007','2018-05-15 13:54:09','Mais quand un député de la nation intervient pour empêcher des étudiants de passer des examens, je trouve ça lament… https://t.co/CAZo4ay1Bo','1110890216','2018-05-15 17:30:35'),
	('996399788852678656','2018-05-15 14:39:56','Fermeture arbitraire de la page Facebook de Génération Identitaire : j\'interpelle M. le Premier Ministre sur le com… https://t.co/QrczAcSIwO','217749896','2018-05-15 17:30:36'),
	('996420199443288064','2018-05-15 16:01:02','','217749896','2018-05-15 18:09:39'),
	('996422229687717890','2018-05-15 16:09:06','En hommage à la victime et aux blessés de l’attentat terroriste de samedi dernier à Paris. #DirectSénat https://t.co/339e2bmjD7','1110890216','2018-05-15 18:09:37');

/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `pseudo`)
VALUES
	('1976143068','Emmanuel Macron','emmanuelmacron'),
	('1110890216','Edouard Philippe','ephilippepm'),
	('213754264','Olivier Faure','faureolivier'),
	('19438626','Laurent Wauquiez','laurentwauquiez'),
	('80820758','Jean-Luc Mélenchon','jlmelenchon'),
	('217749896','Marine Le Pen','mlp_officiel');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
