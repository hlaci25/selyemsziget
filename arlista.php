<?php
require_once 'config.php';

$nav_active["arlista"] = "nav_active";

require_once 'view/header.html';

$query = "SELECT text FROM szovegek WHERE name = 'arlista'";
$result = $db -> query($query);

$arlista = $result->fetch_assoc();

require_once 'view/arlista.html';
require_once 'view/footer.html';
?>