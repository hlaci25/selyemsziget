<?php
require_once '../config.php';
session_start();
$error = "";
if($_POST) {
	$query = sprintf("SELECT id, password FROM admin WHERE name = '%s' AND password = '%s'",
				$_POST['name'], $_POST['password']);
	$result = $db -> query($query);
	$eredmeny = $result->fetch_assoc();
	if(!empty($eredmeny)) {
		$_SESSION['id'] = 1;
		header("location:index.php");
		exit();
	} else {
		$error = "Hibás bejelentkezési adatok!";
	}
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Selyemsziget - adminisztrátor bejelentkezés</title>
</head>
<body>
<form method="post" action="login.php">
	<div>Név:</div>
	<input type="text" name="name" required=""><br>
	<div>Jelszó:</div>
	<input type="password" name="password" required=""><br>
	<button type="submit">Bejelentkezés</button>
</form>
<br>
	<div>
	<?php	echo $error ?>
	</div>
</body>
</html>