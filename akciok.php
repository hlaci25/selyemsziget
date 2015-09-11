<?php
require_once 'config.php';

$nav_active["akciok"] = "nav_active";

require_once 'view/header.html';

$query = "SELECT text FROM szovegek WHERE name = 'akciok'";
$result = $db -> query($query);

$akciok = $result->fetch_assoc();

require_once 'view/akciok.html';
require_once 'view/footer.html';
?>