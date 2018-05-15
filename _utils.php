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
	
	// les 5 les plus commentés
	$countHashtags = myFetchAllAssoc($query);

	$hashtagsStar = [];

	foreach($countHashtags as $ligne){
		$hashtagsStar[] = $ligne['content'];
	}

	return $hashtagsStar;
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

function purge(){
	$lastMonth = date("m")-1;		
	$dateOneMonthAgo = date("Y-".$lastMonth."-d");
	
	// delete tweets > 1 month
	$query = "DELETE * FROM tweets WHERE created_at < '".$dateOneMonthAgo."'";
	myQuery($query);
	
	// delete hashtags > 1 month
	$query2 = "DELETE * FROM hashtags WHERE date_ajout < '".$dateOneMonthAgo."'";
	myQuery($query2);
}
