<?php
	// on indique qu'on traite du json 
	header('Content-type: application/json; charset=UTF-8');
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

	var_dump($hashtagsStar);
	
	// on récupère le nombre de tweets sur chaque hashtag pour sélectionner les 5 les plus commentés
	
	$nbTweetsMacron = getCountTweetsByHashtagByUser("emmanuelmacron");
	$nbTweetsPhilippe = getCountTweetsByHashtagByUser("ephilippepm");
	$nbTweetsFaure = getCountTweetsByHashtagByUser("faureolivier");
	$nbTweetsWauquiez = getCountTweetsByHashtagByUser("laurentwauquiez");
	$nbTweetsMelenchon	= getCountTweetsByHashtagByUser("jlmelenchon");
	$nbTweetsLePen = getCountTweetsByHashtagByUser("mlp_officiel");

	var_dump($nbTweetsMacron);
	var_dump($nbTweetsPhilippe);
	var_dump($nbTweetsFaure);
	var_dump($nbTweetsWauquiez);
	var_dump($nbTweetsMelenchon);
	var_dump($nbTweetsLePen);
	
	// on fait la purge de la base (on retire les anciens tweets et anciens hashtags)
	// purge();
