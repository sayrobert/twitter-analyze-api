<?php

require_once('inception.class.php');

class Genre extends Inception
{
	public function __construct()
	{
		$this->pk = 'id_genre';
		$this->table_name = 'genres';
		$this->fields = ['id_genre', 'nom'];
	}

	public function save()
	{
		// si on a une valeur pour la pk on UPDATE

		// si on a pas de valeur pour la PK on INSERT et on recupere l'id
	}
}

?>