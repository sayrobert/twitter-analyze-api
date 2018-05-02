<?php

require_once('inception.class.php');

require_once('genre.class.php');
require_once('distributeur.class.php');

class Tweet extends Inception
{
	public function __construct()
	{
		$this->pk = 'id_tweet';
		$this->table_name = 'tweets';
		$this->fields = ['id_tweet',
				'created_at',
				'text',
				'id_user'];
	}
}

?>