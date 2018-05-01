<?php

// ROUTING
require_once('routes.php');

if (empty($_GET['action']))
	$action = 'home';
else
	$action = $_GET['action'];

$controller_path = 'controllers/'.$routes[$action].'.php';
if (is_file($controller_path))
	include($controller_path);
else
	die('Illegal action : '.$action);


// VIEW
$view_path = 'views/'.$action.'.php';
if (is_file($view_path))
	include ($view_path);
else
	die ('template is missing : '.$view_path);

?>