<?php
	header('Content-type: application/json; charset=utf-8');
	//echo "<meta charset='utf-8' />";
	session_start();
	require_once("twitteroauth-master/twitteroauth/twitteroauth/twitteroauth.php"); //Path to twitteroauth library
	 
	$twitteruser = "say__robert"; // twitterusername
	$notweets = 1; //nombre de tweets
	$consumerkey = "KFMzwZoO68JU32ZBNeAKdoxTH";
	$consumersecret = "gpIQNTFqbOtztNtX93dujID1Mb5lynYmcUPOakDvpd6SRmx8a4";
	$accesstoken = "2199117987-XZcNqU4ghicBKYkSh7MeZvV02FUYHmVjXfxMAxW";
	$accesstokensecret = "h3wf5ivPCGe7eQzUa9L2yCpx040IowMtxXleFpstMG14B";
	 
	function getConnectionWithAccessToken($cons_key, $cons_secret, $oauth_token, $oauth_token_secret) {
	  $connection = new TwitterOAuth($cons_key, $cons_secret, $oauth_token, $oauth_token_secret);
	  return $connection;
	}
	 
	$connection = getConnectionWithAccessToken($consumerkey, $consumersecret, $accesstoken, $accesstokensecret);
	 
	$tweets = $connection->get("https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=".$twitteruser);
	
	//var_dump($tweets);die;
	var_dump(json_encode($tweets));
?>