<?php

require_once('dbtools.php');

class Inception
{
	protected $pk = null;
	protected $table_name = null;
	protected $fields = [];

	public function __get($attr_name)
	{
		if (in_array($attr_name, $this->fields))
				return $this->$attr_name;
		else
			die('illegal field: '.$attr_name);
	}

	public function __set($attr_name, $attr_value)
	{
		if (in_array($attr_name, $this->fields))
			$this->$attr_name = $attr_value;
		else
			die('illegal field: '.$attr_name);
		
	}

	public function hydrate()
	{
		if ($this->{$this->pk} == null)
				die('fatal error: cannot hydrate without PK value');

		$query = "SELECT * FROM ".$this->table_name." WHERE ".$this->pk." = ".$this->{$this->pk};
		$data = myFetchAssoc($query);
		
		foreach ($data as $field => $value)
		{
			if ($field != $this->pk)
				$this->$field = $value;
		}		
	} 
}

?>