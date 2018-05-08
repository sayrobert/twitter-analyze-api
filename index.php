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
	 
	//$twitteruser = "say__robert"; // twitterusername
	//$notweets = 1; //nombre de tweets	
	
	// on fait les maj en bdd (les nouveaux inserts seulement pour chaque politique)
	
	initBdd("emmanuelmacron");
	initBdd("ephilippepm");
	initBdd("faureolivier");
	initBdd("laurentwauquiez");
	initBdd("jlmelenchon");
	initBdd("mlp_officiel");
	
	
	// on récupère le nombre de tweets sur chaque hashtag pour sélectionner les 5 les plus commentés
	//getCountTweetsByHashtagByUser();
	// on fait la purge de la base
	//purge();
	
?>