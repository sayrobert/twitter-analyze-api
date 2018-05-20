<?php	
	// on indique qu'on traite du json 
	//header('Content-type: application/json; charset=utf-8');	
	// on démarre une session
	session_start();
	// appel du module api twitteroauth
	require_once("twitteroauth-master/twitteroauth/twitteroauth/twitteroauth.php");
	// on inclut le fichier de fonctions pour faire les requêtes sql
	require_once("dbtools.php");
	// on appel les fonctions utiles (connexion et traitements)
	require_once("_utils.php");
	 
	// on fait les maj en bdd (les nouveaux inserts seulement pour chaque politique)
	/*
	initBdd("emmanuelmacron");
	initBdd("ephilippepm");
	initBdd("faureolivier");
	initBdd("laurentwauquiez");
	initBdd("jlmelenchon");
	initBdd("mlp_officiel");
	*/
	
	// on récupère les hashtags stars
	$hashtagsStar = getHashtagsStar();
	//var_dump($hashtagsStar);

	//insertHashtagsStar();
	
	// on récupère le nombre de tweets sur chaque hashtag pour sélectionner les 5 les plus commentés
	$nbTweetsMacron = getCountTweetsByHashtagByUser("emmanuelmacron");
	$nbTweetsPhilippe = getCountTweetsByHashtagByUser("ephilippepm");
	$nbTweetsFaure = getCountTweetsByHashtagByUser("faureolivier");
	$nbTweetsWauquiez = getCountTweetsByHashtagByUser("laurentwauquiez");
	$nbTweetsMelenchon	= getCountTweetsByHashtagByUser("jlmelenchon");
	$nbTweetsLePen = getCountTweetsByHashtagByUser("mlp_officiel");
	
	// récupère les hashtags stars pour un mois donné
	getHashtagsStarByMonthYear('052018');
	/*
	var_dump($nbTweetsMacron);
	var_dump($nbTweetsPhilippe);
	var_dump($nbTweetsFaure);
	var_dump($nbTweetsWauquiez);
	var_dump($nbTweetsMelenchon);
	var_dump($nbTweetsLePen);
	*/
	
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
	// purge();
?>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	<body>		
		<div id="wordCloud"></div>

		<link rel="stylesheet" href="jQWCloud/WordCloud/css/jqcloud.css" type="text/css" media="all" />  
		<script type="text/javascript" src="jQWCloud/WordCloud/js/lib/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="jQWCloud/WordCloud/js/lib/jqcloud-1.0.4.min.js"></script>
		<script>
			$(document).ready(function()
			{
				// on récupère ici les données pour générer le nuage de mots
				var myData = <?php echo json_encode($wordCloudForFaure) ?>;
				console.log(myData);
				//$("#wordCloud").jQCloud(myData);
				// on génère le cloud
				$('#wordCloud').jQCloud(myData, {
				  width: 850,
				  height: 350,
				  center: {x: 600, y: 150},
				  shape: 'elliptic',
				  autoResize: true,
				  delayedMode : true,
				  steps: 100
				});
			});
			

		</script>
	</body>
</html>