<?php
require_once 'config.php';

$nav_active["technologia"] = "nav_active";

require_once 'view/header.html';

$query = "SELECT text FROM szovegek WHERE name = 'technologia'";
$result = $db -> query($query);

$technologia = $result->fetch_assoc();

require_once 'view/technologia.html';
require_once 'view/footer.html';
?>