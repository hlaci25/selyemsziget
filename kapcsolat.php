<?php
require_once 'config.php';

$nav_active["kapcsolat"] = "nav_active";

require_once 'view/header.html';

$query = "SELECT text FROM szovegek WHERE name = 'kapcsolat'";
$result = $db -> query($query);

$kapcsolat = $result->fetch_assoc();

require_once 'view/kapcsolat.html';
require_once 'view/footer.html';
?>