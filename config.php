<?php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', 'laszlolaszlo');
define('DB_NAME', 'selyemsziget');

$db = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
$db->set_charset('utf8');

if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
} 

$nav_active["fooldal"]="";
$nav_active["technologia"]="";
$nav_active["arlista"]="";
$nav_active["akciok"]="";
$nav_active["galeria"]="";
$nav_active["kapcsolat"]="";

?>