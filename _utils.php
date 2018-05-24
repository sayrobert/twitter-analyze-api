<?php
function getConnectionWithAccessToken($cons_key, $cons_secret, $oauth_token, $oauth_token_secret){
	$connection = new TwitterOAuth($cons_key, $cons_secret, $oauth_token, $oauth_token_secret);
	return $connection;
}

function initBdd($username){
	// connexion
	// paramètres de connexion twitter
	$consumersecret = "gpIQNTFqbOtztNtX93dujID1Mb5lynYmcUPOakDvpd6SRmx8a4";
	$accesstoken = "2199117987-XZcNqU4ghicBKYkSh7MeZvV02FUYHmVjXfxMAxW";
	$consumerkey = "KFMzwZoO68JU32ZBNeAKdoxTH";
	$accesstokensecret = "h3wf5ivPCGe7eQzUa9L2yCpx040IowMtxXleFpstMG14B";
	
	// on se connecte à twitter avec le token
	$connection = getConnectionWithAccessToken($consumerkey, $consumersecret, $accesstoken, $accesstokensecret);

	// url api twitter
	$url_api = "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=";
	
	$user = $username;
	$tweetList = $connection->get($url_api.$user);

	$query = "SELECT id FROM user WHERE pseudo='".$user."'";
	$id_user = myFetchAssoc($query);
	$tweets = [];
	$hashtags = [];
	$hour = date("H")+2;
	$date_ajout = date("Y-m-d ".$hour.":i:s");
	
	foreach($tweetList as $tweet){
		$date_creation_tweet = new DateTime($tweet->created_at);
		$date_creation_tweet = $date_creation_tweet->format('Y-m-d H:i:s');

		$tweets[] = [
			"id" => $tweet->id, 
			"created_at" => $date_creation_tweet, 
			"text" => str_replace("'","\'",$tweet->text), 
			"id_user" => $id_user['id'], 
			"date_ajout" => $date_ajout
		];

		if(count($tweet->entities->hashtags) != 0){
			foreach($tweet->entities->hashtags as $hashtag){
				$hashtags[] = [
					"id_tweet" => $tweet->id, 
					"content" => $hashtag->text,
					"date_ajout" => $date_ajout
				]; 
			}
		}
	}
	// on fait l'insert des tweets en BDD
	$insert = "";

	foreach($tweets as $tweet){

		$query = "SELECT * FROM tweets WHERE id='".$tweet['id']."'";
		$numberTweets = myQuery($query);
		
		if($numberTweets->num_rows == 0){
			$insert = "INSERT INTO tweets (id, created_at, text, id_user, date_ajout) VALUES(".$tweet['id'].",'".$tweet['created_at']."','".$tweet['text']."',".$tweet['id_user'].",'".$tweet['date_ajout']."')";
			myQuery($insert);
		}		
	}

	foreach($hashtags as $hashtag){

		$query = "SELECT * FROM hashtags WHERE id_tweet='".$hashtag['id_tweet']."'";
		$numberHashtags = myQuery($query);
		
		if($numberHashtags->num_rows == 0){
			$insert = "INSERT INTO hashtags (id_tweet, content, date_ajout) VALUES(".$hashtag['id_tweet'].",'".$hashtag['content']."','".$hashtag['date_ajout']."')";
			myQuery($insert);
		}
	}
}

function getHashtagsStar(){
	$query = "SELECT content, COUNT(*) count FROM `hashtags` GROUP BY content ORDER BY count DESC LIMIT 10";
	
	// les 10 les plus commentés
	$countHashtags = myFetchAllAssoc($query);

	$hashtagsStar = [];

	foreach($countHashtags as $ligne){
		$hashtagsStar[] = $ligne['content'];
	}

	return $hashtagsStar;
}

function insertHashtagsStar(){
	$query = "SELECT content, COUNT(*) count FROM `hashtags` GROUP BY content ORDER BY count DESC LIMIT 10";
	
	// les 10 les plus commentés
	$countHashtags = myFetchAllAssoc($query);

	$hashtagsStar = [];

	$date = date('mY');

	foreach($countHashtags as $ligne){
		$hashtagsStar[] = $ligne['content'];

		$query = "SELECT * FROM hashtags_history WHERE hashtag_content='".$ligne['content']."'";
		$numberHashtags = myQuery($query);
	
		if($numberHashtags->num_rows == 0){
			$insert = "INSERT INTO hashtags_history (id, hashtag_content, month) VALUES( null,'".$ligne['content']."', '".$date."')";
			myQuery($insert);
		}
	}
}

function getHashtagsStarByMonthYear($year_month){
	$query = "SELECT hashtag_content FROM `hashtags_history` WHERE month = '".$year_month."'";

	$monthHashtags = myFetchAllAssoc($query);
}


function getCountTweetsByHashtagByUser($username){
	// on récupère les hashtags stars
	$hashtagsStar = getHashtagsStar();
	// nombredetweets by user on hashtag
	$result = [];
	
	foreach($hashtagsStar as $hashtag){
		$req = "SELECT COUNT(*) AS nombredetweets, h.content, u.pseudo FROM tweets t INNER JOIN hashtags h ON t.id = h.id_tweet INNER JOIN user u ON t.id_user = u.id WHERE h.content = '".$hashtag."' AND u.pseudo = '".$username."'";
		$line = myFetchAssoc($req);

		if($line['content'] == NULL){
			$line['content'] = $hashtag;
		}

		if($line['pseudo'] == NULL){
			$line['pseudo'] = $username;
		}
		$result[] = $line;
	}
	
	return $result;
}

function formatWords($tweet){
	// on met dans un tableau chaque mot du tweet
	$words = explode(" ", $tweet);
	
	// on retire les guillemets
	$words = str_replace('"',"",$words);
	// on enlève les caractères spéciaux inutiles pour l'analyse des mots
	$words = str_replace(str_split('\\/:*?"<>|,.@#!'),"",$words);
	$words = str_replace('«',"",$words);
	//$words = str_replace("...","",$words);
	$words = str_replace('»',"",$words);	
	// on remplace ' par \'
	//$words = str_replace("'","\'",$words);
	
	$prepos = array(
	
		"Par", "Pour", "En", "Vers", "Avec", "De", "Sans", "Sous", "Sur", "Nous", "Que", "La", "Le", "Et",
		"Les", "Ils", "Il", "Elle", "Vous", "Tu", "Je", "Un", "Une", "A", "Cette", "Ce", "Ces", "Si", "Ci", "Ca",
		"Au", "Qui", "Quoi", "Comment", "Ou", "Quand", "Pourquoi", "Pas", "Ne", "Plus", "Dans", "Des",
		"Celle", "Celles", "Ceux", "Est", "Du", "C'est", "Meme", "Notre", "Nos", "Votre", "Vos"
	
	);
	$preposLower = array_map('strtolower', $prepos);
	
	foreach($words as $key => $word){
		
		$word = str_replace(' ', '', $word);
		$word = trim($word);
		if(in_array($word, $prepos) || in_array($word, $preposLower)){
			unset($words[$key]);
		}
		if(substr($word, 0, 5) == 'https'){
			unset($words[$key]);
		}
	}
	
	//var_dump($words);die;
	return $words;
}
function getWordCloud($id_user){
	// on récupère tous les tweets d'un user
	$query = "SELECT text FROM `tweets` WHERE id_user = ".$id_user;
	// on met les tweets récupérés dans un tableau
	$tweets = myFetchAllAssoc($query);
	$result = [];
	
	// on boucle sur les tweets
	foreach($tweets as $tweet){
		
		
		$words = formatWords($tweet['text']);		
		// on retire les valeurs = ""
		$words = array_filter($words);
		// on met le resultat dans le tableau $result
		$result[] = $words;
	}
	//var_dump($result);die;
	// on merge tous nos tableaux pour avoir qu'un seul tableau à une dimension
	$arrayOneDimension = call_user_func_array('array_merge', $result);
	// on récupère dans un tableau le nombre d'occurences pour chaque valeur du tableau de mots 
	$wordCloud = array_count_values($arrayOneDimension);
	// on enlève les doublons dans les valeurs
	//$wordCloud = array_unique($wordCloud);
	
	// on récupèrera les données bien formatées dans ce tableau
	$myData = array();
	//var_dump($wordCloud);die;
	// on boucle sur notre tableau de mots
	foreach($wordCloud as $key => $word){
		// on met dans $myData les mots avec leur nombre d'occurence (bien formaté)
		array_push($myData, array("text" => $key, "weight" => $word));
		// on vérifie si le mot existe en bdd
		$req = 'SELECT * FROM wordcloud WHERE word = "'.$key.'" AND id_user = '.$id_user;
		$numberRows = myQuery($req);
		// si le mot n'exite pas en bdd
		if($numberRows->num_rows == 0){
			$insert = 'INSERT INTO wordcloud(id_user, word, weight) VALUES ('.$id_user.',"'.$key.'",'.$word.')';
			// on insert en bdd
			myQuery($insert);
		}else{
			$update = 'UPDATE wordcloud SET weight='.$word.' WHERE word = "'.$key.'" AND id_user = '.$id_user;
			// on fait l'update en bdd
			myQuery($update);
		}
	}
	
	//var_dump($myData);die;
	// on retourne les mots bien formatés pour pouvoir construire le nuage de mots pour cet user
	return $myData;
}
function purge(){
	$lastMonth = date("m")-1;
	$dateOneMonthAgo = date("Y-".$lastMonth."-d");
	
	// delete tweets > 1 month
	$query = "DELETE FROM tweets WHERE created_at < '".$dateOneMonthAgo."'";
	myQuery($query);
	
	// delete hashtags > 1 month
	$query2 = "DELETE FROM hashtags WHERE date_ajout < '".$dateOneMonthAgo."'";
	myQuery($query2);
}
