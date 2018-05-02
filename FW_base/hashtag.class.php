<?php

require_once('inception.class.php');

class Hashtag extends Inception
{
	public function __construct()
	{
		$this->pk = 'id_hashtag';
		$this->table_name = 'hashtags';
		$this->fields = ['id_hashtag',
		'id_tweet',
		'content'
		];
	}
}

?>