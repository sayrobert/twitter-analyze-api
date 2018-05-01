<?php

include ('dbtools.php');
include ('genre.class.php');

/*$query = "SELECT * FROM films";

$films = myFetchAllAssoc($query);

var_dump($films);*/

$genre = new Genre();
$genre->set_id_genre(12);

var_dump($genre);