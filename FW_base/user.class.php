<?php

require_once('inception.class.php');

class User extends Inception
{
	public function __construct()
	{
		$this->pk = 'id_user';
		$this->table_name = 'user';
		$this->fields = ['id_user', 'name', 'pseudo'];
	}
}

?>