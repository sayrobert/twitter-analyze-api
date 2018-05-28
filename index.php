<?php	
	// on indique qu'on traite du json 
	header('Content-type: application/json; charset=UTF-8');
	// header("Cache-Control: max-age=3600,s-maxage=3600,no-cache,public,must-revalidate,proxy-revalidate");
	// on démarre une session
	session_start();
	// appel du module api twitteroauth
	require_once("twitteroauth-master/twitteroauth/twitteroauth/twitteroauth.php");
	// on inclut le fichier de fonctions pour faire les requêtes sql
	require_once("dbtools.php");
	// on appel les fonctions utiles (connexion et traitements)
	require_once("_utils.php");
	 
	// on fait les maj en bdd (les nouveaux inserts seulement pour chaque politique)
	
	initBdd("emmanuelmacron");
	initBdd("ephilippepm");
	initBdd("faureolivier");
	initBdd("laurentwauquiez");
	initBdd("jlmelenchon");
	initBdd("mlp_officiel");
	
	// on récupère les hashtags stars
	$hashtagsStar = getHashtagsStar();
	insertHashtagsStar();
	
	// on récupère le nombre de tweets sur chaque hashtag pour sélectionner les 5 les plus commentés
	$nbTweetsMacron = getCountTweetsByHashtagByUser("emmanuelmacron");
	$nbTweetsPhilippe = getCountTweetsByHashtagByUser("ephilippepm");
	$nbTweetsFaure = getCountTweetsByHashtagByUser("faureolivier");
	$nbTweetsWauquiez = getCountTweetsByHashtagByUser("laurentwauquiez");
	$nbTweetsMelenchon	= getCountTweetsByHashtagByUser("jlmelenchon");
	$nbTweetsLePen = getCountTweetsByHashtagByUser("mlp_officiel");
		
	// nuage de mots 
	//pour olivier faure
	$wordCloudForFaure = getWordCloud(213754264);
	//pour laurent wauquiez
	$wordCloudForWauquiez = getWordCloud(19438626);
	// pour jean-luc mélenchon
	$wordCloudForMelenchon = getWordCloud(80820758);
	//pour marine le pen
	$wordCloudForLePen = getWordCloud(217749896);
	//pour edouard philippe
	$wordCloudForPhilippe = getWordCloud(1110890216);
	// pour emmanuel macron
	$wordCloudForMacron = getWordCloud(1976143068);
	
	// on fait la purge de la base (on retire les anciens tweets et anciens hashtags)
	purge();

	echo 'Mise à jour OK de la base de données';
?>