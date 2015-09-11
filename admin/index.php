<?php
session_start();
if($_SESSION['id'] == 0) {
	header("location:login.php");
	exit();
}
require_once '../config.php';

$actual_edit['name'] = "technologia";
$selected['fooldal'] = "";
$selected['technologia'] = "selected";
$selected['arlista'] = "";
$selected['akciok'] = "";
$selected['kapcsolat'] = "";


//mentés gomb, adatbázis updatelés
if($_POST && isset($_POST['text'])) {
	//print_r($_POST);
	$query = sprintf("UPDATE `szovegek` SET text = '%s' WHERE name = '%s'",
						$_POST['text'], $_POST['name']);
						
						$db->query($query);
						
}

//kategória választás selectből
if($_POST && isset($_POST['select'])) {
	//print_r($_POST);
	$actual_edit['name'] = $_POST['kategoria'];
	
	//selected
	switch($_POST['kategoria']) {
		case "fooldal":
			$selected['fooldal'] = "selected";
			break;
		case "technologia":
			$selected['technologia'] = "selected";
			break;
		case "arlista":
			$selected['arlista'] = "selected";
			break;
		case "akciok":
			$selected['akciok'] = "selected";
			break;
		case "kapcsolat":
			$selected['kapcsolat'] = "selected";
			break;
		}
}
	
	$query = sprintf("SELECT name, text FROM szovegek WHERE name = '%s'",
						$actual_edit['name']);			
	$result = $db -> query($query);
	$actual_edit = $result->fetch_assoc();
	//print_r($actual_edit);

?>

<!DOCTYPE HTML>
<html>
<head>
	<title>Selyemsziget - szerkesztési felület</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css.css" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Courgette' rel='stylesheet' type='text/css'>
	<script src="../ckeditor/ckeditor.js"></script>
</head>
<body>
<p><a href="logout.php"><button>KIJELENTKEZÉS AZ ADMNISZTRÁCIÓS FELÜLETBŐL</button></a></p>
<p><a href="upload.php"><button>KÉPFELTÖLTÉS A GALÉRIÁBA</button></a></p>
<fieldset>
<legend>A szerkeszteni kívánt menüt a legördülő listából választhatod ki. </legend>

<p>
<form method="post" action="index.php">
	<select onchange="form.submit()" name="kategoria">
		<option value="fooldal" <?php echo $selected['fooldal']?>>Főoldal</option>
		<option value="technologia" <?php echo $selected['technologia']?>>A technológiáról</option>
		<option value="arlista" <?php echo $selected['arlista']?>>Árlista</option>
		<option value="akciok" <?php echo $selected['akciok']?>>Akciók</option>
		<option value="kapcsolat" <?php echo $selected['kapcsolat']?>>Kapcsolat</option>
	</select>
	<input name="select" hidden="" value="select">
</form>
</p>



<form method="post" action="index.php">
	<input name="name" hidden="" value="<?php echo $actual_edit['name'] ?>">
	<input name="text" hidden="" value="text">
		<textarea name="text" id="text" rows="10" cols="80" >
			<?php print_r($actual_edit['text']) ?>
		</textarea>
		
		<script>
		    CKEDITOR.replace( 'text' );
		</script>
		<p>
			<button type="submit">Mentés</button>
			
		</p>
</form>
</fieldset>
</body>
</html>