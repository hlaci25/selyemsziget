<?php
require_once 'config.php';

$nav_active["fooldal"] = "nav_active";

require_once 'view/header.html';

$query = "SELECT text FROM szovegek WHERE name = 'fooldal'";
$result = $db -> query($query);

$fooldal = $result->fetch_assoc();

require_once 'view/fooldal.html';
require_once 'view/footer.html';
?>