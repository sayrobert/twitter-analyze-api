<?php
	header('Content-type: application/json; charset=UTF-8');
	session_start();
	require_once("twitteroauth-master/twitteroauth/twitteroauth/twitteroauth.php");
	require_once("dbtools.php");
	 
	//$twitteruser = "say__robert"; // twitterusername
	$notweets = 1; //nombre de tweets
	$consumerkey = "KFMzwZoO68JU32ZBNeAKdoxTH";
	$consumersecret = "gpIQNTFqbOtztNtX93dujID1Mb5lynYmcUPOakDvpd6SRmx8a4";
	$accesstoken = "2199117987-XZcNqU4ghicBKYkSh7MeZvV02FUYHmVjXfxMAxW";
	$accesstokensecret = "h3wf5ivPCGe7eQzUa9L2yCpx040IowMtxXleFpstMG14B";
	$url_api = "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=";
	 
	function getConnectionWithAccessToken($cons_key, $cons_secret, $oauth_token, $oauth_token_secret) {
		$connection = new TwitterOAuth($cons_key, $cons_secret, $oauth_token, $oauth_token_secret);
		return $connection;
	}

	$connection = getConnectionWithAccessToken($consumerkey, $consumersecret, $accesstoken, $accesstokensecret);
	
	
	
	$user1 = "emmanuelmacron";
	$tweetListMaron = $connection->get($url_api.$user1);
	$query = "SELECT id FROM user WHERE pseudo='".$user1."'";
	$id_user1 = myFetchAssoc($query);
	$tweetsMacron = [];
	$date_ajout = date("Y-m-d H:i:s");
	/*
	$hashtagsMacron = {
		"id": "",
		"id_tweet": "",
		"content": ""
	}
	*/
	foreach($tweetListMaron as $tweet){
		$date_creation_tweet = new DateTime($tweet->created_at);
		$date_creation_tweet = $date_creation_tweet->format('Y-m-d H:i:s');
		$tweetsMacron[] = ["id" => $tweet->id, "created_at" => $date_creation_tweet, "text" => str_replace("'","\'",$tweet->text), "id_user" => $id_user1['id'], "date_ajout" => $date_ajout];
		//var_dump($tweet);die;
		/*
		echo $tweet->user->id;die;
		var_dump($tweet->entities->hashtags);die;
		echo $tweet->text;die;
		echo $tweet->id;die;
		echo $tweet->created_at;
		echo "\n";
		*/
		if(count($tweet->entities->hashtags) != 0){
			$hashtagsMacron[] = ["id_tweet" => $tweet->id, "content" => $tweet->entities->hashtags, "date_ajout" => $date_ajout]; 
		}
	}
	
	//var_dump($tweetsMacron);die;
	
	// on fait l'insert des tweets en BDD
	$insert = "";
	foreach($tweetsMacron as $tweet){
		$insert = "INSERT INTO tweets (id, created_at, text, id_user, date_ajout) VALUES(".$tweet['id'].",'".$tweet['created_at']."','".$tweet['text']."',".$tweet['id_user'].",'".$tweet['date_ajout']."')";
		myQuery($insert);
	}
	die;
	
	
	//var_dump($tweetsMacron);die;
	//var_dump($hashtagsMacron);die;
	
	$user2 = "macron";
	$tweets = $connection->get($url_api.$user2);
	
	$user3 = "macron";
	$tweets = $connection->get($url_api.$user3);
	
	$user4 = "macron";
	$tweets = $connection->get($url_api.$user4);
	
	$user5 = "macron";
	$tweets = $connection->get($url_api.$user5);
	
	
	foreach($tweets as $tweet){
		//var_dump($tweet);die;
		echo $tweet->user->id;die;
		var_dump($tweet->entities->hashtags);die;
		echo $tweet->text;die;
		echo $tweet->id;die;
		echo $tweet->created_at;
		echo "\n";
	}
	die;
	var_dump($tweets);die;
	echo $tweets['id'];die;
	/*
	$json = [
		"id_user": "",
		"id_tweet": "",
		"created_at": "",
		"text": "",
		"hashtags": []
	];*/
	
	/*
	function getTweetsFromUser(1976143068){
		
		$tweets = $connection->get("https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=".$twitteruser);
	}*/
	
	var_dump(json_encode($tweets));
?>