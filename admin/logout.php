<?php
session_start();
function logout() {
	 session_destroy();
	 header("location:index.php");
}
logout();

?>